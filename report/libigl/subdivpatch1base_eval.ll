Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/subdivpatch1base_eval?download=true
inline.NumInlined: 170
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN6embree4sse213PatchEvalGrid4evalENS_6PatchTINS_6Vec3faES3_E3RefERKNS_4BBoxINS_4Vec2IfEEEESB_j:bb.a
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph259.split, %bb.u
  %.2.i90 = phi i32 [ 0, %bb.u ], [ %i.jh, %.lr.ph259.split ] ; 2 uses
  %.1.i91 = phi i32 [ %i.jt, %bb.u ], [ %i.ji, %.lr.ph259.split ] ; 2 uses
  %i.ju = icmp slt i32 %.1.i91, %i.ap
  br i1 %i.ju, label %.lr.ph259.split, label %..loopexit232_crit_edge, !llvm.loop !710

_ZN6embree8foreach2IZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES5_E11BezierPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiEUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESO_E_EEviiiiRS9_.exit: ; preds = %..loopexit232_crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread222

.lr.ph252.preheader:                              ; preds = %bb.j
  %i.jv = and i64 %1, -16
  %i.jw = inttoptr i64 %i.jv to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.jw, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.jy = load <2 x float>, ptr %i.jx, align 4
  %i.jz = load <2 x float>, ptr %2, align 4
  %i.ka = fsub <2 x float> %i.jy, %i.jz           ; 3 uses
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kc = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.kb) ; 2 uses
  %i.kd = extractelement <4 x float> %i.kc, i64 0
  %i.ke = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kf = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.ke) ; 2 uses
  %i.kg = extractelement <4 x float> %i.kf, i64 0
  %i.kh = shufflevector <4 x float> %i.kc, <4 x float> %i.kf, <2 x i32> <i32 0, i32 4>
  %i.ki = fmul <2 x float> %i.ka, %i.kh
  %i.kj = fsub <2 x float> splat (float 2.000000e+00), %i.ki ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = fmul float %i.kd, %i.kk
  store float %i.kl, ptr %i.j, align 4
  %i.km = extractelement <2 x float> %i.kj, i64 1
  %i.kn = fmul float %i.kg, %i.km
  store float %i.kn, ptr %i.k, align 4
  %i.ko = sub nsw i32 %i.ap, %i.ad
  %i.kp = sub nsw i32 %i.be, %i.ar
  %i.kq = mul nuw nsw i32 %i.kp, %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 8
  %i.kt = add i32 %i.ks, %i.kq
  store i32 %i.kt, ptr %i.kr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store ptr %0, ptr %17, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %2, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.j, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %i.k, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.i, ptr %i.kx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %.lr.ph252

..loopexit233_crit_edge:                          ; preds = %bb.x, %bb.z
  %.us-phi = phi i32 [ %.2.i97, %bb.z ], [ %.2.i97.us, %bb.x ]
  %exitcond307.not = icmp eq i32 %i.ky, %i.be
  br i1 %exitcond307.not, label %_ZN6embree8foreach2IZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES5_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiEUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESO_E_EEviiiiRS9_.exit, label %.lr.ph252, !llvm.loop !711

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %..loopexit233_crit_edge
  %.028.i93255 = phi i32 [ %i.ky, %..loopexit233_crit_edge ], [ %i.ar, %.lr.ph252.preheader ] ; 2 uses
  %.029.i92254 = phi i32 [ %.us-phi, %..loopexit233_crit_edge ], [ 0, %.lr.ph252.preheader ] ; 2 uses
  %i.ky = add nsw i32 %.028.i93255, 1             ; 3 uses
  %i.kz = icmp sge i32 %i.ky, %i.be
  %i.la = insertelement <4 x i32> poison, i32 %.028.i93255, i64 0
  %i.lb = shufflevector <4 x i32> %i.la, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.fr = freeze i1 %i.kz
  br i1 %.fr, label %.lr.ph252.split, label %.lr.ph252.split.us

