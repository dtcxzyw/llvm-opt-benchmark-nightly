inline.NumInlined: 45
inline.NumDeleted: 24
begin_hunk_0_@internal_huf_compress:bb.a
  %i.jy = shl i64 %i.jw, 6
  %i.jz = or i64 %i.jy, %i.ju
  store i64 %i.jz, ptr %i.jt, align 8, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.i
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufBuildEncTable.exit, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.ad
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv39.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !9  ; 3 uses
  %.not.i102.i.1 = icmp eq i64 %i.kc, 0
  br i1 %.not.i102.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.preheader.i.i.1
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kc ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !9  ; 2 uses
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.kd, align 8, !tbaa !9
  %i.kg = shl i64 %i.ke, 6
  %i.kh = or i64 %i.kg, %i.kc
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader.i.i.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i

hufBuildEncTable.exit:                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %5, ptr noundef nonnull align 8 dereferenceable(524296) %i.au, i64 524296, i1 false)
  %.not194.i = icmp ugt i32 %storemerge.i, %i.in
  br i1 %.not194.i, label %hufPackEncTable.exit, label %.lr.ph200.i.preheader

.lr.ph200.i.preheader:                            ; preds = %hufBuildEncTable.exit
  %i.ki = add i64 %2, %i.a                        ; 4 uses
  br label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %.lr.ph200.i.preheader, %.thread132.i
  %.077198.i = phi i32 [ %i.ox, %.thread132.i ], [ %storemerge.i, %.lr.ph200.i.preheader ] ; 3 uses
  %.081197.i = phi ptr [ %.889140.i, %.thread132.i ], [ %i.c, %.lr.ph200.i.preheader ] ; 13 uses
  %.097196.i = phi i64 [ %.4101139.i, %.thread132.i ], [ 0, %.lr.ph200.i.preheader ] ; 2 uses
  %.0103195.i = phi i32 [ %.8111138.i, %.thread132.i ], [ 0, %.lr.ph200.i.preheader ] ; 9 uses
  %.081197.i236 = ptrtoint ptr %.081197.i to i64  ; 3 uses
  %i.kj = zext i32 %.077198.i to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !9
  %i.km = and i64 %i.kl, 63                       ; 2 uses
  %i.kn = icmp eq i64 %i.km, 0
  %i.ko = icmp ult i32 %.077198.i, %i.in
  %or.cond.i = and i1 %i.ko, %i.kn
  br i1 %or.cond.i, label %.lr.ph.i49, label %.critedge120.thread.i

.lr.ph.i49:                                       ; preds = %.lr.ph200.i, %bb.ag
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %i.kj, %.lr.ph200.i ] ; 2 uses
  %.0102156.i = phi i64 [ %i.ks, %bb.ag ], [ 1, %.lr.ph200.i ] ; 3 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.i51
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !9
  %i.kr = and i64 %i.kq, 63
  %.not114.i = icmp eq i64 %i.kr, 0
  br i1 %.not114.i, label %bb.ag, label %._crit_edge.i52

bb.ag:                                            ; preds = %.lr.ph.i49
  %i.ks = add nuw nsw i64 %.0102156.i, 1          ; 2 uses
  %i.kt = icmp samesign ult i64 %indvars.iv.next.i51, %i.im
  %i.ku = icmp samesign ult i64 %.0102156.i, 260
  %i.kv = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %i.kv, label %.lr.ph.i49, label %._crit_edge.i52, !llvm.loop !24

._crit_edge.i52:                                  ; preds = %bb.ag, %.lr.ph.i49
  %.0102.lcssa.ph.i = phi i64 [ %i.ks, %bb.ag ], [ %.0102156.i, %.lr.ph.i49 ] ; 4 uses
  %.178.lcssa.ph.in.i = phi i64 [ %indvars.iv.next.i51, %bb.ag ], [ %indvars.iv.i50, %.lr.ph.i49 ]
  %.178.lcssa.ph.i = trunc i64 %.178.lcssa.ph.in.i to i32 ; 5 uses
  %i.kw = icmp samesign ult i64 %.0102.lcssa.ph.i, 2
  br i1 %i.kw, label %.critedge120.thread.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i52
  %i.kx = icmp samesign ugt i64 %.0102.lcssa.ph.i, 5
  %i.ky = shl i64 %.097196.i, 6                   ; 2 uses
  br i1 %i.kx, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.kz = or disjoint i64 %i.ky, 63               ; 3 uses
  %i.la = add i32 %.0103195.i, 6                  ; 3 uses
  %i.lb = icmp slt i32 %.0103195.i, 2
  br i1 %i.lb, label %.critedge.i, label %.lr.ph176.preheader.i.a

.lr.ph176.preheader.i.a:                          ; preds = %bb.ai
  %i.lc = zext i32 %i.la to i64                   ; 3 uses
  %i.ld = add nuw i32 %.0103195.i, 13
  %smin263 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 15)
  %i.le = sub i32 %i.ld, %smin263
  %.fr492 = freeze i32 %i.le
  %i.lf = lshr i32 %.fr492, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081197.i236)
  %umin265 = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 %i.lh) ; 2 uses
  %min.iters.check267 = icmp samesign ult i64 %umin265, 16
  br i1 %min.iters.check267, label %.lr.ph176.i.preheader.a, label %vector.ph268

vector.ph268:                                     ; preds = %.lr.ph176.preheader.i.a
  %i.li = add nuw nsw i64 %umin265, 1             ; 2 uses
  %n.mod.vf269 = and i64 %i.li, 15                ; 2 uses
  %i.lj = icmp eq i64 %n.mod.vf269, 0
  %i.lk = select i1 %i.lj, i64 16, i64 %n.mod.vf269
  %n.vec270 = sub nsw i64 %i.li, %i.lk            ; 3 uses
  %i.ll = shl nsw i64 %n.vec270, 3
  %i.lm = sub nsw i64 %i.lc, %i.ll
  %i.ln = getelementptr i8, ptr %.081197.i, i64 %n.vec270
  %broadcast.splatinsert271 = insertelement <16 x i64> poison, i64 %i.kz, i64 0
  %broadcast.splat272 = shufflevector <16 x i64> %broadcast.splatinsert271, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <16 x i64> poison, i64 %i.lc, i64 0
  %broadcast.splat274 = shufflevector <16 x i64> %broadcast.splatinsert273, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction275 = add nsw <16 x i64> %broadcast.splat274, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph268
  %index277 = phi i64 [ 0, %vector.ph268 ], [ %index.next280, %vector.body276 ] ; 2 uses
  %vec.ind278 = phi <16 x i64> [ %induction275, %vector.ph268 ], [ %vec.ind.next281, %vector.body276 ] ; 2 uses
  %next.gep279 = getelementptr i8, ptr %.081197.i, i64 %index277
  %i.lo = add nsw <16 x i64> %vec.ind278, splat (i64 -8)
  %i.lp = lshr <16 x i64> %broadcast.splat272, %i.lo
  %i.lq = trunc <16 x i64> %i.lp to <16 x i8>
  store <16 x i8> %i.lq, ptr %next.gep279, align 1, !tbaa !25
  %index.next280 = add nuw i64 %index277, 16      ; 2 uses
  %vec.ind.next281 = add nsw <16 x i64> %vec.ind278, splat (i64 -128)
  %i.lr = icmp eq i64 %index.next280, %n.vec270
  br i1 %i.lr, label %.lr.ph176.i.preheader.a, label %vector.body276, !llvm.loop !26

.lr.ph176.i.preheader.a:                          ; preds = %vector.body276, %.lr.ph176.preheader.i.a
  %indvars.iv221.i.ph = phi i64 [ %i.lc, %.lr.ph176.preheader.i.a ], [ %i.lm, %vector.body276 ]
  %.182174.i.ph = phi ptr [ %.081197.i, %.lr.ph176.preheader.i.a ], [ %i.ln, %vector.body276 ]
  br label %.lr.ph176.i.a

.lr.ph176.i.a:                                    ; preds = %.lr.ph176.i.preheader.a, %bb.aj
  %indvars.iv221.i = phi i64 [ %i.ls, %bb.aj ], [ %indvars.iv221.i.ph, %.lr.ph176.i.preheader.a ] ; 2 uses
  %.182174.i = phi ptr [ %i.lv, %bb.aj ], [ %.182174.i.ph, %.lr.ph176.i.preheader.a ] ; 3 uses
  %.not116.i = icmp ult ptr %.182174.i, %i.d
  br i1 %.not116.i, label %bb.aj, label %hufPackEncTable.exit.thread, !prof !29

bb.aj:                                            ; preds = %.lr.ph176.i.a
  %i.ls = add nsw i64 %indvars.iv221.i, -8        ; 3 uses
  %i.lt = lshr i64 %i.kz, %i.ls
  %i.lu = trunc i64 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %.182174.i, i64 1 ; 2 uses
  store i8 %i.lu, ptr %.182174.i, align 1, !tbaa !25
  %i.lw = trunc nuw i64 %indvars.iv221.i to i32
  %i.lx = icmp slt i32 %i.lw, 16
  br i1 %i.lx, label %.critedge.loopexit.i, label %.lr.ph176.i.a, !llvm.loop !30

.critedge.loopexit.i:                             ; preds = %bb.aj
  %i.ly = trunc i64 %i.ls to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.ai
  %.1104.lcssa.i = phi i32 [ %i.la, %bb.ai ], [ %i.ly, %.critedge.loopexit.i ] ; 3 uses
  %.182.lcssa.i = phi ptr [ %.081197.i, %bb.ai ], [ %i.lv, %.critedge.loopexit.i ] ; 5 uses
  %i.lz = shl i64 %i.kz, 8
  %i.ma = add nsw i64 %.0102.lcssa.ph.i, -6
  %i.mb = or i64 %i.ma, %i.lz                     ; 4 uses
  %i.mc = add i32 %.1104.lcssa.i, 8               ; 3 uses
  %i.md = icmp slt i32 %.1104.lcssa.i, 0
  br i1 %i.md, label %.thread132.i, label %.lr.ph181.preheader.i

.lr.ph181.preheader.i:                            ; preds = %.critedge.i
  %.182.lcssa.i241 = ptrtoint ptr %.182.lcssa.i to i64
  %i.me = zext i32 %i.mc to i64                   ; 3 uses
  %i.mf = add nuw i32 %.1104.lcssa.i, 15
  %smin240 = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 15)
  %i.mg = sub i32 %i.mf, %smin240
  %i.mh = lshr i32 %i.mg, 3
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.182.lcssa.i241)
  %umin243 = tail call i64 @llvm.umin.i64(i64 %i.mi, i64 %i.mj) ; 2 uses
  %min.iters.check245 = icmp samesign ult i64 %umin243, 16
  br i1 %min.iters.check245, label %.lr.ph181.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %.lr.ph181.preheader.i
  %i.mk = add nuw nsw i64 %umin243, 1             ; 2 uses
  %n.mod.vf247 = and i64 %i.mk, 15                ; 2 uses
  %i.ml = icmp eq i64 %n.mod.vf247, 0
  %i.mm = select i1 %i.ml, i64 16, i64 %n.mod.vf247
  %n.vec248 = sub nsw i64 %i.mk, %i.mm            ; 3 uses
  %i.mn = shl nsw i64 %n.vec248, 3
  %i.mo = sub nsw i64 %i.me, %i.mn
  %i.mp = getelementptr i8, ptr %.182.lcssa.i, i64 %n.vec248
  %broadcast.splatinsert249 = insertelement <16 x i64> poison, i64 %i.mb, i64 0
  %broadcast.splat250 = shufflevector <16 x i64> %broadcast.splatinsert249, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <16 x i64> poison, i64 %i.me, i64 0
  %broadcast.splat252 = shufflevector <16 x i64> %broadcast.splatinsert251, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction253 = add nsw <16 x i64> %broadcast.splat252, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph246
  %index255 = phi i64 [ 0, %vector.ph246 ], [ %index.next258, %vector.body254 ] ; 2 uses
  %vec.ind256 = phi <16 x i64> [ %induction253, %vector.ph246 ], [ %vec.ind.next259, %vector.body254 ] ; 2 uses
  %next.gep257 = getelementptr i8, ptr %.182.lcssa.i, i64 %index255
  %i.mq = add <16 x i64> %vec.ind256, splat (i64 4294967288)
  %7 = and <16 x i64> %i.mq, splat (i64 4294967295)
  %i.mr = lshr <16 x i64> %broadcast.splat250, %7
  %i.ms = trunc <16 x i64> %i.mr to <16 x i8>
  store <16 x i8> %i.ms, ptr %next.gep257, align 1, !tbaa !25
  %index.next258 = add nuw i64 %index255, 16      ; 2 uses
  %vec.ind.next259 = add nsw <16 x i64> %vec.ind256, splat (i64 -128)
  %i.mt = icmp eq i64 %index.next258, %n.vec248
  br i1 %i.mt, label %.lr.ph181.i.preheader, label %vector.body254, !llvm.loop !31

