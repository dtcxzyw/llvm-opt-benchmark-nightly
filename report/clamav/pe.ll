Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
  %indvars.iv.next3385 = add nuw nsw i64 %indvars.iv3384, 1 ; 2 uses
  %exitcond3388.not = icmp eq i64 %indvars.iv.next3385, %wide.trip.count3387
  br i1 %exitcond3388.not, label %bb.fu, label %bb.fk

bb.fu:                                            ; preds = %bb.ft
  call void @free(ptr noundef nonnull %.021123213) #22
  br label %.critedge

.critedge:                                        ; preds = %.preheader3190, %bb.ev, %bb.fu, %bb.eu, %._crit_edge3267, %bb.es, %bb.et, %bb.er, %.thread2976
  %.42218 = phi i32 [ %.02214.lcssa, %.thread2976 ], [ %.02214.lcssa, %bb.es ], [ %.02214.lcssa, %bb.er ], [ %.02214.lcssa, %bb.et ], [ %.02214.lcssa, %bb.ev ], [ %.021093210, %bb.fu ], [ %.02214.lcssa, %bb.eu ], [ %i.vh, %._crit_edge3267 ], [ 0, %.preheader3190 ]
  %i.wa = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !52
  %i.wc = and i32 %i.wb, 4
  %.not2539 = icmp eq i32 %i.wc, 0
  %.pre3428 = load ptr, ptr %i.kx, align 8, !tbaa !60 ; 5 uses
  br i1 %.not2539, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %.critedge
  %i.wd = load i32, ptr %.pre3428, align 4, !tbaa !61
  %i.we = and i32 %i.wd, 128
  %.not2540 = icmp eq i32 %i.we, 0
  br i1 %.not2540, label %bb.gd, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wf = load i16, ptr %i.bf, align 8, !tbaa !26
  %i.wg = icmp ugt i16 %i.wf, 1
  %i.wh = add i64 %i.ae, -65537
  %i.wi = icmp ult i64 %i.wh, 4128767
  %or.cond45 = select i1 %i.wg, i1 %i.wi, i1 false
  br i1 %or.cond45, label %bb.fx, label %bb.gd

bb.fx:                                            ; preds = %bb.fw
  %i.wj = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !107
  %.not2541 = icmp eq i32 %i.wl, 0
  br i1 %.not2541, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.wm = call noalias dereferenceable_or_null(35176) ptr @calloc(i64 noundef 1, i64 noundef 35176) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i32 1000, ptr %i.l, align 4, !tbaa !12
  %.not2542 = icmp eq ptr %i.wm, null
  br i1 %.not2542, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.wn = load i32, ptr %i.wj, align 8, !tbaa !23 ; 2 uses
  call fastcc void @cli_parseres_special(i32 noundef %i.wn, i32 noundef %i.wn, ptr noundef %i.ac, ptr noundef %2, i64 noundef %i.ae, i32 noundef 0, i32 noundef 0, ptr noundef %i.l, ptr noundef %i.wm)
  %i.wo = call i32 @cli_detect_swizz(ptr noundef nonnull %i.wm) #22
  %i.wp = icmp eq i32 %i.wo, 1
  br i1 %i.wp, label %bb.ga, label %.thread2985

bb.ga:                                            ; preds = %bb.fz
  %i.wq = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #22 ; 2 uses
  %.not2543 = icmp eq i32 %i.wq, 0
  br i1 %.not2543, label %.thread2985, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @free(ptr noundef nonnull %i.wm) #22
  br label %bb.gc

.thread2985:                                      ; preds = %bb.fz, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  %.pre3427 = load ptr, ptr %i.kx, align 8, !tbaa !60
  br label %bb.gd

bb.gc:                                            ; preds = %bb.fy, %bb.gb
  %.142243 = phi i32 [ %i.wq, %bb.gb ], [ 20, %bb.fy ]
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %.thread2995

bb.gd:                                            ; preds = %.thread2985, %bb.fx, %bb.fw, %bb.fv, %.critedge
  %i.wr = phi ptr [ %.pre3427, %.thread2985 ], [ %.pre3428, %bb.fx ], [ %.pre3428, %bb.fw ], [ %.pre3428, %bb.fv ], [ %.pre3428, %.critedge ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !58
  store i32 2, ptr %i.ws, align 4, !tbaa !58
  %i.wu = load i32, ptr %i.wr, align 4, !tbaa !61
  %i.wv = and i32 %i.wu, 8288
  %.not2544 = icmp eq i32 %i.wv, 0
  br i1 %.not2544, label %.loopexit3188, label %.preheader3187

.preheader3187:                                   ; preds = %bb.gd
  %i.ww = load i16, ptr %i.bf, align 8, !tbaa !26
  %i.wx = zext i16 %i.ww to i32                   ; 2 uses
  %i.wy = add nsw i32 %i.wx, -1                   ; 2 uses
  %.not3335 = icmp eq i32 %i.wy, 0
  br i1 %.not3335, label %.loopexit3188, label %.lr.ph3273

.lr.ph3273:                                       ; preds = %.preheader3187
  %i.wz = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.xa = add nsw i32 %i.wx, -1
  %wide.trip.count3392 = zext i32 %i.wy to i64
  br label %bb.ge

bb.ge:                                            ; preds = %.lr.ph3273, %bb.gk
  %indvars.iv3389 = phi i64 [ 0, %.lr.ph3273 ], [ %indvars.iv.next3390, %bb.gk ] ; 6 uses
  %i.xb = getelementptr inbounds nuw [36 x i8], ptr %i.wz, i64 %indvars.iv3389 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 12
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !8
  %.not2545 = icmp eq i32 %i.xd, 0
  br i1 %.not2545, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !63
  %.not2546 = icmp eq i32 %i.xf, 0
  br i1 %.not2546, label %bb.gk, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.xg = getelementptr inbounds nuw [36 x i8], ptr %i.wz, i64 %indvars.iv3389 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 48
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !8
  %.not2547 = icmp eq i32 %i.xi, 0
  br i1 %.not2547, label %bb.gk, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 40
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !63
  %.not2548 = icmp eq i32 %i.xk, 0
  br i1 %.not2548, label %bb.gk, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.xl = trunc nuw i64 %indvars.iv3389 to i32    ; 10 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26) #22
  %.not2549 = icmp eq ptr %.02164, null           ; 2 uses
  br i1 %.not2549, label %bb.gl, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.xm = call i32 @cli_jsonbool(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.27, i32 noundef 1) #22 ; 0 uses
  br label %bb.gl

bb.gk:                                            ; preds = %bb.ge, %bb.gf, %bb.gg, %bb.gh
  %indvars.iv.next3390 = add nuw nsw i64 %indvars.iv3389, 1 ; 2 uses
  %exitcond3393.not = icmp eq i64 %indvars.iv.next3390, %wide.trip.count3392
  br i1 %exitcond3393.not, label %.loopexit3188, label %bb.ge

bb.gl:                                            ; preds = %bb.gj, %bb.gi
  %i.xn = load ptr, ptr %i.kx, align 8, !tbaa !60
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !61
  %i.xp = and i32 %i.xo, 8192
  %i.xq = icmp ne i32 %i.xp, 0
  %i.xr = icmp samesign ugt i64 %.020.i, 15
  %or.cond47 = and i1 %i.xr, %i.xq
  %i.xs = load i8, ptr %i.f, align 16
  %i.xt = icmp eq i8 %i.xs, -23
  %or.cond51 = select i1 %or.cond47, i1 %i.xt, i1 false
  br i1 %or.cond51, label %bb.gm, label %.loopexit3188

bb.gm:                                            ; preds = %bb.gl
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !108 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.xx = load i32, ptr %i.xw, align 1, !tbaa !36 ; 2 uses
  %i.xy = add i32 %i.xv, 5
  %i.xz = add i32 %i.xy, %i.xx                    ; 5 uses
  %i.ya = icmp eq i32 %i.xz, 340
  switch i32 %i.xz, label %.loopexit3188 [
    i32 344, label %bb.gn
    i32 340, label %bb.gn
  ]

bb.gn:                                            ; preds = %bb.gm, %bb.gm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28, i32 noundef %i.xx, i32 noundef %i.xv, i32 noundef %i.xz) #22
  %i.yb = zext nneg i32 %i.xz to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !34
  %i.ye = call ptr %i.yd(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.yb, i64 noundef 176, i32 noundef 0) #22, !inline_history !35 ; 4 uses
  %.not2550 = icmp eq ptr %i.ye, null
  br i1 %.not2550, label %.loopexit3188, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.str.29..str.30 = select i1 %i.ya, ptr @.str.29, ptr @.str.30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.29..str.30) #22
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 1
  %i.yg = load i32, ptr %i.yf, align 1, !tbaa !36
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !36
  %i.yj = sub i32 %i.yg, %i.yi                    ; 3 uses
  %i.yk = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.yl = add nuw i64 %indvars.iv3389, 1
  %i.ym = and i64 %i.yl, 4294967295               ; 5 uses
  %i.yn = getelementptr inbounds nuw [36 x i8], ptr %i.yk, i64 %i.ym ; 4 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !10 ; 3 uses
  %.not2551 = icmp ugt i32 %i.yj, %i.yo
  br i1 %.not2551, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !11
  %i.yr = add i32 %i.yo, -4
  %i.ys = add i32 %i.yr, %i.yq
  %.not2552 = icmp ult i32 %i.yj, %i.ys
  br i1 %.not2552, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.31) #22
  br label %.loopexit3188

bb.gr:                                            ; preds = %bb.gp
  %i.yt = sub nuw i32 %i.yj, %i.yo                ; 5 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !8
  %.not2553 = icmp eq i32 %i.yv, 0
  br i1 %.not2553, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.32) #22
  br label %.loopexit3188

bb.gt:                                            ; preds = %bb.gr
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !63 ; 9 uses
  %i.yy = getelementptr inbounds nuw [36 x i8], ptr %i.yk, i64 %indvars.iv3389
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !63 ; 4 uses
  store i32 %i.za, ptr %i.i, align 4, !tbaa !12
  %i.zb = add i32 %i.za, %i.yx                    ; 3 uses
  %i.zc = icmp ult i32 %i.zb, %i.yx
  br i1 %i.zc, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33, i32 noundef %i.yx, i32 noundef %i.za, i32 noundef -1) #22
  br label %.loopexit3188

