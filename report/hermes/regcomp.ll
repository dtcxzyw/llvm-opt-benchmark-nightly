inline.NumInlined: 141
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_bracket:bb.a
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !13 ; 3 uses
  %.not8.i184 = icmp slt i64 %i.vi, %i.vk
  br i1 %.not8.i184, label %enlarge.exit.i186, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.vl = add nsw i64 %i.vk, 1
  %i.vm = sdiv i64 %i.vl, 2                       ; 2 uses
  %i.vn = mul nsw i64 %i.vm, 3                    ; 3 uses
  %.not.i.i185 = icmp slt i64 %i.vk, %i.vn
  br i1 %.not.i.i185, label %bb.ec, label %enlarge.exit.i186

bb.ec:                                            ; preds = %bb.eb
  %i.vo = icmp ugt i64 %i.vn, 2305843009213693951
  br i1 %i.vo, label %seterr.exit.i.i188, label %bb.ed

seterr.exit.i.i188:                               ; preds = %bb.ec
  store i32 12, ptr %i.of, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %enlarge.exit.i186

bb.ed:                                            ; preds = %bb.ec
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !16
  %i.vr = mul i64 %i.vm, 24
  %i.vs = tail call ptr @realloc(ptr noundef %i.vq, i64 noundef %i.vr) #20 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.vu = load i32, ptr %i.of, align 8, !tbaa !20
  %i.vv = icmp eq i32 %i.vu, 0
  br i1 %i.vv, label %bb.ef, label %seterr.exit12.i.i187

bb.ef:                                            ; preds = %bb.ee
  store i32 12, ptr %i.of, align 8, !tbaa !20
  br label %seterr.exit12.i.i187

seterr.exit12.i.i187:                             ; preds = %bb.ef, %bb.ee
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %enlarge.exit.i186

bb.eg:                                            ; preds = %bb.ed
  store ptr %i.vs, ptr %i.vp, align 8, !tbaa !16
  store i64 %i.vn, ptr %i.vj, align 8, !tbaa !13
  br label %enlarge.exit.i186

enlarge.exit.i186:                                ; preds = %bb.eg, %seterr.exit12.i.i187, %seterr.exit.i.i188, %bb.eb, %bb.ea
  %i.vw = or disjoint i32 %.pre-phi, 268435456
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !16
  %i.wa = load i64, ptr %i.vh, align 8, !tbaa !30 ; 2 uses
  %i.wb = add nsw i64 %i.wa, 1
  store i64 %i.wb, ptr %i.vh, align 8, !tbaa !30
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.wa
  store i64 %i.vx, ptr %i.wc, align 8, !tbaa !31
  br label %doemit.exit189

doemit.exit189:                                   ; preds = %bb.dz, %enlarge.exit.i186
  %i.wd = sext i32 %.0.i160 to i64
  %i.we = getelementptr inbounds i8, ptr %i.ut, i64 %i.wd ; 2 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !33
  %i.wg = icmp eq i8 %i.wf, 0
  br i1 %i.wg, label %bb.eh, label %ordinary.exit

bb.eh:                                            ; preds = %doemit.exit189
  %i.wh = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 84 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !40 ; 2 uses
  %i.wk = add nsw i32 %i.wj, 1
  store i32 %i.wk, ptr %i.wi, align 4, !tbaa !40
  %i.wl = trunc i32 %i.wj to i8
  store i8 %i.wl, ptr %i.we, align 1, !tbaa !33
  br label %ordinary.exit

ordinary.exit:                                    ; preds = %bb.dy, %doemit.exit189, %bb.eh
  %i.wm = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !70
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 20
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !37
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [32 x i8], ptr %i.wo, i64 %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !22 ; 4 uses
  switch i32 %i.wu, label %.lr.ph.i164.preheader.new [
    i32 0, label %._crit_edge.i167
    i32 1, label %.lr.ph.i164.epil.preheader
  ]

