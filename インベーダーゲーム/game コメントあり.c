typedef volatile unsigned short hword;

#define VRAM 0x06000000
#define VRAM2 0x04000130
#define BGR(r, g, b) ((b << 10) + (g << 5) + r)

void draw_point(hword, hword, hword);			  // 点の描画
void draw_rec(hword, hword, hword, hword, hword); // 四角形の描画
void draw_player(hword, hword, hword);			  // プレイヤーの描画
void move_player(int);							  // プレイヤーの移動を反映
void shot_player();								  // プレイヤーの撃つ玉を描画
void draw_enemy_0(hword, hword, hword);			  // 敵（青）の描画
void draw_enemy_1(hword, hword, hword);			  // 敵（黄色）の描画
void move_enemy();								  // 敵の移動を反映
void shot_enemy();								  // 敵の撃つ玉を描画
void move_bullet();								  // 弾の移動を反映
void check_enemy();								  // 敵の生死を判定
void check_END();								  // プレイヤーの生死を判定,クリア判定
void reset();									  // 各変数のリセット
hword check_ABS(hword, hword, hword);			  // 敵と玉、プレイヤーと玉の接触判定

hword *ptr;			 // 描画用ポインタ
hword i, j, k;		 // for文用変数
hword volatile *key; // キー入力用ポインタ
hword right;		 // 右キー
hword left;			 // 左キー
hword start;		 // スタートキー
hword A;			 // Aキー

// 使う色
hword BLACK;
hword PURPLE;
hword YELLOW;
hword RED;
hword CYAN;
hword WHITE;

hword x[2][8], y[2][8], live[2][8], bullet_x[2][8], bullet_y[2][8]; // 敵の位置と状態、玉の位置を一括管理
hword player_x, player_y;											// プレイヤーの位置
hword bullet_player_x, bullet_player_y;								// プレイヤーの玉の位置
hword vector;														// 敵の移動方向(左右)
int enemy_shooting;
int time_player_move;	 // プレイヤーの再描画の間隔
int time_enemy_move;	 // 敵の再描画の間隔
int time_player_bullet;	 // プレイヤーの玉の再描画の間隔
int time_enemy_shooting; // 敵の玉の再描画の間隔
int time_player_bullet_move;
int time_enemy_bullet_move;
hword RANDOM;	// 疑似乱数
int status;		// 開始判定
int alive;		// 初期化
int GAME_CLEAR; // クリア判定

int main(void)
{
	// 描画開始
	ptr = (hword *)0x04000000;
	*ptr = 0x0F03;

	// 使う色を定義
	BLACK = BGR(0, 0, 0);
	PURPLE = BGR(31, 0, 31);
	CYAN = BGR(0, 31, 31);
	RED = BGR(31, 0, 0);
	YELLOW = BGR(31, 31, 0);
	WHITE = BGR(31,31,31);

	// 最初は0
	status = 0;
	alive = 0;

	// 各キーを定義
	key = (hword *)VRAM2;
	right = 0x0010;
	left = 0x0020;
	start = 0x0008;
	A = 0x0001;

	// 乱数、プレイヤーの初期位置を定義
	RANDOM = 0;
	player_x = 120;
	player_y = 140;

	// 初期画面（黒）
	for (i = 0; i < 240 * 160; i = i + 1)
	{
		ptr = (hword *)VRAM + i;
		*ptr = BLACK;
	}

	// 無限ループ
	while (1)
	{
		// 未クリア時の処理
		if (alive == 0)
		{
			// 初期状態時の処理
			if (status == 0)
			{
				// スタートキーを押すタイミングによってRANDOMが0-7の間で変化
				if (RANDOM < 8)
				{
					RANDOM = RANDOM + 1;
				}
				else
				{
					RANDOM = 0;
				}

				// スタートキーが押されるとゲーム開始
				if ((*key & start) != start)
				{
					alive = 1;
					status = 1;
				}
			}
			else if (status == 1)
			{
				draw_player(player_x, player_y, PURPLE); // プレイヤーの描画
				move_enemy();							 // 敵の描画、移動

				if ((*key & right) != right)
				{
					move_player(1); // プレイヤーの移動
				}
				else if ((*key & left) != left)
				{
					move_player(2); // プレイヤーの移動
				}
				if ((*key & A) != A)
				{
					shot_player(); // プレイヤーの玉描画
				}
				shot_enemy();  // 敵の玉描画
				move_bullet(); // 玉の移動

				check_enemy(); // 敵の生存判定
				check_END();   // 終了判定
			}
			else if (status == 2)
			{
				// スタートキーを押したら再開
				if ((*key & start) != start)
				{
					alive = 1;
					status = 1;
				}
			}
			else
			{
				draw_rec(120, 80, 50, 50, YELLOW);
				break;
			}
		}
		else
		{
			reset(); // 各値を初期化

			// 待機画面
			for (i = 0; i < 240 * 160; i++)
			{
				ptr = (hword *)VRAM + i;
				*ptr = BLACK;
			}
			alive = 0; // クリア判定をリセット
		}
	}
	return 0;
}