.lr.ph252.split.us:                               ; preds = %.lr.ph252, %bb.x
  %.0.i95251.us = phi i32 [ %.1.i98.us, %bb.x ], [ %i.ad, %.lr.ph252 ] ; 3 uses
  %.130.i94250.us = phi i32 [ %.2.i97.us, %bb.x ], [ %.029.i92254, %.lr.ph252 ] ; 2 uses
  %i.lc = insertelement <4 x i32> poison, i32 %.0.i95251.us, i64 0
  %i.ld = shufflevector <4 x i32> %i.lc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.le = add <4 x i32> %i.ld, <i32 0, i32 1, i32 2, i32 3>
  %i.lf = sext i32 %.130.i94250.us to i64         ; 2 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lf
  store <4 x i32> %i.le, ptr %i.lg, align 4
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lf
  store <4 x i32> %i.lb, ptr %i.lh, align 4
  %i.li = sub nsw i32 %i.ap, %.0.i95251.us
  %i.lj = call noundef i32 @llvm.smin.i32(i32 %i.li, i32 4) ; 2 uses
  %i.lk = add nsw i32 %i.lj, %.130.i94250.us      ; 4 uses
  %i.ll = add nsw i32 %i.lj, %.0.i95251.us        ; 2 uses
  %i.lm = icmp sgt i32 %i.lk, 3
  br i1 %i.lm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph252.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ln = insertelement <4 x i32> poison, i32 %i.lk, i64 0
  %i.lo = shufflevector <4 x i32> %i.ln, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lp = icmp sgt <4 x i32> %i.lo, <i32 0, i32 1, i32 2, i32 3>
  %i.lq = sext <4 x i1> %i.lp to <4 x i32>
  store <4 x i32> %i.lq, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.lr = load <2 x i64>, ptr %i.a, align 64, !noalias !742
  store <2 x i64> %i.lr, ptr %6, align 16, !alias.scope !742
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.ls = load <2 x i64>, ptr %i.b, align 64, !noalias !743
  store <2 x i64> %i.ls, ptr %7, align 16, !alias.scope !743
  call void @_ZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.neg224.us = add i32 %i.ll, 4
  %i.lt = sub i32 %.neg224.us, %i.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph252.split.us, %bb.w
  %.2.i97.us = phi i32 [ 0, %bb.w ], [ %i.lk, %.lr.ph252.split.us ] ; 2 uses
  %.1.i98.us = phi i32 [ %i.lt, %bb.w ], [ %i.ll, %.lr.ph252.split.us ] ; 2 uses
  %i.lu = icmp slt i32 %.1.i98.us, %i.ap
  br i1 %i.lu, label %.lr.ph252.split.us, label %..loopexit233_crit_edge, !llvm.loop !716

.lr.ph252.split:                                  ; preds = %.lr.ph252, %bb.z
  %.0.i95251 = phi i32 [ %.1.i98, %bb.z ], [ %i.ad, %.lr.ph252 ] ; 4 uses
  %.130.i94250 = phi i32 [ %.2.i97, %bb.z ], [ %.029.i92254, %.lr.ph252 ] ; 2 uses
  %i.lv = insertelement <4 x i32> poison, i32 %.0.i95251, i64 0
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lx = add <4 x i32> %i.lw, <i32 0, i32 1, i32 2, i32 3>
  %i.ly = sext i32 %.130.i94250 to i64            ; 2 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ly
  store <4 x i32> %i.lx, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ly
  store <4 x i32> %i.lb, ptr %i.ma, align 4
  %i.mb = sub nsw i32 %i.ap, %.0.i95251
  %i.mc = call noundef i32 @llvm.smin.i32(i32 %i.mb, i32 4) ; 2 uses
  %i.md = add nsw i32 %i.mc, %.130.i94250         ; 4 uses
  %i.me = add nsw i32 %i.mc, %.0.i95251           ; 2 uses
  %i.mf = icmp sgt i32 %i.md, 3
  %i.mg = add nsw i32 %.0.i95251, 4
  %i.mh = icmp sge i32 %i.mg, %i.ap
  %or.cond291 = select i1 %i.mf, i1 true, i1 %i.mh
  br i1 %or.cond291, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph252.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.mi = insertelement <4 x i32> poison, i32 %i.md, i64 0
  %i.mj = shufflevector <4 x i32> %i.mi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mk = icmp sgt <4 x i32> %i.mj, <i32 0, i32 1, i32 2, i32 3>
  %i.ml = sext <4 x i1> %i.mk to <4 x i32>
  store <4 x i32> %i.ml, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.mm = load <2 x i64>, ptr %i.a, align 64, !noalias !742
  store <2 x i64> %i.mm, ptr %6, align 16, !alias.scope !742
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.mn = load <2 x i64>, ptr %i.b, align 64, !noalias !743
  store <2 x i64> %i.mn, ptr %7, align 16, !alias.scope !743
  call void @_ZZN6embree4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES4_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiENKUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESN_E_clESJ_SN_SN_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.mo = call i32 @llvm.smax.i32(i32 %i.md, i32 4)
  %.neg224 = add i32 %i.me, 4
  %i.mp = sub i32 %.neg224, %i.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph252.split, %bb.y
  %.2.i97 = phi i32 [ 0, %bb.y ], [ %i.md, %.lr.ph252.split ] ; 2 uses
  %.1.i98 = phi i32 [ %i.mp, %bb.y ], [ %i.me, %.lr.ph252.split ] ; 2 uses
  %i.mq = icmp slt i32 %.1.i98, %i.ap
  br i1 %i.mq, label %.lr.ph252.split, label %..loopexit233_crit_edge, !llvm.loop !716