bb.gv:                                            ; preds = %bb.gt
  %.not2554 = icmp ult i32 %i.yt, %i.zb
  br i1 %.not2554, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, i32 noundef %i.yt, i32 noundef %i.zb) #22
  br label %.loopexit3188

bb.gx:                                            ; preds = %bb.gv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.35, i32 noundef %i.yx, i32 noundef %i.za, i32 noundef %i.yt) #22
  %i.zd = load i32, ptr %i.i, align 4, !tbaa !12
  %i.ze = call i32 @llvm.umax.i32(i32 %i.yx, i32 %i.zd)
  %i.zf = zext i32 %i.ze to i64
  %i.zg = call i32 @cli_checklimits(ptr noundef nonnull @.str.36, ptr noundef nonnull %0, i64 noundef %i.zf, i64 noundef 0, i64 noundef 0) #22
  %.not2555 = icmp eq i32 %i.zg, 0
  br i1 %.not2555, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.gz:                                            ; preds = %bb.gx
  %i.zh = load i32, ptr %i.i, align 4, !tbaa !12
  %i.zi = add i32 %i.zh, %i.yx
  %i.zj = load ptr, ptr %2, align 8, !tbaa !25
  %i.zk = getelementptr inbounds nuw [36 x i8], ptr %i.zj, i64 %i.ym
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !8
  %. = call i32 @llvm.umax.i32(i32 %i.zi, i32 %i.zm)
  %i.zn = zext i32 %. to i64
  %i.zo = call i32 @cli_checklimits(ptr noundef nonnull @.str.36, ptr noundef nonnull %0, i64 noundef %i.zn, i64 noundef 0, i64 noundef 0) #22
  %.not2556 = icmp eq i32 %i.zo, 0
  br i1 %.not2556, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.hb:                                            ; preds = %bb.gz
  %i.zp = load ptr, ptr %2, align 8, !tbaa !25
  %i.zq = getelementptr inbounds nuw [36 x i8], ptr %i.zp, i64 %i.ym
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 12
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !8  ; 3 uses
  %i.zt = add i32 %i.yt, 12
  %i.zu = icmp ult i32 %i.zs, %i.zt
  %i.zv = icmp ugt i32 %i.zs, %i.yx
  %or.cond2863 = or i1 %i.zu, %i.zv
  br i1 %or.cond2863, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37, i32 noundef %i.zs) #22
  br label %.loopexit3188

bb.hd:                                            ; preds = %bb.hb
  %i.zw = load i32, ptr %i.i, align 4, !tbaa !12
  %i.zx = add i32 %i.zw, %i.yx
  %i.zy = zext i32 %i.zx to i64
  %i.zz = call ptr @cli_max_calloc(i64 noundef %i.zy, i64 noundef 1) #22 ; 10 uses
  %.not2557 = icmp eq ptr %i.zz, null
  br i1 %.not2557, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.hf:                                            ; preds = %bb.hd
  %i.aaa = load i32, ptr %i.i, align 4, !tbaa !12
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aab
  %i.aad = load ptr, ptr %2, align 8, !tbaa !25
  %i.aae = getelementptr inbounds nuw [36 x i8], ptr %i.aad, i64 %i.ym ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !11
  %i.aah = zext i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !8
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aac, i64 noundef %i.aah, i64 noundef %i.aak) ; 4 uses
  %i.aam = load ptr, ptr %2, align 8, !tbaa !25
  %i.aan = getelementptr inbounds nuw [36 x i8], ptr %i.aam, i64 %i.ym
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 12
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !8 ; 2 uses
  %i.aaq = zext i32 %i.aap to i64
  %.not2558 = icmp eq i64 %i.aal, %i.aaq
  br i1 %.not2558, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, i32 noundef %i.aap, i64 noundef %i.aal) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.zz) #22
  br label %.thread2995

bb.hh:                                            ; preds = %bb.hf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i64 noundef %i.aal, i64 noundef %i.aal) #22
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ye, i64 123
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !36
  %i.aat = icmp eq i8 %i.aas, -24
  br i1 %i.aat, label %bb.hi, label %bb.hn

bb.hi:                                            ; preds = %bb.hh
  %i.aau = load ptr, ptr %2, align 8, !tbaa !25   ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 40
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !63 ; 2 uses
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = icmp ult i32 %i.aaw, 4
  br i1 %i.aay, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 36
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ye, i64 124
  %i.abb = load i32, ptr %i.aba, align 1, !tbaa !36
  %i.abc = add nuw nsw i32 %i.xz, 128
  %i.abd = add i32 %i.abc, %i.abb                 ; 3 uses
  %i.abe = load i32, ptr %i.aaz, align 4, !tbaa !10 ; 2 uses
  %.not2560 = icmp ult i32 %i.abd, %i.abe
  br i1 %.not2560, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.abf = zext i32 %i.abe to i64
  %i.abg = zext i32 %i.abd to i64
  %i.abh = add nuw nsw i64 %i.abg, 4
  %i.abi = add nuw nsw i64 %i.abf, %i.aax
  %.not2561.not = icmp samesign ugt i64 %i.abh, %i.abi
  br i1 %.not2561.not, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hi, %bb.hk, %bb.hj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #22
  call void @free(ptr noundef nonnull %i.zz) #22
  br label %.loopexit3188

bb.hm:                                            ; preds = %bb.hk
  %i.abj = load i32, ptr %i.aau, align 4, !tbaa !10
  %i.abk = sub i32 %i.abd, %i.abj
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hh, %bb.hm
  %.02108 = phi i32 [ %i.abk, %bb.hm ], [ 0, %bb.hh ]
  br i1 %.not2549, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.abl = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #22 ; 0 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !109
  %i.abo = call ptr @cli_gentemp(ptr noundef %i.abn) #22 ; 3 uses
  store ptr %i.abo, ptr %i.g, align 8, !tbaa !85
  %.not2564 = icmp eq ptr %i.abo, null
  br i1 %.not2564, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.zz, i32 noundef 0)
  br label %.thread2995

bb.hr:                                            ; preds = %bb.hp
  %i.abp = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.abo, i32 noundef 578, i32 noundef 384) #22 ; 6 uses
  %i.abq = icmp slt i32 %i.abp, 0
  br i1 %i.abq, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.abr = load ptr, ptr %i.g, align 8, !tbaa !85
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, ptr noundef %i.abr) #22
  %i.abs = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.abs) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.zz, i32 noundef 0)
  br label %.thread2995

bb.ht:                                            ; preds = %bb.hr
  %i.abt = load i32, ptr %i.i, align 4, !tbaa !12
  %i.abu = load i32, ptr %i.yh, align 4, !tbaa !36
  %i.abv = load ptr, ptr %2, align 8, !tbaa !25
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !10
  %i.abx = call i32 @unmew11(ptr noundef nonnull %i.zz, i32 noundef %i.yt, i32 noundef %i.yx, i32 noundef %i.abt, i32 noundef %i.abu, i32 noundef %i.abw, i32 noundef %.02108, i32 noundef %i.abp) #22
end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a

bb.jw:                                            ; preds = %bb.ju, %bb.jt
  %i.aiw = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aiw) #22
  br label %.thread2995

bb.jx:                                            ; preds = %bb.js
  br i1 %.not2585, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.aix = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.aiy = call i32 @cli_unlink(ptr noundef %i.aix) #22
  %.not2586 = icmp eq i32 %i.aiy, 0
  br i1 %.not2586, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aiz = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aiz) #22
  br label %.thread2995

bb.ka:                                            ; preds = %bb.jy, %bb.jx
  %i.aja = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aja) #22
  br label %.thread2995

bb.kb:                                            ; preds = %bb.jr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57) #22
  %i.ajb = call i32 @close(i32 noundef %i.aia) #22 ; 0 uses
  %i.ajc = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.ajd = call i32 @cli_unlink(ptr noundef %i.ajc) #22
  %.not2583 = icmp eq i32 %i.ajd, 0
  br i1 %.not2583, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.aje = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aje) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agq, i32 noundef 0)
  br label %.thread2995

bb.kd:                                            ; preds = %bb.kb
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.agq, i32 noundef 0)
  %i.ajf = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.ajf) #22
  br label %.critedge89

.critedge89:                                      ; preds = %bb.il, %bb.ij, %bb.jc, %bb.jg, %bb.jk, %bb.kd, %bb.ih, %bb.iq, %bb.im, %bb.ip, %bb.io
  br i1 %i.act, label %bb.ke, label %.critedge129

bb.ke:                                            ; preds = %.critedge89
  %i.ajg = load ptr, ptr %i.kx, align 8, !tbaa !60
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !61
  %i.aji = and i32 %i.ajh, 64
  %i.ajj = icmp ne i32 %i.aji, 0
  %i.ajk = load i8, ptr %i.f, align 16
  %i.ajl = icmp eq i8 %i.ajk, -121
  %or.cond96 = select i1 %i.ajj, i1 %i.ajl, i1 false
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 7 uses
  %i.ajn = load i8, ptr %i.ajm, align 1
  %i.ajo = icmp eq i8 %i.ajn, 37
  %or.cond210 = select i1 %or.cond96, i1 %i.ajo, i1 false
  br i1 %or.cond210, label %bb.kf, label %bb.me

