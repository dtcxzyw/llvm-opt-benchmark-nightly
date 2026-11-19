Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stackblur?download=true
inline.NumInlined: 296
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK2cv20ParallelStackBlurRowIffEclERKNS_5RangeE:bb.a
  br label %.preheader353.us

.preheader353.us:                                 ; preds = %.preheader353.us.preheader, %._crit_edge468.split.us.us
  %indvars.iv598 = phi i64 [ %i.jj, %.preheader353.us.preheader ], [ %indvars.iv.next599, %._crit_edge468.split.us.us ] ; 2 uses
  %i.jl = mul nsw i64 %indvars.iv598, %i.ao
  %invariant.gep664 = getelementptr [4 x i8], ptr %i.ec, i64 %i.jl ; 6 uses
  %brmerge1180 = select i1 %min.iters.check1022, i1 true, i1 %found.conflict1026
  br i1 %brmerge1180, label %.preheader.us.us.preheader, label %vector.ph1027

vector.ph1027:                                    ; preds = %.preheader353.us
  %i.jm = load float, ptr %i.af, align 8, !tbaa !74, !alias.scope !410
  %i.jn = fmul float %i.jm, 0.000000e+00
  %broadcast.splatinsert1031 = insertelement <4 x float> poison, float %i.jn, i64 0
  %broadcast.splat1032 = shufflevector <4 x float> %broadcast.splatinsert1031, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %vector.ph1027
  %index1030 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1033, %vector.body1029 ] ; 2 uses
  %i.jo = getelementptr [4 x i8], ptr %invariant.gep664, i64 %index1030 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  store <4 x float> %broadcast.splat1032, ptr %i.jo, align 4, !tbaa !97, !alias.scope !411, !noalias !410
  store <4 x float> %broadcast.splat1032, ptr %i.jp, align 4, !tbaa !97, !alias.scope !411, !noalias !410
  %index.next1033 = add nuw i64 %index1030, 8     ; 2 uses
  %i.jq = icmp eq i64 %index.next1033, %n.vec1028
  br i1 %i.jq, label %middle.block1034, label %vector.body1029, !llvm.loop !354

middle.block1034:                                 ; preds = %vector.body1029
  br i1 %cmp.n1035, label %._crit_edge468.split.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader353.us, %middle.block1034
  %indvars.iv593.ph = phi i64 [ %n.vec1028, %middle.block1034 ], [ 0, %.preheader353.us ] ; 3 uses
  br i1 %lcmp.mod1157.not.a, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol

.preheader.us.us.prol:                            ; preds = %.preheader.us.us.preheader, %.preheader.us.us.prol
  %indvars.iv593.prol = phi i64 [ %indvars.iv.next594.prol, %.preheader.us.us.prol ], [ %indvars.iv593.ph, %.preheader.us.us.preheader ] ; 2 uses
  %prol.iter1158 = phi i64 [ %prol.iter1158.next, %.preheader.us.us.prol ], [ 0, %.preheader.us.us.preheader ]
  %i.jr = load float, ptr %i.af, align 8, !tbaa !74
  %i.js = fmul float %i.jr, 0.000000e+00
  %gep665.prol = getelementptr [4 x i8], ptr %invariant.gep664, i64 %indvars.iv593.prol
  store float %i.js, ptr %gep665.prol, align 4, !tbaa !97
  %indvars.iv.next594.prol = add nuw nsw i64 %indvars.iv593.prol, 1 ; 2 uses
  %prol.iter1158.next = add i64 %prol.iter1158, 1 ; 2 uses
  %prol.iter1158.cmp.not = icmp eq i64 %prol.iter1158.next, %xtraiter1156.a
  br i1 %prol.iter1158.cmp.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol, !llvm.loop !355

.preheader.us.us.prol.loopexit:                   ; preds = %.preheader.us.us.prol, %.preheader.us.us.preheader
  %indvars.iv593.unr = phi i64 [ %indvars.iv593.ph, %.preheader.us.us.preheader ], [ %indvars.iv.next594.prol, %.preheader.us.us.prol ]
  %i.jt = sub nsw i64 %indvars.iv593.ph, %i.at
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %._crit_edge468.split.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us
  %indvars.iv593 = phi i64 [ %indvars.iv.next594.3, %.preheader.us.us ], [ %indvars.iv593.unr, %.preheader.us.us.prol.loopexit ] ; 5 uses
  %i.jv = load float, ptr %i.af, align 8, !tbaa !74
  %i.jw = fmul float %i.jv, 0.000000e+00
  %gep665 = getelementptr [4 x i8], ptr %invariant.gep664, i64 %indvars.iv593
  store float %i.jw, ptr %gep665, align 4, !tbaa !97
  %i.jx = load float, ptr %i.af, align 8, !tbaa !74
  %i.jy = fmul float %i.jx, 0.000000e+00
  %i.jz = getelementptr [4 x i8], ptr %invariant.gep664, i64 %indvars.iv593
  %gep665.1 = getelementptr i8, ptr %i.jz, i64 4
  store float %i.jy, ptr %gep665.1, align 4, !tbaa !97
  %i.ka = load float, ptr %i.af, align 8, !tbaa !74
  %i.kb = fmul float %i.ka, 0.000000e+00
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep664, i64 %indvars.iv593
  %gep665.2 = getelementptr i8, ptr %i.kc, i64 8
  store float %i.kb, ptr %gep665.2, align 4, !tbaa !97
  %i.kd = load float, ptr %i.af, align 8, !tbaa !74
  %i.ke = fmul float %i.kd, 0.000000e+00
  %i.kf = getelementptr [4 x i8], ptr %invariant.gep664, i64 %indvars.iv593
  %gep665.3 = getelementptr i8, ptr %i.kf, i64 12
  store float %i.ke, ptr %gep665.3, align 4, !tbaa !97
  %indvars.iv.next594.3 = add nuw nsw i64 %indvars.iv593, 4 ; 2 uses
  %exitcond597.not.3 = icmp eq i64 %indvars.iv.next594.3, %wide.trip.count596
  br i1 %exitcond597.not.3, label %._crit_edge468.split.us.us, label %.preheader.us.us, !llvm.loop !356

._crit_edge468.split.us.us:                       ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us, %middle.block1034
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, 1 ; 2 uses
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %wide.trip.count601
  br i1 %exitcond602.not, label %._crit_edge470.split, label %.preheader353.us, !llvm.loop !357

.preheader353.lr.ph.split.split:                  ; preds = %.preheader353.lr.ph.split
  %i.kg = load i32, ptr %i.an, align 8, !tbaa !22 ; 3 uses
  %i.kh = sext i32 %i.jh to i64
  br label %.preheader353

.preheader353:                                    ; preds = %.preheader353.lr.ph.split.split, %._crit_edge468.split
  %indvars.iv588 = phi i64 [ %i.kh, %.preheader353.lr.ph.split.split ], [ %indvars.iv.next589, %._crit_edge468.split ] ; 3 uses
  %i.ki = trunc nsw i64 %indvars.iv588 to i32
  %i.kj = sub i32 %i.ki, %i.ac                    ; 3 uses
  %i.kk = mul nsw i64 %indvars.iv588, %i.ao
  %invariant.gep662 = getelementptr [4 x i8], ptr %i.ec, i64 %i.kk
  br label %.preheader

