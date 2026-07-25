inline.NumInlined: 135
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a

bb.dz:                                            ; preds = %firstch.exit._crit_edge, %bb.dx, %bb.dw
  %.pre-phi = phi i32 [ %.pre237, %firstch.exit._crit_edge ], [ %i.vb, %bb.dx ], [ %i.vb, %bb.dw ]
  %i.vi = load i32, ptr %i.oh, align 8, !tbaa !21
  %.not.i180 = icmp eq i32 %i.vi, 0
  br i1 %.not.i180, label %bb.ea, label %doemit.exit185

bb.ea:                                            ; preds = %bb.dz
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !31
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !14 ; 3 uses
  %.not8.i181 = icmp slt i64 %i.vk, %i.vm
  br i1 %.not8.i181, label %enlarge.exit.i183, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vn = add nsw i64 %i.vm, 1
  %i.vo = sdiv i64 %i.vn, 2                       ; 2 uses
  %i.vp = mul nsw i64 %i.vo, 3                    ; 2 uses
  %.not.i.i182 = icmp slt i64 %i.vm, %i.vp
  br i1 %.not.i.i182, label %bb.ec, label %enlarge.exit.i183

bb.ec:                                            ; preds = %bb.eb
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !17
  %i.vs = mul i64 %i.vo, 24
  %i.vt = tail call ptr @cli_realloc(ptr noundef %i.vr, i64 noundef %i.vs) #11 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.vv = load i32, ptr %i.oh, align 8, !tbaa !21
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.ee, label %seterr.exit.i.i184

bb.ee:                                            ; preds = %bb.ed
  store i32 12, ptr %i.oh, align 8, !tbaa !21
  br label %seterr.exit.i.i184

seterr.exit.i.i184:                               ; preds = %bb.ee, %bb.ed
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %enlarge.exit.i183

bb.ef:                                            ; preds = %bb.ec
  store ptr %i.vt, ptr %i.vq, align 8, !tbaa !17
  store i64 %i.vp, ptr %i.vl, align 8, !tbaa !14
  br label %enlarge.exit.i183

enlarge.exit.i183:                                ; preds = %bb.ef, %seterr.exit.i.i184, %bb.eb, %bb.ea
  %i.vx = or disjoint i32 %.pre-phi, 268435456
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !17
  %i.wb = load i64, ptr %i.vj, align 8, !tbaa !31 ; 2 uses
  %i.wc = add nsw i64 %i.wb, 1
  store i64 %i.wc, ptr %i.vj, align 8, !tbaa !31
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.wa, i64 %i.wb
  store i64 %i.vy, ptr %i.wd, align 8, !tbaa !32
  br label %doemit.exit185

doemit.exit185:                                   ; preds = %bb.dz, %enlarge.exit.i183
  %i.we = sext i32 %.0.i158 to i64
  %i.wf = getelementptr inbounds i8, ptr %i.uv, i64 %i.we ; 2 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !34
  %i.wh = icmp eq i8 %i.wg, 0
  br i1 %i.wh, label %bb.eg, label %ordinary.exit

bb.eg:                                            ; preds = %doemit.exit185
  %i.wi = load ptr, ptr %i.bd, align 8, !tbaa !18
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 84 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !41 ; 2 uses
  %i.wl = add nsw i32 %i.wk, 1
  store i32 %i.wl, ptr %i.wj, align 4, !tbaa !41
  %i.wm = trunc i32 %i.wk to i8
  store i8 %i.wm, ptr %i.wf, align 1, !tbaa !34
  br label %ordinary.exit

ordinary.exit:                                    ; preds = %bb.dy, %doemit.exit185, %bb.eg
  %i.wn = load ptr, ptr %i.bd, align 8, !tbaa !18 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !71
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 20
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !38
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [32 x i8], ptr %i.wp, i64 %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !23 ; 4 uses
  switch i32 %i.wv, label %.lr.ph.i162.preheader.new [
    i32 0, label %._crit_edge.i165
    i32 1, label %.lr.ph.i162.epil.preheader
  ]