void draw_point(hword x, hword y, hword color)
{
	ptr = (hword *)(VRAM + (y * 480) + 2 * x);
	*ptr = color;
}

void reset()
{
	for (i = 0; i < 2; i++)
	{
		for (j = 0; j < 8; j++)
		{
			// それぞれの配列の値を初期化
			x[i][j] = 59 + 17 * j;
			y[i][j] = 15 + 20 * i;
			live[i][j] = 1;
			bullet_y[i][j] = 0;
		}
	}

	player_x = 120;
	player_y = 140;
	bullet_player_y = 0;
	vector = 1;
	time_player_move = 0;
	time_enemy_move = 0;
	enemy_shooting = 0;
	time_player_bullet = 0;
	time_enemy_shooting = 0;
	time_player_bullet_move = 0;
	time_enemy_bullet_move = 0;
	GAME_CLEAR = 0;
}

void draw_rec(hword ax, hword ay, hword x, hword y, hword color)
{
	// ax,ayは四角形の中心の座標
	hword xa = ax - x / 2;
	hword xb = ax + x / 2;
	hword ya = ay - y / 2;
	hword yb = ay + y / 2;
	hword a = xa;
	while (ya <= yb)
	{
		xa = a;
		while (xa <= xb)
		{
			draw_point(xa, ya, color);
			xa = xa + 1;
		}
		ya = ya + 1;
	}
}

void draw_player(hword x, hword y, hword color)
{
	int l, m;
	draw_point(x, y - 3, color);
	for (l = y - 2; l < y; l++)
	{
		for (m = x - 1; m < x + 2; m++)
		{
			draw_point(m, l, color);
		}
	}
	for (l = x - 4; l < x + 5; l++)
	{
		draw_point(l, y, color);
	}
	for (l = y + 1; l < y + 4; l++)
	{
		for (m = x - 5; m < x + 6; m++)
		{
			draw_point(m, l, color);
		}
	}
}

void move_player(int i)
{
	if (i == 1) // 右キーが押されたとき
	{
		// プレイヤーの再描画の間隔
		if (time_player_move < 10)
		{
			time_player_move = time_player_move + 1;
		}
		else
		{
			time_player_move = 0;
		}

		// time_player_moveが10足されるごとに処理
		if (time_player_move == 0)
		{
			draw_rec(player_x, player_y, 10, 8, BLACK); // 元居た位置を黒にする
			if (player_x < 234)
			{
				player_x = player_x + 1; // 右端まではプレイヤーのx座標を右に更新
			}
			draw_player(player_x, player_y, PURPLE); // 再描画
			time_player_move = 1;					 // 連続で処理が起きないよう値を更新
		}
	}
	else if (i == 2) // 左キーが押されたとき
	{
		if (time_player_move < 10)
		{
			time_player_move = time_player_move + 1;
		}
		else
		{
			time_player_move = 0;
		}
		if (time_player_move == 0)
		{
			draw_rec(player_x, player_y, 10, 8, BLACK);
			if (player_x > 6)
			{
				player_x = player_x - 1;
			}
			draw_player(player_x, player_y, PURPLE);
		}
	}
}