_ZN6embree8foreach2IZNS_4sse213PatchEvalGrid13evalLocalGridINS_6PatchTINS_6Vec3faES5_E12GregoryPatchEEEvPKT_RKNS_4BBoxINS_4Vec2IfEEEEiiiiEUlRKNS_11vboolf_implILi4EEERKNS_9vint_implILi4EEESO_E_EEviiiiRS9_.exit: ; preds = %..loopexit233_crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread222

bb.aa:                                            ; preds = %bb.j
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ms = load <2 x float>, ptr %2, align 4, !noalias !744 ; 6 uses
  store <2 x float> %i.ms, ptr %21, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %21, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.mv = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %22, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.my = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.na = load <2 x float>, ptr %i.mr, align 4, !noalias !744 ; 5 uses
  %i.nb = extractelement <2 x float> %i.na, i64 1
  %i.nc = extractelement <2 x float> %i.na, i64 0
  store float %i.nc, ptr %i.mw, align 4
  store <2 x float> %i.na, ptr %i.mz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.nd = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float %i.nb, ptr %i.nf, align 4
  %i.ng = and i64 %1, -16
  %i.nh = inttoptr i64 %i.ng to ptr               ; 4 uses
  %i.ni = extractelement <2 x float> %i.ms, i64 1
  %i.nj = extractelement <2 x float> %i.ms, i64 0
  store float %i.ni, ptr %i.mv, align 4
  %i.nk = fadd <2 x float> %i.ms, %i.na           ; 2 uses
  %i.nl = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.nm = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nn = shufflevector <2 x float> %i.ms, <2 x float> %i.nk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.no = fmul <4 x float> %i.nn, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 10 uses
  %i.np = shufflevector <4 x float> %i.y, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nq = fmul <4 x float> %i.np, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>
  %i.nr = extractelement <4 x float> %i.no, i64 2 ; 4 uses
  store float %i.nr, ptr %i.mt, align 8
  %i.ns = extractelement <4 x float> %i.no, i64 3 ; 4 uses
  store float %i.ns, ptr %i.mu, align 4
  store float %i.nr, ptr %22, align 4
  store float %i.ns, ptr %i.mx, align 4
  store float %i.nr, ptr %23, align 4
  store float %i.ns, ptr %i.my, align 4
  store float %i.nj, ptr %24, align 4
  store float %i.ns, ptr %i.nd, align 4
  store float %i.nr, ptr %i.ne, align 4
  %.sroa.03.0.copyload = load i64, ptr %i.nh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.nt = fcmp olt <4 x float> %i.no, %i.y
  %i.nu = shufflevector <4 x float> %i.nl, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nv = select <4 x i1> %i.nt, <4 x float> %i.nq, <4 x float> %i.nu
  store <4 x float> %i.nv, ptr %25, align 16, !alias.scope !745
  %i.nw = add i32 %4, 1                           ; 4 uses
  %i.nx = call noundef zeroext i1 @_ZN6embree4sse213PatchEvalGrid4evalENS_6PatchTINS_6Vec3faES3_E3RefERKNS_4BBoxINS_4Vec2IfEEEESB_j(ptr noundef nonnull align 8 dereferenceable(108) %0, i64 %.sroa.03.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %25, i32 noundef %i.nw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %.sroa.02.0.copyload = load i64, ptr %i.ny, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.nz = load <4 x float>, ptr %3, align 4, !noalias !746 ; 3 uses
  %31 = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %32 = shufflevector <4 x float> %i.no, <4 x float> %31, <4 x i32> <i32 2, i32 1, i32 4, i32 3>
  %i.oa = fcmp olt <4 x float> %32, %i.nz
  %33 = shufflevector <4 x float> %31, <4 x float> %i.no, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %34 = shufflevector <4 x float> %i.nz, <4 x float> %33, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %35 = shufflevector <4 x float> %i.no, <4 x float> %i.nl, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.ob = shufflevector <4 x float> %35, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.oc = select <4 x i1> %i.oa, <4 x float> %34, <4 x float> %i.ob
  store <4 x float> %i.oc, ptr %26, align 16, !alias.scope !746
  %i.od = call noundef zeroext i1 @_ZN6embree4sse213PatchEvalGrid4evalENS_6PatchTINS_6Vec3faES3_E3RefERKNS_4BBoxINS_4Vec2IfEEEESB_j(ptr noundef nonnull align 8 dereferenceable(108) %0, i64 %.sroa.02.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %26, i32 noundef %i.nw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %.sroa.01.0.copyload = load i64, ptr %i.oe, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.of = load <4 x float>, ptr %3, align 4, !noalias !747 ; 3 uses
  %i.og = shufflevector <4 x float> %i.no, <4 x float> %31, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.oh = fcmp olt <4 x float> %i.og, %i.of
  %i.oi = shufflevector <4 x float> %31, <4 x float> %i.of, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.oj = shufflevector <4 x float> %i.no, <4 x float> %i.of, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ok = select <4 x i1> %i.oh, <4 x float> %i.oi, <4 x float> %i.oj
  store <4 x float> %i.ok, ptr %27, align 16, !alias.scope !747
  %i.ol = call noundef zeroext i1 @_ZN6embree4sse213PatchEvalGrid4evalENS_6PatchTINS_6Vec3faES3_E3RefERKNS_4BBoxINS_4Vec2IfEEEESB_j(ptr noundef nonnull align 8 dereferenceable(108) %0, i64 %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %27, i32 noundef %i.nw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.om = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.om, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.on = load <4 x float>, ptr %3, align 4, !noalias !748 ; 3 uses
  %36 = shufflevector <4 x float> %i.no, <4 x float> %31, <4 x i32> <i32 0, i32 3, i32 2, i32 5> ; 2 uses
  %i.oo = fcmp olt <4 x float> %36, %i.on
  %37 = shufflevector <4 x float> %i.on, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %38 = shufflevector <4 x float> %i.nl, <4 x float> %i.no, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.op = shufflevector <4 x float> %38, <4 x float> %i.on, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.oq = select <4 x i1> %i.oo, <4 x float> %37, <4 x float> %i.op
  store <4 x float> %i.oq, ptr %28, align 16, !alias.scope !748
  %i.or = call noundef zeroext i1 @_ZN6embree4sse213PatchEvalGrid4evalENS_6PatchTINS_6Vec3faES3_E3RefERKNS_4BBoxINS_4Vec2IfEEEESB_j(ptr noundef nonnull align 8 dereferenceable(108) %0, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %28, i32 noundef %i.nw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %_ZNK6embree4BBoxINS_4Vec2IfEEE5emptyEv.exit.thread222

bb.ab:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.os = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %29, i64 128
  store ptr %i.os, ptr %i.ot, align 64
  %i.ou = getelementptr inbounds nuw i8, ptr %29, i64 200
  store i32 0, ptr %i.ou, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %29, i64 204
  store i32 0, ptr %i.ov, align 4
  %i.ow = getelementptr inbounds nuw i8, ptr %29, i64 256
  %i.ox = getelementptr inbounds nuw i8, ptr %29, i64 768
  store ptr %i.ow, ptr %i.ox, align 64
  %i.oy = getelementptr inbounds nuw i8, ptr %29, i64 896
  %i.oz = getelementptr inbounds nuw i8, ptr %29, i64 960
  store ptr %i.oy, ptr %i.oz, align 64
  %i.pa = getelementptr inbounds nuw i8, ptr %29, i64 1032
  store i32 0, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %29, i64 1036
  store i32 0, ptr %i.pb, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %29, i64 1088
  %i.pd = getelementptr inbounds nuw i8, ptr %29, i64 1600
  store ptr %i.pc, ptr %i.pd, align 64
  %i.pe = getelementptr inbounds nuw i8, ptr %29, i64 1728
  %i.pf = getelementptr inbounds nuw i8, ptr %29, i64 1792
  store ptr %i.pe, ptr %i.pf, align 64
  %i.pg = getelementptr inbounds nuw i8, ptr %29, i64 1864
  store i32 0, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %29, i64 1868
  store i32 0, ptr %i.ph, align 4
  %i.pi = getelementptr inbounds nuw i8, ptr %29, i64 1920
  %i.pj = getelementptr inbounds nuw i8, ptr %29, i64 2432
  store ptr %i.pi, ptr %i.pj, align 64
  %i.pk = getelementptr inbounds nuw i8, ptr %29, i64 2560
  %i.pl = getelementptr inbounds nuw i8, ptr %29, i64 2624
  store ptr %i.pk, ptr %i.pl, align 64
  %i.pm = getelementptr inbounds nuw i8, ptr %29, i64 2696
  store i32 0, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %29, i64 2700
  store i32 0, ptr %i.pn, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %29, i64 2752
  %i.pp = getelementptr inbounds nuw i8, ptr %29, i64 3264
  store ptr %i.po, ptr %i.pp, align 64
  %i.pq = and i64 %1, -16
  %i.pr = inttoptr i64 %i.pq to ptr               ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc
  %.0.i76249 = phi i64 [ 0, %bb.ab ], [ %i.xc, %.noexc ] ; 2 uses
  %.0248 = phi i64 [ 0, %bb.ab ], [ %.2.lcssa, %.noexc ] ; 2 uses
  %i.ps = getelementptr inbounds nuw [832 x i8], ptr %29, i64 %.0.i76249 ; 47 uses
  %i.pt = getelementptr i8, ptr %i.pr, i64 %.0248 ; 3 uses
  %i.pu = load i32, ptr %i.pt, align 4
  store i32 %i.pu, ptr %i.ps, align 64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 4 ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pt, i64 4
  %i.px = load i32, ptr %i.pw, align 4            ; 3 uses
  store i32 %i.px, ptr %i.pv, align 4
  %i.py = shl i32 %i.px, 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 3 uses
  store i32 %i.py, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.qb = getelementptr i8, ptr %i.pt, i64 8
  %i.qc = load float, ptr %i.qb, align 4
  store float %i.qc, ptr %i.qa, align 4
  %i.qd = add i64 %.0248, 12                      ; 2 uses
  %.not296 = icmp eq i32 %i.px, 0
  br i1 %.not296, label %.noexc101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 64 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 128 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 80
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ps, i64 96
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ps, i64 112
  br label %bb.ad

.noexc101.loopexit:                               ; preds = %.noexc102
  %.pre311 = load i32, ptr %i.pz, align 8
  %i.qj = icmp eq i32 %.pre311, 0
  br label %.noexc101

.noexc101:                                        ; preds = %.noexc101.loopexit, %bb.ac
  %.not297 = phi i1 [ true, %bb.ac ], [ %i.qj, %.noexc101.loopexit ]
  %.1220.lcssa = phi i64 [ %i.qd, %bb.ac ], [ %i.sw, %.noexc101.loopexit ] ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ps, i64 192
  %i.ql = getelementptr i8, ptr %i.pr, i64 %.1220.lcssa ; 5 uses
  %i.qm = load float, ptr %i.ql, align 4
  store float %i.qm, ptr %i.qk, align 64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ps, i64 196
  %i.qo = getelementptr i8, ptr %i.ql, i64 4
  %i.qp = load float, ptr %i.qo, align 4
  store float %i.qp, ptr %i.qn, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ps, i64 200
  %i.qr = getelementptr i8, ptr %i.ql, i64 8
  %i.qs = load i32, ptr %i.qr, align 4
  store i32 %i.qs, ptr %i.qq, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ps, i64 204
  %i.qu = getelementptr i8, ptr %i.ql, i64 12
  %i.qv = load i32, ptr %i.qu, align 4
  store i32 %i.qv, ptr %i.qt, align 4
  %i.qw = getelementptr i8, ptr %i.ql, i64 16
  %i.qx = load <4 x float>, ptr %i.qw, align 4, !noalias !749
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ps, i64 208
  store <4 x float> %i.qx, ptr %i.qy, align 16
  %i.qz = add i64 %.1220.lcssa, 32                ; 2 uses
  br i1 %.not297, label %.noexc, label %.noexc103.lr.ph

.noexc103.lr.ph:                                  ; preds = %.noexc101
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ps, i64 256 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ps, i64 768 ; 34 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ps, i64 272
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ps, i64 288
  %i.re = getelementptr inbounds nuw i8, ptr %i.ps, i64 304
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ps, i64 320
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ps, i64 336
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ps, i64 352
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ps, i64 368
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ps, i64 384
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ps, i64 400
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ps, i64 416
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ps, i64 432
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ps, i64 448
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ps, i64 464
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ps, i64 480
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ps, i64 496
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ps, i64 512
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ps, i64 528
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ps, i64 544
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ps, i64 560
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ps, i64 576
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ps, i64 592
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ps, i64 608
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ps, i64 624
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ps, i64 640
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ps, i64 656
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ps, i64 672
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ps, i64 688
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ps, i64 704
  %i.se = getelementptr inbounds nuw i8, ptr %i.ps, i64 720
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ps, i64 736
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ps, i64 752
  br label %.noexc103

bb.ad:                                            ; preds = %.lr.ph, %.noexc102
  %.028.i99243 = phi i64 [ 0, %.lr.ph ], [ %i.sh, %.noexc102 ] ; 3 uses
  %.1220242 = phi i64 [ %i.qd, %.lr.ph ], [ %i.sw, %.noexc102 ] ; 2 uses
  %i.sh = add nuw nsw i64 %.028.i99243, 1         ; 2 uses
  %i.si = icmp samesign ult i64 %.028.i99243, 16
  %.pre = load ptr, ptr %i.qf, align 64           ; 3 uses
  br i1 %i.si, label %.noexc102, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.sj = icmp eq ptr %.pre, %i.qe
  br i1 %i.sj, label %bb.af, label %.noexc102, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.sk = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #20
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc108:                                        ; preds = %bb.af
  store ptr %i.sk, ptr %i.qf, align 64
  %i.sl = load <4 x float>, ptr %i.qe, align 64
  store <4 x float> %i.sl, ptr %i.sk, align 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sn = load <4 x float>, ptr %i.qg, align 16
  store <4 x float> %i.sn, ptr %i.sm, align 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 32
  %i.sp = load <4 x float>, ptr %i.qh, align 32
  store <4 x float> %i.sp, ptr %i.so, align 4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 48
  %i.sr = load <4 x float>, ptr %i.qi, align 16
  store <4 x float> %i.sr, ptr %i.sq, align 4
  br label %.noexc102

.noexc102:                                        ; preds = %.noexc108, %bb.ad, %bb.ae
  %i.ss = phi ptr [ %i.sk, %.noexc108 ], [ %.pre, %bb.ad ], [ %.pre, %bb.ae ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %.028.i99243
  %i.su = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.1220242
  %i.sv = load float, ptr %i.su, align 4
  store float %i.sv, ptr %i.st, align 4
  %i.sw = add i64 %.1220242, 4                    ; 2 uses
  %i.sx = load i32, ptr %i.pv, align 4
  %i.sy = zext i32 %i.sx to i64
  %i.sz = icmp samesign ult i64 %i.sh, %i.sy
  br i1 %i.sz, label %bb.ad, label %.noexc101.loopexit, !llvm.loop !731

.noexc103:                                        ; preds = %.noexc103.lr.ph, %.noexc104
  %.0.i100246 = phi i64 [ 0, %.noexc103.lr.ph ], [ %i.tc, %.noexc104 ] ; 3 uses
  %.2245 = phi i64 [ %i.qz, %.noexc103.lr.ph ], [ %i.wy, %.noexc104 ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.2245
  %i.tb = load <4 x float>, ptr %i.ta, align 1, !noalias !750
end_hunk_0