.lr.ph.i164.preheader.new:                        ; preds = %ordinary.exit
  %i.wv = and i32 %i.wu, -2
  %unroll_iter394 = sext i32 %i.wv to i64
  br label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164, %.lr.ph.i164.preheader.new
  %.013.i165 = phi i64 [ 0, %.lr.ph.i164.preheader.new ], [ %i.xr, %.lr.ph.i164 ] ; 4 uses
  %niter395 = phi i64 [ 0, %.lr.ph.i164.preheader.new ], [ %niter395.next.1, %.lr.ph.i164 ]
  %i.ww = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.wx = xor i8 %i.ww, -1
  %i.wy = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.wz = and i64 %.013.i165, 254
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wz ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !33
  %i.xc = and i8 %i.xb, %i.wx
  store i8 %i.xc, ptr %i.xa, align 1, !tbaa !33
  %i.xd = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.xe = trunc i64 %.013.i165 to i8
  %i.xf = sub i8 %i.xd, %i.xe
  store i8 %i.xf, ptr %i.ee, align 1, !tbaa !75
  %i.xg = or disjoint i64 %.013.i165, 1           ; 2 uses
  %i.xh = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.xi = xor i8 %i.xh, -1
  %i.xj = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.xk = and i64 %i.xg, 255
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xk ; 2 uses
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !33
  %i.xn = and i8 %i.xm, %i.xi
  store i8 %i.xn, ptr %i.xl, align 1, !tbaa !33
  %i.xo = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.xp = trunc i64 %i.xg to i8
  %i.xq = sub i8 %i.xo, %i.xp
  store i8 %i.xq, ptr %i.ee, align 1, !tbaa !75
  %i.xr = add nuw i64 %.013.i165, 2               ; 2 uses
  %niter395.next.1 = add i64 %niter395, 2         ; 2 uses
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %._crit_edge.i167.loopexit.unr-lcssa, label %.lr.ph.i164, !llvm.loop !91

._crit_edge.i167.loopexit.unr-lcssa:              ; preds = %.lr.ph.i164
  %i.xs = and i32 %i.wu, 1
  %lcmp.mod392.not = icmp eq i32 %i.xs, 0
  br i1 %lcmp.mod392.not, label %._crit_edge.i167, label %.lr.ph.i164.epil.preheader