void shot_player()
{
	if (bullet_player_y == 0) // 玉が画面外に出るともう一度撃てる
	{
		// プレイヤーより少し上の位置に描画
		bullet_player_x = player_x;
		bullet_player_y = player_y - 9;
		draw_rec(bullet_player_x, bullet_player_y, 2, 10, RED); // 玉の描画
	}
}

void draw_enemy_0(hword x, hword y, hword color)
{
	int l;
	draw_point(x - 3, y - 3, color);
	draw_point(x + 3, y - 3, color);
	draw_point(x - 2, y - 2, color);
	draw_point(x + 2, y - 2, color);
	for (l = 0; l < 7; l++)
	{
		draw_point(x - 3 + l, y - 1, color);
	}
	draw_point(x - 4, y, color);
	draw_point(x - 3, y, color);
	draw_point(x - 1, y, color);
	draw_point(x, y, color);
	draw_point(x + 1, y, color);
	draw_point(x + 3, y, color);
	draw_point(x + 4, y, color);
	for (l = 0; l < 11; l++)
	{
		draw_point(x - 5 + l, y + 1, color);
	}
	draw_point(x - 5, y + 2, color);
	for (l = 0; l < 7; l++)
	{
		draw_point(x - 3 + l, y + 2, color);
	}
	draw_point(x + 5, y + 2, color);
	draw_point(x - 5, y + 3, color);
	draw_point(x - 3, y + 3, color);
	draw_point(x + 3, y + 3, color);
	draw_point(x + 5, y + 3, color);
	draw_point(x - 2, y + 4, color);
	draw_point(x - 1, y + 4, color);
	draw_point(x + 1, y + 4, color);
	draw_point(x + 2, y + 4, color);
}

void draw_enemy_1(hword x, hword y, hword color)
{
	int l;
	for (l = 0; l < 4; l++)
	{
		draw_point(x - 1 + l, y - 3, color);
	}
	for (l = 0; l < 10; l++)
	{
		draw_point(x - 4 + l, y - 2, color);
	}
	for (l = 0; l < 12; l++)
	{
		draw_point(x - 5 + l, y - 1, color);
	}
	for (l = 0; l < 3; l++)
	{
		draw_point(x - 5 + l, y, color);
	}
	draw_point(x, y, color);
	draw_point(x + 1, y, color);
	for (l = 0; l < 3; l++)
	{
		draw_point(x + 4 + l, y, color);
	}
	for (l = 0; l < 12; l++)
	{
		draw_point(x - 5 + l, y + 1, color);
	}
	draw_point(x - 2, y + 2, color);
	draw_point(x - 1, y + 2, color);
	draw_point(x + 2, y + 2, color);
	draw_point(x + 3, y + 2, color);
	draw_point(x - 3, y + 3, color);
	draw_point(x - 2, y + 3, color);
	draw_point(x, y + 3, color);
	draw_point(x + 1, y + 3, color);
	draw_point(x + 3, y + 3, color);
	draw_point(x + 4, y + 3, color);
	draw_point(x - 5, y + 4, color);
	draw_point(x - 4, y + 4, color);
	draw_point(x + 5, y + 4, color);
	draw_point(x + 6, y + 4, color);
}