.lr.ph181.i.preheader:                            ; preds = %vector.body254, %.lr.ph181.preheader.i
  %indvars.iv225.i.ph = phi i64 [ %i.me, %.lr.ph181.preheader.i ], [ %i.mo, %vector.body254 ]
  %.283180.i.ph = phi ptr [ %.182.lcssa.i, %.lr.ph181.preheader.i ], [ %i.mp, %vector.body254 ]
  br label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.lr.ph181.i.preheader, %bb.ak
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %bb.ak ], [ %indvars.iv225.i.ph, %.lr.ph181.i.preheader ] ; 2 uses
  %.283180.i = phi ptr [ %i.mw, %bb.ak ], [ %.283180.i.ph, %.lr.ph181.i.preheader ] ; 3 uses
  %.not117.i = icmp ult ptr %.283180.i, %i.d
  br i1 %.not117.i, label %bb.ak, label %hufPackEncTable.exit.thread, !prof !29

bb.ak:                                            ; preds = %.lr.ph181.i
  %8 = trunc nuw i64 %indvars.iv225.i to i32
  %indvars.iv.next226.i = add nsw i64 %indvars.iv225.i, -8 ; 3 uses
  %9 = and i64 %indvars.iv.next226.i, 4294967295
  %i.mu = lshr i64 %i.mb, %9
  %i.mv = trunc i64 %i.mu to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %.283180.i, i64 1 ; 2 uses
  store i8 %i.mv, ptr %.283180.i, align 1, !tbaa !25
  %i.mx = icmp slt i32 %8, 16
  br i1 %i.mx, label %.thread132.loopexit246.i, label %.lr.ph181.i, !llvm.loop !32

bb.al:                                            ; preds = %bb.ah
  %i.my = add nuw nsw i64 %.0102.lcssa.ph.i, 57
  %i.mz = or i64 %i.my, %i.ky                     ; 4 uses
  %i.na = add i32 %.0103195.i, 6                  ; 3 uses
  %i.nb = icmp slt i32 %.0103195.i, 2
  br i1 %i.nb, label %.thread132.i, label %.lr.ph165.preheader.i

.lr.ph165.preheader.i:                            ; preds = %bb.al
  %i.nc = zext i32 %i.na to i64                   ; 3 uses
  %i.nd = add nuw i32 %.0103195.i, 13
  %smin285 = tail call i32 @llvm.smin.i32(i32 %i.na, i32 15)
  %i.ne = sub i32 %i.nd, %smin285
  %.fr491 = freeze i32 %i.ne
  %i.nf = lshr i32 %.fr491, 3
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081197.i236)
  %umin287 = tail call i64 @llvm.umin.i64(i64 %i.ng, i64 %i.nh) ; 2 uses
  %min.iters.check289 = icmp samesign ult i64 %umin287, 16
  br i1 %min.iters.check289, label %.lr.ph165.i.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph165.preheader.i
  %i.ni = add nuw nsw i64 %umin287, 1             ; 2 uses
  %n.mod.vf291 = and i64 %i.ni, 15                ; 2 uses
  %i.nj = icmp eq i64 %n.mod.vf291, 0
  %i.nk = select i1 %i.nj, i64 16, i64 %n.mod.vf291
  %n.vec292 = sub nsw i64 %i.ni, %i.nk            ; 3 uses
  %i.nl = shl nsw i64 %n.vec292, 3
  %i.nm = sub nsw i64 %i.nc, %i.nl
  %i.nn = getelementptr i8, ptr %.081197.i, i64 %n.vec292
  %broadcast.splatinsert293 = insertelement <16 x i64> poison, i64 %i.mz, i64 0
  %broadcast.splat294 = shufflevector <16 x i64> %broadcast.splatinsert293, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert295 = insertelement <16 x i64> poison, i64 %i.nc, i64 0
  %broadcast.splat296 = shufflevector <16 x i64> %broadcast.splatinsert295, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction297 = add nsw <16 x i64> %broadcast.splat296, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph290
  %index299 = phi i64 [ 0, %vector.ph290 ], [ %index.next302, %vector.body298 ] ; 2 uses
  %vec.ind300 = phi <16 x i64> [ %induction297, %vector.ph290 ], [ %vec.ind.next303, %vector.body298 ] ; 2 uses
  %next.gep301 = getelementptr i8, ptr %.081197.i, i64 %index299
  %i.no = add <16 x i64> %vec.ind300, splat (i64 4294967288)
  %10 = and <16 x i64> %i.no, splat (i64 4294967295)
  %i.np = lshr <16 x i64> %broadcast.splat294, %10
  %i.nq = trunc <16 x i64> %i.np to <16 x i8>
  store <16 x i8> %i.nq, ptr %next.gep301, align 1, !tbaa !25
  %index.next302 = add nuw i64 %index299, 16      ; 2 uses
  %vec.ind.next303 = add nsw <16 x i64> %vec.ind300, splat (i64 -128)
  %i.nr = icmp eq i64 %index.next302, %n.vec292
  br i1 %i.nr, label %.lr.ph165.i.preheader, label %vector.body298, !llvm.loop !33

.lr.ph165.i.preheader:                            ; preds = %vector.body298, %.lr.ph165.preheader.i
  %indvars.iv217.i.ph = phi i64 [ %i.nc, %.lr.ph165.preheader.i ], [ %i.nm, %vector.body298 ]
  %.384163.i.ph = phi ptr [ %.081197.i, %.lr.ph165.preheader.i ], [ %i.nn, %vector.body298 ]
  br label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %.lr.ph165.i.preheader, %bb.am
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i, %bb.am ], [ %indvars.iv217.i.ph, %.lr.ph165.i.preheader ] ; 2 uses
  %.384163.i = phi ptr [ %i.nu, %bb.am ], [ %.384163.i.ph, %.lr.ph165.i.preheader ] ; 3 uses
  %.not115.i = icmp ult ptr %.384163.i, %i.d
  br i1 %.not115.i, label %bb.am, label %hufPackEncTable.exit.thread, !prof !29

bb.am:                                            ; preds = %.lr.ph165.i
  %11 = trunc nuw i64 %indvars.iv217.i to i32
  %indvars.iv.next218.i = add nsw i64 %indvars.iv217.i, -8 ; 3 uses
  %12 = and i64 %indvars.iv.next218.i, 4294967295
  %i.ns = lshr i64 %i.mz, %12
  %i.nt = trunc i64 %i.ns to i8
  %i.nu = getelementptr inbounds nuw i8, ptr %.384163.i, i64 1 ; 2 uses
  store i8 %i.nt, ptr %.384163.i, align 1, !tbaa !25
  %i.nv = icmp slt i32 %11, 16
  br i1 %i.nv, label %.thread132.loopexit248.i, label %.lr.ph165.i, !llvm.loop !34

.critedge120.thread.i:                            ; preds = %._crit_edge.i52, %.lr.ph200.i
  %.279.i = phi i32 [ %.178.lcssa.ph.i, %._crit_edge.i52 ], [ %.077198.i, %.lr.ph200.i ] ; 2 uses
  %i.nw = shl i64 %.097196.i, 6
  %i.nx = or disjoint i64 %i.km, %i.nw            ; 4 uses
  %i.ny = add i32 %.0103195.i, 6                  ; 3 uses
  %i.nz = icmp sgt i32 %.0103195.i, 1
  br i1 %i.nz, label %.lr.ph191.preheader.i, label %.thread132.i

.lr.ph191.preheader.i:                            ; preds = %.critedge120.thread.i
  %i.oa = zext i32 %i.ny to i64                   ; 3 uses
  %i.ob = add nuw i32 %.0103195.i, 13
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ny, i32 15)
  %i.oc = sub i32 %i.ob, %smin
  %.fr493 = freeze i32 %i.oc
  %i.od = lshr i32 %.fr493, 3
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = tail call i64 @llvm.usub.sat.i64(i64 %i.ki, i64 %.081197.i236)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.of) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 16
  br i1 %min.iters.check, label %.lr.ph191.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191.preheader.i
  %i.og = add nuw nsw i64 %umin, 1                ; 2 uses
  %n.mod.vf = and i64 %i.og, 15                   ; 2 uses
  %i.oh = icmp eq i64 %n.mod.vf, 0
  %i.oi = select i1 %i.oh, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.og, %i.oi               ; 3 uses
  %i.oj = shl nsw i64 %n.vec, 3
  %i.ok = sub nsw i64 %i.oa, %i.oj
  %i.ol = getelementptr i8, ptr %.081197.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.nx, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <16 x i64> poison, i64 %i.oa, i64 0
  %broadcast.splat238 = shufflevector <16 x i64> %broadcast.splatinsert237, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i64> %broadcast.splat238, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.081197.i, i64 %index
  %i.om = add nsw <16 x i64> %vec.ind, splat (i64 -8)
  %i.on = lshr <16 x i64> %broadcast.splat, %i.om
  %i.oo = trunc <16 x i64> %i.on to <16 x i8>
  store <16 x i8> %i.oo, ptr %next.gep, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -128)
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %.lr.ph191.i.preheader, label %vector.body, !llvm.loop !35

.lr.ph191.i.preheader:                            ; preds = %vector.body, %.lr.ph191.preheader.i
  %indvars.iv229.i.ph = phi i64 [ %i.oa, %.lr.ph191.preheader.i ], [ %i.ok, %vector.body ]
  %.788190.i.ph = phi ptr [ %.081197.i, %.lr.ph191.preheader.i ], [ %i.ol, %vector.body ]
  br label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %.lr.ph191.i.preheader, %bb.an
  %indvars.iv229.i = phi i64 [ %i.oq, %bb.an ], [ %indvars.iv229.i.ph, %.lr.ph191.i.preheader ] ; 2 uses
  %.788190.i = phi ptr [ %i.ot, %bb.an ], [ %.788190.i.ph, %.lr.ph191.i.preheader ] ; 3 uses
  %.not118.i = icmp ult ptr %.788190.i, %i.d
  br i1 %.not118.i, label %bb.an, label %hufPackEncTable.exit.thread, !prof !29

bb.an:                                            ; preds = %.lr.ph191.i
  %i.oq = add nsw i64 %indvars.iv229.i, -8        ; 3 uses
  %i.or = lshr i64 %i.nx, %i.oq
  %i.os = trunc i64 %i.or to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %.788190.i, i64 1 ; 2 uses
  store i8 %i.os, ptr %.788190.i, align 1, !tbaa !25
  %i.ou = trunc nuw i64 %indvars.iv229.i to i32
  %i.ov = icmp sgt i32 %i.ou, 15
  br i1 %i.ov, label %.lr.ph191.i, label %.thread132.loopexit.i, !llvm.loop !36

.thread132.loopexit.i:                            ; preds = %bb.an
  %i.ow = trunc i64 %i.oq to i32
  br label %.thread132.i

.thread132.loopexit246.i:                         ; preds = %bb.ak
  %indvars227.le.i = trunc i64 %indvars.iv.next226.i to i32
  br label %.thread132.i

.thread132.loopexit248.i:                         ; preds = %bb.am
  %indvars219.le.i = trunc i64 %indvars.iv.next218.i to i32
  br label %.thread132.i