.lr.ph.i164.epil.preheader:                       ; preds = %ordinary.exit, %._crit_edge.i167.loopexit.unr-lcssa
  %.013.i165.epil.init = phi i64 [ 0, %ordinary.exit ], [ %i.xr, %._crit_edge.i167.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod393 = trunc i32 %i.wu to i1
  tail call void @llvm.assume(i1 %lcmp.mod393)
  %i.xt = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.xu = xor i8 %i.xt, -1
  %i.xv = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.xw = and i64 %.013.i165.epil.init, 255
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xw ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !33
  %i.xz = and i8 %i.xy, %i.xu
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !33
  %i.ya = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.yb = trunc i64 %.013.i165.epil.init to i8
  %i.yc = sub i8 %i.ya, %i.yb
  store i8 %i.yc, ptr %i.ee, align 1, !tbaa !75
  br label %._crit_edge.i167

._crit_edge.i167:                                 ; preds = %.lr.ph.i164.epil.preheader, %._crit_edge.i167.loopexit.unr-lcssa, %ordinary.exit
  %i.yd = getelementptr inbounds i8, ptr %i.ws, i64 -32
  %i.ye = icmp eq ptr %i.dv, %i.yd
  br i1 %i.ye, label %bb.ei, label %freeset.exit

bb.ei:                                            ; preds = %._crit_edge.i167
  %i.yf = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 20 ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !37
  %i.yi = add nsw i32 %i.yh, -1
  store i32 %i.yi, ptr %i.yg, align 4, !tbaa !37
  br label %freeset.exit

nch.exit.thread:                                  ; preds = %bb.dt
  %i.yj = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.yk = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !70 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !37 ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %.idx.i = shl nuw nsw i64 %i.yo, 5
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 %.idx.i ; 2 uses
  %i.yq = icmp sgt i32 %i.yn, 0
  br i1 %i.yq, label %.lr.ph39.split.split.us.i, label %freezeset.exit

nch.exit.thread.thread:                           ; preds = %nch.exit
  %i.yr = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.ys = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !70 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !37 ; 2 uses
  %i.yw = sext i32 %i.yv to i64
  %.idx.i311 = shl nsw i64 %i.yw, 5
  %i.yx = getelementptr inbounds i8, ptr %i.yt, i64 %.idx.i311 ; 3 uses
  %i.yy = icmp sgt i32 %i.yv, 0
  br i1 %i.yy, label %.lr.ph39.split.us.i, label %freezeset.exit

.lr.ph39.split.us.i:                              ; preds = %nch.exit.thread.thread, %bb.el
  %.02937.us.i = phi ptr [ %i.zm, %bb.el ], [ %i.yt, %nch.exit.thread.thread ] ; 7 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 9
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !75
  %i.zb = icmp ne i8 %i.za, %i.yr
  %.not.us.i = icmp eq ptr %.02937.us.i, %i.dv
  %or.cond.us.i = or i1 %.not.us.i, %i.zb
  br i1 %or.cond.us.i, label %bb.el, label %.preheader.us.i

bb.ej:                                            ; preds = %.preheader.us.i, %bb.ek
  %.03034.us.i = phi i64 [ 0, %.preheader.us.i ], [ %1, %bb.ek ] ; 3 uses
  %i.zc = and i64 %.03034.us.i, 255               ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !33
  %i.zf = and i8 %i.ze, %i.zq
  %i.zg = icmp ne i8 %i.zf, 0
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zc
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !33
  %i.zj = and i8 %i.zi, %i.zs
  %i.zk = icmp eq i8 %i.zj, 0
  %.not32.us.i = xor i1 %i.zg, %i.zk
  br i1 %.not32.us.i, label %bb.ek, label %._crit_edge.us.i.a

._crit_edge.us.i.a:                               ; preds = %bb.ej
  %i.zl = icmp eq i64 %.03034.us.i, %i.sx
  br i1 %i.zl, label %.split.us.i, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %1 = add nuw i64 %.03034.us.i, 1                ; 2 uses
  %exitcond.not.i175 = icmp eq i64 %1, %i.sx
  br i1 %exitcond.not.i175, label %.split.us.i, label %bb.ej, !llvm.loop !102

bb.el:                                            ; preds = %._crit_edge.us.i.a, %.lr.ph39.split.us.i
  %i.zm = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 32 ; 2 uses
  %i.zn = icmp ult ptr %i.zm, %i.yx
  br i1 %i.zn, label %.lr.ph39.split.us.i, label %freezeset.exit, !llvm.loop !103

.preheader.us.i:                                  ; preds = %.lr.ph39.split.us.i
  %i.zo = load ptr, ptr %.02937.us.i, align 8, !tbaa !71
  %i.zp = getelementptr inbounds nuw i8, ptr %.02937.us.i, i64 8
  %i.zq = load i8, ptr %i.zp, align 8, !tbaa !74
  %i.zr = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.zs = load i8, ptr %i.ed, align 8, !tbaa !74
  br label %bb.ej

.lr.ph39.split.split.us.i:                        ; preds = %nch.exit.thread, %bb.em
  %.02937.us40.i = phi ptr [ %i.zw, %bb.em ], [ %i.yl, %nch.exit.thread ] ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.02937.us40.i, i64 9
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !75
  %i.zv = icmp ne i8 %i.zu, %i.yj
  %.not.us41.i = icmp eq ptr %.02937.us40.i, %i.dv
  %or.cond.us42.i = or i1 %.not.us41.i, %i.zv
  br i1 %or.cond.us42.i, label %bb.em, label %.split.us.i

bb.em:                                            ; preds = %.lr.ph39.split.split.us.i
  %i.zw = getelementptr inbounds nuw i8, ptr %.02937.us40.i, i64 32 ; 2 uses
  %i.zx = icmp ult ptr %i.zw, %i.yp
  br i1 %i.zx, label %.lr.ph39.split.split.us.i, label %freezeset.exit, !llvm.loop !103

.split.us.i:                                      ; preds = %._crit_edge.us.i.a, %bb.ek, %.lr.ph39.split.split.us.i
  %i.zy = phi ptr [ %i.yp, %.lr.ph39.split.split.us.i ], [ %i.yx, %bb.ek ], [ %i.yx, %._crit_edge.us.i.a ]
  %.us-phi.i = phi ptr [ %.02937.us40.i, %.lr.ph39.split.split.us.i ], [ %.02937.us.i, %bb.ek ], [ %.02937.us.i, %._crit_edge.us.i.a ] ; 2 uses
  br i1 %.not3.i, label %._crit_edge.i.i173, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %.split.us.i
  %i.zz = icmp eq i32 %.fr48.i, 1
  br i1 %i.zz, label %.lr.ph.i.i171.epil.preheader, label %.lr.ph.i.i171.preheader.new

.lr.ph.i.i171.preheader.new:                      ; preds = %.lr.ph.i.i171.preheader
  %unroll_iter399 = and i64 %i.sx, -2
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.preheader.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i171.preheader.new ], [ %i.aav, %.lr.ph.i.i171 ] ; 4 uses
  %niter400 = phi i64 [ 0, %.lr.ph.i.i171.preheader.new ], [ %niter400.next.1, %.lr.ph.i.i171 ]
  %i.aaa = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.aab = xor i8 %i.aaa, -1
  %i.aac = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.aad = and i64 %.013.i.i, 254
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.aad ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !33
  %i.aag = and i8 %i.aaf, %i.aab
  store i8 %i.aag, ptr %i.aae, align 1, !tbaa !33
  %i.aah = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.aai = trunc i64 %.013.i.i to i8
  %i.aaj = sub i8 %i.aah, %i.aai
  store i8 %i.aaj, ptr %i.ee, align 1, !tbaa !75
  %i.aak = or disjoint i64 %.013.i.i, 1           ; 2 uses
  %i.aal = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.aam = xor i8 %i.aal, -1
  %i.aan = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.aao = and i64 %i.aak, 255
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aao ; 2 uses
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !33
  %i.aar = and i8 %i.aaq, %i.aam
  store i8 %i.aar, ptr %i.aap, align 1, !tbaa !33
  %i.aas = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.aat = trunc i64 %i.aak to i8
  %i.aau = sub i8 %i.aas, %i.aat
  store i8 %i.aau, ptr %i.ee, align 1, !tbaa !75
  %i.aav = add nuw i64 %.013.i.i, 2               ; 2 uses
  %niter400.next.1 = add i64 %niter400, 2         ; 2 uses
  %niter400.ncmp.1 = icmp eq i64 %niter400.next.1, %unroll_iter399
  br i1 %niter400.ncmp.1, label %._crit_edge.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i171, !llvm.loop !91