.lr.ph.i162.preheader.new:                        ; preds = %ordinary.exit
  %i.ww = and i32 %i.wv, -2
  %unroll_iter388 = sext i32 %i.ww to i64
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162, %.lr.ph.i162.preheader.new
  %.013.i163 = phi i64 [ 0, %.lr.ph.i162.preheader.new ], [ %i.xs, %.lr.ph.i162 ] ; 4 uses
  %niter389 = phi i64 [ 0, %.lr.ph.i162.preheader.new ], [ %niter389.next.1, %.lr.ph.i162 ]
  %i.wx = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.wy = xor i8 %i.wx, -1
  %i.wz = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.xa = and i64 %.013.i163, 254
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xa ; 2 uses
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !34
  %i.xd = and i8 %i.xc, %i.wy
  store i8 %i.xd, ptr %i.xb, align 1, !tbaa !34
  %i.xe = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.xf = trunc i64 %.013.i163 to i8
  %i.xg = sub i8 %i.xe, %i.xf
  store i8 %i.xg, ptr %i.eb, align 1, !tbaa !76
  %i.xh = or disjoint i64 %.013.i163, 1           ; 2 uses
  %i.xi = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.xj = xor i8 %i.xi, -1
  %i.xk = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.xl = and i64 %i.xh, 255
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xl ; 2 uses
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !34
  %i.xo = and i8 %i.xn, %i.xj
  store i8 %i.xo, ptr %i.xm, align 1, !tbaa !34
  %i.xp = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.xq = trunc i64 %i.xh to i8
  %i.xr = sub i8 %i.xp, %i.xq
  store i8 %i.xr, ptr %i.eb, align 1, !tbaa !76
  %i.xs = add nuw i64 %.013.i163, 2               ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %._crit_edge.i165.loopexit.unr-lcssa, label %.lr.ph.i162, !llvm.loop !92

._crit_edge.i165.loopexit.unr-lcssa:              ; preds = %.lr.ph.i162
  %i.xt = and i32 %i.wv, 1
  %lcmp.mod386.not = icmp eq i32 %i.xt, 0
  br i1 %lcmp.mod386.not, label %._crit_edge.i165, label %.lr.ph.i162.epil.preheader