._crit_edge470.split:                             ; preds = %._crit_edge468.split, %._crit_edge468.split.us.us, %._crit_edge458
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, 1 ; 2 uses
  %exitcond607.not = icmp eq i64 %indvars.iv.next604, %wide.trip.count606
  %indvar.next1018 = add i64 %indvar1017, 1
  br i1 %exitcond607.not, label %._crit_edge476, label %bb.n, !llvm.loop !358

.preheader:                                       ; preds = %.preheader353, %._crit_edge465.epilog-lcssa
  %indvars.iv583 = phi i64 [ 0, %.preheader353 ], [ %indvars.iv.next584, %._crit_edge465.epilog-lcssa ] ; 3 uses
  %i.kl = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv583 ; 3 uses
  br i1 %i.cd, label %._crit_edge465.epilog-lcssa, label %.preheader.new

._crit_edge468.split:                             ; preds = %._crit_edge465.epilog-lcssa
  %indvars.iv.next589 = add nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %._crit_edge470.split, label %.preheader353, !llvm.loop !357

._crit_edge465.epilog-lcssa:                      ; preds = %.preheader, %.preheader.new
  %indvars.iv578.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next579.1, %.preheader.new ] ; 2 uses
  %.2296462.epil.init = phi float [ 0.000000e+00, %.preheader ], [ %i.lr, %.preheader.new ]
  %i.km = trunc nuw nsw i64 %indvars.iv578.epil.init to i32
  %i.kn = add i32 %i.kj, %i.km
  %.sroa.speculated.epil = tail call i32 @llvm.smin.i32(i32 %i.kg, i32 %i.kn)
  %i.ko = mul nsw i32 %.sroa.speculated.epil, %i.ai
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr [4 x i8], ptr %i.kl, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !97
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv578.epil.init
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !43
  %i.ku = uitofp i16 %i.kt to float
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.ku, float %.2296462.epil.init)
  %i.kw = load float, ptr %i.af, align 8, !tbaa !74
  %i.kx = fmul float %i.kv, %i.kw
  %gep663 = getelementptr [4 x i8], ptr %invariant.gep662, i64 %indvars.iv583
  store float %i.kx, ptr %gep663, align 4, !tbaa !97
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count586
  br i1 %exitcond587.not, label %._crit_edge468.split, label %.preheader, !llvm.loop !359

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %.2296462 = phi float [ %i.lr, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %niter1155 = phi i64 [ %niter1155.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ky = trunc nuw nsw i64 %indvars.iv578 to i32
  %i.kz = add i32 %i.kj, %i.ky
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.kg, i32 %i.kz)
  %i.la = mul nsw i32 %.sroa.speculated, %i.ai
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr [4 x i8], ptr %i.kl, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !97
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv578
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !43
  %i.lg = uitofp i16 %i.lf to float
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.ld, float %i.lg, float %.2296462)
  %indvars.iv.next579 = or disjoint i64 %indvars.iv578, 1 ; 2 uses
  %i.li = trunc nuw nsw i64 %indvars.iv.next579 to i32
  %i.lj = add i32 %i.kj, %i.li
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.kg, i32 %i.lj)
  %i.lk = mul nsw i32 %.sroa.speculated.1, %i.ai
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr [4 x i8], ptr %i.kl, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !97
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next579
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !43
  %i.lq = uitofp i16 %i.lp to float
  %i.lr = tail call float @llvm.fmuladd.f32(float %i.ln, float %i.lq, float %i.lh) ; 2 uses
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %niter1155.next.1 = add nuw nsw i64 %niter1155, 2 ; 2 uses
  %niter1155.ncmp.1 = icmp eq i64 %niter1155.next.1, %i.bo
  br i1 %niter1155.ncmp.1, label %._crit_edge465.epilog-lcssa, label %.preheader.new, !llvm.loop !360

._crit_edge608:                                   ; preds = %bb.a
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !75 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.lv = add nsw i32 %i.g, %i.d
  %i.lw = mul nsw i32 %i.lv, %i.lt
  %i.lx = sext i32 %i.lw to i64
  %i.ly = shl nsw i32 %i.lt, 1
  %i.lz = sext i32 %i.ly to i64
  %i.ma = add nsw i64 %i.lx, %i.lz
  %i.mb = shl nsw i64 %i.ma, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.mc = add nsw i64 %i.mb, 16                   ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.md, ptr %2, align 8, !tbaa !94
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i327 = icmp ugt i64 %i.mc, 1032
  store i64 %i.mc, ptr %i.me, align 8, !tbaa !95
  br i1 %.not.i.i327, label %bb.o, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.o:                                             ; preds = %._crit_edge608
  %i.mf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.mc) #21 ; 2 uses
  store ptr %i.mf, ptr %2, align 8, !tbaa !94
  %.pre609 = load i32, ptr %i.ls, align 4, !tbaa !75
  %.pre610 = load i32, ptr %i.a, align 8, !tbaa !71
  %.pre611 = load i32, ptr %i.lu, align 4, !tbaa !72
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %._crit_edge608, %bb.o
  %i.mg = phi i32 [ %i.g, %._crit_edge608 ], [ %.pre611, %bb.o ]
  %i.mh = phi i32 [ %i.b, %._crit_edge608 ], [ %.pre610, %bb.o ] ; 2 uses
  %i.mi = phi i32 [ %i.lt, %._crit_edge608 ], [ %.pre609, %bb.o ] ; 3 uses
  %i.mj = phi ptr [ %i.md, %._crit_edge608 ], [ %i.mf, %bb.o ] ; 2 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = add i64 %i.mk, 15
  %i.mm = and i64 %i.ml, -16                      ; 2 uses
  %i.mn = inttoptr i64 %i.mm to ptr               ; 43 uses
  %i.mo = sext i32 %i.mi to i64                   ; 5 uses
  %i.mp = getelementptr [4 x i8], ptr %i.mn, i64 %i.mo ; 32 uses
  %i.mq = getelementptr [4 x i8], ptr %i.mp, i64 %i.mo ; 7 uses
  %i.mr = xor i32 %i.mh, -1
  %i.ms = add i32 %i.mg, %i.mr
  %i.mt = mul i32 %i.ms, %i.mi                    ; 9 uses
  %i.mu = load i32, ptr %1, align 4, !tbaa !24    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !25
  %i.mx = icmp slt i32 %i.mu, %i.mw
  br i1 %i.mx, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.my = add i32 %i.mh, 1
  %i.mz = mul i32 %i.my, %i.mi                    ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nd = icmp sgt i32 %i.mt, 0
  %i.ne = sext i32 %i.mz to i64                   ; 10 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mp, i64 4 ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mp, i64 12 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mn, i64 4 ; 6 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 6 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mn, i64 12 ; 3 uses
  %i.nm = sub nsw i32 0, %i.mz
  %i.nn = sext i32 %i.nm to i64                   ; 3 uses
  %i.no = sub nsw i32 1, %i.mz
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = sub nsw i32 2, %i.mz
  %i.nr = sext i32 %i.nq to i64                   ; 2 uses
  %i.ns = sub nsw i32 3, %i.mz
  %i.nt = sext i32 %i.ns to i64
  %i.nu = sext i32 %i.mu to i64
  %i.nv = shl nsw i64 %i.mo, 3                    ; 2 uses
  %i.nw = shl nsw i64 %i.ne, 2
  %i.nx = sub nsw i64 %i.nv, %i.nw                ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.mn, i64 %i.nx
  %scevgep746 = getelementptr i8, ptr %i.mn, i64 %i.nx
  %scevgep748 = getelementptr i8, ptr %i.mn, i64 %i.nv
  %scevgep750.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ny = shl nsw i64 %i.mo, 2                    ; 2 uses
  %scevgep752.a = getelementptr i8, ptr %i.mn, i64 %i.ny
  %i.nz = shl nsw i64 %i.ne, 2
  %i.oa = shl nsw i64 %i.mo, 3                    ; 2 uses
  %i.ob = add i64 %i.mm, %i.oa                    ; 2 uses
  %scevgep922 = getelementptr i8, ptr %i.mn, i64 %i.ny
  %scevgep925 = getelementptr i8, ptr %i.mn, i64 %i.oa
  %i.oc = zext nneg i32 %i.mt to i64              ; 2 uses
  %min.iters.check857 = icmp ult i32 %i.mt, 12
  %invariant.op1174 = add i64 %i.ob, -1
  %invariant.op1176 = add i64 %i.ob, -1
  %n.vec863 = and i64 %i.oc, 2147483640           ; 4 uses
  %i.od = trunc nuw nsw i64 %n.vec863 to i32
  %i.oe = shl nuw nsw i64 %n.vec863, 2            ; 2 uses
  %cmp.n873 = icmp eq i64 %n.vec863, %i.oc
  %bound0774 = icmp ult ptr %i.mp, %scevgep750.a
  %bound0786 = icmp ugt ptr %scevgep750.a, %i.mn
  br label %bb.q