.thread132.i:                                     ; preds = %.thread132.loopexit248.i, %.thread132.loopexit246.i, %.thread132.loopexit.i, %.critedge120.thread.i, %bb.al, %.critedge.i
  %.380141.i = phi i32 [ %.279.i, %.thread132.loopexit.i ], [ %.279.i, %.critedge120.thread.i ], [ %.178.lcssa.ph.i, %bb.al ], [ %.178.lcssa.ph.i, %.thread132.loopexit246.i ], [ %.178.lcssa.ph.i, %.critedge.i ], [ %.178.lcssa.ph.i, %.thread132.loopexit248.i ]
  %.889140.i = phi ptr [ %i.ot, %.thread132.loopexit.i ], [ %.081197.i, %.critedge120.thread.i ], [ %.081197.i, %bb.al ], [ %i.mw, %.thread132.loopexit246.i ], [ %.182.lcssa.i, %.critedge.i ], [ %i.nu, %.thread132.loopexit248.i ] ; 5 uses
  %.4101139.i = phi i64 [ %i.nx, %.thread132.loopexit.i ], [ %i.nx, %.critedge120.thread.i ], [ %i.mz, %bb.al ], [ %i.mb, %.thread132.loopexit246.i ], [ %i.mb, %.critedge.i ], [ %i.mz, %.thread132.loopexit248.i ] ; 2 uses
  %.8111138.i = phi i32 [ %i.ow, %.thread132.loopexit.i ], [ %i.ny, %.critedge120.thread.i ], [ %i.na, %bb.al ], [ %indvars227.le.i, %.thread132.loopexit246.i ], [ %i.mc, %.critedge.i ], [ %indvars219.le.i, %.thread132.loopexit248.i ] ; 3 uses
  %i.ox = add i32 %.380141.i, 1                   ; 2 uses
  %.not.i48 = icmp ugt i32 %i.ox, %i.in
  br i1 %.not.i48, label %._crit_edge201.i, label %.lr.ph200.i, !llvm.loop !37

._crit_edge201.i:                                 ; preds = %.thread132.i
  %i.oy = icmp sgt i32 %.8111138.i, 0
  br i1 %i.oy, label %bb.ao, label %hufPackEncTable.exit

bb.ao:                                            ; preds = %._crit_edge201.i
  %.not113.i = icmp ult ptr %.889140.i, %i.d
  br i1 %.not113.i, label %bb.ap, label %hufPackEncTable.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.oz = sub nsw i32 8, %.8111138.i
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl i64 %.4101139.i, %i.pa
  %i.pc = trunc i64 %i.pb to i8
  %i.pd = getelementptr inbounds nuw i8, ptr %.889140.i, i64 1
  store i8 %i.pc, ptr %.889140.i, align 1, !tbaa !25
  br label %hufPackEncTable.exit