.lr.ph.i162.epil.preheader:                       ; preds = %ordinary.exit, %._crit_edge.i165.loopexit.unr-lcssa
  %.013.i163.epil.init = phi i64 [ 0, %ordinary.exit ], [ %i.xs, %._crit_edge.i165.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i32 %i.wv to i1
  tail call void @llvm.assume(i1 %lcmp.mod387)
  %i.xu = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.xv = xor i8 %i.xu, -1
  %i.xw = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.xx = and i64 %.013.i163.epil.init, 255
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xx ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !34
  %i.ya = and i8 %i.xz, %i.xv
  store i8 %i.ya, ptr %i.xy, align 1, !tbaa !34
  %i.yb = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.yc = trunc i64 %.013.i163.epil.init to i8
  %i.yd = sub i8 %i.yb, %i.yc
  store i8 %i.yd, ptr %i.eb, align 1, !tbaa !76
  br label %._crit_edge.i165

._crit_edge.i165:                                 ; preds = %.lr.ph.i162.epil.preheader, %._crit_edge.i165.loopexit.unr-lcssa, %ordinary.exit
  %i.ye = getelementptr inbounds i8, ptr %i.wt, i64 -32
  %i.yf = icmp eq ptr %i.dq, %i.ye
  br i1 %i.yf, label %bb.eh, label %freeset.exit

bb.eh:                                            ; preds = %._crit_edge.i165
  %i.yg = load ptr, ptr %i.bd, align 8, !tbaa !18
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 20 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !38
  %i.yj = add nsw i32 %i.yi, -1
  store i32 %i.yj, ptr %i.yh, align 4, !tbaa !38
  br label %freeset.exit

nch.exit.thread:                                  ; preds = %bb.dt
  %i.yk = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.yl = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !71 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !38 ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %.idx.i = shl nuw nsw i64 %i.yp, 5
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 %.idx.i ; 2 uses
  %i.yr = icmp sgt i32 %i.yo, 0
  br i1 %i.yr, label %.lr.ph39.split.split.us.i, label %freezeset.exit

nch.exit.thread.thread:                           ; preds = %nch.exit
  %i.ys = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.yt = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !71 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !38 ; 2 uses
  %i.yx = sext i32 %i.yw to i64
  %.idx.i305 = shl nsw i64 %i.yx, 5
  %i.yy = getelementptr inbounds i8, ptr %i.yu, i64 %.idx.i305 ; 3 uses
  %i.yz = icmp sgt i32 %i.yw, 0
  br i1 %i.yz, label %.lr.ph39.split.us.i, label %freezeset.exit

.lr.ph39.split.us.i:                              ; preds = %nch.exit.thread.thread, %bb.ek
  %.02937.us.i = phi ptr [ %i.zn, %bb.ek ], [ %i.yu, %nch.exit.thread.thread ] ; 7 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 9
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !76
  %i.zc = icmp ne i8 %i.zb, %i.ys
  %.not.us.i = icmp eq ptr %.02937.us.i, %i.dq
  %or.cond.us.i = or i1 %.not.us.i, %i.zc
  br i1 %or.cond.us.i, label %bb.ek, label %.preheader.us.i

bb.ei:                                            ; preds = %.preheader.us.i, %bb.ej
  %.03034.us.i = phi i64 [ 0, %.preheader.us.i ], [ %1, %bb.ej ] ; 3 uses
  %i.zd = and i64 %.03034.us.i, 255               ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zd
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !34
  %i.zg = and i8 %i.zf, %i.zr
  %i.zh = icmp ne i8 %i.zg, 0
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zd
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !34
  %i.zk = and i8 %i.zj, %i.zt
  %i.zl = icmp eq i8 %i.zk, 0
  %.not32.us.i = xor i1 %i.zh, %i.zl
  br i1 %.not32.us.i, label %bb.ej, label %._crit_edge.us.i.a

._crit_edge.us.i.a:                               ; preds = %bb.ei
  %i.zm = icmp eq i64 %.03034.us.i, %i.sz
  br i1 %i.zm, label %.split.us.i, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %1 = add nuw i64 %.03034.us.i, 1                ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %1, %i.sz
  br i1 %exitcond.not.i173, label %.split.us.i, label %bb.ei, !llvm.loop !103

bb.ek:                                            ; preds = %._crit_edge.us.i.a, %.lr.ph39.split.us.i
  %i.zn = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 32 ; 2 uses
  %i.zo = icmp ult ptr %i.zn, %i.yy
  br i1 %i.zo, label %.lr.ph39.split.us.i, label %freezeset.exit, !llvm.loop !104

.preheader.us.i:                                  ; preds = %.lr.ph39.split.us.i
  %i.zp = load ptr, ptr %.02937.us.i, align 8, !tbaa !72
  %i.zq = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 8
  %i.zr = load i8, ptr %i.zq, align 8, !tbaa !75
  %i.zs = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.zt = load i8, ptr %i.ea, align 8, !tbaa !75
  br label %bb.ei

.lr.ph39.split.split.us.i:                        ; preds = %nch.exit.thread, %bb.el
  %.02937.us40.i = phi ptr [ %i.zx, %bb.el ], [ %i.ym, %nch.exit.thread ] ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.02937.us40.i, i64 9
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !76
  %i.zw = icmp ne i8 %i.zv, %i.yk
  %.not.us41.i = icmp eq ptr %.02937.us40.i, %i.dq
  %or.cond.us42.i = or i1 %.not.us41.i, %i.zw
  br i1 %or.cond.us42.i, label %bb.el, label %.split.us.i

bb.el:                                            ; preds = %.lr.ph39.split.split.us.i
  %i.zx = getelementptr inbounds nuw i8, ptr %.02937.us40.i, i64 32 ; 2 uses
  %i.zy = icmp ult ptr %i.zx, %i.yq
  br i1 %i.zy, label %.lr.ph39.split.split.us.i, label %freezeset.exit, !llvm.loop !104

.split.us.i:                                      ; preds = %._crit_edge.us.i.a, %bb.ej, %.lr.ph39.split.split.us.i
  %i.zz = phi ptr [ %i.yq, %.lr.ph39.split.split.us.i ], [ %i.yy, %bb.ej ], [ %i.yy, %._crit_edge.us.i.a ]
  %.us-phi.i = phi ptr [ %.02937.us40.i, %.lr.ph39.split.split.us.i ], [ %.02937.us.i, %bb.ej ], [ %.02937.us.i, %._crit_edge.us.i.a ] ; 2 uses
  br i1 %.not3.i, label %._crit_edge.i.i171, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %.split.us.i
  %i.aaa = icmp eq i32 %.fr48.i, 1
  br i1 %i.aaa, label %.lr.ph.i.i169.epil.preheader, label %.lr.ph.i.i169.preheader.new

.lr.ph.i.i169.preheader.new:                      ; preds = %.lr.ph.i.i169.preheader
  %unroll_iter393 = and i64 %i.sz, -2
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169, %.lr.ph.i.i169.preheader.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i169.preheader.new ], [ %i.aaw, %.lr.ph.i.i169 ] ; 4 uses
  %niter394 = phi i64 [ 0, %.lr.ph.i.i169.preheader.new ], [ %niter394.next.1, %.lr.ph.i.i169 ]
  %i.aab = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.aac = xor i8 %i.aab, -1
  %i.aad = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.aae = and i64 %.013.i.i, 254
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aae ; 2 uses
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !34
  %i.aah = and i8 %i.aag, %i.aac
  store i8 %i.aah, ptr %i.aaf, align 1, !tbaa !34
  %i.aai = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.aaj = trunc i64 %.013.i.i to i8
  %i.aak = sub i8 %i.aai, %i.aaj
  store i8 %i.aak, ptr %i.eb, align 1, !tbaa !76
  %i.aal = or disjoint i64 %.013.i.i, 1           ; 2 uses
  %i.aam = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.aan = xor i8 %i.aam, -1
  %i.aao = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.aap = and i64 %i.aal, 255
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aap ; 2 uses
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !34
  %i.aas = and i8 %i.aar, %i.aan
  store i8 %i.aas, ptr %i.aaq, align 1, !tbaa !34
  %i.aat = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.aau = trunc i64 %i.aal to i8
  %i.aav = sub i8 %i.aat, %i.aau
  store i8 %i.aav, ptr %i.eb, align 1, !tbaa !76
  %i.aaw = add nuw i64 %.013.i.i, 2               ; 2 uses
  %niter394.next.1 = add i64 %niter394, 2         ; 2 uses
  %niter394.ncmp.1 = icmp eq i64 %niter394.next.1, %unroll_iter393
  br i1 %niter394.ncmp.1, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i169, !llvm.loop !92

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i169
  %i.aax = and i32 %.fr48.i, 1
  %lcmp.mod391.not = icmp eq i32 %i.aax, 0
  br i1 %lcmp.mod391.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i169.epil.preheader