bb.kf:                                            ; preds = %bb.ke
  %i.ajp = load ptr, ptr %2, align 8, !tbaa !25   ; 2 uses
  %i.ajq = add i32 %.622202992, 1                 ; 2 uses
  %i.ajr = zext i32 %i.ajq to i64                 ; 4 uses
  %i.ajs = getelementptr inbounds nuw [36 x i8], ptr %i.ajp, i64 %i.ajr
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 12
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !8 ; 7 uses
  %i.ajv = zext i32 %.622202992 to i64            ; 2 uses
  %i.ajw = getelementptr inbounds nuw [36 x i8], ptr %i.ajp, i64 %i.ajv
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !63 ; 2 uses
  store i32 %i.ajy, ptr %i.i, align 4, !tbaa !12
  %i.ajz = call i32 @llvm.umax.i32(i32 %i.ajy, i32 %i.aju)
  %i.aka = zext i32 %i.ajz to i64
  %i.akb = call i32 @cli_checklimits(ptr noundef nonnull @.str.58, ptr noundef nonnull %0, i64 noundef %i.aka, i64 noundef 0, i64 noundef 0) #22
  %.not2589 = icmp eq i32 %i.akb, 0
  br i1 %.not2589, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.kh:                                            ; preds = %bb.kf
  %i.akc = icmp ugt i32 %i.aju, 25
  %i.akd = load i32, ptr %i.i, align 4            ; 2 uses
  %.not2590 = icmp ugt i32 %i.akd, %i.aju
  %or.cond2877 = select i1 %i.akc, i1 %.not2590, i1 false
  br i1 %or.cond2877, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59, i32 noundef %i.aju, i32 noundef %i.akd) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.kj:                                            ; preds = %bb.kh
  %i.ake = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.akf = load i32, ptr %i.ake, align 2, !tbaa !36
  %i.akg = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 3 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !36
  %i.aki = sub i32 %i.akf, %i.akh                 ; 4 uses
  %i.akj = load ptr, ptr %2, align 8, !tbaa !25
  %i.akk = getelementptr inbounds nuw [36 x i8], ptr %i.akj, i64 %i.ajr ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 12
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !8 ; 2 uses
  %i.akn = zext i32 %i.akm to i64
  %i.ako = icmp ult i32 %i.akm, 4
  br i1 %i.ako, label %bb.km, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.akp = zext i32 %i.aki to i64                 ; 2 uses
  %i.akq = load i32, ptr %i.akk, align 4, !tbaa !10 ; 2 uses
  %.not2592 = icmp ult i32 %i.aki, %i.akq
  br i1 %.not2592, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.akr = zext i32 %i.akq to i64
  %i.aks = add nuw nsw i64 %i.akp, 4
  %i.akt = add nuw nsw i64 %i.akr, %i.akn
  %.not2593.not = icmp samesign ugt i64 %i.aks, %i.akt
  br i1 %.not2593.not, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kj, %bb.kl, %bb.kk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60, i32 noundef %i.aki) #22
  br label %bb.me

bb.kn:                                            ; preds = %bb.kl
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !11
  %i.akw = zext i32 %i.akv to i64
  %i.akx = zext i32 %i.aju to i64                 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !34
  %i.ala = call ptr %i.akz(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.akw, i64 noundef %i.akx, i32 noundef 0) #22, !inline_history !35 ; 6 uses
  %.not2594 = icmp eq ptr %i.ala, null
  br i1 %.not2594, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %i.ajq) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.kp:                                            ; preds = %bb.kn
  %i.alb = load ptr, ptr %2, align 8, !tbaa !25   ; 2 uses
  %i.alc = getelementptr inbounds nuw [36 x i8], ptr %i.alb, i64 %i.ajr ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !10 ; 7 uses
  %i.ale = zext i32 %i.ald to i64                 ; 3 uses
  %i.alf = sub nsw i64 %i.akp, %i.ale             ; 2 uses
  %i.alg = getelementptr inbounds i8, ptr %i.ala, i64 %i.alf ; 2 uses
  %.not2595 = icmp ult i32 %i.aki, %i.ald
  br i1 %.not2595, label %bb.ks, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.alh = ptrtoint ptr %i.ala to i64             ; 3 uses
  %.not2596 = icmp slt i64 %i.alf, 0
  br i1 %.not2596, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ali = ptrtoint ptr %i.alg to i64             ; 2 uses
  %i.alj = add i64 %i.ali, 4                      ; 2 uses
  %i.alk = add i64 %i.alh, %i.akx                 ; 4 uses
  %.not2597 = icmp ule i64 %i.alj, %i.alk
  %i.all = icmp ugt i64 %i.alj, %i.alh
  %or.cond2881 = and i1 %.not2597, %i.all
  %i.alm = icmp ugt i64 %i.alk, %i.ali
  %or.cond2882 = and i1 %i.alm, %or.cond2881
  br i1 %or.cond2882, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq, %bb.kp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62) #22
  br label %bb.me

bb.kt:                                            ; preds = %bb.kr
  %i.aln = load i32, ptr %i.alg, align 1, !tbaa !36
  %i.alo = load i32, ptr %i.akg, align 4, !tbaa !36 ; 5 uses
  %i.alp = sub i32 %i.aln, %i.alo                 ; 3 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !8 ; 4 uses
  %i.als = zext i32 %i.alr to i64
  %i.alt = icmp ult i32 %i.alr, 4
  br i1 %i.alt, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.alu = zext i32 %i.alp to i64                 ; 2 uses
  %.not2599 = icmp ult i32 %i.alp, %i.ald
  br i1 %.not2599, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.alv = add nuw nsw i64 %i.alu, 4
  %i.alw = add nuw nsw i64 %i.als, %i.ale         ; 2 uses
  %.not2600.not = icmp samesign ugt i64 %i.alv, %i.alw
  br i1 %.not2600.not, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kt, %bb.kv, %bb.ku
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63, i32 noundef %i.alp) #22
  br label %bb.me

bb.kx:                                            ; preds = %bb.kv
  %i.alx = sub nuw nsw i64 %i.alu, %i.ale
  %i.aly = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.alx ; 4 uses
  %i.alz = icmp ult i32 %i.aju, 32
  br i1 %i.alz, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ama = ptrtoint ptr %i.aly to i64             ; 2 uses
  %i.amb = add i64 %i.ama, 32                     ; 2 uses
  %.not2602 = icmp ule i64 %i.amb, %i.alk
  %i.amc = icmp ugt i64 %i.amb, %i.alh
  %or.cond2886 = and i1 %.not2602, %i.amc
  %i.amd = icmp ugt i64 %i.alk, %i.ama
  %or.cond2887 = and i1 %i.amd, %or.cond2886
  br i1 %or.cond2887, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64) #22
  br label %bb.me

bb.la:                                            ; preds = %bb.ky
  %i.ame = load i32, ptr %i.aly, align 1, !tbaa !36
  %i.amf = sub i32 %i.ame, %i.alo                 ; 3 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aly, i64 4
  %i.amh = load i32, ptr %i.amg, align 1, !tbaa !36
  %i.ami = sub i32 %i.amh, %i.alo                 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.aly, i64 16
  %i.amk = load i32, ptr %i.amj, align 1, !tbaa !36
  %i.aml = sub i32 %i.amk, %i.alo                 ; 3 uses
  %i.amm = getelementptr inbounds nuw [36 x i8], ptr %i.alb, i64 %i.ajv
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !10 ; 2 uses
  %.not2603 = icmp eq i32 %i.amf, %i.amn
  br i1 %.not2603, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, i32 noundef %i.amf, i32 noundef %i.amn) #22
  br label %bb.me

bb.lc:                                            ; preds = %bb.la
  %i.amo = icmp uge i32 %i.ami, %i.ald
  %i.amp = sub nuw i32 %i.ami, %i.ald
  %.not2604 = icmp ult i32 %i.amp, %i.alr
  %or.cond2888 = select i1 %i.amo, i1 %.not2604, i1 false
  br i1 %or.cond2888, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66) #22
  br label %bb.me

bb.le:                                            ; preds = %bb.lc
  %i.amq = icmp ult i32 %i.alr, 16
  %.not2605 = icmp ult i32 %i.aml, %i.ald
  %or.cond3165 = select i1 %i.amq, i1 true, i1 %.not2605
  %i.amr = zext i32 %i.aml to i64
  %i.ams = add nuw nsw i64 %i.amr, 16
  %.not2606.not = icmp samesign ugt i64 %i.ams, %i.alw
  %or.cond3692 = select i1 %or.cond3165, i1 true, i1 %.not2606.not
  br i1 %or.cond3692, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67) #22
  br label %bb.me

bb.lg:                                            ; preds = %bb.le
  %reass.sub3336 = sub nuw i32 %i.aml, %i.ald
  %i.amt = add i32 %reass.sub3336, 12
  %i.amu = zext i32 %i.amt to i64
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.amu
  %i.amw = load i32, ptr %i.amv, align 1, !tbaa !36
  %i.amx = sub i32 %i.amw, %i.alo                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.amx) #22
  %i.amy = load i32, ptr %i.i, align 4, !tbaa !12
  %i.amz = zext i32 %i.amy to i64
  %i.ana = call ptr @cli_max_calloc(i64 noundef %i.amz, i64 noundef 1) #22 ; 8 uses
  %i.anb = icmp eq ptr %i.ana, null
  br i1 %i.anb, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.li:                                            ; preds = %bb.lg
  %.not2607 = icmp eq ptr %.02164, null
  br i1 %.not2607, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.anc = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #22 ; 0 uses
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !109
  %i.anf = call ptr @cli_gentemp(ptr noundef %i.ane) #22 ; 3 uses
  store ptr %i.anf, ptr %i.g, align 8, !tbaa !85
  %.not2608 = icmp eq ptr %i.anf, null
  br i1 %.not2608, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ana, i32 noundef 0)
  br label %.thread2995

bb.lm:                                            ; preds = %bb.lk
  %i.ang = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.anf, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.anh = icmp slt i32 %i.ang, 0
  br i1 %i.anh, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.ani = load ptr, ptr %i.g, align 8, !tbaa !85
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, ptr noundef %i.ani) #22
  %i.anj = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.anj) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ana, i32 noundef 0)
  br label %.thread2995

bb.lo:                                            ; preds = %bb.lm
  %i.ank = load ptr, ptr %2, align 8, !tbaa !25
  %i.anl = getelementptr inbounds nuw [36 x i8], ptr %i.ank, i64 %i.ajr
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !10 ; 2 uses
  %i.ann = sub i32 %i.ami, %i.anm
  %i.ano = zext i32 %i.ann to i64
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.ano
  %i.anq = sub i32 %i.aju, %i.ami
  %i.anr = add i32 %i.anq, %i.anm
  %i.ans = load i32, ptr %i.i, align 4, !tbaa !12
  %i.ant = load i32, ptr %i.akg, align 4, !tbaa !36
  %i.anu = call i32 @unfsg_200(ptr noundef nonnull %i.anp, ptr noundef nonnull %i.ana, i32 noundef %i.anr, i32 noundef %i.ans, i32 noundef %i.amf, i32 noundef %i.ant, i32 noundef %i.amx, i32 noundef %i.ang) #22
  switch i32 %i.anu, label %bb.mb [
    i32 1, label %bb.lp
    i32 0, label %bb.ly
  ]