hufPackEncTable.exit:                             ; preds = %bb.ap, %._crit_edge201.i, %hufBuildEncTable.exit
  %.070 = phi ptr [ %.889140.i, %._crit_edge201.i ], [ %i.c, %hufBuildEncTable.exit ], [ %i.pd, %bb.ap ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.pe = load i16, ptr %3, align 2, !tbaa !7, !alias.scope !41, !noalias !45 ; 2 uses
  %.not227340.i.not = icmp eq i64 %4, 1
  br i1 %.not227340.i.not, label %.critedge247.preheader.thread.i, label %.lr.ph347.i

.lr.ph347.i:                                      ; preds = %hufPackEncTable.exit
  %i.pf = load i64, ptr %i.il, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 3 uses
  %i.pg = zext i16 %i.pe to i32
  %i.ph = trunc i64 %i.pf to i32
  %i.pi = and i32 %i.ph, 63                       ; 3 uses
  %i.pj = add nuw nsw i32 %i.pi, 8                ; 2 uses
  %i.pk = and i64 %i.pf, 63                       ; 2 uses
  %i.pl = lshr i64 %i.pf, 6                       ; 2 uses
  %i.pm = add i64 %2, %i.a                        ; 4 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit268.i, %.lr.ph347.i
  %.0161346.i = phi ptr [ %.070, %.lr.ph347.i ], [ %.8169.i, %.loopexit268.i ] ; 8 uses
  %.0177345.i = phi i64 [ 0, %.lr.ph347.i ], [ %.4181.i, %.loopexit268.i ] ; 4 uses
  %.0185344.i = phi i32 [ 0, %.lr.ph347.i ], [ %.8193.i, %.loopexit268.i ] ; 4 uses
  %.0201343.i = phi i32 [ %i.pg, %.lr.ph347.i ], [ %.2203.i, %.loopexit268.i ] ; 3 uses
  %.0205342.i = phi i32 [ 0, %.lr.ph347.i ], [ %.3208.i, %.loopexit268.i ] ; 7 uses
  %.0211341.i = phi i64 [ 1, %.lr.ph347.i ], [ %i.uj, %.loopexit268.i ] ; 2 uses
  %.0161346.i354 = ptrtoint ptr %.0161346.i to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.0211341.i
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !7, !alias.scope !41, !noalias !45
  %i.pp = zext i16 %i.po to i32                   ; 5 uses
  %i.pq = icmp ne i32 %.0205342.i, 255
  %.not.i54 = icmp eq i32 %.0201343.i, %i.pp
  %or.cond.i55 = select i1 %i.pq, i1 %.not.i54, i1 false
  br i1 %or.cond.i55, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pr = zext nneg i32 %.0201343.i to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !9, !alias.scope !38, !noalias !48 ; 5 uses
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = and i32 %i.pu, 63                       ; 4 uses
  %i.pw = add nuw nsw i32 %i.pv, %i.pj
  %i.px = mul nsw i32 %i.pv, %.0205342.i
  %i.py = icmp slt i32 %i.pw, %i.px
  br i1 %i.py, label %bb.as, label %.critedge239.preheader.i

.critedge239.preheader.i:                         ; preds = %bb.ar
  %i.pz = icmp sgt i32 %.0205342.i, -1
  br i1 %i.pz, label %.lr.ph321.i, label %.loopexit268.i

.lr.ph321.i:                                      ; preds = %.critedge239.preheader.i
  %i.qa = and i64 %i.pt, 63
  %i.qb = lshr i64 %i.pt, 6
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.qc = and i64 %i.pt, 63
  %i.qd = shl i64 %.0177345.i, %i.qc
  %i.qe = lshr i64 %i.pt, 6
  %i.qf = or i64 %i.qd, %i.qe                     ; 3 uses
  %i.qg = add nsw i32 %i.pv, %.0185344.i          ; 3 uses
  %i.qh = icmp slt i32 %i.qg, 8
  br i1 %i.qh, label %.critedge.i61, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %bb.as
  %i.qi = zext nneg i32 %i.qg to i64              ; 5 uses
  %i.qj = add nuw nsw i64 %i.qi, 7
  %smin353 = tail call i64 @llvm.smin.i64(i64 %i.qi, i64 15)
  %i.qk = sub nsw i64 %i.qj, %smin353
  %.fr = freeze i64 %i.qk
  %i.ql = lshr i64 %.fr, 3
  %i.qm = tail call i64 @llvm.usub.sat.i64(i64 %i.pm, i64 %.0161346.i354)
  %umin356 = tail call i64 @llvm.umin.i64(i64 %i.ql, i64 %i.qm) ; 2 uses
  %min.iters.check358 = icmp samesign ult i64 %umin356, 16
  br i1 %min.iters.check358, label %.lr.ph327.i.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %.lr.ph327.preheader.i
  %i.qn = add nuw nsw i64 %umin356, 1             ; 2 uses
  %n.mod.vf360 = and i64 %i.qn, 15                ; 2 uses
  %i.qo = icmp eq i64 %n.mod.vf360, 0
  %i.qp = select i1 %i.qo, i64 16, i64 %n.mod.vf360
  %n.vec361 = sub nsw i64 %i.qn, %i.qp            ; 3 uses
  %i.qq = shl i64 %n.vec361, 3
  %i.qr = sub i64 %i.qi, %i.qq
  %i.qs = getelementptr i8, ptr %.0161346.i, i64 %n.vec361
  %broadcast.splatinsert362 = insertelement <16 x i64> poison, i64 %i.qf, i64 0
  %broadcast.splat363 = shufflevector <16 x i64> %broadcast.splatinsert362, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert364 = insertelement <16 x i64> poison, i64 %i.qi, i64 0
  %broadcast.splat365 = shufflevector <16 x i64> %broadcast.splatinsert364, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction366 = add nsw <16 x i64> %broadcast.splat365, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph359
  %index368 = phi i64 [ 0, %vector.ph359 ], [ %index.next371, %vector.body367 ] ; 2 uses
  %vec.ind369 = phi <16 x i64> [ %induction366, %vector.ph359 ], [ %vec.ind.next372, %vector.body367 ] ; 2 uses
  %next.gep370 = getelementptr i8, ptr %.0161346.i, i64 %index368
  %i.qt = add nsw <16 x i64> %vec.ind369, splat (i64 -8)
  %i.qu = lshr <16 x i64> %broadcast.splat363, %i.qt
  %i.qv = trunc <16 x i64> %i.qu to <16 x i8>
  store <16 x i8> %i.qv, ptr %next.gep370, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next371 = add nuw i64 %index368, 16      ; 2 uses
  %vec.ind.next372 = add nsw <16 x i64> %vec.ind369, splat (i64 -128)
  %i.qw = icmp eq i64 %index.next371, %n.vec361
  br i1 %i.qw, label %.lr.ph327.i.preheader, label %vector.body367, !llvm.loop !50

.lr.ph327.i.preheader:                            ; preds = %vector.body367, %.lr.ph327.preheader.i
  %indvars.iv410.i.ph = phi i64 [ %i.qi, %.lr.ph327.preheader.i ], [ %i.qr, %vector.body367 ]
  %.1162326.i.ph = phi ptr [ %.0161346.i, %.lr.ph327.preheader.i ], [ %i.qs, %vector.body367 ]
  br label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %.lr.ph327.i.preheader, %bb.at
  %indvars.iv410.i = phi i64 [ %indvars.iv.next411.i, %bb.at ], [ %indvars.iv410.i.ph, %.lr.ph327.i.preheader ] ; 2 uses
  %.1162326.i = phi ptr [ %i.qz, %bb.at ], [ %.1162326.i.ph, %.lr.ph327.i.preheader ] ; 3 uses
  %.not224.i = icmp ult ptr %.1162326.i, %i.d
  br i1 %.not224.i, label %bb.at, label %hufPackEncTable.exit.thread, !prof !29

bb.at:                                            ; preds = %.lr.ph327.i
  %indvars.iv.next411.i = add nsw i64 %indvars.iv410.i, -8 ; 3 uses
  %i.qx = lshr i64 %i.qf, %indvars.iv.next411.i
  %i.qy = trunc i64 %i.qx to i8
  %i.qz = getelementptr inbounds nuw i8, ptr %.1162326.i, i64 1 ; 2 uses
  store i8 %i.qy, ptr %.1162326.i, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %i.ra = icmp slt i64 %indvars.iv410.i, 16
  br i1 %i.ra, label %.critedge.loopexit.i60, label %.lr.ph327.i, !llvm.loop !51

.critedge.loopexit.i60:                           ; preds = %bb.at
  %i.rb = trunc nuw nsw i64 %indvars.iv.next411.i to i32
  br label %.critedge.i61

.critedge.i61:                                    ; preds = %.critedge.loopexit.i60, %bb.as
  %.1186.lcssa.i = phi i32 [ %i.qg, %bb.as ], [ %i.rb, %.critedge.loopexit.i60 ]
  %.1162.lcssa.i = phi ptr [ %.0161346.i, %bb.as ], [ %i.qz, %.critedge.loopexit.i60 ] ; 6 uses
  %i.rc = shl i64 %i.qf, %i.pk
  %i.rd = or i64 %i.rc, %i.pl                     ; 4 uses
  %i.re = add nsw i32 %.1186.lcssa.i, %i.pi
  %.fr497 = freeze i32 %i.re                      ; 4 uses
  %i.rf = icmp slt i32 %.fr497, 8
  br i1 %i.rf, label %.critedge235.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.critedge.i61
  %.1162.lcssa.i331 = ptrtoint ptr %.1162.lcssa.i to i64
  %i.rg = zext nneg i32 %.fr497 to i64            ; 4 uses
  %i.rh = tail call i64 @llvm.usub.sat.i64(i64 %i.rg, i64 15)
  %i.ri = add nuw nsw i64 %i.rh, 7
  %i.rj = lshr i64 %i.ri, 3
  %i.rk = tail call i64 @llvm.usub.sat.i64(i64 %i.pm, i64 %.1162.lcssa.i331)
  %umin333 = tail call i64 @llvm.umin.i64(i64 %i.rj, i64 %i.rk) ; 2 uses
  %min.iters.check335 = icmp samesign ult i64 %umin333, 16
  br i1 %min.iters.check335, label %.lr.ph332.i.preheader, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph332.preheader.i
  %i.rl = add nuw nsw i64 %umin333, 1             ; 2 uses
  %n.mod.vf337 = and i64 %i.rl, 15                ; 2 uses
  %i.rm = icmp eq i64 %n.mod.vf337, 0
  %i.rn = select i1 %i.rm, i64 16, i64 %n.mod.vf337
  %n.vec338 = sub nsw i64 %i.rl, %i.rn            ; 3 uses
  %i.ro = shl i64 %n.vec338, 3
  %i.rp = sub i64 %i.rg, %i.ro
  %i.rq = getelementptr i8, ptr %.1162.lcssa.i, i64 %n.vec338
  %broadcast.splatinsert339 = insertelement <16 x i64> poison, i64 %i.rd, i64 0
  %broadcast.splat340 = shufflevector <16 x i64> %broadcast.splatinsert339, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert341 = insertelement <16 x i64> poison, i64 %i.rg, i64 0
  %broadcast.splat342 = shufflevector <16 x i64> %broadcast.splatinsert341, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction343 = add nsw <16 x i64> %broadcast.splat342, <i64 0, i64 -8, i64 -16, i64 -24, i64 -32, i64 -40, i64 -48, i64 -56, i64 -64, i64 -72, i64 -80, i64 -88, i64 -96, i64 -104, i64 -112, i64 -120>
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph336
  %index345 = phi i64 [ 0, %vector.ph336 ], [ %index.next348, %vector.body344 ] ; 2 uses
  %vec.ind346 = phi <16 x i64> [ %induction343, %vector.ph336 ], [ %vec.ind.next349, %vector.body344 ] ; 2 uses
  %next.gep347 = getelementptr i8, ptr %.1162.lcssa.i, i64 %index345
  %i.rr = add nsw <16 x i64> %vec.ind346, splat (i64 -8)
  %i.rs = lshr <16 x i64> %broadcast.splat340, %i.rr
  %i.rt = trunc <16 x i64> %i.rs to <16 x i8>
  store <16 x i8> %i.rt, ptr %next.gep347, align 1, !tbaa !25, !alias.scope !43, !noalias !49
  %index.next348 = add nuw i64 %index345, 16      ; 2 uses
  %vec.ind.next349 = add nsw <16 x i64> %vec.ind346, splat (i64 -128)
  %i.ru = icmp eq i64 %index.next348, %n.vec338
  br i1 %i.ru, label %.lr.ph332.i.preheader, label %vector.body344, !llvm.loop !52
end_hunk_0
begin_hunk_1_@internal_huf_decompress:bb.a
  %.not42.i.1 = icmp eq i64 %i.or, 59
  br i1 %.not42.i.1, label %._crit_edge.i76, label %.lr.ph.i81.2

.lr.ph.i81.2:                                     ; preds = %.lr.ph.i81
  %i.ra = add i32 %.03782.i, 3                    ; 2 uses
  %i.rb = zext i32 %i.qx to i64
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rb
  store i64 0, ptr %i.rc, align 8, !tbaa !9
  %.not42.i.2 = icmp eq i64 %i.or, 60
  br i1 %.not42.i.2, label %._crit_edge.i76, label %.lr.ph.i81.3

.lr.ph.i81.3:                                     ; preds = %.lr.ph.i81.2
  %i.rd = add i32 %.03782.i, 4                    ; 2 uses
  %i.re = zext i32 %i.ra to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.re
  store i64 0, ptr %i.rf, align 8, !tbaa !9
  %.not42.i.3 = icmp eq i64 %i.or, 61
  br i1 %.not42.i.3, label %._crit_edge.i76, label %.lr.ph.i81.4

.lr.ph.i81.4:                                     ; preds = %.lr.ph.i81.3
  %i.rg = add i32 %.03782.i, 5                    ; 2 uses
  %i.rh = zext i32 %i.rd to i64
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rh
  store i64 0, ptr %i.ri, align 8, !tbaa !9
  %.not42.i.4 = icmp eq i64 %i.or, 62
  br i1 %.not42.i.4, label %._crit_edge.i76, label %.lr.ph.i81.5

.lr.ph.i81.5:                                     ; preds = %.lr.ph.i81.4
  %i.rj = add i32 %.03782.i, 6
  %i.rk = zext i32 %i.rg to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rk
  store i64 0, ptr %i.rl, align 8, !tbaa !9
  br label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %.lr.ph.i81, %.lr.ph.i81.2, %.lr.ph.i81.3, %.lr.ph.i81.4, %.lr.ph.i81.5, %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %.._crit_edge.i76_crit_edge
  %.pre-phi182 = phi i32 [ %.pre181, %.._crit_edge.i76_crit_edge ], [ %i.qn, %.preheader.i ], [ %i.pq, %middle.block ], [ %.lcssa308.unr, %.preheader.i.prol.loopexit ], [ %i.rj, %.lr.ph.i81.5 ], [ %i.qx, %.lr.ph.i81 ], [ %i.ra, %.lr.ph.i81.2 ], [ %i.rd, %.lr.ph.i81.3 ], [ %i.rg, %.lr.ph.i81.4 ] ; 2 uses
  %.168.i = phi ptr [ %.0.lcssa.i.i, %.._crit_edge.i76_crit_edge ], [ %.0.lcssa.i47.i, %.preheader.i.prol.loopexit ], [ %.0.lcssa.i47.i, %middle.block ], [ %.0.lcssa.i47.i, %.preheader.i ], [ %.0.lcssa.i.i, %.lr.ph.i81.5 ], [ %.0.lcssa.i.i, %.lr.ph.i81.4 ], [ %.0.lcssa.i.i, %.lr.ph.i81.3 ], [ %.0.lcssa.i.i, %.lr.ph.i81.2 ], [ %.0.lcssa.i.i, %.lr.ph.i81 ] ; 2 uses
  %.164.i = phi i64 [ %.265.i, %.._crit_edge.i76_crit_edge ], [ %.366.i, %.preheader.i.prol.loopexit ], [ %.366.i, %middle.block ], [ %.366.i, %.preheader.i ], [ %.265.i, %.lr.ph.i81.5 ], [ %.265.i, %.lr.ph.i81.4 ], [ %.265.i, %.lr.ph.i81.3 ], [ %.265.i, %.lr.ph.i81.2 ], [ %.265.i, %.lr.ph.i81 ]
  %.162.i = phi i32 [ %i.oo, %.._crit_edge.i76_crit_edge ], [ %i.pe, %.preheader.i.prol.loopexit ], [ %i.pe, %middle.block ], [ %i.pe, %.preheader.i ], [ %i.oo, %.lr.ph.i81.5 ], [ %i.oo, %.lr.ph.i81.4 ], [ %i.oo, %.lr.ph.i81.3 ], [ %i.oo, %.lr.ph.i81.2 ], [ %i.oo, %.lr.ph.i81 ]
  %.not.i = icmp ugt i32 %.pre-phi182, %i.k
  br i1 %.not.i, label %._crit_edge85.i, label %bb.au, !llvm.loop !111

._crit_edge85.i:                                  ; preds = %._crit_edge.i76, %bb.at
  %.067.lcssa.i = phi ptr [ %i.p, %bb.at ], [ %.168.i, %._crit_edge.i76 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !9
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge85.i
  %indvars.iv.i.i77 = phi i64 [ 0, %._crit_edge85.i ], [ %indvars.iv.next.i.i78.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i77
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !9
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rn ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !9
  %i.rq = add i64 %i.rp, 1
  store i64 %i.rq, ptr %i.ro, align 8, !tbaa !9
  %exitcond.not.i.i79 = icmp eq i64 %indvars.iv.i.i77, 65536
  br i1 %exitcond.not.i.i79, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i77
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !9
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rt ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !9
  %i.rw = add i64 %i.rv, 1
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !9
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i77
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !9
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rz ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !9
  %i.sc = add i64 %i.sb, 1
  store i64 %i.sc, ptr %i.sa, align 8, !tbaa !9
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i77
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !9
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sf ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !9
  %i.si = add i64 %i.sh, 1
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !9
  %indvars.iv.next.i.i78.3 = add nuw nsw i64 %indvars.iv.i.i77, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.032.i.i = phi i64 [ %i.sq, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv36.i.i ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 16, !tbaa !9
  %i.sl = add i64 %i.sk, %.032.i.i
  %i.sm = lshr i64 %i.sl, 1                       ; 2 uses
  store i64 %.032.i.i, ptr %i.sj, align 16, !tbaa !9
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !9
  %i.sp = add i64 %i.so, %i.sm
  %i.sq = lshr i64 %i.sp, 1
  store i64 %i.sm, ptr %i.sn, align 8, !tbaa !9
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not315 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not315, label %.preheader.i.i80, label %.preheader27.i.i, !llvm.loop !23

.preheader.i.i80:                                 ; preds = %.preheader27.i.i, %bb.bd
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.bd ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !9  ; 3 uses
  %.not.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i.i80
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ss ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !9  ; 2 uses
  %i.sv = add i64 %i.su, 1
  store i64 %i.sv, ptr %i.st, align 8, !tbaa !9
  %i.sw = shl i64 %i.su, 6
  %i.sx = or i64 %i.sw, %i.ss
  store i64 %i.sx, ptr %i.sr, align 8, !tbaa !9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader.i.i80
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufCanonicalCodeTable.exit.i, label %.preheader.i.i80.1

.preheader.i.i80.1:                               ; preds = %bb.bb
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8 ; 2 uses
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !9  ; 3 uses
  %.not.i.i.1 = icmp eq i64 %i.ta, 0
  br i1 %.not.i.i.1, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i80.1
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ta ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !9  ; 2 uses
  %i.td = add i64 %i.tc, 1
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !9
  %i.te = shl i64 %i.tc, 6
  %i.tf = or i64 %i.te, %i.ta
  store i64 %i.tf, ptr %i.sz, align 8, !tbaa !9
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader.i.i80.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i80

hufCanonicalCodeTable.exit.i:                     ; preds = %bb.bb
  %i.tg = ptrtoint ptr %.067.lcssa.i to i64
  %i.th = ptrtoint ptr %i.p to i64
  %.neg.i = add i64 %i.ob, %i.th
  %i.ti = sub i64 %.neg.i, %i.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %hufUnpackEncTable.exit

hufUnpackEncTable.exit:                           ; preds = %bb.av, %bb.ax, %getBits.exit50.i, %bb.az, %hufCanonicalCodeTable.exit.i
  %.1 = phi ptr [ %.067.lcssa.i, %hufCanonicalCodeTable.exit.i ], [ %i.p, %bb.az ], [ %i.p, %getBits.exit50.i ], [ %i.p, %bb.ax ], [ %i.p, %bb.av ]
  %.0 = phi i64 [ %i.ti, %hufCanonicalCodeTable.exit.i ], [ %i.ob, %bb.az ], [ %i.ob, %getBits.exit50.i ], [ %i.ob, %bb.ax ], [ %i.ob, %bb.av ]
  %i.tj = shl i64 %.0, 3
  %.not73 = icmp ult i64 %i.tj, %i.q
  br i1 %.not73, label %.thread, label %bb.be

bb.be:                                            ; preds = %hufUnpackEncTable.exit
  %i.tk = tail call fastcc i32 @hufBuildDecTable(ptr noundef %.063, ptr noundef nonnull %5, i32 noundef %i.i, i32 noundef %i.k, ptr noundef nonnull %i.oa) ; 2 uses
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.tm = tail call fastcc i32 @hufDecode(ptr noundef nonnull %5, ptr noundef nonnull %i.oa, ptr noundef %.1, i64 noundef %i.q, i32 noundef %i.k, i64 noundef %4, ptr noundef %3)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.262 = phi i32 [ %i.tm, %bb.bf ], [ %i.tk, %bb.be ]
  %.not.i82 = icmp eq ptr %.063, null
  br i1 %.not.i82, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tn = getelementptr inbounds nuw i8, ptr %.063, i64 96
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !112
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.tp = phi ptr [ %i.to, %bb.bh ], [ @internal_exr_free, %bb.bg ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  %indvars.iv.i83 = phi i64 [ 0, %bb.bi ], [ %indvars.iv.next.i84, %bb.bl ] ; 2 uses
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %indvars.iv.i83
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 2 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !113 ; 2 uses
  %.not12.i = icmp eq ptr %i.ts, null
  br i1 %.not12.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void %i.tp(ptr noundef nonnull %i.ts) #10, !inline_history !115
  store ptr null, ptr %i.tr, align 8, !tbaa !113
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, 16384
  br i1 %exitcond.not.i85, label %.thread, label %bb.bj, !llvm.loop !116

.thread:                                          ; preds = %bb.bl, %hufUnpackEncTable.exit, %fasthuf_initialize.exit.thread, %bb.as, %bb.ar, %bb.g, %bb.f, %bb.e, %bb.d
  %.2 = phi i32 [ %., %bb.d ], [ 23, %fasthuf_initialize.exit.thread ], [ 1, %bb.g ], [ 3, %bb.e ], [ 23, %bb.f ], [ %i.nz, %bb.as ], [ 1, %bb.ar ], [ 23, %hufUnpackEncTable.exit ], [ %.262, %bb.bl ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @fasthuf_decode(ptr noundef %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias noundef captures(none) %4, i64 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = add nsw i64 %3, -128                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 283592
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = load i32, ptr %1, align 8, !tbaa !74
  %.not320 = icmp eq i64 %5, 0
  br i1 %.not320, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %.val)
  %.val122 = load i64, ptr %2, align 1
  %i.g = tail call i64 @llvm.bswap.i64(i64 %.val122)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 279496
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 263112
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 262160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 262640
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FastHufDecoder_refill.exit154
  %.083319 = phi i64 [ 0, %.lr.ph ], [ %.285, %FastHufDecoder_refill.exit154 ] ; 5 uses
  %.087318 = phi i32 [ 64, %.lr.ph ], [ %.7, %FastHufDecoder_refill.exit154 ] ; 3 uses
  %.0184317 = phi ptr [ %i.h, %.lr.ph ], [ %.5, %FastHufDecoder_refill.exit154 ] ; 3 uses
  %.0187316 = phi i32 [ 64, %.lr.ph ], [ %.5192, %FastHufDecoder_refill.exit154 ] ; 3 uses
  %.0205315 = phi i64 [ %i.f, %.lr.ph ], [ %.5210, %FastHufDecoder_refill.exit154 ] ; 3 uses
  %.0226314 = phi i64 [ %i.g, %.lr.ph ], [ %.6232, %FastHufDecoder_refill.exit154 ] ; 5 uses
  %.0242313 = phi i64 [ %i.a, %.lr.ph ], [ %.5247, %FastHufDecoder_refill.exit154 ] ; 3 uses
  %.not116 = icmp ugt i64 %i.c, %.0226314
  br i1 %.not116, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %.0226314, 52                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %.087318, 64
  br i1 %i.u, label %.preheader279, label %FastHufDecoder_refill.exit

.preheader279:                                    ; preds = %bb.d, %.sink.split.i
  %.6248 = phi i64 [ %.8250, %.sink.split.i ], [ %.0242313, %bb.d ] ; 9 uses
  %.7233 = phi i64 [ %.8234, %.sink.split.i ], [ %.0226314, %bb.d ]
  %.6211 = phi i64 [ %.9214, %.sink.split.i ], [ %.0205315, %bb.d ] ; 3 uses
  %.6193 = phi i32 [ 64, %.sink.split.i ], [ %.0187316, %bb.d ] ; 4 uses
  %.6185 = phi ptr [ %.9, %.sink.split.i ], [ %.0184317, %bb.d ] ; 7 uses
  %.041.i = phi i32 [ %.1.i, %.sink.split.i ], [ %.087318, %bb.d ] ; 4 uses
  %i.v = icmp sgt i32 %.041.i, 0
  br i1 %i.v, label %bb.e, label %bb.h, !prof !29

bb.e:                                             ; preds = %.preheader279
  %i.w = sub nuw nsw i32 64, %.041.i              ; 3 uses
  %i.x = zext nneg i32 %.041.i to i64
  %i.y = lshr i64 %.6211, %i.x
  %i.z = or i64 %i.y, %.7233                      ; 2 uses
  %.not.i = icmp slt i32 %.6193, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.w to i64
  %i.ab = shl i64 %.6211, %i.aa
  %i.ac = sub nsw i32 %.6193, %i.w
  br label %FastHufDecoder_refill.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %.041.i, %.6193
  br label %bb.h

bb.h:                                             ; preds = %.preheader279, %bb.g
  %.8234 = phi i64 [ %i.z, %bb.g ], [ %.6211, %.preheader279 ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.g ], [ %.6193, %.preheader279 ] ; 2 uses
  %i.ae = icmp ugt i64 %.6248, 63
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %.6185, align 1, !noalias !117
  %i.af = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %.6185, i64 8
  %i.ah = add i64 %.6248, -64
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp samesign ugt i64 %.6248, 7
  br i1 %i.ai, label %.lr.ph.i.preheader, label %bb.k

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.aj = add nsw i64 %.6248, -8                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.aj, 24
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.al, 4611686018427387900
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.an = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ]
  %i.ao = phi ptr [ %.6185, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ] ; 5 uses
  %.049.i = phi i64 [ 56, %.lr.ph.i.preheader.new ], [ %i.bn, %.lr.ph.i ] ; 5 uses
  %i.ap = phi i64 [ %.6248, %.lr.ph.i.preheader.new ], [ %i.bo, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !25, !noalias !117
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl i64 %i.ar, %.049.i
  %i.at = or i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.av = add nsw i64 %.049.i, -8
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !25, !noalias !117
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.av
  %i.az = or i64 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bb = add nsw i64 %.049.i, -16
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !25, !noalias !117
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl i64 %i.bd, %i.bb
  %i.bf = or i64 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.bh = add nsw i64 %.049.i, -24
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !25, !noalias !117
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl i64 %i.bj, %i.bh
  %i.bl = or i64 %i.bk, %i.bf                     ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bn = add i64 %.049.i, -32                    ; 3 uses
  %i.bo = add i64 %i.ap, -32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !123

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %.epil.init456 = phi ptr [ %.6185, %.lr.ph.i.preheader ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %.049.i.epil.init = phi i64 [ 56, %.lr.ph.i.preheader ], [ %i.bn, %._crit_edge.i.unr-lcssa ]
  %.epil.init458 = phi i64 [ %.6248, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod462 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod462)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.bp = phi i64 [ %i.bv, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bq = phi ptr [ %i.bw, %.lr.ph.i.epil ], [ %.epil.init456, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.049.i.epil = phi i64 [ %i.bx, %.lr.ph.i.epil ], [ %.049.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.br = phi i64 [ %i.by, %.lr.ph.i.epil ], [ %.epil.init458, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !25, !noalias !117
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl i64 %i.bt, %.049.i.epil
  %i.bv = or i64 %i.bu, %i.bp                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bx = add i64 %.049.i.epil, -8                ; 2 uses
  %i.by = add i64 %i.br, -8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !124

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa430 = phi i64 [ %i.bl, %._crit_edge.i.unr-lcssa ], [ %i.bv, %.lr.ph.i.epil ]
  %.lcssa429 = phi i64 [ %i.bn, %._crit_edge.i.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i.unr-lcssa ], [ %i.by, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.6185, i64 1
  %i.bz = add nsw i64 %.6248, -8
  %i.ca = lshr i64 %i.bz, 3
  %scevgep62.i = getelementptr i8, ptr %scevgep.i, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  %.7249 = phi i64 [ %.lcssa, %._crit_edge.i ], [ %.6248, %bb.j ]
  %.7212 = phi i64 [ %.lcssa430, %._crit_edge.i ], [ 0, %bb.j ] ; 2 uses
  %.7186 = phi ptr [ %scevgep62.i, %._crit_edge.i ], [ %.6185, %bb.j ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %.lcssa429, %._crit_edge.i ], [ 56, %bb.j ]
  %.not45.i = icmp eq i64 %.7249, 0
  br i1 %.not45.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %.7186, align 1, !tbaa !25, !noalias !117
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl i64 %i.cc, %.0.lcssa.i
  %i.ce = or i64 %i.cd, %.7212
  %i.cf = getelementptr inbounds nuw i8, ptr %.7186, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.l, %bb.k
  %.8250 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.ah, %bb.i ] ; 2 uses
  %.9214 = phi i64 [ %.7212, %bb.k ], [ %i.ce, %bb.l ], [ %i.af, %bb.i ] ; 2 uses
  %.9 = phi ptr [ %.7186, %bb.k ], [ %i.cf, %bb.l ], [ %i.ag, %bb.i ] ; 2 uses
  %i.cg = icmp slt i32 %.1.i, 64
  br i1 %i.cg, label %.preheader279, label %FastHufDecoder_refill.exit, !llvm.loop !125

FastHufDecoder_refill.exit:                       ; preds = %.sink.split.i, %bb.f, %bb.d
  %.1243 = phi i64 [ %.0242313, %bb.d ], [ %.6248, %bb.f ], [ %.8250, %.sink.split.i ]
  %.1227 = phi i64 [ %.0226314, %bb.d ], [ %i.z, %bb.f ], [ %.8234, %.sink.split.i ] ; 3 uses
  %.1206 = phi i64 [ %.0205315, %bb.d ], [ %i.ab, %bb.f ], [ %.9214, %.sink.split.i ]
  %.1188 = phi i32 [ %.0187316, %bb.d ], [ %i.ac, %bb.f ], [ 64, %.sink.split.i ]
  %.1 = phi ptr [ %.0184317, %bb.d ], [ %.6185, %bb.f ], [ %.9, %.sink.split.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %FastHufDecoder_refill.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 13, %FastHufDecoder_refill.exit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !9
  %i.cj = icmp ugt i64 %i.ci, %.1227
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.cj, label %bb.m, label %bb.n, !llvm.loop !126

bb.n:                                             ; preds = %bb.m
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  %i.cl = load i8, ptr %i.l, align 1, !tbaa !78
  %i.cm = zext i8 %i.cl to i64
  %i.cn = icmp samesign ugt i64 %indvars.iv, %i.cm
  br i1 %i.cn, label %bb.o, label %bb.q, !prof !127

bb.o:                                             ; preds = %bb.n
  %.not118 = icmp eq ptr %0, null
  br i1 %.not118, label %FastHufDecoder_refill.exit154.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !95
  %i.cq = tail call i32 (ptr, i32, ptr, ...) %i.cp(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

bb.q:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !9
  %i.ct = sub nsw i64 64, %indvars.iv
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = lshr i64 %.1227, %i.cu
  %i.cw = add i64 %i.cs, %i.cv                    ; 2 uses
  %i.cx = load i32, ptr %i.n, align 4, !tbaa !76
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %6, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  %.not117 = icmp eq ptr %0, null
  br i1 %.not117, label %FastHufDecoder_refill.exit154.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !95
  %i.dc = tail call i32 (ptr, i32, ptr, ...) %i.db(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

6:                                                ; preds = %bb.q
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cw
  br label %bb.t

bb.t:                                             ; preds = %6, %bb.c
  %.2244 = phi i64 [ %.1243, %6 ], [ %.0242313, %bb.c ] ; 3 uses
  %.2228 = phi i64 [ %.1227, %6 ], [ %.0226314, %bb.c ]
  %.2207 = phi i64 [ %.1206, %6 ], [ %.0205315, %bb.c ] ; 3 uses
  %.2189 = phi i32 [ %.1188, %6 ], [ %.0187316, %bb.c ] ; 3 uses
  %.2 = phi ptr [ %.1, %6 ], [ %.0184317, %bb.c ] ; 3 uses
  %.298.in = phi ptr [ %7, %6 ], [ %i.t, %bb.c ]
  %.195 = phi i32 [ %i.ck, %6 ], [ %i.s, %bb.c ]  ; 2 uses
  %.289 = phi i32 [ 64, %6 ], [ %.087318, %bb.c ]
  %.298 = load i32, ptr %.298.in, align 4, !tbaa !3 ; 2 uses
  %i.dd = zext nneg i32 %.195 to i64
  %i.de = shl i64 %.2228, %i.dd                   ; 3 uses
  %i.df = sub nsw i32 %.289, %.195                ; 4 uses
  %i.dg = icmp eq i32 %.298, %i.d
  br i1 %i.dg, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp slt i32 %i.df, 8
  br i1 %i.dh, label %.preheader278, label %FastHufDecoder_refill.exit138

.preheader278:                                    ; preds = %bb.u, %.sink.split.i128
  %.10252 = phi i64 [ %.12254, %.sink.split.i128 ], [ %.2244, %bb.u ] ; 9 uses
  %.10236 = phi i64 [ %.11237, %.sink.split.i128 ], [ %i.de, %bb.u ]
  %.11216 = phi i64 [ %.14219, %.sink.split.i128 ], [ %.2207, %bb.u ] ; 3 uses
  %.10197 = phi i32 [ 64, %.sink.split.i128 ], [ %.2189, %bb.u ] ; 4 uses
  %.11 = phi ptr [ %.14, %.sink.split.i128 ], [ %.2, %bb.u ] ; 7 uses
  %.041.i123 = phi i32 [ %.1.i124, %.sink.split.i128 ], [ %i.df, %bb.u ] ; 4 uses
  %i.di = icmp sgt i32 %.041.i123, 0
  br i1 %i.di, label %bb.v, label %bb.y, !prof !29

bb.v:                                             ; preds = %.preheader278
  %i.dj = sub nuw nsw i32 64, %.041.i123          ; 3 uses
  %i.dk = zext nneg i32 %.041.i123 to i64
  %i.dl = lshr i64 %.11216, %i.dk
  %i.dm = or i64 %i.dl, %.10236                   ; 2 uses
  %.not.i137 = icmp slt i32 %.10197, %i.dj
  br i1 %.not.i137, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = zext nneg i32 %i.dj to i64
  %i.do = shl i64 %.11216, %i.dn
  %i.dp = sub nsw i32 %.10197, %i.dj
  br label %FastHufDecoder_refill.exit138

bb.x:                                             ; preds = %bb.v
  %i.dq = add nsw i32 %.041.i123, %.10197
  br label %bb.y

bb.y:                                             ; preds = %.preheader278, %bb.x
  %.11237 = phi i64 [ %i.dm, %bb.x ], [ %.11216, %.preheader278 ] ; 2 uses
  %.1.i124 = phi i32 [ %i.dq, %bb.x ], [ %.10197, %.preheader278 ] ; 2 uses
  %i.dr = icmp ugt i64 %.10252, 63
  br i1 %i.dr, label %bb.z, label %bb.aa, !prof !29

bb.z:                                             ; preds = %bb.y
  %.val.i136 = load i64, ptr %.11, align 1, !noalias !128
  %i.ds = tail call i64 @llvm.bswap.i64(i64 %.val.i136)
  %i.dt = getelementptr inbounds nuw i8, ptr %.11, i64 8
  %i.du = add i64 %.10252, -64
  br label %.sink.split.i128

bb.aa:                                            ; preds = %bb.y
  %i.dv = icmp samesign ugt i64 %.10252, 7
  br i1 %i.dv, label %.lr.ph.i130.preheader, label %bb.ab

.lr.ph.i130.preheader:                            ; preds = %bb.aa
  %i.dw = add nsw i64 %.10252, -8                 ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %xtraiter463.a = and i64 %i.dy, 3               ; 3 uses
  %i.dz = icmp ult i64 %i.dw, 24
  br i1 %i.dz, label %.lr.ph.i130.epil.preheader, label %.lr.ph.i130.preheader.new

.lr.ph.i130.preheader.new:                        ; preds = %.lr.ph.i130.preheader
  %unroll_iter476.a = and i64 %i.dy, 4611686018427387900
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130, %.lr.ph.i130.preheader.new
  %i.ea = phi i64 [ 0, %.lr.ph.i130.preheader.new ], [ %i.ey, %.lr.ph.i130 ]
  %i.eb = phi ptr [ %.11, %.lr.ph.i130.preheader.new ], [ %i.ez, %.lr.ph.i130 ] ; 5 uses
  %.049.i132 = phi i64 [ 56, %.lr.ph.i130.preheader.new ], [ %i.fa, %.lr.ph.i130 ] ; 5 uses
  %i.ec = phi i64 [ %.10252, %.lr.ph.i130.preheader.new ], [ %i.fb, %.lr.ph.i130 ]
  %niter477.a = phi i64 [ 0, %.lr.ph.i130.preheader.new ], [ %niter477.next.3.a, %.lr.ph.i130 ]
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !25, !noalias !128
  %i.ee = zext i8 %i.ed to i64
  %i.ef = shl i64 %i.ee, %.049.i132
  %i.eg = or i64 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ei = add nsw i64 %.049.i132, -8
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !25, !noalias !128
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl i64 %i.ek, %i.ei
  %i.em = or i64 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.eo = add nsw i64 %.049.i132, -16
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !25, !noalias !128
  %i.eq = zext i8 %i.ep to i64
  %i.er = shl i64 %i.eq, %i.eo
  %i.es = or i64 %i.er, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  %i.eu = add nsw i64 %.049.i132, -24
  %i.ev = load i8, ptr %i.et, align 1, !tbaa !25, !noalias !128
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl i64 %i.ew, %i.eu
  %i.ey = or i64 %i.ex, %i.es                     ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.fa = add i64 %.049.i132, -32                 ; 3 uses
  %i.fb = add i64 %i.ec, -32                      ; 3 uses
  %niter477.next.3.a = add i64 %niter477.a, 4     ; 2 uses
  %niter477.ncmp.3.not.a = icmp eq i64 %niter477.next.3.a, %unroll_iter476.a
  br i1 %niter477.ncmp.3.not.a, label %._crit_edge.i133.unr-lcssa, label %.lr.ph.i130, !llvm.loop !123

._crit_edge.i133.unr-lcssa:                       ; preds = %.lr.ph.i130
  %lcmp.mod471.not.a = icmp eq i64 %xtraiter463.a, 0
  br i1 %lcmp.mod471.not.a, label %._crit_edge.i133, label %.lr.ph.i130.epil.preheader

.lr.ph.i130.epil.preheader:                       ; preds = %._crit_edge.i133.unr-lcssa, %.lr.ph.i130.preheader
  %.epil.init466.a = phi i64 [ 0, %.lr.ph.i130.preheader ], [ %i.ey, %._crit_edge.i133.unr-lcssa ]
  %.epil.init468.a = phi ptr [ %.11, %.lr.ph.i130.preheader ], [ %i.ez, %._crit_edge.i133.unr-lcssa ]
  %.049.i132.epil.init = phi i64 [ 56, %.lr.ph.i130.preheader ], [ %i.fa, %._crit_edge.i133.unr-lcssa ]
  %.epil.init470.a = phi i64 [ %.10252, %.lr.ph.i130.preheader ], [ %i.fb, %._crit_edge.i133.unr-lcssa ]
  %lcmp.mod475.a = icmp ne i64 %xtraiter463.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod475.a)
  br label %.lr.ph.i130.epil

.lr.ph.i130.epil:                                 ; preds = %.lr.ph.i130.epil, %.lr.ph.i130.epil.preheader
  %i.fc = phi i64 [ %i.fi, %.lr.ph.i130.epil ], [ %.epil.init466.a, %.lr.ph.i130.epil.preheader ]
  %i.fd = phi ptr [ %i.fj, %.lr.ph.i130.epil ], [ %.epil.init468.a, %.lr.ph.i130.epil.preheader ] ; 2 uses
  %.049.i132.epil = phi i64 [ %i.fk, %.lr.ph.i130.epil ], [ %.049.i132.epil.init, %.lr.ph.i130.epil.preheader ] ; 2 uses
  %i.fe = phi i64 [ %i.fl, %.lr.ph.i130.epil ], [ %.epil.init470.a, %.lr.ph.i130.epil.preheader ]
  %epil.iter464.a = phi i64 [ %epil.iter464.next.a, %.lr.ph.i130.epil ], [ 0, %.lr.ph.i130.epil.preheader ]
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !25, !noalias !128
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl i64 %i.fg, %.049.i132.epil
  %i.fi = or i64 %i.fh, %i.fc                     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fk = add i64 %.049.i132.epil, -8             ; 2 uses
  %i.fl = add i64 %i.fe, -8                       ; 2 uses
  %epil.iter464.next.a = add i64 %epil.iter464.a, 1 ; 2 uses
  %epil.iter464.cmp.not.a = icmp eq i64 %epil.iter464.next.a, %xtraiter463.a
  br i1 %epil.iter464.cmp.not.a, label %._crit_edge.i133, label %.lr.ph.i130.epil, !llvm.loop !134

._crit_edge.i133:                                 ; preds = %.lr.ph.i130.epil, %._crit_edge.i133.unr-lcssa
  %.lcssa439 = phi i64 [ %i.ey, %._crit_edge.i133.unr-lcssa ], [ %i.fi, %.lr.ph.i130.epil ]
  %.lcssa438 = phi i64 [ %i.fa, %._crit_edge.i133.unr-lcssa ], [ %i.fk, %.lr.ph.i130.epil ]
  %.lcssa437 = phi i64 [ %i.fb, %._crit_edge.i133.unr-lcssa ], [ %i.fl, %.lr.ph.i130.epil ]
  %scevgep.i134 = getelementptr i8, ptr %.11, i64 1
  %i.fm = add nsw i64 %.10252, -8
  %i.fn = lshr i64 %i.fm, 3
  %scevgep62.i135 = getelementptr i8, ptr %scevgep.i134, i64 %i.fn
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i133, %bb.aa
  %.11253 = phi i64 [ %.lcssa437, %._crit_edge.i133 ], [ %.10252, %bb.aa ]
  %.12217 = phi i64 [ %.lcssa439, %._crit_edge.i133 ], [ 0, %bb.aa ] ; 2 uses
  %.12 = phi ptr [ %scevgep62.i135, %._crit_edge.i133 ], [ %.11, %bb.aa ] ; 3 uses
  %.0.lcssa.i126 = phi i64 [ %.lcssa438, %._crit_edge.i133 ], [ 56, %bb.aa ]
  %.not45.i127 = icmp eq i64 %.11253, 0
  br i1 %.not45.i127, label %.sink.split.i128, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load i8, ptr %.12, align 1, !tbaa !25, !noalias !128
  %i.fp = zext i8 %i.fo to i64
  %i.fq = shl i64 %i.fp, %.0.lcssa.i126
  %i.fr = or i64 %i.fq, %.12217
  %i.fs = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %.sink.split.i128

.sink.split.i128:                                 ; preds = %bb.z, %bb.ac, %bb.ab
  %.12254 = phi i64 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %i.du, %bb.z ] ; 2 uses
  %.14219 = phi i64 [ %.12217, %bb.ab ], [ %i.fr, %bb.ac ], [ %i.ds, %bb.z ] ; 2 uses
  %.14 = phi ptr [ %.12, %bb.ab ], [ %i.fs, %bb.ac ], [ %i.dt, %bb.z ] ; 2 uses
  %i.ft = icmp slt i32 %.1.i124, 64
  br i1 %i.ft, label %.preheader278, label %FastHufDecoder_refill.exit138, !llvm.loop !125

FastHufDecoder_refill.exit138:                    ; preds = %.sink.split.i128, %bb.w, %bb.u
  %.3245 = phi i64 [ %.2244, %bb.u ], [ %.10252, %bb.w ], [ %.12254, %.sink.split.i128 ]
  %.3229 = phi i64 [ %i.de, %bb.u ], [ %i.dm, %bb.w ], [ %.11237, %.sink.split.i128 ] ; 5 uses
  %.3208 = phi i64 [ %.2207, %bb.u ], [ %i.do, %bb.w ], [ %.14219, %.sink.split.i128 ]
  %.3190 = phi i32 [ %.2189, %bb.u ], [ %i.dp, %bb.w ], [ 64, %.sink.split.i128 ]
  %.3 = phi ptr [ %.2, %bb.u ], [ %.11, %bb.w ], [ %.14, %.sink.split.i128 ]
  %.390 = phi i32 [ %i.df, %bb.u ], [ 64, %bb.w ], [ 64, %.sink.split.i128 ]
  %i.fu = lshr i64 %.3229, 56                     ; 7 uses
  %i.fv = icmp eq i64 %.083319, 0
  br i1 %i.fv, label %bb.ad, label %bb.af, !prof !127

bb.ad:                                            ; preds = %FastHufDecoder_refill.exit138
  %.not121 = icmp eq ptr %0, null
  br i1 %.not121, label %FastHufDecoder_refill.exit154.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !95
  %i.fy = tail call i32 (ptr, i32, ptr, ...) %i.fx(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

bb.af:                                            ; preds = %FastHufDecoder_refill.exit138
  %i.fz = add i64 %i.fu, %.083319                 ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, %5
  br i1 %i.ga, label %bb.ag, label %bb.ai, !prof !127

bb.ag:                                            ; preds = %bb.af
  %.not120 = icmp eq ptr %0, null
  br i1 %.not120, label %FastHufDecoder_refill.exit154.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !95
  %i.gd = tail call i32 (ptr, i32, ptr, ...) %i.gc(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

bb.ai:                                            ; preds = %bb.af
  %i.ge = icmp eq i64 %i.fu, 0
  br i1 %i.ge, label %bb.aj, label %iter.check, !prof !127

iter.check:                                       ; preds = %bb.ai
  %i.gf = getelementptr [2 x i8], ptr %4, i64 %.083319 ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 -2
  %.pre = load i16, ptr %i.gg, align 2, !tbaa !7  ; 3 uses
  %min.iters.check = icmp ult i64 %.3229, 288230376151711744
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %.3229, 1152921504606846976
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.fu, 240                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gh = getelementptr [2 x i8], ptr %i.gf, i64 %index ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.gh, align 2, !tbaa !7
  store <8 x i16> %broadcast.splat, ptr %i.gi, align 2, !tbaa !7
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.gk = and i64 %.3229, 864691128455135232
  %min.epilog.iters.check = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec423 = and i64 %i.fu, 252                  ; 3 uses
  %broadcast.splatinsert424 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat425 = shufflevector <4 x i16> %broadcast.splatinsert424, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index426 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next427, %vec.epilog.vector.body ] ; 2 uses
  %i.gl = getelementptr [2 x i8], ptr %i.gf, i64 %index426
  store <4 x i16> %broadcast.splat425, ptr %i.gl, align 2, !tbaa !7
  %index.next427 = add nuw i64 %index426, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next427, %n.vec423
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n428 = icmp eq i64 %i.fu, %n.vec423
  br i1 %cmp.n428, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv349.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec423, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.aj:                                            ; preds = %bb.ai
  %.not119 = icmp eq ptr %0, null
  br i1 %.not119, label %FastHufDecoder_refill.exit154.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !95
  %i.gp = tail call i32 (ptr, i32, ptr, ...) %i.go(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %vec.epilog.scalar.ph ], [ %indvars.iv349.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gq = getelementptr [2 x i8], ptr %i.gf, i64 %indvars.iv349
  store i16 %.pre, ptr %i.gq, align 2, !tbaa !7
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next350, %i.fu
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !138

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %8 = shl i64 %.3229, 8
  %9 = add nsw i32 %.390, -8
  br label %bb.am

bb.al:                                            ; preds = %bb.t
  %i.gr = trunc i32 %.298 to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.083319
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !7
  %i.gt = add i64 %.083319, 1
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.al
  %.4246 = phi i64 [ %.3245, %.loopexit ], [ %.2244, %bb.al ] ; 2 uses
  %.5231 = phi i64 [ %8, %.loopexit ], [ %i.de, %bb.al ] ; 2 uses
  %.4209 = phi i64 [ %.3208, %.loopexit ], [ %.2207, %bb.al ] ; 2 uses
  %.4191 = phi i32 [ %.3190, %.loopexit ], [ %.2189, %bb.al ] ; 2 uses
  %.4 = phi ptr [ %.3, %.loopexit ], [ %.2, %bb.al ] ; 2 uses
  %.592 = phi i32 [ %9, %.loopexit ], [ %i.df, %bb.al ] ; 3 uses
  %.285 = phi i64 [ %i.fz, %.loopexit ], [ %i.gt, %bb.al ] ; 2 uses
  %i.gu = icmp slt i32 %.592, 12
  br i1 %i.gu, label %.preheader, label %FastHufDecoder_refill.exit154

.preheader:                                       ; preds = %bb.am, %.sink.split.i144
  %.14256 = phi i64 [ %.16258, %.sink.split.i144 ], [ %.4246, %bb.am ] ; 9 uses
  %.13239 = phi i64 [ %.14240, %.sink.split.i144 ], [ %.5231, %bb.am ]
  %.16221 = phi i64 [ %.19224, %.sink.split.i144 ], [ %.4209, %bb.am ] ; 3 uses
  %.14201 = phi i32 [ 64, %.sink.split.i144 ], [ %.4191, %bb.am ] ; 4 uses
  %.16 = phi ptr [ %.19, %.sink.split.i144 ], [ %.4, %bb.am ] ; 7 uses
  %.041.i139 = phi i32 [ %.1.i140, %.sink.split.i144 ], [ %.592, %bb.am ] ; 4 uses
  %i.gv = icmp sgt i32 %.041.i139, 0
  br i1 %i.gv, label %bb.an, label %bb.aq, !prof !29

bb.an:                                            ; preds = %.preheader
  %i.gw = sub nuw nsw i32 64, %.041.i139          ; 3 uses
  %i.gx = zext nneg i32 %.041.i139 to i64
  %i.gy = lshr i64 %.16221, %i.gx
  %i.gz = or i64 %i.gy, %.13239                   ; 2 uses
  %.not.i153 = icmp slt i32 %.14201, %i.gw
  br i1 %.not.i153, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ha = zext nneg i32 %i.gw to i64
  %i.hb = shl i64 %.16221, %i.ha
  %i.hc = sub nsw i32 %.14201, %i.gw
  br label %FastHufDecoder_refill.exit154

bb.ap:                                            ; preds = %bb.an
  %i.hd = add nsw i32 %.041.i139, %.14201
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader, %bb.ap
  %.14240 = phi i64 [ %i.gz, %bb.ap ], [ %.16221, %.preheader ] ; 2 uses
  %.1.i140 = phi i32 [ %i.hd, %bb.ap ], [ %.14201, %.preheader ] ; 2 uses
  %i.he = icmp ugt i64 %.14256, 63
  br i1 %i.he, label %bb.ar, label %bb.as, !prof !29

bb.ar:                                            ; preds = %bb.aq
  %.val.i152 = load i64, ptr %.16, align 1, !noalias !139
  %i.hf = tail call i64 @llvm.bswap.i64(i64 %.val.i152)
  %i.hg = getelementptr inbounds nuw i8, ptr %.16, i64 8
  %i.hh = add i64 %.14256, -64
  br label %.sink.split.i144

bb.as:                                            ; preds = %bb.aq
  %i.hi = icmp samesign ugt i64 %.14256, 7
  br i1 %i.hi, label %.lr.ph.i146.preheader, label %bb.at

.lr.ph.i146.preheader:                            ; preds = %bb.as
  %i.hj = add nsw i64 %.14256, -8                 ; 2 uses
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %xtraiter478 = and i64 %i.hl, 3                 ; 3 uses
  %i.hm = icmp ult i64 %i.hj, 24
  br i1 %i.hm, label %.lr.ph.i146.epil.preheader, label %.lr.ph.i146.preheader.new

.lr.ph.i146.preheader.new:                        ; preds = %.lr.ph.i146.preheader
  %unroll_iter491 = and i64 %i.hl, 4611686018427387900
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146, %.lr.ph.i146.preheader.new
  %i.hn = phi i64 [ 0, %.lr.ph.i146.preheader.new ], [ %i.il, %.lr.ph.i146 ]
  %i.ho = phi ptr [ %.16, %.lr.ph.i146.preheader.new ], [ %i.im, %.lr.ph.i146 ] ; 5 uses
  %.049.i148 = phi i64 [ 56, %.lr.ph.i146.preheader.new ], [ %i.in, %.lr.ph.i146 ] ; 5 uses
  %i.hp = phi i64 [ %.14256, %.lr.ph.i146.preheader.new ], [ %i.io, %.lr.ph.i146 ]
  %niter492 = phi i64 [ 0, %.lr.ph.i146.preheader.new ], [ %niter492.next.3, %.lr.ph.i146 ]
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !25, !noalias !139
  %i.hr = zext i8 %i.hq to i64
  %i.hs = shl i64 %i.hr, %.049.i148
  %i.ht = or i64 %i.hs, %i.hn
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hv = add nsw i64 %.049.i148, -8
  %i.hw = load i8, ptr %i.hu, align 1, !tbaa !25, !noalias !139
  %i.hx = zext i8 %i.hw to i64
  %i.hy = shl i64 %i.hx, %i.hv
  %i.hz = or i64 %i.hy, %i.ht
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ib = add nsw i64 %.049.i148, -16
  %i.ic = load i8, ptr %i.ia, align 1, !tbaa !25, !noalias !139
  %i.id = zext i8 %i.ic to i64
  %i.ie = shl i64 %i.id, %i.ib
  %i.if = or i64 %i.ie, %i.hz
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.ih = add nsw i64 %.049.i148, -24
  %i.ii = load i8, ptr %i.ig, align 1, !tbaa !25, !noalias !139
  %i.ij = zext i8 %i.ii to i64
  %i.ik = shl i64 %i.ij, %i.ih
  %i.il = or i64 %i.ik, %i.if                     ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.in = add i64 %.049.i148, -32                 ; 3 uses
  %i.io = add i64 %i.hp, -32                      ; 3 uses
  %niter492.next.3 = add i64 %niter492, 4         ; 2 uses
  %niter492.ncmp.3.not = icmp eq i64 %niter492.next.3, %unroll_iter491
  br i1 %niter492.ncmp.3.not, label %._crit_edge.i149.unr-lcssa, label %.lr.ph.i146, !llvm.loop !123

._crit_edge.i149.unr-lcssa:                       ; preds = %.lr.ph.i146
  %lcmp.mod486.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod486.not, label %._crit_edge.i149, label %.lr.ph.i146.epil.preheader

.lr.ph.i146.epil.preheader:                       ; preds = %._crit_edge.i149.unr-lcssa, %.lr.ph.i146.preheader
  %.epil.init481 = phi i64 [ 0, %.lr.ph.i146.preheader ], [ %i.il, %._crit_edge.i149.unr-lcssa ]
  %.epil.init483 = phi ptr [ %.16, %.lr.ph.i146.preheader ], [ %i.im, %._crit_edge.i149.unr-lcssa ]
  %.049.i148.epil.init = phi i64 [ 56, %.lr.ph.i146.preheader ], [ %i.in, %._crit_edge.i149.unr-lcssa ]
  %.epil.init485 = phi i64 [ %.14256, %.lr.ph.i146.preheader ], [ %i.io, %._crit_edge.i149.unr-lcssa ]
  %lcmp.mod490 = icmp ne i64 %xtraiter478, 0
  tail call void @llvm.assume(i1 %lcmp.mod490)
  br label %.lr.ph.i146.epil

.lr.ph.i146.epil:                                 ; preds = %.lr.ph.i146.epil, %.lr.ph.i146.epil.preheader
  %i.ip = phi i64 [ %i.iv, %.lr.ph.i146.epil ], [ %.epil.init481, %.lr.ph.i146.epil.preheader ]
  %i.iq = phi ptr [ %i.iw, %.lr.ph.i146.epil ], [ %.epil.init483, %.lr.ph.i146.epil.preheader ] ; 2 uses
  %.049.i148.epil = phi i64 [ %i.ix, %.lr.ph.i146.epil ], [ %.049.i148.epil.init, %.lr.ph.i146.epil.preheader ] ; 2 uses
  %i.ir = phi i64 [ %i.iy, %.lr.ph.i146.epil ], [ %.epil.init485, %.lr.ph.i146.epil.preheader ]
  %epil.iter479 = phi i64 [ %epil.iter479.next, %.lr.ph.i146.epil ], [ 0, %.lr.ph.i146.epil.preheader ]
  %i.is = load i8, ptr %i.iq, align 1, !tbaa !25, !noalias !139
  %i.it = zext i8 %i.is to i64
  %i.iu = shl i64 %i.it, %.049.i148.epil
  %i.iv = or i64 %i.iu, %i.ip                     ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.ix = add i64 %.049.i148.epil, -8             ; 2 uses
  %i.iy = add i64 %i.ir, -8                       ; 2 uses
  %epil.iter479.next = add i64 %epil.iter479, 1   ; 2 uses
  %epil.iter479.cmp.not = icmp eq i64 %epil.iter479.next, %xtraiter478
  br i1 %epil.iter479.cmp.not, label %._crit_edge.i149, label %.lr.ph.i146.epil, !llvm.loop !145

._crit_edge.i149:                                 ; preds = %.lr.ph.i146.epil, %._crit_edge.i149.unr-lcssa
  %.lcssa448 = phi i64 [ %i.il, %._crit_edge.i149.unr-lcssa ], [ %i.iv, %.lr.ph.i146.epil ]
  %.lcssa447 = phi i64 [ %i.in, %._crit_edge.i149.unr-lcssa ], [ %i.ix, %.lr.ph.i146.epil ]
  %.lcssa446 = phi i64 [ %i.io, %._crit_edge.i149.unr-lcssa ], [ %i.iy, %.lr.ph.i146.epil ]
  %scevgep.i150 = getelementptr i8, ptr %.16, i64 1
  %i.iz = add nsw i64 %.14256, -8
  %i.ja = lshr i64 %i.iz, 3
  %scevgep62.i151 = getelementptr i8, ptr %scevgep.i150, i64 %i.ja
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i149, %bb.as
  %.15257 = phi i64 [ %.lcssa446, %._crit_edge.i149 ], [ %.14256, %bb.as ]
  %.17222 = phi i64 [ %.lcssa448, %._crit_edge.i149 ], [ 0, %bb.as ] ; 2 uses
  %.17 = phi ptr [ %scevgep62.i151, %._crit_edge.i149 ], [ %.16, %bb.as ] ; 3 uses
  %.0.lcssa.i142 = phi i64 [ %.lcssa447, %._crit_edge.i149 ], [ 56, %bb.as ]
  %.not45.i143 = icmp eq i64 %.15257, 0
  br i1 %.not45.i143, label %.sink.split.i144, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jb = load i8, ptr %.17, align 1, !tbaa !25, !noalias !139
  %i.jc = zext i8 %i.jb to i64
  %i.jd = shl i64 %i.jc, %.0.lcssa.i142
  %i.je = or i64 %i.jd, %.17222
  %i.jf = getelementptr inbounds nuw i8, ptr %.17, i64 1
  br label %.sink.split.i144

.sink.split.i144:                                 ; preds = %bb.ar, %bb.au, %bb.at
  %.16258 = phi i64 [ 0, %bb.at ], [ 0, %bb.au ], [ %i.hh, %bb.ar ] ; 2 uses
  %.19224 = phi i64 [ %.17222, %bb.at ], [ %i.je, %bb.au ], [ %i.hf, %bb.ar ] ; 2 uses
  %.19 = phi ptr [ %.17, %bb.at ], [ %i.jf, %bb.au ], [ %i.hg, %bb.ar ] ; 2 uses
  %i.jg = icmp slt i32 %.1.i140, 64
  br i1 %i.jg, label %.preheader, label %FastHufDecoder_refill.exit154, !llvm.loop !125

FastHufDecoder_refill.exit154:                    ; preds = %.sink.split.i144, %bb.ao, %bb.am
  %.5247 = phi i64 [ %.14256, %bb.ao ], [ %.4246, %bb.am ], [ %.16258, %.sink.split.i144 ] ; 2 uses
  %.6232 = phi i64 [ %i.gz, %bb.ao ], [ %.5231, %bb.am ], [ %.14240, %.sink.split.i144 ]
  %.5210 = phi i64 [ %i.hb, %bb.ao ], [ %.4209, %bb.am ], [ %.19224, %.sink.split.i144 ]
  %.5192 = phi i32 [ %i.hc, %bb.ao ], [ %.4191, %bb.am ], [ 64, %.sink.split.i144 ]
  %.5 = phi ptr [ %.16, %bb.ao ], [ %.4, %bb.am ], [ %.19, %.sink.split.i144 ]
  %.7 = phi i32 [ 64, %bb.ao ], [ %.592, %bb.am ], [ 64, %.sink.split.i144 ]
  %i.jh = icmp ult i64 %.285, %5
  br i1 %i.jh, label %bb.b, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %FastHufDecoder_refill.exit154, %bb.a
  %.0242.lcssa = phi i64 [ %i.a, %bb.a ], [ %.5247, %FastHufDecoder_refill.exit154 ] ; 2 uses
  %.not = icmp eq i64 %.0242.lcssa, 0
  br i1 %.not, label %FastHufDecoder_refill.exit154.thread, label %bb.av, !prof !29

bb.av:                                            ; preds = %._crit_edge
  %.not115 = icmp eq ptr %0, null
  br i1 %.not115, label %FastHufDecoder_refill.exit154.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !95
  %i.jk = trunc i64 %.0242.lcssa to i32
  %i.jl = tail call i32 (ptr, i32, ptr, ...) %i.jj(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.9, i32 noundef %i.jk) #10 ; 0 uses
  br label %FastHufDecoder_refill.exit154.thread

FastHufDecoder_refill.exit154.thread:             ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.ae, %bb.ag, %bb.ad, %bb.r, %bb.s, %bb.p, %bb.o, %._crit_edge, %bb.av, %bb.aw
  %.6 = phi i32 [ 0, %._crit_edge ], [ 23, %bb.av ], [ 23, %bb.aw ], [ 23, %bb.o ], [ 23, %bb.p ], [ 23, %bb.s ], [ 23, %bb.r ], [ 23, %bb.ad ], [ 23, %bb.ag ], [ 23, %bb.ae ], [ 23, %bb.ah ], [ 23, %bb.ak ], [ 23, %bb.aj ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @hufBuildDecTable(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 65537) %2, i32 noundef range(i32 0, 65537) %3, ptr noundef captures(none) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.b, %bb.b ], [ @internal_exr_alloc, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ @internal_exr_free, %bb.a ]
  %.not74102 = icmp samesign ugt i32 %2, %3
  br i1 %.not74102, label %.thread84, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.thread
  %i.g = zext nneg i32 %2 to i64
  %i.h = add nuw nsw i32 %3, 1
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit97
  %indvars.iv114 = phi i64 [ %i.g, %.lr.ph104.preheader ], [ %indvars.iv.next115, %.loopexit97 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv114
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 3 uses
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = trunc i64 %i.j to i32
  %i.m = and i32 %i.l, 63                         ; 5 uses
  %i.n = and i64 %i.j, 63
  %i.o = lshr i64 %i.k, %i.n
  %.not75 = icmp eq i64 %i.o, 0
  br i1 %.not75, label %bb.c, label %.thread84

bb.c:                                             ; preds = %.lr.ph104
  %i.p = icmp samesign ugt i32 %i.m, 14
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.m, -14
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.k, %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !148
  %.not80 = icmp eq i32 %i.u, 0
  br i1 %.not80, label %bb.e, label %.thread84

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !149
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !149
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113  ; 3 uses
  %.not81 = icmp eq ptr %i.z, null
  br i1 %.not81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %i.x to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = tail call ptr %i.e(i64 noundef %i.ab) #10 ; 3 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !113
  %.not82 = icmp eq ptr %i.ac, null
  br i1 %.not82, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !149
  %.not111 = icmp eq i32 %i.ad, 1
  br i1 %.not111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !149
  %i.ai = add i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.loopexit, !llvm.loop !150

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  tail call void %i.f(ptr noundef nonnull %i.z) #10
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !113
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = tail call ptr %i.e(i64 noundef 4) #10   ; 2 uses
  store ptr %i.al, ptr %i.y, align 8, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.am = phi ptr [ %i.al, %bb.g ], [ %.pr, %.loopexit ] ; 2 uses
  %.not83 = icmp eq ptr %i.am, null
  br i1 %.not83, label %.thread84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.v, align 4, !tbaa !149
  %i.ao = add i32 %i.an, -1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv114 to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !3
  br label %.loopexit97

bb.j:                                             ; preds = %bb.c
  %.not76 = icmp eq i32 %i.m, 0
  br i1 %.not76, label %.loopexit97, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = sub nuw nsw i32 14, %i.m
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl i64 %i.k, %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.au
  %i.aw = shl nuw nsw i64 1, %i.at
  %i.ax = trunc nuw nsw i64 %indvars.iv114 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %.0100 = phi i64 [ %i.aw, %bb.k ], [ %i.bc, %bb.n ]
  %.06199 = phi ptr [ %i.av, %bb.k ], [ %i.bd, %bb.n ] ; 5 uses
  %i.ay = load i32, ptr %.06199, align 8, !tbaa !148
  %.not78 = icmp eq i32 %i.ay, 0
  br i1 %.not78, label %bb.m, label %.thread84

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.06199, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113
  %.not79 = icmp eq ptr %i.ba, null
  br i1 %.not79, label %bb.n, label %.thread84

bb.n:                                             ; preds = %bb.m
  store i32 %i.m, ptr %.06199, align 8, !tbaa !148
  %i.bb = getelementptr inbounds nuw i8, ptr %.06199, i64 4
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !149
  %i.bc = add nsw i64 %.0100, -1                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06199, i64 16
  %.not77 = icmp eq i64 %i.bc, 0
  br i1 %.not77, label %.loopexit97, label %bb.l, !llvm.loop !151

.loopexit97:                                      ; preds = %bb.n, %bb.i, %bb.j
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond.not, label %.thread84, label %.lr.ph104, !llvm.loop !152

.thread84:                                        ; preds = %.loopexit97, %.lr.ph104, %bb.d, %bb.h, %bb.m, %bb.l, %.thread
  %.5 = phi i32 [ 0, %.thread ], [ 23, %bb.m ], [ 23, %bb.l ], [ 0, %.loopexit97 ], [ 23, %.lr.ph104 ], [ 1, %bb.h ], [ 23, %bb.d ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 24) i32 @hufDecode(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef range(i64 0, 4294967296) %3, i32 noundef range(i32 0, 65537) %4, i64 noundef %5, ptr noundef captures(address) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %5 ; 7 uses
  %i.b = add nuw nsw i64 %3, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 5 uses
  %.not417 = icmp eq i64 %i.c, 0
  br i1 %.not417, label %._crit_edge398, label %.lr.ph397

.loopexit332:                                     ; preds = %.loopexit331, %.lr.ph397
  %.1207.lcssa = phi i32 [ %i.k, %.lr.ph397 ], [ %.13219, %.loopexit331 ] ; 2 uses
  %.1187.lcssa = phi i64 [ %i.j, %.lr.ph397 ], [ %.13199, %.loopexit331 ] ; 2 uses
  %.1169.lcssa = phi ptr [ %.0168394, %.lr.ph397 ], [ %.12180, %.loopexit331 ] ; 2 uses
  %.1153.lcssa = phi ptr [ %i.g, %.lr.ph397 ], [ %.13165, %.loopexit331 ] ; 3 uses
  %i.e = icmp ult ptr %.1153.lcssa, %i.d
  br i1 %i.e, label %.lr.ph397, label %._crit_edge398, !llvm.loop !153

.lr.ph397:                                        ; preds = %bb.a, %.loopexit332
  %.0152395 = phi ptr [ %.1153.lcssa, %.loopexit332 ], [ %2, %bb.a ] ; 2 uses
  %.0168394 = phi ptr [ %.1169.lcssa, %.loopexit332 ], [ %6, %bb.a ] ; 2 uses
  %.0186393 = phi i64 [ %.1187.lcssa, %.loopexit332 ], [ 0, %bb.a ]
  %.0206392 = phi i32 [ %.1207.lcssa, %.loopexit332 ], [ 0, %bb.a ] ; 2 uses
  %i.f = shl i64 %.0186393, 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0152395, i64 1 ; 2 uses
  %i.h = load i8, ptr %.0152395, align 1, !tbaa !25
  %i.i = zext i8 %i.h to i64
  %i.j = or disjoint i64 %i.f, %i.i               ; 2 uses
  %i.k = add nsw i32 %.0206392, 8                 ; 2 uses
  %i.l = icmp sgt i32 %.0206392, 5
  br i1 %i.l, label %.lr.ph387, label %.loopexit332

.lr.ph387:                                        ; preds = %.lr.ph397, %.loopexit331
  %.1153385 = phi ptr [ %.13165, %.loopexit331 ], [ %i.g, %.lr.ph397 ] ; 7 uses
  %.1169384 = phi ptr [ %.12180, %.loopexit331 ], [ %.0168394, %.lr.ph397 ] ; 23 uses
  %.1187383 = phi i64 [ %.13199, %.loopexit331 ], [ %i.j, %.lr.ph397 ] ; 6 uses
  %.1207382 = phi i32 [ %.13219, %.loopexit331 ], [ %i.k, %.lr.ph397 ] ; 5 uses
  %i.m = add nsw i32 %.1207382, -14
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %.1187383, %i.n
  %i.p = and i64 %i.o, 16383
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.p ; 4 uses
end_hunk_1