void move_enemy()
{
	hword *ptr_right, *ptr_left;

	// 敵の再描画の間隔
	if (time_enemy_move < 100)
	{
		time_enemy_move = time_enemy_move + 1;
	}
	else
	{
		time_enemy_move = 0;
	}

	// time_enemy_moveが100足されるごとに処理
	if (time_enemy_move == 0)
	{
		// 移動の向きが初期値(右）の時
		if (vector == 1)
		{
			for (i = 0; i < 8; i++)
			{
				// 敵(青）が生存している時
				if (live[0][i] == 1)
				{
					draw_rec(x[0][i], y[0][i], 12, 8, BLACK); // 元居た位置を黒にする
					x[0][i] = x[0][i] + 1;					  // 敵のx座標を右に更新
					draw_enemy_0(x[0][i], y[0][i], CYAN);	  // 再描画
				}

				// 敵(黄色）が生存している時
				if (live[1][i] == 1)
				{

					draw_rec(x[1][i], y[1][i], 12, 8, BLACK);
					x[1][i] = x[1][i] + 1;
					draw_enemy_1(x[1][i], y[1][i], YELLOW);
				}
			}
		}
		else if (vector == 2) // 移動の向きが左の時、以下の処理は同上
		{
			for (i = 0; i < 8; i++)
			{
				if (live[0][i] == 1)
				{
					draw_rec(x[0][i], y[0][i], 12, 8, BLACK);
					x[0][i] = x[0][i] - 1;
					draw_enemy_0(x[0][i], y[0][i], CYAN);
				}

				if (live[1][i] == 1)
				{
					draw_rec(x[1][i], y[1][i], 12, 8, BLACK);
					x[1][i] = x[1][i] - 1;
					draw_enemy_1(x[1][i], y[1][i], YELLOW);
				}
			}
		}
		for (i = 0; i < 20; i++)
		{
			// 敵の移動方向を変更する地点
			ptr_right = (hword *)VRAM + (i * 8 * 240) + 230;
			ptr_left = (hword *)VRAM + (i * 8 * 240) + 10;

			// 地点に敵（黄色）が描画された場合
			if (*ptr_right == YELLOW)
			{
				for (j = 0; j < 8; j++)
				{
					// 敵(青）が生存している時
					if (live[0][j] == 1)
					{
						draw_rec(x[0][j], y[0][j], 12, 8, BLACK); // 元居た位置を黒にする
						y[0][j] = y[0][j] + 8;					  // 敵のy座標を下に更新
						draw_enemy_0(x[0][j], y[0][j], CYAN);	  // 再描画
					}
				}
				for (j = 0; j < 8; j++)
				{
					// 敵(黄色）が生存している時
					if (live[1][j] == 1)
					{
						draw_rec(x[1][j], y[1][j], 12, 8, BLACK);
						y[1][j] = y[1][j] + 8;
						draw_enemy_1(x[1][j], y[1][j], YELLOW);
					}
				}
				vector = 2; // 向きを左に変える
				break;
			}
			else if (*ptr_left == YELLOW)
			{
				for (j = 0; j < 8; j++)
				{
					if (live[0][j] == 1)
					{
						draw_rec(x[0][j], y[0][j], 12, 8, BLACK);
						y[0][j] = y[0][j] + 8;
						draw_enemy_0(x[0][j], y[0][j], CYAN);
					}
				}
				for (j = 0; j < 8; j++)
				{
					if (live[1][j] == 1)
					{
						draw_rec(x[1][j], y[1][j], 12, 8, BLACK);
						y[1][j] = y[1][j] + 8;
						draw_enemy_1(x[1][j], y[1][j], YELLOW);
					}
				}
				vector = 1; // 向きを右に変える
				break;
			}
		}
	}
}

void shot_enemy()
{
	if (enemy_shooting < 7) // 敵の撃てる玉数の上限(乱数なしの場合)
	{
		// 敵の玉の再描画の間隔
		if (time_enemy_shooting < 100)
		{
			time_enemy_shooting = time_enemy_shooting + 1;
		}
		else
		{
			enemy_shooting = enemy_shooting + 1;
			time_enemy_shooting = 0;
		}
	}
	else
	{
		if (time_enemy_shooting < 100)
		{
			time_enemy_shooting = time_enemy_shooting + 1;
		}
		else
		{
			enemy_shooting = 0;
			time_enemy_shooting = 0;
		}
	}
	if (time_enemy_shooting == 0)
	{
		if (RANDOM < 7)
		{
			RANDOM += enemy_shooting;
		}
		else
		{
			RANDOM = 0;
		}
		for (i = 0; i < 2; i++)
		{
			// 敵のRANDOM番目が生存していて、その敵が玉を放っていない場合
			if (live[i][RANDOM] == 1 && bullet_y[i][RANDOM] == 0)
			{
				// 玉の座標と敵の座標を同期
				bullet_x[i][RANDOM] = x[i][RANDOM];
				bullet_y[i][RANDOM] = y[i][RANDOM] + 10;
				draw_rec(bullet_x[i][RANDOM], bullet_y[i][RANDOM], 2, 10, WHITE); // 敵の玉を描画
				break;
			}
		}
	}
}