bb.lp:                                            ; preds = %bb.lo
  %i.anv = load ptr, ptr %i.g, align 8, !tbaa !85
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, ptr noundef %i.anv) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ana, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.anw = call i64 @lseek(i32 noundef %i.ang, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.anx = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.any = call i32 @cli_magic_scan_desc(i32 noundef %i.ang, ptr noundef %i.anx, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2610 = icmp eq i32 %i.any, 0
  %i.anz = call i32 @close(i32 noundef %i.ang) #22 ; 0 uses
  %i.aoa = load ptr, ptr %i.ks, align 8, !tbaa !65
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 48
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !110
  %.not2611 = icmp eq i32 %i.aoc, 0               ; 2 uses
  br i1 %.not2610, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  br i1 %.not2611, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.aod = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.aoe = call i32 @cli_unlink(ptr noundef %i.aod) #22
  %.not2614 = icmp eq i32 %i.aoe, 0
  br i1 %.not2614, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.aof = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aof) #22
  br label %.thread2995

bb.lt:                                            ; preds = %bb.lr, %bb.lq
  %i.aog = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aog) #22
  br label %.thread2995

bb.lu:                                            ; preds = %bb.lp
  br i1 %.not2611, label %bb.lv, label %bb.lx

bb.lv:                                            ; preds = %bb.lu
  %i.aoh = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.aoi = call i32 @cli_unlink(ptr noundef %i.aoh) #22
  %.not2612 = icmp eq i32 %i.aoi, 0
  br i1 %.not2612, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aoj = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aoj) #22
  br label %.thread2995

bb.lx:                                            ; preds = %bb.lv, %bb.lu
  %i.aok = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aok) #22
  br label %.thread2995

bb.ly:                                            ; preds = %bb.lo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #22
  %i.aol = call i32 @close(i32 noundef %i.ang) #22 ; 0 uses
  %i.aom = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.aon = call i32 @cli_unlink(ptr noundef %i.aom) #22
  %.not2609 = icmp eq i32 %i.aon, 0
  br i1 %.not2609, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.aoo = load ptr, ptr %i.g, align 8, !tbaa !85
  call void @free(ptr noundef %i.aoo) #22
  br label %.thread2995

bb.ma:                                            ; preds = %bb.ly
  %i.aop = load ptr, ptr %i.g, align 8, !tbaa !85
  br label %.sink.split3693
end_hunk_1
begin_hunk_2_@cli_peheader:bb.a
  %.0706.ph = phi ptr [ %i.dh, %bb.cn ], [ null, %bb.cr ]
  %.0693.ph = phi i64 [ %i.dx, %bb.cn ], [ %i.dm, %bb.cr ]
  %.sink1149 = load i32, ptr %.sink1149.in, align 8, !tbaa !108
  %i.ja = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %.sink1149) #22 ; 0 uses
  %i.jb = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.258, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !36
  %i.je = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jd) #22 ; 0 uses
  %i.jf = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !36
  %i.ji = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jh) #22 ; 0 uses
  %i.jj = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !36
  %i.jm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jl) #22 ; 0 uses
  %i.jn = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.261, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !36
  %i.jq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jp) #22 ; 0 uses
  %i.jr = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.g) #22 ; 0 uses
  %.sink = load i32, ptr %.sink.in, align 8, !tbaa !27
  %i.js = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %.sink) #22 ; 0 uses
  %i.jt = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split, %bb.cq, %bb.cm
  %.0707 = phi i32 [ 96, %bb.cq ], [ 112, %bb.cm ], [ %.0707.ph, %.sink.split ]
  %.0706 = phi ptr [ null, %bb.cq ], [ %i.dh, %bb.cm ], [ %.0706.ph, %.sink.split ] ; 4 uses
  %.0693 = phi i64 [ %i.dm, %bb.cq ], [ %i.dx, %bb.cm ], [ %.0693.ph, %.sink.split ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !59
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = icmp ne ptr %.0706, null
  %or.cond6 = and i1 %i.jx, %i.jw                 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0706, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.in = select i1 %or.cond6, ptr %i.jy, ptr %i.jz
  %i.ka = load i32, ptr %.in, align 4, !tbaa !36  ; 17 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0706, i64 36
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.in760 = select i1 %or.cond6, ptr %i.kb, ptr %i.kc
  %i.kd = load i32, ptr %.in760, align 4, !tbaa !36 ; 11 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0706, i64 68
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.in761.in = select i1 %or.cond6, ptr %i.ke, ptr %i.kf
  %.in761 = load i16, ptr %.in761.in, align 4, !tbaa !36
  switch i16 %.in761, label %bb.dg [
    i16 16, label %bb.df
    i16 1, label %bb.ct
    i16 2, label %bb.cu
    i16 3, label %bb.cv
    i16 5, label %bb.cw
    i16 7, label %bb.cx
    i16 8, label %bb.cy
    i16 9, label %bb.cz
    i16 10, label %bb.da
    i16 11, label %bb.db
    i16 12, label %bb.dc
    i16 13, label %bb.dd
    i16 14, label %bb.de
  ]

bb.ct:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cu:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cv:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cw:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cx:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cy:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cs
  br label %bb.dg

bb.da:                                            ; preds = %bb.cs
  br label %bb.dg

bb.db:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dc:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dd:                                            ; preds = %bb.cs
  br label %bb.dg

bb.de:                                            ; preds = %bb.cs
  br label %bb.dg

bb.df:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cs, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.0708 = phi ptr [ @.str.183, %bb.cs ], [ @.str.277, %bb.df ], [ @.str.265, %bb.ct ], [ @.str.266, %bb.cu ], [ @.str.267, %bb.cv ], [ @.str.268, %bb.cw ], [ @.str.269, %bb.cx ], [ @.str.270, %bb.cy ], [ @.str.271, %bb.cz ], [ @.str.272, %bb.da ], [ @.str.273, %bb.db ], [ @.str.274, %bb.dc ], [ @.str.275, %bb.dd ], [ @.str.276, %bb.de ] ; 2 uses
  %.not762 = phi i1 [ true, %bb.cs ], [ true, %bb.df ], [ false, %bb.ct ], [ true, %bb.cu ], [ true, %bb.cv ], [ true, %bb.cw ], [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ true, %bb.db ], [ true, %bb.dc ], [ true, %bb.dd ], [ true, %bb.de ]
  br i1 %.not752.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.278, ptr noundef nonnull %.0708) #22
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  br i1 %.not, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.kg = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.279, ptr noundef nonnull %.0708) #22 ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br i1 %.not762, label %bb.dl, label %.critedge844

bb.dl:                                            ; preds = %bb.dk
  %.not763 = icmp ne i32 %i.ka, 0
  %i.kh = and i32 %i.ka, 4095
  %.not764 = icmp eq i32 %i.kh, 0
  %or.cond = and i1 %.not763, %.not764
  br i1 %or.cond, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.280) #22
  %i.ki = and i32 %2, 8
  %.not765 = icmp eq i32 %i.ki, 0
  br i1 %.not765, label %bb.dn, label %.thread945

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.not766 = icmp ne i32 %i.kd, 0
  %i.kj = and i32 %i.kd, 511
  %.not767 = icmp eq i32 %i.kj, 0
  %or.cond845 = and i1 %.not766, %.not767
  br i1 %or.cond845, label %.critedge844, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.281) #22
  %i.kk = and i32 %2, 8
  %.not768 = icmp eq i32 %i.kk, 0
  br i1 %.not768, label %.critedge844, label %.thread945

.critedge844:                                     ; preds = %bb.dk, %bb.dn, %bb.do
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !13 ; 2 uses
  %i.kn = icmp ugt i32 %i.km, 16
  br i1 %i.kn, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge844
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.282) #22
  %.pr = load i32, ptr %i.kl, align 4, !tbaa !13
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.critedge844
  %i.ko = phi i32 [ %.pr, %bb.dp ], [ %i.km, %.critedge844 ] ; 2 uses
  %i.kp = icmp ult i32 %i.ko, 16
  br i1 %i.kp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.kq, i8 0, i64 128, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ko, i32 16) ; 2 uses
  store i32 %spec.select, ptr %i.kl, align 4, !tbaa !13
  %i.kr = shl nuw nsw i32 %spec.select, 3         ; 2 uses
  %i.ks = zext i16 %i.cr to i32                   ; 3 uses
  %i.kt = add nuw nsw i32 %i.kr, %.0707           ; 3 uses
  %i.ku = icmp samesign ugt i32 %i.kt, %i.ks
  br i1 %i.ku, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.283) #22
  br label %.thread945

bb.du:                                            ; preds = %bb.ds
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.kw = zext nneg i32 %i.kr to i64              ; 3 uses
  %i.kx = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.k, ptr noundef nonnull %i.kv, i64 noundef %.0693, i64 noundef %i.kw)
  %.not769 = icmp eq i64 %i.kx, %i.kw
  br i1 %.not769, label %.preheader973, label %bb.dv

.preheader973:                                    ; preds = %bb.du
  %i.ky = add nuw nsw i64 %.0693, %i.kw           ; 2 uses
  %.not770 = icmp eq i32 %i.kt, %i.ks
  br i1 %.not770, label %bb.dx, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.284) #22
  br label %.thread945

bb.dw:                                            ; preds = %.preheader973
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.285) #22
  %i.kz = sub nuw nsw i32 %i.ks, %i.kt
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = add nuw nsw i64 %i.ky, %i.la
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.preheader973
  %.1694 = phi i64 [ %i.lb, %bb.dw ], [ %i.ky, %.preheader973 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %.not771 = icmp eq i32 %i.ka, 0                 ; 5 uses
  br i1 %.not771, label %.critedge848, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !27 ; 3 uses
  %i.le = udiv i32 %i.ld, %i.ka
  %i.lf = urem i32 %i.ld, %i.ka
  %i.lg = icmp ne i32 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = add i32 %i.le, %i.lh
  %i.lj = mul i32 %i.li, %i.ka
  %i.lk = icmp eq i32 %i.ld, %i.lj
  br i1 %i.lk, label %.critedge848, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.286) #22
  br label %.critedge848

.critedge848:                                     ; preds = %bb.dx, %bb.dz, %bb.dy
  %.not773 = icmp eq i32 %i.kd, 0
  br i1 %.not773, label %.critedge850, label %bb.ea