._crit_edge.i.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i.i171
  %i.aaw = and i32 %.fr48.i, 1
  %lcmp.mod397.not = icmp eq i32 %i.aaw, 0
  br i1 %lcmp.mod397.not, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i171.epil.preheader

.lr.ph.i.i171.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i171.preheader
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i171.preheader ], [ %i.aav, %._crit_edge.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod398 = trunc i32 %.fr48.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod398)
  %i.aax = load i8, ptr %i.ed, align 8, !tbaa !74
  %i.aay = xor i8 %i.aax, -1
  %i.aaz = load ptr, ptr %i.dv, align 8, !tbaa !71
  %i.aba = and i64 %.013.i.i.epil.init, 255
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aba ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !33
  %i.abd = and i8 %i.abc, %i.aay
  store i8 %i.abd, ptr %i.abb, align 1, !tbaa !33
  %i.abe = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.abf = trunc i64 %.013.i.i.epil.init to i8
  %i.abg = sub i8 %i.abe, %i.abf
  store i8 %i.abg, ptr %i.ee, align 1, !tbaa !75
  br label %._crit_edge.i.loopexit.i

._crit_edge.i.loopexit.i:                         ; preds = %._crit_edge.i.loopexit.i.unr-lcssa, %.lr.ph.i.i171.epil.preheader
  %.pre.pre.i = load ptr, ptr %i.bf, align 8, !tbaa !17
  br label %._crit_edge.i.i173

._crit_edge.i.i173:                               ; preds = %._crit_edge.i.loopexit.i, %.split.us.i
  %.pre.i174 = phi ptr [ %.pre.pre.i, %._crit_edge.i.loopexit.i ], [ %.val, %.split.us.i ] ; 3 uses
  %i.abh = getelementptr inbounds i8, ptr %i.zy, i64 -32
  %i.abi = icmp eq ptr %i.dv, %i.abh
  br i1 %i.abi, label %bb.en, label %freezeset.exit

bb.en:                                            ; preds = %._crit_edge.i.i173
  %i.abj = getelementptr inbounds nuw i8, ptr %.pre.i174, i64 20 ; 2 uses
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !37
  %i.abl = add nsw i32 %i.abk, -1
  store i32 %i.abl, ptr %i.abj, align 4, !tbaa !37
  br label %freezeset.exit