._crit_edge424.loopexit:                          ; preds = %.loopexit359
  %.pre612 = load ptr, ptr %2, align 8, !tbaa !94
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.loopexit, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.of = phi ptr [ %.pre612, %._crit_edge424.loopexit ], [ %i.mj, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit ] ; 3 uses
  %.not.i.i328 = icmp eq ptr %i.of, %i.md
  %i.og = icmp eq ptr %i.of, null
  %or.cond.i = or i1 %.not.i.i328, %i.og
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge424
  call void @_ZdaPv(ptr noundef nonnull %i.of) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge424, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit325

bb.q:                                             ; preds = %.lr.ph423, %.loopexit359
  %indvars.iv533 = phi i64 [ %i.nu, %.lr.ph423 ], [ %indvars.iv.next534, %.loopexit359 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.mn, i8 0, i64 %i.mb, i1 false)
  %i.oh = load ptr, ptr %i.na, align 8, !tbaa !402, !nonnull !88, !align !89 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !90 ; 4 uses
  %i.ok = ptrtoaddr ptr %i.oj to i64              ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 128
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !86
  %i.on = mul i64 %i.om, %indvars.iv533           ; 5 uses
  %i.oo = getelementptr i8, ptr %i.oj, i64 %i.on  ; 17 uses
  %i.op = load ptr, ptr %i.nb, align 8, !tbaa !403, !nonnull !88, !align !89 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !90 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 128
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !86
  %i.ou = mul i64 %i.ot, %indvars.iv533           ; 2 uses
  %i.ov = getelementptr i8, ptr %i.or, i64 %i.ou  ; 9 uses
  %i.ow = load i32, ptr %i.a, align 8, !tbaa !71  ; 8 uses
  %i.ox = load i32, ptr %i.ls, align 4, !tbaa !75 ; 18 uses
  %i.oy = icmp sgt i32 %i.ox, 0                   ; 4 uses
  br i1 %i.oy, label %.lr.ph, label %.preheader367.thread

.lr.ph:                                           ; preds = %bb.q
  %i.oz = add nsw i32 %i.ow, 2
  %i.pa = add nsw i32 %i.ow, 1
  %i.pb = mul nsw i32 %i.oz, %i.pa
  %i.pc = sdiv i32 %i.pb, 2
  %i.pd = sitofp i32 %i.pc to float               ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ox to i64   ; 11 uses
  %min.iters.check988 = icmp ult i32 %i.ox, 8
  br i1 %min.iters.check988, label %scalar.ph987.preheader, label %vector.memcheck989

vector.memcheck989:                               ; preds = %.lr.ph
  %i.pe = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.pf = getelementptr i8, ptr %i.mp, i64 %i.pe
  %i.pg = getelementptr i8, ptr %i.oj, i64 %i.on
  %i.ph = getelementptr i8, ptr %i.pg, i64 %i.pe
  %bound0990 = icmp ult ptr %i.mp, %i.ph
  %bound1991 = icmp ult ptr %i.oo, %i.pf
  %found.conflict992 = and i1 %bound0990, %bound1991
  br i1 %found.conflict992, label %scalar.ph987.preheader, label %vector.ph993

vector.ph993:                                     ; preds = %vector.memcheck989
  %n.vec994 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert995 = insertelement <4 x float> poison, float %i.pd, i64 0
  %broadcast.splat996 = shufflevector <4 x float> %broadcast.splatinsert995, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %vector.ph993
  %index998 = phi i64 [ 0, %vector.ph993 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index998 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %wide.load999 = load <4 x float>, ptr %i.pi, align 4, !tbaa !97, !alias.scope !412
  %wide.load1000 = load <4 x float>, ptr %i.pj, align 4, !tbaa !97, !alias.scope !412
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %index998 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %wide.load1001 = load <4 x float>, ptr %i.pk, align 4, !tbaa !97, !alias.scope !413, !noalias !412
  %wide.load1002 = load <4 x float>, ptr %i.pl, align 4, !tbaa !97, !alias.scope !413, !noalias !412
  %i.pm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load999, <4 x float> %broadcast.splat996, <4 x float> %wide.load1001)
  %i.pn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1000, <4 x float> %broadcast.splat996, <4 x float> %wide.load1002)
  store <4 x float> %i.pm, ptr %i.pk, align 4, !tbaa !97, !alias.scope !413, !noalias !412
  store <4 x float> %i.pn, ptr %i.pl, align 4, !tbaa !97, !alias.scope !413, !noalias !412
  %index.next1003 = add nuw i64 %index998, 8      ; 2 uses
  %i.po = icmp eq i64 %index.next1003, %n.vec994
  br i1 %i.po, label %middle.block1004, label %vector.body997, !llvm.loop !364

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %n.vec994, %wide.trip.count
  br i1 %cmp.n1005, label %.preheader367, label %scalar.ph987.preheader

scalar.ph987.preheader:                           ; preds = %vector.memcheck989, %.lr.ph, %middle.block1004
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck989 ], [ 0, %.lr.ph ], [ %n.vec994, %middle.block1004 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph987.prol.loopexit, label %scalar.ph987.prol

scalar.ph987.prol:                                ; preds = %scalar.ph987.preheader
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.ph
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !97
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.ph ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !97
  %i.pt = call float @llvm.fmuladd.f32(float %i.pq, float %i.pd, float %i.ps)
  store float %i.pt, ptr %i.pr, align 4, !tbaa !97
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph987.prol.loopexit

scalar.ph987.prol.loopexit:                       ; preds = %scalar.ph987.prol, %scalar.ph987.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph987.preheader ], [ %indvars.iv.next.prol, %scalar.ph987.prol ]
  %i.pu = add nsw i64 %wide.trip.count, -1
  %i.pv = icmp eq i64 %indvars.iv.ph, %i.pu
  br i1 %i.pv, label %.preheader367, label %scalar.ph987

.preheader367:                                    ; preds = %scalar.ph987.prol.loopexit, %scalar.ph987, %middle.block1004
  %i.pw = icmp sgt i32 %i.ow, 0
  br i1 %i.pw, label %.lr.ph381.preheader, label %._crit_edge385.split