bb.ea:                                            ; preds = %.critedge848
  %i.ll = load i32, ptr %i.lc, align 8, !tbaa !27 ; 3 uses
  %i.lm = udiv i32 %i.ll, %i.kd
  %i.ln = urem i32 %i.ll, %i.kd
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = zext i1 %i.lo to i32
  %i.lq = add i32 %i.lm, %i.lp
  %i.lr = mul i32 %i.lq, %i.kd
  %i.ls = icmp eq i32 %i.ll, %i.lr
  br i1 %i.ls, label %.critedge850, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.287) #22
  br label %.critedge850

.critedge850:                                     ; preds = %.critedge848, %bb.eb, %bb.ea
  %i.lt = load i32, ptr %i.lc, align 8, !tbaa !27 ; 3 uses
  br i1 %.not771, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.critedge850
  %i.lu = udiv i32 %i.lt, %i.ka
  %i.lv = urem i32 %i.lt, %i.ka
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = zext i1 %i.lw to i32
  %i.ly = add i32 %i.lu, %i.lx
  %i.lz = mul i32 %i.ly, %i.ka
  br label %bb.ed

bb.ed:                                            ; preds = %.critedge850, %bb.ec
  %i.ma = phi i32 [ %i.lz, %bb.ec ], [ %i.lt, %.critedge850 ]
  store i32 %i.ma, ptr %i.lc, align 8, !tbaa !27
  %i.mb = load i16, ptr %i.cs, align 8, !tbaa !26
  %i.mc = zext i16 %i.mb to i64
  %i.md = call ptr @cli_max_calloc(i64 noundef %i.mc, i64 noundef 36) #22 ; 2 uses
  store ptr %i.md, ptr %1, align 8, !tbaa !25
  %.not775 = icmp eq ptr %i.md, null
  br i1 %.not775, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.288) #22
  br label %.thread945

bb.ef:                                            ; preds = %bb.ed
  %i.me = load i16, ptr %i.cs, align 8, !tbaa !26
  %i.mf = zext i16 %i.me to i64
  %i.mg = call ptr @cli_max_calloc(i64 noundef %i.mf, i64 noundef 40) #22 ; 7 uses
  %.not776 = icmp eq ptr %i.mg, null
  br i1 %.not776, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.288) #22
  br label %.thread945

bb.eh:                                            ; preds = %bb.ef
  %i.mh = load i16, ptr %i.cs, align 8, !tbaa !26
  %i.mi = zext i16 %i.mh to i64
  %i.mj = mul nuw nsw i64 %i.mi, 40
  %i.mk = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.k, ptr noundef nonnull %i.mg, i64 noundef %.1694, i64 noundef %i.mj) ; 2 uses
  %i.ml = icmp eq i64 %i.mk, -1
  br i1 %i.ml, label %.thread950, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mm = load i16, ptr %i.cs, align 8, !tbaa !26 ; 2 uses
  %i.mn = zext i16 %i.mm to i64
  %i.mo = mul nuw nsw i64 %i.mn, 40
  %.not777 = icmp eq i64 %i.mk, %i.mo
  br i1 %.not777, label %.preheader972, label %.thread950

.preheader972:                                    ; preds = %bb.ei
  %.not778980 = icmp eq i32 %i.kd, 512
  br i1 %.not778980, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader972
  %i.mp = load i16, ptr %i.cs, align 8, !tbaa !26 ; 3 uses
  %i.mq = zext i16 %i.mp to i64
  %.not837 = icmp eq i32 %i.kd, 0
  %.not1140 = icmp eq i16 %i.mp, 0
  br i1 %.not1140, label %.critedge, label %.lr.ph1139

.thread950:                                       ; preds = %bb.eh, %bb.ei
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.289) #22
  br label %bb.ic

.lr.ph1139:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %.17019811138 = phi i64 [ %i.my, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  br i1 %.not837, label %.lr.ph, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1139
  %i.mr = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %.17019811138 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !136
  %.not838 = icmp eq i32 %i.mt, 0
  br i1 %.not838, label %.lr.ph, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !36 ; 2 uses
  %i.mw = urem i32 %i.mv, %i.kd
  %.not839 = icmp ne i32 %i.mw, 0
  %i.mx = and i32 %i.mv, 511
  %.not840 = icmp eq i32 %i.mx, 0
  %or.cond851 = and i1 %.not839, %.not840
  br i1 %or.cond851, label %.thread1110, label %.lr.ph

.thread1110:                                      ; preds = %bb.ek
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.290) #22
  %.pre.pre = load i16, ptr %i.cs, align 8, !tbaa !26
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph1139, %bb.ej, %bb.ek
  %i.my = add nuw nsw i64 %.17019811138, 1        ; 2 uses
  %i.mz = icmp samesign ult i64 %i.my, %i.mq
  br i1 %i.mz, label %.lr.ph1139, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.thread1110, %.preheader972
  %i.na = phi i16 [ %i.mm, %.preheader972 ], [ %.pre.pre, %.thread1110 ], [ %i.mp, %.lr.ph.preheader ], [ 1, %.lr.ph ]
  %.0695.lcssa = phi i32 [ 512, %.preheader972 ], [ 512, %.thread1110 ], [ %i.kd, %.lr.ph.preheader ], [ %i.kd, %.lr.ph ] ; 5 uses
  %i.nb = load i64, ptr %i.s, align 8, !tbaa !28
  %i.nc = load i32, ptr %i.t, align 8, !tbaa !22
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub i64 %i.nb, %i.nd                    ; 14 uses
  %.not1020 = icmp eq i16 %i.na, 0
  br i1 %.not1020, label %.critedge.._crit_edge994_crit_edge, label %.lr.ph993

.critedge.._crit_edge994_crit_edge:               ; preds = %.critedge
  %.pre1045 = trunc i64 %i.ne to i32
  br label %._crit_edge994

.lr.ph993:                                        ; preds = %.critedge
  %.not804 = icmp eq i32 %.0695.lcssa, 0
  %i.nf = and i32 %2, 16
  %.not814 = icmp eq i32 %i.nf, 0
  %i.ng = trunc i64 %i.ne to i32                  ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ni = and i32 %2, 8
  %.not822 = icmp eq i32 %i.ni, 0                 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 100
  br label %bb.el

bb.el:                                            ; preds = %.lr.ph993, %bb.gm
  %.0697991 = phi i64 [ 0, %.lr.ph993 ], [ %i.tl, %bb.gm ] ; 5 uses
  %.2702990 = phi i64 [ 0, %.lr.ph993 ], [ %i.tk, %bb.gm ] ; 12 uses
  %i.nm = load ptr, ptr %1, align 8, !tbaa !25
  %i.nn = getelementptr inbounds nuw [36 x i8], ptr %i.nm, i64 %.2702990 ; 14 uses
  %i.no = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %.2702990 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !36
  %.fr = freeze i32 %i.nq                         ; 3 uses
  br i1 %.not771, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.nr = urem i32 %.fr, %i.ka
  %i.ns = sub nuw i32 %.fr, %i.nr
  store i32 %i.ns, ptr %i.nn, align 4, !tbaa !10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !36 ; 2 uses
  %i.nv = udiv i32 %i.nu, %i.ka
  %i.nw = urem i32 %i.nu, %i.ka
  %i.nx = icmp ne i32 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = add i32 %i.nv, %i.ny
  %i.oa = mul i32 %i.nz, %i.ka
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  store i32 %.fr, ptr %i.nn, align 4, !tbaa !10
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !36
  br label %bb.eo
end_hunk_2
begin_hunk_3_@cli_peheader:bb.a
  %i.ua = load i32, ptr %i.e, align 4
  %i.ub = icmp ne i32 %i.ua, 0
  %or.cond12 = select i1 %i.tz, i1 %i.ub, i1 false
  br i1 %or.cond12, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %._crit_edge994
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.310) #22
  br label %bb.ic

bb.go:                                            ; preds = %._crit_edge994
  br i1 %.not, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.uc = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.311, i32 noundef %i.tx) #22 ; 0 uses
  %i.ud = call i32 @cli_json_timeout_cycle_check(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #22
  %.not779 = icmp eq i32 %i.ud, 0
  br i1 %.not779, label %bb.gq, label %bb.ic

bb.gq:                                            ; preds = %bb.gp, %bb.go
  br i1 %.not752.not, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ue = load i32, ptr %i.ty, align 4, !tbaa !88 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.312, i32 noundef %i.ue, i32 noundef %i.ue) #22
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  br i1 %.not756.not, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.uf = load i32, ptr %i.kl, align 4, !tbaa !13
  %i.ug = icmp ult i32 %i.uf, 3
  br i1 %i.ug, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !107
  %.not780 = icmp eq i32 %i.ui, 0
  br i1 %.not780, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !23
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gt, %bb.gu, %bb.gv
  %.sink1129 = phi i32 [ %i.uk, %bb.gv ], [ 0, %bb.gu ], [ 0, %bb.gt ], [ 0, %bb.gs ]
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sink1129, ptr %i.ul, align 4, !tbaa !139
  %i.um = and i32 %2, 4
  %.not781 = icmp eq i32 %i.um, 0
  br i1 %.not781, label %.critedge14, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.un = load i32, ptr %i.kl, align 4, !tbaa !13
  %i.uo = icmp ugt i32 %i.un, 2
  br i1 %i.uo, label %bb.gy, label %.critedge14