void move_bullet()
{
	if (bullet_player_y > 0)
	{
		// プレイヤーの玉の再描画の間隔
		if (time_player_bullet_move < 2)
		{
			time_player_bullet_move = time_player_bullet_move + 1;
		}
		else
		{
			draw_rec(bullet_player_x, bullet_player_y, 2, 10, BLACK); // 元居た位置を黒にする
			bullet_player_y = bullet_player_y - 1;					  // プレイヤーの玉のy座標を上に更新
			draw_rec(bullet_player_x, bullet_player_y, 2, 10, RED);	  // 玉の描画
			time_player_bullet_move = 0;							  // 間隔リセット
		}
	}

	// 敵の玉の再描画の間隔
	if (time_enemy_bullet_move < 5)
	{
		time_enemy_bullet_move = time_enemy_bullet_move + 1;
	}
	else
	{
		time_enemy_bullet_move = 0;
		for (i = 0; i < 2; i++)
		{
			for (j = 0; j < 8; j++)
			{
				// 敵が生存している場合
				if (live[i][j] == 1)
				{
					if (bullet_y[i][j] > 0 && bullet_y[i][j] < 160)
					{
						draw_rec(bullet_x[i][j], bullet_y[i][j], 2, 10, BLACK); // 元居た位置を黒にする
						bullet_y[i][j] = bullet_y[i][j] + 1;					// 敵の玉のy座標を下に更新
						draw_rec(bullet_x[i][j], bullet_y[i][j], 2, 10, WHITE);	// 玉を描画
					}
					else if (bullet_y[i][j] >= 160)
					{
						draw_rec(bullet_x[i][j], bullet_y[i][j], 2, 10, BLACK); // 元居た位置を黒にする、範囲外なので描画はしない
						bullet_y[i][j] = 0;										// 玉の座標を初期化
					}
				}
			}
		}
	}
}

void check_enemy()
{
	for (i = 0; i < 2; i++)
	{
		for (j = 0; j < 8; j++)
		{
			// 敵が生存していて、玉との位置の差がyが11未満かつxが6未満の場合
			if (live[i][j] == 1 && check_ABS(bullet_player_y, y[i][j], 11) == 1 && check_ABS(bullet_player_x, x[i][j], 6) == 1)
			{
				live[i][j] = 0; // 状態を死にする

				// 敵のいた場所を黒に塗りつぶす
				draw_rec(x[i][j], y[i][j], 12, 10, BLACK);
				draw_rec(bullet_x[i][j], bullet_y[i][j], 2, 10, BLACK);
				draw_rec(bullet_player_x, bullet_player_y, 2, 10, BLACK);
				bullet_player_y = 0; // プレイヤーの玉の位置をリセット
			}
		}
	}
}

void check_END()
{
	GAME_CLEAR = 1; // 状態をクリア状態にする
	for (i = 0; i < 2; i++)
	{
		for (j = 0; j < 8; j++)
		{
			// プレイヤーの描画と敵の玉のy座標が重なっている場合
			if (bullet_y[i][j] >= (player_y - 8) && bullet_y[i][j] <= (player_y + 9))
			{
				// プレイヤーのx座標と敵の玉のx座標の差が6未満の時
				if (check_ABS(player_x, bullet_x[i][j], 6) == 1)
				{
					// プレイヤーが死亡
					alive = 1;
					status = 2;
				}
			}

			// 敵が生存していた場合
			if (live[i][j] == 1)
			{
				GAME_CLEAR = 0; // ゲームは未クリア
			}
		}
	}
	if (GAME_CLEAR == 1) // 敵が全滅していた場合
	{
		alive = 0;
		status = 3;
	}
}

hword check_ABS(hword a, hword b, hword t)
{
	if (a >= b)
	{
		if (a - b < t)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	else
	{
		if (b - a < t)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
}