.preheader367.thread:                             ; preds = %bb.q
  %i.px = icmp sgt i32 %i.ow, 0
  br label %._crit_edge385.split

.lr.ph381.preheader:                              ; preds = %.preheader367
  %i.py = load i32, ptr %i.nc, align 8, !tbaa !73
  %i.pz = sext i32 %i.py to i64
  %i.qa = zext nneg i32 %i.ox to i64              ; 2 uses
  %i.qb = zext nneg i32 %i.ow to i64              ; 2 uses
  %i.qc = zext nneg i32 %i.ox to i64
  %i.qd = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.qe = getelementptr i8, ptr %i.oj, i64 %i.on
  %scevgep921 = getelementptr i8, ptr %i.qe, i64 %i.qd ; 3 uses
  %scevgep923 = getelementptr i8, ptr %scevgep922, i64 %i.qd ; 4 uses
  %scevgep924 = getelementptr i8, ptr %i.mn, i64 %i.qd ; 4 uses
  %i.qf = shl nuw nsw i64 %i.qb, 2
  %i.qg = mul nuw i64 %i.qf, %wide.trip.count
  %scevgep926 = getelementptr i8, ptr %scevgep925, i64 %i.qg ; 4 uses
  %min.iters.check928 = icmp ult i32 %i.ox, 12
  %bound0930 = icmp ult ptr %i.mq, %scevgep924
  %bound1931 = icmp ugt ptr %scevgep926, %i.mn
  %found.conflict932 = and i1 %bound0930, %bound1931
  %bound0933 = icmp ult ptr %i.mq, %scevgep923
  %bound1934 = icmp ult ptr %i.mp, %scevgep926
  %found.conflict935 = and i1 %bound0933, %bound1934
  %conflict.rdx936 = or i1 %found.conflict932, %found.conflict935
  %bound0937 = icmp ult ptr %i.mq, %scevgep921
  %bound1938 = icmp ult ptr %i.oo, %scevgep926
  %found.conflict939 = and i1 %bound0937, %bound1938
  %conflict.rdx940 = or i1 %conflict.rdx936, %found.conflict939
  %bound0945 = icmp ugt ptr %scevgep923, %i.mn
  %bound1946 = icmp ult ptr %i.mp, %scevgep924
  %found.conflict947 = and i1 %bound0945, %bound1946
  %invariant.op = or i1 %conflict.rdx940, %found.conflict947
  %bound0949 = icmp ugt ptr %scevgep921, %i.mn
  %bound1950 = icmp ult ptr %i.oo, %scevgep924
  %found.conflict951 = and i1 %bound0949, %bound1950
  %invariant.op1172 = or i1 %invariant.op, %found.conflict951
  %bound0957 = icmp ult ptr %i.mp, %scevgep921
  %bound1958 = icmp ult ptr %i.oo, %scevgep923
  %found.conflict959 = and i1 %bound0957, %bound1958
  %n.vec966 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n978 = icmp eq i64 %n.vec966, %wide.trip.count
  br label %.lr.ph381

scalar.ph987:                                     ; preds = %scalar.ph987.prol.loopexit, %scalar.ph987
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph987 ], [ %indvars.iv.unr, %scalar.ph987.prol.loopexit ] ; 4 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !97
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv ; 2 uses
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !97
  %i.ql = call float @llvm.fmuladd.f32(float %i.qi, float %i.pd, float %i.qk)
  store float %i.ql, ptr %i.qj, align 4, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !97
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next ; 2 uses
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !97
  %i.qq = call float @llvm.fmuladd.f32(float %i.qn, float %i.pd, float %i.qp)
  store float %i.qq, ptr %i.qo, align 4, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader367, label %scalar.ph987, !llvm.loop !365

._crit_edge385.split:                             ; preds = %._crit_edge, %.preheader367, %.preheader367.thread
  %i.qr = phi i1 [ %i.px, %.preheader367.thread ], [ false, %.preheader367 ], [ true, %._crit_edge ]
  %i.qs = mul i32 %i.ox, %i.ow
  %i.qt = sext i32 %i.qs to i64                   ; 5 uses
  %i.qu = getelementptr [4 x i8], ptr %i.mq, i64 %i.qt ; 13 uses
  br i1 %i.nd, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %._crit_edge385.split
  br i1 %min.iters.check857, label %.lr.ph390.preheader1122, label %vector.memcheck858

vector.memcheck858:                               ; preds = %.lr.ph390.preheader
  %i.qv = shl nsw i64 %i.qt, 2                    ; 2 uses
  %i.qw = add i64 %i.on, %i.ok                    ; 2 uses
  %i.qx = sub i64 %i.qv, %i.qw
  %.reass1175 = add i64 %i.qx, %invariant.op1174
  %diff.check859 = icmp ult i64 %.reass1175, 31
  %i.qy = add i64 %i.qw, %i.nz
  %i.qz = sub i64 %i.qv, %i.qy
  %.reass1177 = add i64 %i.qz, %invariant.op1176
  %diff.check860 = icmp ult i64 %.reass1177, 31
  %conflict.rdx861 = or i1 %diff.check859, %diff.check860
  br i1 %conflict.rdx861, label %.lr.ph390.preheader1122, label %vector.ph862

vector.ph862:                                     ; preds = %vector.memcheck858
  %i.ra = getelementptr i8, ptr %i.qu, i64 %i.oe  ; 2 uses
  %i.rb = getelementptr i8, ptr %i.oo, i64 %i.oe
  br label %vector.body864

vector.body864:                                   ; preds = %vector.body864, %vector.ph862
  %index865 = phi i64 [ 0, %vector.ph862 ], [ %index.next871, %vector.body864 ] ; 2 uses
  %i.rc = shl i64 %index865, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qu, i64 %i.rc ; 2 uses
  %next.gep866 = getelementptr i8, ptr %i.oo, i64 %i.rc ; 3 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %next.gep866, i64 %i.ne ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load867 = load <4 x float>, ptr %i.rd, align 4, !tbaa !97
  %wide.load868 = load <4 x float>, ptr %i.re, align 4, !tbaa !97
  %i.rf = getelementptr i8, ptr %next.gep866, i64 16
  %wide.load869 = load <4 x float>, ptr %next.gep866, align 4, !tbaa !97
  %wide.load870 = load <4 x float>, ptr %i.rf, align 4, !tbaa !97
  %i.rg = fsub <4 x float> %wide.load867, %wide.load869
  %i.rh = fsub <4 x float> %wide.load868, %wide.load870
  %i.ri = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.rg, ptr %next.gep, align 4, !tbaa !97
  store <4 x float> %i.rh, ptr %i.ri, align 4, !tbaa !97
  %index.next871 = add nuw i64 %index865, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next871, %n.vec863
  br i1 %i.rj, label %middle.block872, label %vector.body864, !llvm.loop !366

middle.block872:                                  ; preds = %vector.body864
  br i1 %cmp.n873, label %._crit_edge391, label %.lr.ph390.preheader1122