.lr.ph.i.i169.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i169.preheader
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i169.preheader ], [ %i.aaw, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod392 = trunc i32 %.fr48.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod392)
  %i.aay = load i8, ptr %i.ea, align 8, !tbaa !75
  %i.aaz = xor i8 %i.aay, -1
  %i.aba = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.abb = and i64 %.013.i.i.epil.init, 255
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.abb ; 2 uses
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !34
  %i.abe = and i8 %i.abd, %i.aaz
  store i8 %i.abe, ptr %i.abc, align 1, !tbaa !34
  %i.abf = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.abg = trunc i64 %.013.i.i.epil.init to i8
  %i.abh = sub i8 %i.abf, %i.abg
  store i8 %i.abh, ptr %i.eb, align 1, !tbaa !76
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i169.epil.preheader
  %.pre.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !18
  br label %._crit_edge.i.i171

._crit_edge.i.i171:                               ; preds = %._crit_edge.i.loopexit.i, %.split.us.i
  %.pre.i172 = phi ptr [ %.pre.pre.i, %._crit_edge.i.loopexit.i ], [ %.val, %.split.us.i ] ; 3 uses
  %i.abi = getelementptr inbounds i8, ptr %i.zz, i64 -32
  %i.abj = icmp eq ptr %i.dq, %i.abi
  br i1 %i.abj, label %bb.em, label %freezeset.exit

bb.em:                                            ; preds = %._crit_edge.i.i171
  %i.abk = getelementptr inbounds nuw i8, ptr %.pre.i172, i64 20 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !38
  %i.abm = add nsw i32 %i.abl, -1
  store i32 %i.abm, ptr %i.abk, align 4, !tbaa !38
  br label %freezeset.exit