freezeset.exit:                                   ; preds = %bb.el, %bb.em, %nch.exit.thread.thread, %nch.exit.thread, %._crit_edge.i.i173, %bb.en
  %i.abm = phi ptr [ %.pre.i174, %bb.en ], [ %.pre.i174, %._crit_edge.i.i173 ], [ %.val, %nch.exit.thread.thread ], [ %.val, %nch.exit.thread ], [ %.val, %bb.em ], [ %.val, %bb.el ]
  %.0.i169 = phi ptr [ %.us-phi.i, %bb.en ], [ %.us-phi.i, %._crit_edge.i.i173 ], [ %i.dv, %nch.exit.thread.thread ], [ %i.dv, %nch.exit.thread ], [ %i.dv, %bb.em ], [ %i.dv, %bb.el ]
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !70
  %i.abp = ptrtoint ptr %.0.i169 to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq
  %sext195 = shl i64 %i.abr, 27
  %i.abs = ashr i64 %sext195, 32
  %i.abt = load i32, ptr %i.of, align 8, !tbaa !20
  %.not.i176 = icmp eq i32 %i.abt, 0
  br i1 %.not.i176, label %bb.eo, label %freeset.exit

bb.eo:                                            ; preds = %freezeset.exit
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !30
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !13 ; 3 uses
  %.not8.i177 = icmp slt i64 %i.abv, %i.abx
  br i1 %.not8.i177, label %enlarge.exit.i179, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aby = add nsw i64 %i.abx, 1
  %i.abz = sdiv i64 %i.aby, 2                     ; 2 uses
  %i.aca = mul nsw i64 %i.abz, 3                  ; 3 uses
  %.not.i.i178 = icmp slt i64 %i.abx, %i.aca
  br i1 %.not.i.i178, label %bb.eq, label %enlarge.exit.i179

bb.eq:                                            ; preds = %bb.ep
  %i.acb = icmp ugt i64 %i.aca, 2305843009213693951
  br i1 %i.acb, label %seterr.exit.i.i181, label %bb.er

seterr.exit.i.i181:                               ; preds = %bb.eq
  store i32 12, ptr %i.of, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %enlarge.exit.i179

bb.er:                                            ; preds = %bb.eq
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !16
  %i.ace = mul i64 %i.abz, 24
  %i.acf = tail call ptr @realloc(ptr noundef %i.acd, i64 noundef %i.ace) #20 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.ach = load i32, ptr %i.of, align 8, !tbaa !20
  %i.aci = icmp eq i32 %i.ach, 0
  br i1 %i.aci, label %bb.et, label %seterr.exit12.i.i180

bb.et:                                            ; preds = %bb.es
  store i32 12, ptr %i.of, align 8, !tbaa !20
  br label %seterr.exit12.i.i180

seterr.exit12.i.i180:                             ; preds = %bb.et, %bb.es
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %enlarge.exit.i179

bb.eu:                                            ; preds = %bb.er
  store ptr %i.acf, ptr %i.acc, align 8, !tbaa !16
  store i64 %i.aca, ptr %i.abw, align 8, !tbaa !13
  br label %enlarge.exit.i179

enlarge.exit.i179:                                ; preds = %bb.eu, %seterr.exit12.i.i180, %seterr.exit.i.i181, %bb.ep, %bb.eo
  %i.acj = or i64 %i.abs, 805306368
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !16
  %i.acm = load i64, ptr %i.abu, align 8, !tbaa !30 ; 2 uses
  %i.acn = add nsw i64 %i.acm, 1
  store i64 %i.acn, ptr %i.abu, align 8, !tbaa !30
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.acm
  store i64 %i.acj, ptr %i.aco, align 8, !tbaa !31
  br label %freeset.exit

freeset.exit:                                     ; preds = %enlarge.exit.i179, %freezeset.exit, %bb.ei, %._crit_edge.i167, %bb.dd, %._crit_edge.i151, %allocset.exit.thread, %doemit.exit139, %doemit.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ordinary(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = and i32 %1, 255
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__ctype_b_loc() #21
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.k = and i32 %1, 255                          ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !62   ; 2 uses
  %i.o = and i16 %i.n, 1024
  %.not13 = icmp eq i16 %i.o, 0
  br i1 %.not13, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i16 %i.n to i32                     ; 2 uses
  %i.q = and i32 %i.p, 256
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