.lr.ph390.preheader1122:                          ; preds = %vector.memcheck858, %.lr.ph390.preheader, %middle.block872
  %.0265388.ph = phi i32 [ 0, %vector.memcheck858 ], [ 0, %.lr.ph390.preheader ], [ %i.od, %middle.block872 ] ; 4 uses
  %.0266387.ph = phi ptr [ %i.qu, %vector.memcheck858 ], [ %i.qu, %.lr.ph390.preheader ], [ %i.ra, %middle.block872 ] ; 2 uses
  %.0279386.ph = phi ptr [ %i.oo, %vector.memcheck858 ], [ %i.oo, %.lr.ph390.preheader ], [ %i.rb, %middle.block872 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK2cv20ParallelStackBlurRowIffEclERKNS_5RangeE:bb.a
vector.ph816:                                     ; preds = %vector.memcheck812
  %n.vec817 = and i64 %wide.trip.count522, 2147483640 ; 3 uses
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next824, %vector.body818 ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %index819 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %wide.load820 = load <4 x float>, ptr %i.uq, align 4, !tbaa !97, !alias.scope !422
  %wide.load821 = load <4 x float>, ptr %i.ur, align 4, !tbaa !97, !alias.scope !422
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %index819 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16 ; 2 uses
  %wide.load822 = load <4 x float>, ptr %i.us, align 16, !tbaa !97, !alias.scope !423, !noalias !422
  %wide.load823 = load <4 x float>, ptr %i.ut, align 16, !tbaa !97, !alias.scope !423, !noalias !422
  %i.uu = fadd <4 x float> %wide.load820, %wide.load822
  %i.uv = fadd <4 x float> %wide.load821, %wide.load823
  store <4 x float> %i.uu, ptr %i.us, align 16, !tbaa !97, !alias.scope !423, !noalias !422
  store <4 x float> %i.uv, ptr %i.ut, align 16, !tbaa !97, !alias.scope !423, !noalias !422
  %index.next824 = add nuw i64 %index819, 8       ; 2 uses
  %i.uw = icmp eq i64 %index.next824, %n.vec817
  br i1 %i.uw, label %middle.block825, label %vector.body818, !llvm.loop !381

middle.block825:                                  ; preds = %vector.body818
  %cmp.n826 = icmp eq i64 %n.vec817, %wide.trip.count522
  br i1 %cmp.n826, label %._crit_edge403, label %.lr.ph402.preheader1121

.lr.ph402.preheader1121:                          ; preds = %vector.memcheck812, %.lr.ph402.preheader, %middle.block825
  %indvars.iv519.ph = phi i64 [ 0, %vector.memcheck812 ], [ 0, %.lr.ph402.preheader ], [ %n.vec817, %middle.block825 ] ; 3 uses
  %xtraiter1129 = and i64 %wide.trip.count522, 3  ; 2 uses
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader1121, %.lr.ph402.prol
  %indvars.iv519.prol = phi i64 [ %indvars.iv.next520.prol, %.lr.ph402.prol ], [ %indvars.iv519.ph, %.lr.ph402.preheader1121 ] ; 3 uses
  %prol.iter1131 = phi i64 [ %prol.iter1131.next, %.lr.ph402.prol ], [ 0, %.lr.ph402.preheader1121 ]
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv519.prol
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !97
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv519.prol ; 2 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !97
  %i.vb = fadd float %i.uy, %i.va
  store float %i.vb, ptr %i.uz, align 4, !tbaa !97
  %indvars.iv.next520.prol = add nuw nsw i64 %indvars.iv519.prol, 1 ; 2 uses
  %prol.iter1131.next = add i64 %prol.iter1131, 1 ; 2 uses
  %prol.iter1131.cmp.not = icmp eq i64 %prol.iter1131.next, %xtraiter1129
  br i1 %prol.iter1131.cmp.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol, !llvm.loop !382

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader1121
  %indvars.iv519.unr = phi i64 [ %indvars.iv519.ph, %.lr.ph402.preheader1121 ], [ %indvars.iv.next520.prol, %.lr.ph402.prol ]
  %i.vc = sub nsw i64 %indvars.iv519.ph, %wide.trip.count522
  %i.vd = icmp ugt i64 %i.vc, -4
  br i1 %i.vd, label %._crit_edge403, label %.lr.ph402

.preheader357:                                    ; preds = %.preheader357.preheader, %._crit_edge396
  %indvar = phi i64 [ 0, %.preheader357.preheader ], [ %indvar.next, %._crit_edge396 ] ; 2 uses
  %.0263400 = phi i32 [ 0, %.preheader357.preheader ], [ %i.vz, %._crit_edge396 ] ; 2 uses
  %.0264399 = phi i32 [ %i.uf, %.preheader357.preheader ], [ %.1, %._crit_edge396 ] ; 2 uses
  %.1267398 = phi ptr [ %.0266.lcssa, %.preheader357.preheader ], [ %i.wa, %._crit_edge396 ] ; 7 uses
  %.2272397 = phi ptr [ %i.ud, %.preheader357.preheader ], [ %.3273, %._crit_edge396 ] ; 8 uses
  br i1 %min.iters.check836, label %scalar.ph835.preheader, label %vector.memcheck837

vector.memcheck837:                               ; preds = %.preheader357
  %.2272397833 = ptrtoaddr ptr %.2272397 to i64
  %i.ve = mul i64 %indvar, %i.uk                  ; 2 uses
  %i.vf = add nuw i64 %i.ve, %.0266.lcssa834
  %i.vg = sub i64 %.2272397833, %i.vf
  %diff.check = icmp ugt i64 %i.vg, -32
  %.reass = add i64 %i.ve, %invariant.op1173
  %diff.check838 = icmp ult i64 %.reass, 31
  %conflict.rdx839 = or i1 %diff.check, %diff.check838
  br i1 %conflict.rdx839, label %scalar.ph835.preheader, label %vector.body842

vector.body842:                                   ; preds = %vector.memcheck837, %vector.body842
  %index843 = phi i64 [ %index.next848, %vector.body842 ], [ 0, %vector.memcheck837 ] ; 4 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %index843 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %wide.load844 = load <4 x float>, ptr %i.vh, align 4, !tbaa !97
  %wide.load845 = load <4 x float>, ptr %i.vi, align 4, !tbaa !97
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %index843 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %wide.load846 = load <4 x float>, ptr %i.vj, align 4, !tbaa !97
  %wide.load847 = load <4 x float>, ptr %i.vk, align 4, !tbaa !97
  %i.vl = fsub <4 x float> %wide.load844, %wide.load846
  %i.vm = fsub <4 x float> %wide.load845, %wide.load847
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %index843 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store <4 x float> %i.vl, ptr %i.vn, align 4, !tbaa !97
  store <4 x float> %i.vm, ptr %i.vo, align 4, !tbaa !97
  %index.next848 = add nuw i64 %index843, 8       ; 2 uses
  %i.vp = icmp eq i64 %index.next848, %n.vec841
  br i1 %i.vp, label %middle.block849, label %vector.body842, !llvm.loop !383

middle.block849:                                  ; preds = %vector.body842
  br i1 %cmp.n850, label %._crit_edge396, label %scalar.ph835.preheader

scalar.ph835.preheader:                           ; preds = %vector.memcheck837, %.preheader357, %middle.block849
  %indvars.iv513.ph = phi i64 [ 0, %vector.memcheck837 ], [ 0, %.preheader357 ], [ %n.vec841, %middle.block849 ] ; 3 uses
  br i1 %lcmp.mod1127.not, label %scalar.ph835.prol.loopexit, label %scalar.ph835.prol

scalar.ph835.prol:                                ; preds = %scalar.ph835.preheader, %scalar.ph835.prol
  %indvars.iv513.prol = phi i64 [ %indvars.iv.next514.prol, %scalar.ph835.prol ], [ %indvars.iv513.ph, %scalar.ph835.preheader ] ; 4 uses
  %prol.iter1128 = phi i64 [ %prol.iter1128.next, %scalar.ph835.prol ], [ 0, %scalar.ph835.preheader ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv513.prol
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !97
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %indvars.iv513.prol
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !97
  %i.vu = fsub float %i.vr, %i.vt
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %indvars.iv513.prol
  store float %i.vu, ptr %i.vv, align 4, !tbaa !97
  %indvars.iv.next514.prol = add nuw nsw i64 %indvars.iv513.prol, 1 ; 2 uses
  %prol.iter1128.next = add i64 %prol.iter1128, 1 ; 2 uses
  %prol.iter1128.cmp.not = icmp eq i64 %prol.iter1128.next, %xtraiter1126
  br i1 %prol.iter1128.cmp.not, label %scalar.ph835.prol.loopexit, label %scalar.ph835.prol, !llvm.loop !384

scalar.ph835.prol.loopexit:                       ; preds = %scalar.ph835.prol, %scalar.ph835.preheader
  %indvars.iv513.unr = phi i64 [ %indvars.iv513.ph, %scalar.ph835.preheader ], [ %indvars.iv.next514.prol, %scalar.ph835.prol ]
  %i.vw = sub nsw i64 %indvars.iv513.ph, %wide.trip.count516
  %i.vx = icmp ugt i64 %i.vw, -4
  br i1 %i.vx, label %._crit_edge396, label %scalar.ph835

._crit_edge396:                                   ; preds = %scalar.ph835.prol.loopexit, %scalar.ph835, %middle.block849
  %.not = icmp sge i32 %.0264399, %.0263400       ; 2 uses
  %.3273.idx = select i1 %.not, i64 %i.ub, i64 0
  %.3273 = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %.3273.idx
  %i.vy = sext i1 %.not to i32
  %.1 = add nsw i32 %.0264399, %i.vy
  %i.vz = add nuw nsw i32 %.0263400, 1            ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %i.ub
  %exitcond518.not = icmp eq i32 %i.vz, %i.ow
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond518.not, label %.preheader366, label %.preheader357, !llvm.loop !385

scalar.ph835:                                     ; preds = %scalar.ph835.prol.loopexit, %scalar.ph835
  %indvars.iv513 = phi i64 [ %indvars.iv.next514.3, %scalar.ph835 ], [ %indvars.iv513.unr, %scalar.ph835.prol.loopexit ] ; 7 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv513
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !97
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %indvars.iv513
  %i.we = load float, ptr %i.wd, align 4, !tbaa !97
  %i.wf = fsub float %i.wc, %i.we
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %indvars.iv513
  store float %i.wf, ptr %i.wg, align 4, !tbaa !97
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv.next514
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !97
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %indvars.iv.next514
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !97
  %i.wl = fsub float %i.wi, %i.wk
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %indvars.iv.next514
  store float %i.wl, ptr %i.wm, align 4, !tbaa !97
  %indvars.iv.next514.1 = add nuw nsw i64 %indvars.iv513, 2 ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv.next514.1
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !97
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %indvars.iv.next514.1
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !97
  %i.wr = fsub float %i.wo, %i.wq
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %indvars.iv.next514.1
  store float %i.wr, ptr %i.ws, align 4, !tbaa !97
  %indvars.iv.next514.2 = add nuw nsw i64 %indvars.iv513, 3 ; 3 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv.next514.2
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !97
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.2272397, i64 %indvars.iv.next514.2
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !97
  %i.wx = fsub float %i.wu, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.1267398, i64 %indvars.iv.next514.2
  store float %i.wx, ptr %i.wy, align 4, !tbaa !97
  %indvars.iv.next514.3 = add nuw nsw i64 %indvars.iv513, 4 ; 2 uses
  %exitcond517.not.3 = icmp eq i64 %indvars.iv.next514.3, %wide.trip.count516
  br i1 %exitcond517.not.3, label %._crit_edge396, label %scalar.ph835, !llvm.loop !386

._crit_edge403:                                   ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block825, %.preheader357.lr.ph, %.preheader366
  %i.wz = sext i32 %i.ox to i64                   ; 10 uses
  %i.xa = getelementptr [4 x i8], ptr %i.qu, i64 %i.wz ; 7 uses
  %i.xb = icmp sgt i32 %i.tw, 0                   ; 4 uses
  switch i32 %i.ox, label %.preheader358 [
    i32 1, label %.preheader360
    i32 3, label %.preheader362
    i32 4, label %.preheader364
  ]

.preheader364:                                    ; preds = %._crit_edge403
  br i1 %i.xb, label %.lr.ph407, label %.loopexit359

.preheader362:                                    ; preds = %._crit_edge403
  br i1 %i.xb, label %.lr.ph411, label %.loopexit359

.preheader360:                                    ; preds = %._crit_edge403
  br i1 %i.xb, label %.lr.ph415, label %.loopexit359

.preheader358:                                    ; preds = %._crit_edge403
  %or.cond = and i1 %i.xb, %i.oy
  br i1 %or.cond, label %.preheader356.preheader, label %.loopexit359

.preheader356.preheader:                          ; preds = %.preheader358
  %wide.trip.count530 = zext nneg i32 %i.ox to i64 ; 4 uses
  %i.xc = add nsw i32 %i.tw, -1
  %i.xd = zext i32 %i.xc to i64                   ; 2 uses
  %i.xe = shl nuw nsw i64 %i.xd, 2
  %i.xf = add nuw nsw i64 %i.xe, 4
  %i.xg = mul i64 %i.xf, %i.wz
  %i.xh = shl nsw i64 %i.qt, 2
  %i.xi = add i64 %i.xg, %i.xh
  %i.xj = shl nuw nsw i64 %wide.trip.count530, 2  ; 4 uses
  %i.xk = add i64 %i.xi, %i.xj                    ; 2 uses
  %scevgep745 = getelementptr i8, ptr %scevgep.a, i64 %i.xk ; 3 uses
  %i.xl = add nsw i64 %i.wz, %i.qt
  %i.xm = shl nsw i64 %i.xl, 2
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.xm ; 3 uses
  %scevgep749 = getelementptr i8, ptr %scevgep748, i64 %i.xk ; 3 uses
  %scevgep751.a = getelementptr i8, ptr %i.mn, i64 %i.xj ; 5 uses
  %scevgep753 = getelementptr i8, ptr %scevgep752.a, i64 %i.xj ; 5 uses
  %i.xn = shl nuw nsw i64 %i.wz, 2
  %i.xo = mul i64 %i.xn, %i.xd
  %i.xp = getelementptr i8, ptr %i.or, i64 %i.xo
  %i.xq = getelementptr i8, ptr %i.xp, i64 %i.ou
  %scevgep754.a = getelementptr i8, ptr %i.xq, i64 %i.xj ; 5 uses
  %min.iters.check = icmp ult i32 %i.ox, 12
  %bound0 = icmp ult ptr %i.ov, %scevgep753
  %bound1 = icmp ult ptr %i.mp, %scevgep754.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0755 = icmp ult ptr %i.ov, %scevgep751.a
  %bound1756 = icmp ugt ptr %scevgep754.a, %i.mn
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx = or i1 %found.conflict, %found.conflict757
  %bound0758 = icmp ult ptr %i.ov, %scevgep750.a
  %bound1759 = icmp ult ptr %i.nf, %scevgep754.a
  %found.conflict760 = and i1 %bound0758, %bound1759
  %conflict.rdx761 = or i1 %conflict.rdx, %found.conflict760
  %bound0762 = icmp ult ptr %i.ov, %scevgep749
  %bound1763 = icmp ult ptr %i.xa, %scevgep754.a
  %found.conflict764 = and i1 %bound0762, %bound1763
  %conflict.rdx765 = or i1 %conflict.rdx761, %found.conflict764
  %bound0766 = icmp ult ptr %i.ov, %scevgep745
  %bound1767 = icmp ult ptr %scevgep747, %scevgep754.a
  %found.conflict768 = and i1 %bound0766, %bound1767
  %conflict.rdx769 = or i1 %conflict.rdx765, %found.conflict768
  %bound0770 = icmp ult ptr %i.mp, %scevgep751.a
  %bound1771 = icmp ugt ptr %scevgep753, %i.mn
  %found.conflict772 = and i1 %bound0770, %bound1771
  %conflict.rdx773 = or i1 %conflict.rdx769, %found.conflict772
  %bound1775 = icmp ult ptr %i.nf, %scevgep753
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %conflict.rdx773, %found.conflict776
  %bound0778 = icmp ult ptr %i.mp, %scevgep749
  %bound1779 = icmp ult ptr %i.xa, %scevgep753
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  %bound0782 = icmp ult ptr %i.mp, %scevgep745
  %bound1783 = icmp ult ptr %scevgep747, %scevgep753
  %found.conflict784 = and i1 %bound0782, %bound1783
  %conflict.rdx785 = or i1 %conflict.rdx781, %found.conflict784
  %bound1787 = icmp ult ptr %i.nf, %scevgep751.a
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx789 = or i1 %conflict.rdx785, %found.conflict788
  %bound0790 = icmp ugt ptr %scevgep749, %i.mn
  %bound1791 = icmp ult ptr %i.xa, %scevgep751.a
  %found.conflict792 = and i1 %bound0790, %bound1791
  %conflict.rdx793 = or i1 %conflict.rdx789, %found.conflict792
  %bound0794 = icmp ugt ptr %scevgep745, %i.mn
  %bound1795 = icmp ult ptr %scevgep747, %scevgep751.a
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx797 = or i1 %conflict.rdx793, %found.conflict796
  %n.vec = and i64 %wide.trip.count530, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count530
  br label %.preheader356

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv519 = phi i64 [ %indvars.iv.next520.3, %.lr.ph402 ], [ %indvars.iv519.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv519
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !97
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv519 ; 2 uses
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !97
  %i.xv = fadd float %i.xs, %i.xu
  store float %i.xv, ptr %i.xt, align 4, !tbaa !97
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next520
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !97
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next520 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !97
  %i.ya = fadd float %i.xx, %i.xz
  store float %i.ya, ptr %i.xy, align 4, !tbaa !97
  %indvars.iv.next520.1 = add nuw nsw i64 %indvars.iv519, 2 ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next520.1
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !97
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next520.1 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !97
  %i.yf = fadd float %i.yc, %i.ye
  store float %i.yf, ptr %i.yd, align 4, !tbaa !97
  %indvars.iv.next520.2 = add nuw nsw i64 %indvars.iv519, 3 ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next520.2
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !97
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next520.2 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !97
  %i.yk = fadd float %i.yh, %i.yj
  store float %i.yk, ptr %i.yi, align 4, !tbaa !97
  %indvars.iv.next520.3 = add nuw nsw i64 %indvars.iv519, 4 ; 2 uses
  %exitcond523.not.3 = icmp eq i64 %indvars.iv.next520.3, %wide.trip.count522
  br i1 %exitcond523.not.3, label %._crit_edge403, label %.lr.ph402, !llvm.loop !387

.lr.ph415:                                        ; preds = %.preheader360, %.lr.ph415
  %.0260414 = phi i32 [ %i.yx, %.lr.ph415 ], [ 0, %.preheader360 ]
  %.2413 = phi ptr [ %i.yy, %.lr.ph415 ], [ %i.xa, %.preheader360 ] ; 3 uses
  %.0275412 = phi ptr [ %i.yz, %.lr.ph415 ], [ %i.ov, %.preheader360 ] ; 2 uses
  %i.yl = load float, ptr %i.mp, align 4, !tbaa !97
  %i.ym = load float, ptr %i.nf, align 8, !tbaa !74
  %i.yn = fmul float %i.yl, %i.ym
  store float %i.yn, ptr %.0275412, align 4, !tbaa !97
  %i.yo = load float, ptr %i.mn, align 16, !tbaa !97
  %i.yp = load float, ptr %i.mp, align 4, !tbaa !97
  %i.yq = fadd float %i.yo, %i.yp
  store float %i.yq, ptr %i.mp, align 4, !tbaa !97
  %i.yr = load float, ptr %.2413, align 4, !tbaa !97
  %i.ys = getelementptr inbounds [4 x i8], ptr %.2413, i64 %i.nn
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !97
  %i.yu = fsub float %i.yr, %i.yt
  %i.yv = load float, ptr %i.mn, align 16, !tbaa !97
  %i.yw = fadd float %i.yv, %i.yu
  store float %i.yw, ptr %i.mn, align 16, !tbaa !97
  %i.yx = add nuw nsw i32 %.0260414, 1            ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.2413, i64 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.0275412, i64 4
  %exitcond526.not = icmp eq i32 %i.yx, %i.tw
  br i1 %exitcond526.not, label %.loopexit359, label %.lr.ph415, !llvm.loop !388

.lr.ph411:                                        ; preds = %.preheader362, %.lr.ph411
  %.0259410 = phi i32 [ %i.aao, %.lr.ph411 ], [ 0, %.preheader362 ]
  %.3409 = phi ptr [ %i.aap, %.lr.ph411 ], [ %i.xa, %.preheader362 ] ; 7 uses
  %.1276408 = phi ptr [ %i.aaq, %.lr.ph411 ], [ %i.ov, %.preheader362 ] ; 4 uses
  %i.za = load float, ptr %i.mp, align 4, !tbaa !97
  %i.zb = load float, ptr %i.nf, align 8, !tbaa !74
  %i.zc = fmul float %i.za, %i.zb
  store float %i.zc, ptr %.1276408, align 4, !tbaa !97
  %i.zd = load float, ptr %i.ng, align 4, !tbaa !97
  %i.ze = load float, ptr %i.nf, align 8, !tbaa !74
  %i.zf = fmul float %i.zd, %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %.1276408, i64 4
  store float %i.zf, ptr %i.zg, align 4, !tbaa !97
  %i.zh = load float, ptr %i.nh, align 4, !tbaa !97
  %i.zi = load float, ptr %i.nf, align 8, !tbaa !74
  %i.zj = fmul float %i.zh, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %.1276408, i64 8
  store float %i.zj, ptr %i.zk, align 4, !tbaa !97
  %i.zl = load float, ptr %i.mn, align 16, !tbaa !97
  %i.zm = load float, ptr %i.mp, align 4, !tbaa !97
  %i.zn = fadd float %i.zl, %i.zm
  store float %i.zn, ptr %i.mp, align 4, !tbaa !97
  %i.zo = load float, ptr %i.nj, align 4, !tbaa !97
  %i.zp = load float, ptr %i.ng, align 4, !tbaa !97
  %i.zq = fadd float %i.zo, %i.zp
  store float %i.zq, ptr %i.ng, align 4, !tbaa !97
  %i.zr = load float, ptr %i.nk, align 8, !tbaa !97
  %i.zs = load float, ptr %i.nh, align 4, !tbaa !97
  %i.zt = fadd float %i.zr, %i.zs
  store float %i.zt, ptr %i.nh, align 4, !tbaa !97
  %i.zu = load float, ptr %.3409, align 4, !tbaa !97
  %i.zv = getelementptr inbounds [4 x i8], ptr %.3409, i64 %i.nn
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !97
  %i.zx = fsub float %i.zu, %i.zw
  %i.zy = load float, ptr %i.mn, align 16, !tbaa !97
  %i.zz = fadd float %i.zy, %i.zx
  store float %i.zz, ptr %i.mn, align 16, !tbaa !97
  %i.aaa = getelementptr inbounds nuw i8, ptr %.3409, i64 4
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !97
  %i.aac = getelementptr inbounds [4 x i8], ptr %.3409, i64 %i.np
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !97
  %i.aae = fsub float %i.aab, %i.aad
  %i.aaf = load float, ptr %i.nj, align 4, !tbaa !97
  %i.aag = fadd float %i.aaf, %i.aae
  store float %i.aag, ptr %i.nj, align 4, !tbaa !97
  %i.aah = getelementptr inbounds nuw i8, ptr %.3409, i64 8
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !97
  %i.aaj = getelementptr inbounds [4 x i8], ptr %.3409, i64 %i.nr
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !97
  %i.aal = fsub float %i.aai, %i.aak
  %i.aam = load float, ptr %i.nk, align 8, !tbaa !97
  %i.aan = fadd float %i.aam, %i.aal
  store float %i.aan, ptr %i.nk, align 8, !tbaa !97
  %i.aao = add nuw nsw i32 %.0259410, 1           ; 2 uses
  %i.aap = getelementptr inbounds [4 x i8], ptr %.3409, i64 %i.wz
  %i.aaq = getelementptr inbounds [4 x i8], ptr %.1276408, i64 %i.wz
  %exitcond525.not = icmp eq i32 %i.aao, %i.tw
  br i1 %exitcond525.not, label %.loopexit359, label %.lr.ph411, !llvm.loop !389

.lr.ph407:                                        ; preds = %.preheader364, %.lr.ph407
  %.0258406 = phi i32 [ %i.act, %.lr.ph407 ], [ 0, %.preheader364 ]
  %.4405 = phi ptr [ %i.acu, %.lr.ph407 ], [ %i.xa, %.preheader364 ] ; 9 uses
  %.2277404 = phi ptr [ %i.acv, %.lr.ph407 ], [ %i.ov, %.preheader364 ] ; 5 uses
  %i.aar = load float, ptr %i.mp, align 4, !tbaa !97
  %i.aas = load float, ptr %i.nf, align 8, !tbaa !74
  %i.aat = fmul float %i.aar, %i.aas
  store float %i.aat, ptr %.2277404, align 4, !tbaa !97
  %i.aau = load float, ptr %i.ng, align 4, !tbaa !97
  %i.aav = load float, ptr %i.nf, align 8, !tbaa !74
  %i.aaw = fmul float %i.aau, %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %.2277404, i64 4
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !97
  %i.aay = load float, ptr %i.nh, align 4, !tbaa !97
  %i.aaz = load float, ptr %i.nf, align 8, !tbaa !74
  %i.aba = fmul float %i.aay, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %.2277404, i64 8
  store float %i.aba, ptr %i.abb, align 4, !tbaa !97
  %i.abc = load float, ptr %i.ni, align 4, !tbaa !97
  %i.abd = load float, ptr %i.nf, align 8, !tbaa !74
  %i.abe = fmul float %i.abc, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %.2277404, i64 12
  store float %i.abe, ptr %i.abf, align 4, !tbaa !97
  %i.abg = load float, ptr %i.mn, align 16, !tbaa !97
  %i.abh = load float, ptr %i.mp, align 4, !tbaa !97
  %i.abi = fadd float %i.abg, %i.abh
  store float %i.abi, ptr %i.mp, align 4, !tbaa !97
  %i.abj = load float, ptr %i.nj, align 4, !tbaa !97
  %i.abk = load float, ptr %i.ng, align 4, !tbaa !97
  %i.abl = fadd float %i.abj, %i.abk
  store float %i.abl, ptr %i.ng, align 4, !tbaa !97
  %i.abm = load float, ptr %i.nk, align 8, !tbaa !97
  %i.abn = load float, ptr %i.nh, align 4, !tbaa !97
  %i.abo = fadd float %i.abm, %i.abn
  store float %i.abo, ptr %i.nh, align 4, !tbaa !97
  %i.abp = load float, ptr %i.nl, align 4, !tbaa !97
  %i.abq = load float, ptr %i.ni, align 4, !tbaa !97
  %i.abr = fadd float %i.abp, %i.abq
  store float %i.abr, ptr %i.ni, align 4, !tbaa !97
  %i.abs = load float, ptr %.4405, align 4, !tbaa !97
  %i.abt = getelementptr inbounds [4 x i8], ptr %.4405, i64 %i.nn
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !97
  %i.abv = fsub float %i.abs, %i.abu
  %i.abw = load float, ptr %i.mn, align 16, !tbaa !97
  %i.abx = fadd float %i.abw, %i.abv
  store float %i.abx, ptr %i.mn, align 16, !tbaa !97
  %i.aby = getelementptr inbounds nuw i8, ptr %.4405, i64 4
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !97
  %i.aca = getelementptr inbounds [4 x i8], ptr %.4405, i64 %i.np
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !97
  %i.acc = fsub float %i.abz, %i.acb
  %i.acd = load float, ptr %i.nj, align 4, !tbaa !97
  %i.ace = fadd float %i.acd, %i.acc
  store float %i.ace, ptr %i.nj, align 4, !tbaa !97
  %i.acf = getelementptr inbounds nuw i8, ptr %.4405, i64 8
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !97
  %i.ach = getelementptr inbounds [4 x i8], ptr %.4405, i64 %i.nr
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !97
  %i.acj = fsub float %i.acg, %i.aci
  %i.ack = load float, ptr %i.nk, align 8, !tbaa !97
  %i.acl = fadd float %i.ack, %i.acj
  store float %i.acl, ptr %i.nk, align 8, !tbaa !97
  %i.acm = getelementptr inbounds nuw i8, ptr %.4405, i64 12
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !97
  %i.aco = getelementptr inbounds [4 x i8], ptr %.4405, i64 %i.nt
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !97
  %i.acq = fsub float %i.acn, %i.acp
  %i.acr = load float, ptr %i.nl, align 4, !tbaa !97
  %i.acs = fadd float %i.acr, %i.acq
  store float %i.acs, ptr %i.nl, align 4, !tbaa !97
  %i.act = add nuw nsw i32 %.0258406, 1           ; 2 uses
  %i.acu = getelementptr inbounds [4 x i8], ptr %.4405, i64 %i.wz
  %i.acv = getelementptr inbounds [4 x i8], ptr %.2277404, i64 %i.wz
  %exitcond524.not = icmp eq i32 %i.act, %i.tw
  br i1 %exitcond524.not, label %.loopexit359, label %.lr.ph407, !llvm.loop !390

.preheader356:                                    ; preds = %.preheader356.preheader, %._crit_edge418
end_hunk_1