bb.gy:                                            ; preds = %bb.gx
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !107
  %.not782 = icmp eq i32 %i.uq, 0
  br i1 %.not782, label %.critedge14, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ur = load i32, ptr %i.t, align 8, !tbaa !22
  %.not783 = icmp eq i32 %i.ur, 0
  br i1 %.not783, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.313) #22
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  call void @findres(i32 noundef 16, i32 noundef -1, ptr noundef nonnull %i.k, ptr noundef nonnull %1, ptr noundef nonnull @versioninfo_cb, ptr noundef nonnull %3)
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !140
  %.not784 = icmp eq i32 %i.ut, 0
  br i1 %.not784, label %.thread942, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.uv = call i32 @cli_hashset_init(ptr noundef nonnull %i.uu, i64 noundef 32, i8 noundef zeroext 80) #22
  %.not785 = icmp eq i32 %i.uv, 0
  br i1 %.not785, label %bb.hd, label %.loopexit1132

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.e, align 4, !tbaa !12
  %i.uw = load i32, ptr %i.us, align 4, !tbaa !140 ; 2 uses
  %.not1021 = icmp eq i32 %i.uw, 0
  br i1 %.not1021, label %.thread942, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %bb.hd, %.thread938
  %i.ux = phi i32 [ %i.zu, %.thread938 ], [ %i.uw, %bb.hd ]
  %.47041014 = phi i64 [ %i.va, %.thread938 ], [ 0, %bb.hd ] ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.47041014 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !12
  %i.va = add nuw nsw i64 %.47041014, 1           ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.315, i32 noundef %i.uz, i64 noundef %i.va, i32 noundef %i.ux) #22
  %i.vb = load i32, ptr %i.uy, align 4, !tbaa !12
  %i.vc = load ptr, ptr %1, align 8, !tbaa !25
  %i.vd = load i16, ptr %i.cs, align 8, !tbaa !26
  %i.ve = load i32, ptr %i.lc, align 8, !tbaa !27
  %i.vf = call i32 @cli_rawaddr(i32 noundef %i.vb, ptr noundef %i.vc, i16 noundef zeroext %i.vd, ptr noundef nonnull %i.e, i64 noundef %i.ne, i32 noundef %i.ve)
  %i.vg = load i32, ptr %i.e, align 4, !tbaa !12
  %.not786 = icmp eq i32 %i.vg, 0
  br i1 %.not786, label %bb.he, label %.thread938

bb.he:                                            ; preds = %.lr.ph1016
  %i.vh = zext i32 %i.vf to i64                   ; 2 uses
  %i.vi = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.vj = call ptr %i.vi(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.vh, i64 noundef 16, i32 noundef 0) #22, !inline_history !35 ; 4 uses
  %.not787 = icmp eq ptr %i.vj, null
  br i1 %.not787, label %.thread938, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vk = sub nsw i64 0, %i.vh
  %i.vl = getelementptr inbounds i8, ptr %i.vj, i64 %i.vk
  %i.vm = load i32, ptr %i.vj, align 1, !tbaa !36
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vo = load i32, ptr %i.vn, align 1, !tbaa !36 ; 3 uses
  %i.vp = load ptr, ptr %1, align 8, !tbaa !25
  %i.vq = load i16, ptr %i.cs, align 8, !tbaa !26
  %i.vr = load i32, ptr %i.lc, align 8, !tbaa !27
  %i.vs = call i32 @cli_rawaddr(i32 noundef %i.vm, ptr noundef %i.vp, i16 noundef zeroext %i.vq, ptr noundef nonnull %i.e, i64 noundef %i.ne, i32 noundef %i.vr)
  %i.vt = load i32, ptr %i.e, align 4, !tbaa !12
  %.not788 = icmp eq i32 %i.vt, 0
  br i1 %.not788, label %bb.hg, label %.thread938

bb.hg:                                            ; preds = %bb.hf
  %i.vu = zext i32 %i.vs to i64
  %i.vv = zext i32 %i.vo to i64
  %i.vw = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.vx = call ptr %i.vw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.vu, i64 noundef %i.vv, i32 noundef 0) #22, !inline_history !35 ; 6 uses
  %i.vy = icmp ne ptr %i.vx, null
  %i.vz = icmp ugt i32 %i.vo, 4
  %or.cond24 = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %or.cond24, label %bb.hh, label %.thread938

bb.hh:                                            ; preds = %bb.hg
  %i.wa = load i32, ptr %i.vx, align 1, !tbaa !36 ; 2 uses
  %i.wb = and i32 %i.wa, 65535                    ; 4 uses
  %i.wc = icmp ugt i32 %i.wb, %i.vo
  br i1 %i.wc, label %.thread938, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.wd = icmp samesign ult i32 %i.wb, 93
  %.mask = and i32 %i.wa, -65536
  %i.we = icmp ne i32 %.mask, 3407872
  %or.cond16 = or i1 %i.wd, %i.we
  br i1 %or.cond16, label %.thread938, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 6 ; 2 uses
  %i.wg = load i128, ptr %i.wf, align 1
  %i.wh = xor i128 %i.wg, 379044246709664290880694430490361942
  %i.wi = getelementptr i8, ptr %i.wf, i64 16
  %i.wj = load i128, ptr %i.wi, align 1
  %i.wk = xor i128 %i.wj, 6259109464873122279762873417807
  %i.wl = or i128 %i.wh, %i.wk
  %i.wm = icmp ne i128 %i.wl, 0
  %i.wn = zext i1 %i.wm to i32
  %.not789 = icmp eq i32 %i.wn, 0
  br i1 %.not789, label %bb.hk, label %.thread938

bb.hk:                                            ; preds = %bb.hj
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.wp = load i32, ptr %i.wo, align 1, !tbaa !36
  %.not790 = icmp eq i32 %i.wp, -17890115
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vx, i64 92 ; 3 uses
  %i.wr = add nsw i32 %i.wb, -92                  ; 2 uses
  %i.ws = icmp samesign ugt i32 %i.wb, 98
  %or.cond1019 = select i1 %.not790, i1 %i.ws, i1 false
  br i1 %or.cond1019, label %.lr.ph999.preheader, label %.thread938

.lr.ph999.preheader:                              ; preds = %bb.hk
  %i.wt = load i32, ptr %i.wq, align 1, !tbaa !36
  %i.wu = and i32 %i.wt, 65535                    ; 5 uses
  %i.wv = icmp samesign ule i32 %i.wu, %i.wr
  %i.ww = icmp samesign ugt i32 %i.wu, 30
  %or.cond1131 = select i1 %i.wv, i1 %i.ww, i1 false
  br i1 %or.cond1131, label %bb.hl, label %.thread938

bb.hl:                                            ; preds = %.lr.ph999.preheader
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vx, i64 98 ; 2 uses
  %i.wy = load i128, ptr %i.wx, align 1
  %i.wz = xor i128 %i.wy, 379045672848022283027034608345612374
  %i.xa = getelementptr i8, ptr %i.wx, i64 16
  %i.xb = load i64, ptr %i.xa, align 1
  %i.xc = zext i64 %i.xb to i128
  %i.xd = xor i128 %i.xc, 476748054638
  %i.xe = or i128 %i.wz, %i.xd
  %i.xf = icmp ne i128 %i.xe, 0
  %i.xg = zext i1 %i.xf to i32
  %.not792.peel = icmp eq i32 %i.xg, 0
  br i1 %.not792.peel, label %bb.hm, label %.loopexit1029

bb.hm:                                            ; preds = %bb.hl
  %i.xh = sub nuw nsw i32 %i.wr, %i.wu            ; 2 uses
  %i.xi = icmp samesign ugt i32 %i.xh, 6
  br i1 %i.xi, label %.lr.ph999, label %.thread938

.lr.ph999:                                        ; preds = %bb.hm
  %i.xj = zext nneg i32 %i.wu to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.xj ; 2 uses
  %.pre1042 = load i32, ptr %i.xk, align 1, !tbaa !36
  %i.xl = and i32 %.pre1042, 65535                ; 2 uses
  %i.xm = icmp samesign ugt i32 %i.xl, %i.xh
  br i1 %i.xm, label %.thread938, label %.loopexit1029

.loopexit1029:                                    ; preds = %.lr.ph999, %bb.hl
  %.0674996.lcssa1024 = phi ptr [ %i.xk, %.lr.ph999 ], [ %i.wq, %bb.hl ] ; 2 uses
  %.lcssa1023 = phi i32 [ %i.xl, %.lr.ph999 ], [ %i.wu, %bb.hl ] ; 3 uses
  %i.xn = icmp samesign ult i32 %.lcssa1023, 37
  br i1 %i.xn, label %.thread938, label %bb.hn

bb.hn:                                            ; preds = %.loopexit1029
  %i.xo = getelementptr inbounds nuw i8, ptr %.0674996.lcssa1024, i64 6 ; 2 uses
  %i.xp = load i128, ptr %i.xo, align 1
  %i.xq = xor i128 %i.xp, 545196716242054288091043937878540371
  %i.xr = getelementptr i8, ptr %i.xo, i64 14
  %i.xs = load i128, ptr %i.xr, align 1
  %i.xt = xor i128 %i.xs, 8794449351546104561274347847785
  %i.xu = or i128 %i.xq, %i.xt
  %i.xv = icmp ne i128 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %.not794 = icmp eq i32 %i.xw, 0
  %i.xx = icmp samesign ugt i32 %.lcssa1023, 42
  %or.cond1150 = select i1 %.not794, i1 %i.xx, i1 false
  br i1 %or.cond1150, label %.lr.ph1012, label %.thread938

.lr.ph1012:                                       ; preds = %bb.hn
  %i.xy = add nsw i32 %.lcssa1023, -36
  %i.xz = getelementptr inbounds nuw i8, ptr %.0674996.lcssa1024, i64 36
  %i.ya = ptrtoint ptr %i.vl to i64
  br label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1012, %.thread913
  %.06681010 = phi i32 [ %i.xy, %.lr.ph1012 ], [ %i.yf, %.thread913 ] ; 2 uses
  %.16751009 = phi ptr [ %i.xz, %.lr.ph1012 ], [ %i.ye, %.thread913 ] ; 3 uses
  %i.yb = load i32, ptr %.16751009, align 1, !tbaa !36
  %i.yc = and i32 %i.yb, 65535                    ; 6 uses
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %.16751009, i64 %i.yd
  %i.yf = sub i32 %.06681010, %i.yc               ; 2 uses
  %i.yg = icmp ugt i32 %i.yc, %.06681010
  %i.yh = icmp samesign ult i32 %i.yc, 25
  %or.cond20 = select i1 %i.yg, i1 true, i1 %i.yh
  br i1 %or.cond20, label %.thread938, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.yi = icmp samesign ugt i32 %i.yc, 30
  br i1 %i.yi, label %.lr.ph1005.preheader, label %.thread913

.lr.ph1005.preheader:                             ; preds = %bb.hp
  %i.yj = add nsw i32 %i.yc, -24
  %i.yk = getelementptr inbounds nuw i8, ptr %.16751009, i64 24
  br label %.lr.ph1005