freezeset.exit:                                   ; preds = %bb.ek, %bb.el, %nch.exit.thread.thread, %nch.exit.thread, %._crit_edge.i.i171, %bb.em
  %i.abn = phi ptr [ %.pre.i172, %bb.em ], [ %.pre.i172, %._crit_edge.i.i171 ], [ %.val, %nch.exit.thread.thread ], [ %.val, %nch.exit.thread ], [ %.val, %bb.el ], [ %.val, %bb.ek ]
  %.0.i167 = phi ptr [ %.us-phi.i, %bb.em ], [ %.us-phi.i, %._crit_edge.i.i171 ], [ %i.dq, %nch.exit.thread.thread ], [ %i.dq, %nch.exit.thread ], [ %i.dq, %bb.el ], [ %i.dq, %bb.ek ]
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !71
  %i.abq = ptrtoint ptr %.0.i167 to i64
  %i.abr = ptrtoint ptr %i.abp to i64
  %i.abs = sub i64 %i.abq, %i.abr
  %sext191 = shl i64 %i.abs, 27
  %i.abt = ashr i64 %sext191, 32
  %i.abu = load i32, ptr %i.oh, align 8, !tbaa !21
  %.not.i174 = icmp eq i32 %i.abu, 0
  br i1 %.not.i174, label %bb.en, label %freeset.exit

bb.en:                                            ; preds = %freezeset.exit
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !31
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !14 ; 3 uses
  %.not8.i175 = icmp slt i64 %i.abw, %i.aby
  br i1 %.not8.i175, label %enlarge.exit.i177, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.abz = add nsw i64 %i.aby, 1
  %i.aca = sdiv i64 %i.abz, 2                     ; 2 uses
  %i.acb = mul nsw i64 %i.aca, 3                  ; 2 uses
  %.not.i.i176 = icmp slt i64 %i.aby, %i.acb
  br i1 %.not.i.i176, label %bb.ep, label %enlarge.exit.i177

bb.ep:                                            ; preds = %bb.eo
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !17
  %i.ace = mul i64 %i.aca, 24
  %i.acf = tail call ptr @cli_realloc(ptr noundef %i.acd, i64 noundef %i.ace) #11 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.ach = load i32, ptr %i.oh, align 8, !tbaa !21
  %i.aci = icmp eq i32 %i.ach, 0
  br i1 %i.aci, label %bb.er, label %seterr.exit.i.i178

bb.er:                                            ; preds = %bb.eq
  store i32 12, ptr %i.oh, align 8, !tbaa !21
  br label %seterr.exit.i.i178

seterr.exit.i.i178:                               ; preds = %bb.er, %bb.eq
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %enlarge.exit.i177

bb.es:                                            ; preds = %bb.ep
  store ptr %i.acf, ptr %i.acc, align 8, !tbaa !17
  store i64 %i.acb, ptr %i.abx, align 8, !tbaa !14
  br label %enlarge.exit.i177

enlarge.exit.i177:                                ; preds = %bb.es, %seterr.exit.i.i178, %bb.eo, %bb.en
  %i.acj = or i64 %i.abt, 805306368
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !17
  %i.acm = load i64, ptr %i.abv, align 8, !tbaa !31 ; 2 uses
  %i.acn = add nsw i64 %i.acm, 1
  store i64 %i.acn, ptr %i.abv, align 8, !tbaa !31
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.acm
  store i64 %i.acj, ptr %i.aco, align 8, !tbaa !32
  br label %freeset.exit

freeset.exit:                                     ; preds = %enlarge.exit.i177, %freezeset.exit, %bb.eh, %._crit_edge.i165, %bb.dd, %._crit_edge.i149, %allocset.exit.thread, %doemit.exit138, %doemit.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = and i32 %1, 255
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__ctype_b_loc() #13
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = and i32 %1, 255                          ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !63   ; 2 uses
  %i.o = and i16 %i.n, 1024
  %.not13 = icmp eq i16 %i.o, 0
  br i1 %.not13, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i16 %i.n to i32                     ; 2 uses
  %i.q = and i32 %i.p, 256
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__ctype_tolower_loc() #13
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.s = and i32 %i.p, 512
  %.not28.i = icmp eq i32 %i.s, 0
  br i1 %.not28.i, label %othercase.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__ctype_toupper_loc() #13
end_hunk_0
