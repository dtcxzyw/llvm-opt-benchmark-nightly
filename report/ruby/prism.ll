Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parser_lex:bb.a
  %i.wh = getelementptr i8, ptr %i.wg, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !159
  %i.wj = load ptr, ptr %i.wg, align 8, !tbaa !160
  call void %i.wi(ptr noundef %i.wj, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.go:                                            ; preds = %bb.t
  %i.wk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !166
  %i.wm = add i32 %i.wl, -1
  store i32 %i.wm, ptr %i.wk, align 8, !tbaa !166
  store i32 8, ptr %i.w, align 4, !tbaa !162
  %i.wn = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !31
  %i.wp = lshr i32 %i.wo, 1
  store i32 %i.wp, ptr %i.wn, align 4, !tbaa !31
  store i32 15, ptr %i.c, align 8, !tbaa !156
  %i.wq = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2389 = icmp eq ptr %i.wq, null
  br i1 %.not.i2389, label %parser_lex_callback.exit2967, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.wr = getelementptr i8, ptr %i.wq, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !159
  %i.wt = load ptr, ptr %i.wq, align 8, !tbaa !160
  call void %i.ws(ptr noundef %i.wt, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.gq:                                            ; preds = %bb.t
  store i32 1, ptr %i.w, align 4, !tbaa !162
  store i8 1, ptr %i.i, align 8, !tbaa !152
  store i32 17, ptr %i.c, align 8, !tbaa !156
  %i.wu = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2391 = icmp eq ptr %i.wu, null
  br i1 %.not.i2391, label %parser_lex_callback.exit2967, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.wv = getelementptr i8, ptr %i.wu, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !159
  %i.wx = load ptr, ptr %i.wu, align 8, !tbaa !160
  call void %i.ww(ptr noundef %i.wx, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.gs:                                            ; preds = %bb.t
  %i.wy = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !166 ; 2 uses
  %i.xa = add i32 %i.wz, 1
  store i32 %i.xa, ptr %i.wy, align 8, !tbaa !166
  %.val2183 = load i32, ptr %i.w, align 4, !tbaa !162 ; 5 uses
  %i.xb = and i32 %.val2183, 384
  %.not3586 = icmp eq i32 %i.xb, 0
  br i1 %.not3586, label %bb.gz, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.xc = icmp ult ptr %i.cj, %i.bu
  br i1 %i.xc, label %peek.exit.i, label %bb.gx

peek.exit.i:                                      ; preds = %bb.gt
  %i.xd = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.xe = icmp eq i8 %i.xd, 93
  br i1 %i.xe, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %peek.exit.i
  %i.xf = getelementptr i8, ptr %.ph, i64 2       ; 3 uses
  store ptr %i.xf, ptr %i.d, align 8, !tbaa !87
  store i32 %i.wz, ptr %i.wy, align 8, !tbaa !166
  store i32 16, ptr %i.w, align 4, !tbaa !162
  %i.xg = icmp ult ptr %i.xf, %i.bu
  br i1 %i.xg, label %peek.exit.i2395, label %match.exit2396.thread

peek.exit.i2395:                                  ; preds = %bb.gu
  %i.xh = load i8, ptr %i.xf, align 1, !tbaa !83
  %i.xi = icmp eq i8 %i.xh, 61
  br i1 %i.xi, label %bb.gv, label %match.exit2396.thread

bb.gv:                                            ; preds = %peek.exit.i2395
  %i.xj = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.xj, ptr %i.d, align 8, !tbaa !87
  br label %match.exit2396.thread

match.exit2396.thread:                            ; preds = %bb.gu, %peek.exit.i2395, %bb.gv
  %i.xk = phi i32 [ 32, %bb.gv ], [ 31, %peek.exit.i2395 ], [ 31, %bb.gu ]
  store i32 %i.xk, ptr %i.c, align 8, !tbaa !156
  %i.xl = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2397 = icmp eq ptr %i.xl, null
  br i1 %.not.i2397, label %parser_lex_callback.exit2967, label %bb.gw

bb.gw:                                            ; preds = %match.exit2396.thread
  %i.xm = getelementptr i8, ptr %i.xl, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !159
  %i.xo = load ptr, ptr %i.xl, align 8, !tbaa !160
  call void %i.xn(ptr noundef %i.xo, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.gx:                                            ; preds = %peek.exit.i, %bb.gt
  store i32 1040, ptr %i.w, align 4, !tbaa !162
  store i32 29, ptr %i.c, align 8, !tbaa !156
  %i.xp = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2399 = icmp eq ptr %i.xp, null
  br i1 %.not.i2399, label %parser_lex_callback.exit2967, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.xq = getelementptr i8, ptr %i.xp, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !159
  %i.xs = load ptr, ptr %i.xp, align 8, !tbaa !160
  call void %i.xr(ptr noundef %i.xs, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.gz:                                            ; preds = %bb.gs
  %i.xt = and i32 %.val2183, 577
  %i.xu = icmp ne i32 %i.xt, 0
  %i.xv = and i32 %.val2183, 2064
  %i.xw = icmp eq i32 %i.xv, 2064
  %i.xx = or i1 %i.xu, %i.xw
  br i1 %i.xx, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.xy = and i32 %.val2183, 48
  %.not3587 = icmp eq i32 %i.xy, 0
  br i1 %.not3587, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.xz = and i32 %.val2183, 2048
  %i.ya = icmp ne i32 %i.xz, 0
  %or.cond3527 = or i1 %i.ya, %i.bw
  br i1 %or.cond3527, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb, %bb.gz
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hb, %bb.hc, %bb.ha
  %.01893 = phi i32 [ 30, %bb.hc ], [ 29, %bb.hb ], [ 29, %bb.ha ]
  store i32 1025, ptr %i.w, align 4, !tbaa !162
  %i.yb = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !31
  %i.yd = shl i32 %i.yc, 1
  store i32 %i.yd, ptr %i.yb, align 4, !tbaa !31
  store i32 %.01893, ptr %i.c, align 8, !tbaa !156
  %i.ye = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2401 = icmp eq ptr %i.ye, null
  br i1 %.not.i2401, label %parser_lex_callback.exit2967, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.yf = getelementptr i8, ptr %i.ye, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !159
  %i.yh = load ptr, ptr %i.ye, align 8, !tbaa !160
  call void %i.yg(ptr noundef %i.yh, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.hf:                                            ; preds = %bb.t
  %i.yi = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !166
  %i.yk = add i32 %i.yj, -1
  store i32 %i.yk, ptr %i.yi, align 8, !tbaa !166
  store i32 2, ptr %i.w, align 4, !tbaa !162
  %i.yl = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !31
  %i.yn = lshr i32 %i.ym, 1
  store i32 %i.yn, ptr %i.yl, align 4, !tbaa !31
  store i32 33, ptr %i.c, align 8, !tbaa !156
  %i.yo = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2403 = icmp eq ptr %i.yo, null
  br i1 %.not.i2403, label %parser_lex_callback.exit2967, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.yp = getelementptr i8, ptr %i.yo, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !159
  %i.yr = load ptr, ptr %i.yo, align 8, !tbaa !160
  call void %i.yq(ptr noundef %i.yr, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.hh:                                            ; preds = %bb.t
  %i.ys = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !166 ; 2 uses
  %i.yu = getelementptr i8, ptr %0, i64 12
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !167
  %i.yw = icmp eq i32 %i.yt, %i.yv
  br i1 %i.yw, label %.sink.split5579, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.val2158 = load i32, ptr %i.w, align 4, !tbaa !162 ; 2 uses
  %i.yx = and i32 %.val2158, 2048
  %.not3583 = icmp ne i32 %i.yx, 0
  %i.yy = and i32 %.val2158, 62
  %or.cond5582 = icmp eq i32 %i.yy, 0
  %or.cond6017 = or i1 %.not3583, %or.cond5582
  br i1 %or.cond6017, label %bb.hj, label %.sink.split5579

.sink.split5579:                                  ; preds = %bb.hi, %bb.hh
  %.01892.ph = phi i32 [ 28, %bb.hi ], [ 113, %bb.hh ]
  store i8 1, ptr %i.i, align 8, !tbaa !152
  br label %bb.hj

bb.hj:                                            ; preds = %.sink.split5579, %bb.hi
  %.sink = phi i32 [ 1025, %bb.hi ], [ 1, %.sink.split5579 ]
  %.01892 = phi i32 [ 28, %bb.hi ], [ %.01892.ph, %.sink.split5579 ]
  store i32 %.sink, ptr %i.w, align 4, !tbaa !162
  %i.yz = add i32 %i.yt, 1
  store i32 %i.yz, ptr %i.ys, align 8, !tbaa !166
  %i.za = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.zb = load <2 x i32>, ptr %i.za, align 8, !tbaa !31 ; 2 uses
  %i.zc = insertelement <2 x i32> %i.zb, i32 1, i64 0
  %i.zd = add <2 x i32> %i.zb, %i.zc
  store <2 x i32> %i.zd, ptr %i.za, align 8, !tbaa !31
  store i32 %.01892, ptr %i.c, align 8, !tbaa !156
  %i.ze = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2405 = icmp eq ptr %i.ze, null
  br i1 %.not.i2405, label %parser_lex_callback.exit2967, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.zf = getelementptr i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !159
  %i.zh = load ptr, ptr %i.ze, align 8, !tbaa !160
  call void %i.zg(ptr noundef %i.zh, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.hl:                                            ; preds = %bb.t
  %i.zi = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !166
  %i.zk = add i32 %i.zj, -1
  store i32 %i.zk, ptr %i.zi, align 8, !tbaa !166
  %i.zl = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !31
  %i.zn = lshr i32 %i.zm, 1
  store i32 %i.zn, ptr %i.zl, align 4, !tbaa !31
  %i.zo = load ptr, ptr %i.o, align 8, !tbaa !93  ; 4 uses
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !99
  %i.zq = icmp eq i32 %i.zp, 1
  %i.zr = getelementptr i8, ptr %0, i64 16
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !168 ; 2 uses
  %i.zt = icmp eq i32 %i.zs, 0
  %or.cond5546 = select i1 %i.zq, i1 %i.zt, i1 false
  br i1 %or.cond5546, label %bb.hm, label %._crit_edge4567

bb.hm:                                            ; preds = %bb.hl
  %i.zu = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !92 ; 3 uses
  %i.zw = icmp eq i64 %i.zv, 0
  br i1 %i.zw, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i32 0, ptr %i.zo, align 8, !tbaa !99
  br label %lex_mode_pop.exit

bb.ho:                                            ; preds = %bb.hm
  %i.zx = icmp ult i64 %i.zv, 4
  %i.zy = add i64 %i.zv, -1                       ; 2 uses
  store i64 %i.zy, ptr %i.zu, align 8, !tbaa !92
  br i1 %i.zx, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.zz = getelementptr i8, ptr %0, i64 40
  %i.aaa = getelementptr [64 x i8], ptr %i.zz, i64 %i.zy
  store ptr %i.aaa, ptr %i.o, align 8, !tbaa !93
  br label %lex_mode_pop.exit

bb.hq:                                            ; preds = %bb.ho
  %i.aab = getelementptr i8, ptr %i.zo, i64 56
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !98
  call void @free(ptr noundef nonnull %i.zo) #27
  store ptr %i.aac, ptr %i.o, align 8, !tbaa !93
  br label %lex_mode_pop.exit

lex_mode_pop.exit:                                ; preds = %bb.hn, %bb.hp, %bb.hq
  store i32 4, ptr %i.c, align 8, !tbaa !156
  %i.aad = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2407 = icmp eq ptr %i.aad, null
  br i1 %.not.i2407, label %parser_lex_callback.exit2967, label %bb.hr

bb.hr:                                            ; preds = %lex_mode_pop.exit
  %i.aae = getelementptr i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !159
  %i.aag = load ptr, ptr %i.aad, align 8, !tbaa !160
  call void %i.aaf(ptr noundef %i.aag, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

._crit_edge4567:                                  ; preds = %bb.hl
  %i.aah = getelementptr i8, ptr %0, i64 16
  %i.aai = add i32 %i.zs, -1
  store i32 %i.aai, ptr %i.aah, align 8, !tbaa !168
  store i32 2, ptr %i.w, align 4, !tbaa !162
  store i32 2, ptr %i.c, align 8, !tbaa !156
  %i.aaj = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2409 = icmp eq ptr %i.aaj, null
  br i1 %.not.i2409, label %parser_lex_callback.exit2967, label %bb.hs

bb.hs:                                            ; preds = %._crit_edge4567
  %i.aak = getelementptr i8, ptr %i.aaj, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !159
  %i.aam = load ptr, ptr %i.aaj, align 8, !tbaa !160
  call void %i.aal(ptr noundef %i.aam, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.ht:                                            ; preds = %bb.t
  %i.aan = icmp ult ptr %i.cj, %i.bu
  br i1 %i.aan, label %peek.exit.i2413, label %lex_state_spcarg_p.exit2437.thread.sink.split

peek.exit.i2413:                                  ; preds = %bb.ht
  %i.aao = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.aap = icmp eq i8 %i.aao, 42
  br i1 %i.aap, label %bb.hu, label %peek.exit.i2429

bb.hu:                                            ; preds = %peek.exit.i2413
  %i.aaq = getelementptr i8, ptr %.ph, i64 2      ; 4 uses
  store ptr %i.aaq, ptr %i.d, align 8, !tbaa !87
  %i.aar = icmp ult ptr %i.aaq, %i.bu
  br i1 %i.aar, label %peek.exit.i2417, label %lex_state_spcarg_p.exit.thread.sink.split

peek.exit.i2417:                                  ; preds = %bb.hu
  %i.aas = load i8, ptr %i.aaq, align 1, !tbaa !83
  %i.aat = icmp eq i8 %i.aas, 61
  br i1 %i.aat, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %peek.exit.i2417
  %i.aau = getelementptr i8, ptr %.ph, i64 3
  store ptr %i.aau, ptr %i.d, align 8, !tbaa !87
  store i32 1, ptr %i.w, align 4, !tbaa !162
  store i32 146, ptr %i.c, align 8, !tbaa !156
  %i.aav = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2419 = icmp eq ptr %i.aav, null
  br i1 %.not.i2419, label %parser_lex_callback.exit2967, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !159
  %i.aay = load ptr, ptr %i.aav, align 8, !tbaa !160
  call void %i.aax(ptr noundef %i.aay, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.hx:                                            ; preds = %peek.exit.i2417
  %.val2234.pre45655082 = load i32, ptr %i.w, align 4, !tbaa !162 ; 2 uses
  %i.aaz = and i32 %.val2234.pre45655082, 48
  %i.aba = icmp ne i32 %i.aaz, 0
  %or.cond.i2424 = and i1 %i.aba, %i.bw
  br i1 %or.cond.i2424, label %lex_state_spcarg_p.exit, label %lex_state_spcarg_p.exit.thread

lex_state_spcarg_p.exit:                          ; preds = %bb.hx
  %i.abb = load i8, ptr %i.aaq, align 1, !tbaa !83
  %i.abc = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %i.abb) #27
  br i1 %i.abc, label %lex_state_spcarg_p.exit.thread.sink.split, label %bb.hy

bb.hy:                                            ; preds = %lex_state_spcarg_p.exit
  %.val2139 = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.abd = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.u, ptr noundef %.val2139, ptr noundef %.val2140, i32 noundef range(i32 297, 324) 301) #27 ; 0 uses
  br label %bb.ib

lex_state_spcarg_p.exit.thread.sink.split:        ; preds = %lex_state_spcarg_p.exit, %bb.hu
  %.val2234.pre4565 = load i32, ptr %i.w, align 4, !tbaa !162
  br label %lex_state_spcarg_p.exit.thread

lex_state_spcarg_p.exit.thread:                   ; preds = %lex_state_spcarg_p.exit.thread.sink.split, %bb.hx
  %.val2234 = phi i32 [ %.val2234.pre45655082, %bb.hx ], [ %.val2234.pre4565, %lex_state_spcarg_p.exit.thread.sink.split ] ; 2 uses
  %i.abe = and i32 %.val2234, 577
  %i.abf = icmp ne i32 %i.abe, 0
  %i.abg = and i32 %.val2234, 2064
  %i.abh = icmp eq i32 %i.abg, 2064
  %i.abi = or i1 %i.abf, %i.abh
  br i1 %i.abi, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %lex_state_spcarg_p.exit.thread
  %i.abj = call fastcc zeroext i1 @ambiguous_operator_p(ptr noundef nonnull %0, i1 noundef zeroext %i.bw)
  br i1 %i.abj, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.abk = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.abl = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.abm = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.abk, ptr noundef %i.abl, i32 noundef 296, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.23) #27 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %lex_state_spcarg_p.exit.thread, %bb.ia, %bb.hz, %bb.hy
  %.01891 = phi i32 [ 160, %bb.hy ], [ 145, %bb.hz ], [ 145, %bb.ia ], [ 160, %lex_state_spcarg_p.exit.thread ]
  %.val2182 = load i32, ptr %i.w, align 4, !tbaa !162
  %i.abn = and i32 %.val2182, 384
  %.not3581 = icmp eq i32 %i.abn, 0
  %. = select i1 %.not3581, i32 1, i32 16
  store i32 %., ptr %i.w, align 4, !tbaa !162
  store i32 %.01891, ptr %i.c, align 8, !tbaa !156
  %i.abo = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2425 = icmp eq ptr %i.abo, null
  br i1 %.not.i2425, label %parser_lex_callback.exit2967, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.abp = getelementptr i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !159
  %i.abr = load ptr, ptr %i.abo, align 8, !tbaa !160
  call void %i.abq(ptr noundef %i.abr, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

peek.exit.i2429:                                  ; preds = %peek.exit.i2413
  %i.abs = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.abt = icmp eq i8 %i.abs, 61
  br i1 %i.abt, label %bb.id, label %bb.if

bb.id:                                            ; preds = %peek.exit.i2429
  %i.abu = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.abu, ptr %i.d, align 8, !tbaa !87
  store i32 1, ptr %i.w, align 4, !tbaa !162
  store i32 144, ptr %i.c, align 8, !tbaa !156
  %i.abv = load ptr, ptr %i.ab, align 8, !tbaa !157 ; 3 uses
  %.not.i2431 = icmp eq ptr %i.abv, null
  br i1 %.not.i2431, label %parser_lex_callback.exit2967, label %bb.ie

end_hunk_0