.lr.ph1005:                                       ; preds = %.lr.ph1005.preheader, %bb.ib
  %.06661003 = phi i32 [ %.1667, %bb.ib ], [ %i.yj, %.lr.ph1005.preheader ] ; 2 uses
  %.26761002 = phi ptr [ %.3677, %bb.ib ], [ %i.yk, %.lr.ph1005.preheader ] ; 7 uses
  %i.yl = load i32, ptr %.26761002, align 1, !tbaa !36
  %i.ym = and i32 %i.yl, 65535
  %i.yn = add nuw nsw i32 %i.ym, 3
  %i.yo = and i32 %i.yn, 131068                   ; 8 uses
  %i.yp = icmp ugt i32 %i.yo, %.06661003
  %i.yq = icmp samesign ult i32 %i.yo, 17
  %or.cond22 = select i1 %i.yp, i1 true, i1 %i.yq
  br i1 %or.cond22, label %.thread938, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph1005
  %i.yr = zext nneg i32 %i.yo to i64              ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.hs
  %indvars.iv1030 = phi i64 [ 6, %.preheader.preheader ], [ %indvars.iv.next1031, %bb.hs ] ; 3 uses
  %indvars.iv = phi i64 [ 7, %.preheader.preheader ], [ %indvars.iv.next, %bb.hs ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.26761002, i64 %indvars.iv1030
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !36
  %.not795 = icmp eq i8 %i.yt, 0
  br i1 %.not795, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.preheader
  %i.yu = getelementptr inbounds nuw i8, ptr %.26761002, i64 %indvars.iv
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !36
  %.not796 = icmp eq i8 %i.yv, 0
  br i1 %.not796, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.yw = trunc nuw nsw i64 %indvars.iv1030 to i32
  %i.yx = add i32 %i.yw, 2
  br label %.loopexit

bb.hs:                                            ; preds = %.preheader, %bb.hq
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 2 ; 2 uses
  %i.yy = or disjoint i64 %indvars.iv.next1031, 1
  %i.yz = icmp samesign ult i64 %i.yy, %i.yr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br i1 %i.yz, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %bb.hs, %bb.hr
  %.1 = phi i32 [ %i.yx, %bb.hr ], [ %i.yo, %bb.hs ]
  %i.za = add i32 %.1, 3
  %i.zb = and i32 %i.za, -4                       ; 3 uses
  %.not797 = icmp ult i32 %i.zb, %i.yo
  br i1 %.not797, label %bb.ht, label %bb.ib

bb.ht:                                            ; preds = %.loopexit
  %i.zc = sub nuw nsw i32 %i.yo, %i.zb
  %i.zd = add nsw i32 %i.zb, -6                   ; 2 uses
  %i.ze = ptrtoint ptr %.26761002 to i64
  %i.zf = sub i64 %i.ze, %i.ya
  %i.zg = trunc i64 %i.zf to i32
  %i.zh = add i32 %i.zg, 6                        ; 2 uses
  %i.zi = call i32 @cli_hashset_addkey(ptr noundef nonnull %i.uu, i32 noundef %i.zh) #22
  %.not798 = icmp eq i32 %i.zi, 0
  br i1 %.not798, label %bb.hu, label %.loopexit1132

bb.hu:                                            ; preds = %bb.ht
  %i.zj = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %.not799 = icmp eq i8 %i.zj, 0
  br i1 %.not799, label %bb.ib, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.zk = getelementptr inbounds nuw i8, ptr %.26761002, i64 6 ; 2 uses
  %i.zl = call ptr @cli_utf16toascii(ptr noundef nonnull %i.zk, i32 noundef %i.zd) #22 ; 3 uses
  %.not800 = icmp eq ptr %i.zl, null
  br i1 %.not800, label %bb.ib, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zm = zext i32 %i.zd to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %.26761002, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 6
  %i.zp = call ptr @cli_utf16toascii(ptr noundef nonnull %i.zo, i32 noundef %i.zc) #22 ; 3 uses
  %.not801 = icmp eq ptr %i.zp, null
  br i1 %.not801, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.zq = add nsw i32 %i.yo, -6
  %i.zr = call ptr @cli_str2hex(ptr noundef nonnull %i.zk, i32 noundef %i.zq) #22 ; 3 uses
  %.not802 = icmp eq ptr %i.zr, null
  br i1 %.not802, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.320, i32 noundef %i.zh, ptr noundef nonnull %i.zl, ptr noundef nonnull %i.zp, ptr noundef nonnull %i.zr) #22
  call void @free(ptr noundef nonnull %i.zr) #22
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  call void @free(ptr noundef nonnull %i.zp) #22
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hw
  call void @free(ptr noundef nonnull %i.zl) #22
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hu, %bb.ia, %bb.hv, %.loopexit
  %.1667 = sub nuw nsw i32 %.06661003, %i.yo      ; 2 uses
  %.3677 = getelementptr inbounds nuw i8, ptr %.26761002, i64 %i.yr
  %i.zs = icmp ugt i32 %.1667, 6
  br i1 %i.zs, label %.lr.ph1005, label %.thread913

.thread913:                                       ; preds = %bb.ib, %bb.hp
  %i.zt = icmp ugt i32 %i.yf, 6
  br i1 %i.zt, label %bb.ho, label %.thread938

.thread938:                                       ; preds = %.thread913, %bb.ho, %.lr.ph1005, %.lr.ph999.preheader, %bb.hm, %.lr.ph999, %bb.hn, %.loopexit1029, %bb.hj, %bb.hk, %bb.hh, %bb.hi, %bb.hg, %bb.hf, %bb.he, %.lr.ph1016
  %i.zu = load i32, ptr %i.us, align 4, !tbaa !140 ; 2 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp samesign ult i64 %i.va, %i.zv
  br i1 %i.zw, label %.lr.ph1016, label %.thread942

.thread942:                                       ; preds = %.thread938, %bb.hd, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.critedge14

.loopexit1132:                                    ; preds = %bb.ht, %bb.hc
  %.str.319.sink = phi ptr [ @.str.314, %bb.hc ], [ @.str.319, %bb.ht ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.319.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ic

.critedge14:                                      ; preds = %.thread942, %bb.gx, %bb.gw, %bb.gy
  store i32 %.0692881960, ptr %i.cq, align 8, !tbaa !104
  br label %bb.ic

bb.ic:                                            ; preds = %bb.gn, %.critedge14, %bb.gp, %.thread899, %.loopexit1132, %.thread950
  %.2688955 = phi i32 [ 26, %.thread950 ], [ 34, %.loopexit1132 ], [ 0, %.critedge14 ], [ %.1687.ph, %.thread899 ], [ 26, %bb.gn ], [ 21, %bb.gp ]
  call void @free(ptr noundef nonnull %i.mg) #22
  br label %.thread945

.thread945:                                       ; preds = %bb.br, %bb.ch, %bb.cb, %bb.bt, %bb.bv, %bb.bu, %bb.cg, %bb.dm, %bb.ee, %bb.eg, %bb.do, %bb.dv, %bb.dt, %fmap_readn.exit872.thread, %bb.ca, %fmap_readn.exit868.thread, %.thread885, %bb.r, %bb.v, %fmap_readn.exit864.thread, %fmap_readn.exit860.thread, %bb.l, %fmap_readn.exit.thread, %bb.b, %bb.ic
  %.2688949 = phi i32 [ %.2688955, %bb.ic ], [ 26, %bb.br ], [ 3, %bb.b ], [ 26, %bb.ch ], [ 26, %bb.cb ], [ 26, %bb.bt ], [ 26, %bb.bv ], [ 26, %bb.bu ], [ 26, %bb.cg ], [ 26, %bb.dm ], [ 34, %bb.ee ], [ 34, %bb.eg ], [ 26, %bb.do ], [ 34, %bb.dv ], [ 26, %bb.dt ], [ 26, %fmap_readn.exit872.thread ], [ 26, %bb.ca ], [ 26, %fmap_readn.exit868.thread ], [ 26, %.thread885 ], [ 34, %bb.r ], [ 34, %bb.v ], [ 34, %fmap_readn.exit864.thread ], [ 26, %fmap_readn.exit860.thread ], [ 34, %bb.l ], [ 34, %fmap_readn.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.2688949
}

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_exe_info_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -1, 2147483648) i64 @fmap_readn(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 0, 8589934855) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp ne i64 %2, %i.b
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, %i.b
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.b, %2
  %spec.select = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.f) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = tail call ptr %i.h(ptr noundef nonnull %0, i64 noundef range(i64 0, 8589934855) %2, i64 noundef %spec.select, i32 noundef 0) #22, !inline_history !35 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %spec.select, i1 false)
  %i.j = icmp ult i64 %spec.select, 2147483648
  %i.k = select i1 %i.j, i64 %spec.select, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.020 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.020
}

declare i32 @cli_scanishield(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cli_bytecode_context_alloc() local_unnamed_addr #3

declare i32 @cli_bytecode_context_setpe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_bytecode_context_setctx(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_bytecode_runhook(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @cli_bytecode_context_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @scan_pe_imp(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 17 uses
  %i.b = alloca [3 x i8], align 1                 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.j = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 0) #22 ; 4 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.b, align 1, !tbaa !86
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i64 @cli_hash_len(i32 noundef 0) #22
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #23 ; 3 uses
  store ptr %i.m, ptr %i.a, align 16, !tbaa !85
  %.not69 = icmp eq ptr %i.m, null
  br i1 %.not69, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.348) #22
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.j
  %.05274.lcssa.wide.ph = phi i64 [ 2, %bb.j ], [ 1, %bb.g ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.348) #22
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %.05274.lcssa.wide.ph, %.lr.ph.preheader ], [ %i.n, %.lr.ph ]
  %i.n = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  tail call void @free(ptr noundef %i.p) #22
  %.not70.wide = icmp eq i64 %i.n, 0
  br i1 %.not70.wide, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 16, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ null, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 1) #22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.t = zext i1 %i.r to i8
  store i8 %i.t, ptr %i.s, align 1, !tbaa !86
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !85
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i64 @cli_hash_len(i32 noundef 1) #22
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #23 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !85
  %.not69.1 = icmp eq ptr %i.w, null
  br i1 %.not69.1, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.w, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.z = tail call zeroext i1 @cli_hm_have_any(ptr noundef %i.h, i32 noundef 2) #22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !86
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ac, align 16, !tbaa !85
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call i64 @cli_hash_len(i32 noundef 2) #22
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #23 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !85
  %.not69.2 = icmp eq ptr %i.ae, null
  br i1 %.not69.2, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi ptr [ %i.ae, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.ah = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
end_hunk_3
begin_hunk_4_@add_section_info:bb.a
  %i.af = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.360, ptr noundef nonnull %i.ae) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !64
  %.lobit45 = lshr i32 %i.ag, 31
  %i.ah = call ptr @json_object_new_boolean(i32 noundef %.lobit45) #22 ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.361, ptr noundef nonnull %i.ah) #22 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  %.not47 = icmp sgt i32 %i.ak, -1
  br i1 %.not47, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  %.not48 = icmp sgt i32 %i.am, -1
  br i1 %.not48, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = load i32, ptr %i.p, align 4, !tbaa !8
  %.not49 = icmp eq i32 %i.an, 0
  br i1 %.not49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112
  %.not50 = icmp sgt i32 %i.ap, -1
  br i1 %.not50, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !106
  %.lobit51 = lshr i32 %i.ar, 31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %i.as = phi i32 [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %bb.p ], [ %.lobit51, %bb.t ]
  %i.at = call ptr @json_object_new_boolean(i32 noundef %i.as) #22 ; 2 uses
  %.not52 = icmp eq ptr %i.at, null
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.at) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = call i32 @json_object_array_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %get_section_json.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %get_section_json.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @versioninfo_cb(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.364, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  store i32 %4, ptr %i.d, align 4, !tbaa !12
  %i.e = load i32, ptr %i.a, align 4, !tbaa !140
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !140
  %i.g = icmp eq i32 %i.f, 16
  %. = zext i1 %i.g to i32
  ret i32 %.
}

declare i32 @cli_hashset_init(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cli_hashset_addkey(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_utf16toascii(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_str2hex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_check_auth_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.pe_certificate_hdr, align 4 ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %struct.cli_exe_info, align 8       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = and i32 %i.f, 131072
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148
  %i.l = and i64 %i.k, 8
  %.not179 = icmp eq i64 %i.l, 0
  br i1 %.not179, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @cli_exe_info_init(ptr noundef nonnull %3, i32 noundef 0) #22
  %i.n = call i32 @cli_peheader(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %.not180 = icmp eq i32 %i.n, 0
  br i1 %.not180, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0145 = phi ptr [ %3, %bb.d ], [ %1, %bb.c ]   ; 7 uses
  %.0145.sroa.phi299 = getelementptr inbounds nuw i8, ptr %.0145, i64 284
  %.0145.sroa.phi296 = getelementptr inbounds nuw i8, ptr %.0145, i64 280
  %.0145.sroa.phi = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %.0145.sroa.phi291 = getelementptr inbounds nuw i8, ptr %.0145, i64 84
  %.0145.sroa.phi289 = getelementptr inbounds nuw i8, ptr %.0145, i64 88
  %i.o = load i32, ptr %.0145.sroa.phi296, align 8, !tbaa !23 ; 4 uses
  %i.p = load i32, ptr %.0145.sroa.phi299, align 4, !tbaa !107 ; 4 uses
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = call zeroext i1 @cli_hm_have_size(ptr noundef %i.t, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.y = call zeroext i1 @cli_hm_have_size(ptr noundef %i.x, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.y, label %bb.h, label %.thread216.thread235

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 5 uses
  %i.ab = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #24 ; 12 uses
  %.not181 = icmp eq ptr %i.ab, null
  br i1 %.not181, label %.thread216.thread235, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %.0145.sroa.phi289, align 8, !tbaa !98 ; 2 uses
  %i.ad = add i32 %i.ac, 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !150
  %i.af = add i32 %i.ac, 92                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i32, ptr %.0145.sroa.phi291, align 4, !tbaa !59
  %.not182 = icmp eq i32 %i.ah, 0
  %. = select i1 %.not182, i32 60, i32 76         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %., ptr %i.aj, align 4, !tbaa !150
  %i.ak = add nuw nsw i32 %., 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 7 uses
  %i.an = load i32, ptr %.0145.sroa.phi, align 8, !tbaa !27
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %.thread216.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not183 = icmp eq i32 %i.o, 0
  br i1 %.not183, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %i.p, %i.o
  %i.ar = zext i32 %i.aq to i64
  %.not184 = icmp eq i64 %i.aa, %i.ar
  br i1 %.not184, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.321) #22
  br label %.thread216.thread

bb.m:                                             ; preds = %bb.k
  %i.as = zext i32 %i.o to i64                    ; 6 uses
  %i.at = icmp samesign ult i64 %i.am, %i.as
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.av = sub nuw i32 %i.o, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !150
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ay = icmp samesign ugt i64 %i.am, %i.as
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.322) #22
  br label %.thread216.thread

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0136 = phi i32 [ 3, %bb.n ], [ 2, %bb.o ]     ; 2 uses
  %or.cond239.not = icmp samesign ugt i64 %i.aa, %i.as
  br i1 %or.cond239.not, label %bb.r, label %.thread216.thread

bb.r:                                             ; preds = %bb.q
  %i.az = sub nuw nsw i64 %i.aa, %i.as            ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.az, i64 8) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bc = call ptr %i.bb(ptr noundef nonnull %i.c, i64 noundef range(i64 0, 8589934855) %i.as, i64 noundef %spec.select.i, i32 noundef 0) #22, !inline_history !89 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.thread216.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 1 %i.bc, i64 %spec.select.i, i1 false)
  %.not185 = icmp samesign ugt i64 %i.az, 7
  br i1 %.not185, label %bb.s, label %.thread216.thread

bb.s:                                             ; preds = %fmap_readn.exit
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.4..4..4. = load i16, ptr %.4..4..4..sroa_idx, align 4, !tbaa !36
  %.not186 = icmp eq i16 %.4..4..4., 512
  br i1 %.not186, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.323) #22
  br label %.thread216.thread

bb.u:                                             ; preds = %bb.s
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.6..6..6. = load i16, ptr %.6..6..6..sroa_idx, align 2, !tbaa !36
  %.not187 = icmp eq i16 %.6..6..6., 2
  br i1 %.not187, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.324) #22
  br label %.thread216.thread

bb.w:                                             ; preds = %bb.u
  %.0..0..0. = load i32, ptr %2, align 4, !tbaa !36
  %.not188 = icmp eq i32 %.0..0..0., %i.p
  br i1 %.not188, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.325) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = add nuw nsw i64 %i.as, 8
  %i.be = add i32 %i.p, -8
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.bg = call i32 @asn1_check_mscat(ptr noundef %i.bf, ptr noundef nonnull %i.c, i64 noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %i.ab, i32 noundef %.0136, ptr noundef nonnull %0) #22 ; 3 uses
  %i.bh = and i32 %i.bg, -33
  %or.cond = icmp eq i32 %i.bh, 1
  br i1 %or.cond, label %.thread216.thread, label %bb.ab

bb.z:                                             ; preds = %bb.j
  %i.bi = icmp ult i64 %i.am, %i.aa
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = sub nuw i64 %i.aa, %i.am
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = trunc nuw i64 %i.am to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !150
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.1137 = phi i32 [ %.0136, %bb.y ], [ 3, %bb.aa ], [ 2, %bb.z ] ; 4 uses
  %.0132 = phi i32 [ %i.bg, %bb.y ], [ 26, %bb.aa ], [ 26, %bb.z ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !149
  %i.bs = call zeroext i1 @cli_hm_have_size(ptr noundef %i.br, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.bs, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.bt = call ptr @cl_hash_init(ptr noundef nonnull @.str.326) #22 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.thread216.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ac
  %wide.trip.count = zext nneg i32 %.1137 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !150 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !152
  %i.ca = zext i32 %i.bz to i64
  %i.cb = zext i32 %i.bx to i64
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.cd = call ptr %i.cc(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.ca, i64 noundef %i.cb, i32 noundef 0) #22, !inline_history !35 ; 2 uses
  %.not189 = icmp eq ptr %i.cd, null
  br i1 %.not189, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load i32, ptr %i.bw, align 4, !tbaa !150
  %i.cf = zext i32 %i.ce to i64
  %i.cg = call i32 @cl_update_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.cd, i64 noundef %i.cf) #22 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader

bb.ag:                                            ; preds = %bb.ad
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %.not190 = icmp eq i32 %.1137, %i.ch
  br i1 %.not190, label %.thread, label %.thread211

.thread:                                          ; preds = %bb.af, %bb.ag
  %i.ci = call i32 @cl_finish_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !149
  %i.cm = call i32 @cli_hm_scan(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, ptr noundef %i.cl, i32 noundef 1) #22
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.thread278, %.thread
  %.lcssa244 = phi ptr [ @.str.326, %.thread ], [ @.str.327, %.thread278 ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.328, ptr noundef nonnull %.lcssa244) #22
  %i.co = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa244) #25
  %i.cp = add i64 %i.co, 28                       ; 2 uses
  %i.cq = call noalias ptr @malloc(i64 noundef %i.cp) #23 ; 4 uses
  %.not191 = icmp eq ptr %i.cq, null
  br i1 %.not191, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.329) #22
  br label %.thread216.thread

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cq, i64 noundef %i.cp, ptr noundef nonnull @.str.330, ptr noundef nonnull %.lcssa244) #22 ; 0 uses
  %i.cs = call i32 @cli_trust_this_layer(ptr noundef nonnull %0, ptr noundef nonnull %i.cq) #22 ; 0 uses
  call void @free(ptr noundef nonnull %i.cq) #22
  br label %.thread216.thread

bb.ak:                                            ; preds = %bb.ab, %.thread
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149
  %i.cw = call zeroext i1 @cli_hm_have_size(ptr noundef %i.cv, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.cw, label %bb.al, label %.thread216.thread

bb.al:                                            ; preds = %bb.ak
  %i.cx = call ptr @cl_hash_init(ptr noundef nonnull @.str.327) #22 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread216.thread, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.al
  %wide.trip.count.1 = zext nneg i32 %.1137 to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao, %.preheader.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.preheader.1 ], [ %indvars.iv.next.1, %bb.ao ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !150 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.preheader.1
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !152
  %i.de = zext i32 %i.dd to i64
  %i.df = zext i32 %i.db to i64
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !34
  %i.dh = call ptr %i.dg(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.de, i64 noundef %i.df, i32 noundef 0) #22, !inline_history !35 ; 2 uses
  %.not189.1 = icmp eq ptr %i.dh, null
  br i1 %.not189.1, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = load i32, ptr %i.da, align 4, !tbaa !150
end_hunk_4
