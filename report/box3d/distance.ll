Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3ShapeDistance:bb.a
  %.phi.trans.insert897 = getelementptr inbounds [12 x i8], ptr %i.ahl, i64 %.phi.trans.insert896
  %.sroa.277.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert897, i64 8
  %.sroa.277.0.copyload.pre = load float, ptr %.sroa.277.0..sroa_idx.phi.trans.insert, align 4
  br label %b3GetProxySupport.exit668

b3GetProxySupport.exit668:                        ; preds = %b3GetProxySupport.exit, %b3GetProxySupport.exit668.loopexit
  %.sroa.277.0.copyload = phi float [ %.sroa.277.0.copyload.pre, %b3GetProxySupport.exit668.loopexit ], [ %.sroa.4.0.copyload.i647, %b3GetProxySupport.exit ] ; 2 uses
  %.0.lcssa.i648 = phi i32 [ %.1.i665, %b3GetProxySupport.exit668.loopexit ], [ 0, %b3GetProxySupport.exit ] ; 3 uses
  %i.aia = sext i32 %.0.lcssa.i648 to i64
  %i.aib = getelementptr inbounds [12 x i8], ptr %i.ahl, i64 %i.aia
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.aib, align 4 ; 4 uses
  %i.aic = shufflevector <2 x float> %.sroa.076.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i669 = extractelement <2 x float> %.sroa.076.0.copyload, i64 0
  %i.aid = insertelement <2 x float> poison, float %.sroa.277.0.copyload, i64 0
  %i.aie = shufflevector <2 x float> %i.aid, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aif = fmul <2 x float> %i.u, %i.aie
  %i.aig = fmul float %i.x, %.sroa.03.0.vec.extract.i669
  %i.aih = extractelement <2 x float> %.sroa.076.0.copyload, i64 1
  %i.aii = fmul float %i.q, %i.aih
  %i.aij = fadd float %i.aig, %i.aii
  %i.aik = fmul float %i.z, %.sroa.277.0.copyload
  %i.ail = fadd float %i.aik, %i.aij
  %i.aim = fmul <2 x float> %i.n, %i.aic
  %i.ain = fmul <2 x float> %i.o, %.sroa.076.0.copyload
  %i.aio = fadd <2 x float> %i.aim, %i.ain
  %i.aip = fadd <2 x float> %i.aif, %i.aio
  %i.aiq = fadd <2 x float> %.sroa.0438.0.copyload, %i.aip ; 2 uses
  %i.air = fadd float %.sroa.6441.0.copyload, %i.ail ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %6, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !51
  %i.ais = icmp sgt i32 %i.acr, 0
  br i1 %i.ais, label %.lr.ph834.preheader, label %._crit_edge835

.lr.ph834.preheader:                              ; preds = %b3GetProxySupport.exit668
  %wide.trip.count891 = zext nneg i32 %i.acr to i64
  br label %.lr.ph834

.lr.ph834:                                        ; preds = %.lr.ph834.preheader, %bb.co
  %indvars.iv888 = phi i64 [ 0, %.lr.ph834.preheader ], [ %indvars.iv.next889, %bb.co ] ; 2 uses
  %i.ait = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv888 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 40
  %i.aiv = load i32, ptr %i.aiu, align 8, !tbaa !48
  %i.aiw = icmp eq i32 %i.aiv, %.0.lcssa.i
  br i1 %i.aiw, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph834
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ait, i64 44
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !49
  %i.aiz = icmp eq i32 %i.aiy, %.0.lcssa.i648
  br i1 %i.aiz, label %.thread770, label %bb.co

bb.co:                                            ; preds = %.lr.ph834, %bb.cn
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next889, %wide.trip.count891
  br i1 %exitcond892.not, label %._crit_edge835, label %.lr.ph834, !llvm.loop !41

._crit_edge835:                                   ; preds = %bb.co, %b3GetProxySupport.exit668
  %i.aja = sext i32 %i.acr to i64
  %i.ajb = getelementptr inbounds [48 x i8], ptr %5, i64 %i.aja ; 8 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 40
  store i32 %.0.lcssa.i, ptr %i.ajc, align 8, !tbaa !48
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajb, i64 44
  store i32 %.0.lcssa.i648, ptr %i.ajd, align 4, !tbaa !49
  store <2 x float> %.sroa.094.0.copyload, ptr %i.ajb, align 8, !tbaa !16
  %.sroa.596.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  store float %.sroa.596.0.copyload, ptr %.sroa.596.0..sroa_idx97, align 8, !tbaa !16
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 12
  store <2 x float> %i.aiq, ptr %i.aje, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajb, i64 20
  store float %i.air, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  %i.ajg = fsub <2 x float> %i.aiq, %.sroa.094.0.copyload
  %i.ajh = fsub float %i.air, %.sroa.596.0.copyload
  store <2 x float> %i.ajg, ptr %i.ajf, align 8, !tbaa !16
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajb, i64 32
  store float %i.ajh, ptr %.sroa.459.0..sroa_idx, align 8, !tbaa !16
  %i.aji = add nsw i32 %i.acr, 1                  ; 2 uses
  store i32 %i.aji, ptr %i.ae, align 8, !tbaa !19
  %i.ajj = add nuw nsw i32 %.0469836, 1           ; 2 uses
  %exitcond893.not = icmp eq i32 %i.ajj, 32
  br i1 %exitcond893.not, label %.thread770, label %bb.j, !llvm.loop !42

.thread770.sink.split:                            ; preds = %bb.cc, %bb.j, %bb.o, %b3SolveSimplex2.exit, %b3SolveSimplex4.exit.thread785, %b3SolveSimplex4.exit
  %.4.ph = phi i32 [ %.1840, %b3SolveSimplex4.exit.thread785 ], [ %.1840, %b3SolveSimplex2.exit ], [ %.1840, %b3SolveSimplex4.exit ], [ %.1840, %bb.o ], [ %.1840, %bb.j ], [ %.2, %bb.cc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(196) %5, ptr noundef nonnull align 4 dereferenceable(196) %6, i64 196, i1 false)
  br label %.thread770

.thread770:                                       ; preds = %._crit_edge835, %bb.cn, %.thread770.sink.split
  %.0469827 = phi i32 [ %.0469836, %.thread770.sink.split ], [ %.0469836, %bb.cn ], [ 32, %._crit_edge835 ]
  %.sroa.0295.4 = phi <2 x float> [ %.sroa.0295.0837, %.thread770.sink.split ], [ %i.agi, %bb.cn ], [ %i.agi, %._crit_edge835 ] ; 3 uses
  %.sroa.10.4 = phi float [ %.sroa.10.0838, %.thread770.sink.split ], [ %i.agj, %bb.cn ], [ %i.agj, %._crit_edge835 ] ; 3 uses
  %.4 = phi i32 [ %.4.ph, %.thread770.sink.split ], [ %.2, %bb.cn ], [ %.2, %._crit_edge835 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %9, ptr noundef %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !25
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajk, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !25
  store i32 %.0469827, ptr %i.fk, align 4, !tbaa !54
  store i32 %.4, ptr %i.fl, align 4, !tbaa !55
  %i.ajl = fmul <2 x float> %.sroa.0295.4, %.sroa.0295.4 ; 2 uses
  %shift1197 = shufflevector <2 x float> %i.ajl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1198 = fadd <2 x float> %i.ajl, %shift1197
  %i.ajm = extractelement <2 x float> %foldExtExtBinop1198, i64 0
  %i.ajn = fmul float %.sroa.10.4, %.sroa.10.4
  %i.ajo = fadd float %i.ajn, %i.ajm              ; 2 uses
  %i.ajp = fcmp ogt float %i.ajo, f0x057A0000
  br i1 %i.ajp, label %bb.cp, label %b3Normalize.exit

bb.cp:                                            ; preds = %.thread770
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ajo)
  %i.ajq = fdiv float 1.000000e+00, %sqrt         ; 2 uses
  %i.ajr = insertelement <2 x float> poison, float %i.ajq, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = fmul <2 x float> %.sroa.0295.4, %i.ajs
  %i.aju = fmul float %.sroa.10.4, %i.ajq
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %.thread770, %bb.cp
  %.sroa.018.0.i = phi <2 x float> [ %i.ajt, %bb.cp ], [ zeroinitializer, %.thread770 ] ; 5 uses
  %.sroa.5.0.i = phi float [ %i.aju, %bb.cp ], [ 0.000000e+00, %.thread770 ] ; 5 uses
  %i.ajv = fmul <2 x float> %.sroa.018.0.i, %.sroa.018.0.i ; 2 uses
  %shift1200 = shufflevector <2 x float> %i.ajv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1201 = fadd <2 x float> %i.ajv, %shift1200
  %i.ajw = extractelement <2 x float> %foldExtExtBinop1201, i64 0
  %i.ajx = fmul float %.sroa.5.0.i, %.sroa.5.0.i
  %i.ajy = fadd float %i.ajx, %i.ajw
  %i.ajz = fsub float 1.000000e+00, %i.ajy
  %i.aka = tail call float @llvm.fabs.f32(float %i.ajz)
  %i.akb = fcmp olt float %i.aka, f0x37480000
  br i1 %i.akb, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %b3Normalize.exit
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.akc, i8 0, i64 16, i1 false)
  br label %b3WriteCache.exit

bb.cr:                                            ; preds = %b3Normalize.exit
  %.sroa.038.0.copyload = load <2 x float>, ptr %9, align 8 ; 2 uses
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 8
  %.sroa.036.0.copyload = load <2 x float>, ptr %10, align 8 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 8
  %foldExtExtBinop1203 = fsub <2 x float> %.sroa.036.0.copyload, %.sroa.038.0.copyload ; 2 uses
  %foldExtExtBinop1205 = fsub <2 x float> %.sroa.036.0.copyload, %.sroa.038.0.copyload ; 2 uses
  %i.akd = fsub float %.sroa.237.0.copyload, %.sroa.239.0.copyload ; 2 uses
  %foldExtExtBinop1207 = fmul <2 x float> %foldExtExtBinop1203, %foldExtExtBinop1203
  %foldExtExtBinop1209 = fmul <2 x float> %foldExtExtBinop1205, %foldExtExtBinop1205
  %shift1211 = shufflevector <2 x float> %foldExtExtBinop1209, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1212 = fadd <2 x float> %foldExtExtBinop1207, %shift1211
  %i.ake = extractelement <2 x float> %foldExtExtBinop1212, i64 0
  %i.akf = fmul float %i.akd, %i.akd
  %i.akg = fadd float %i.akf, %i.ake
  %sqrt.i.i695 = tail call float @llvm.sqrt.f32(float %i.akg) ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store float %sqrt.i.i695, ptr %i.akh, align 4, !tbaa !26
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.018.0.i, ptr %i.aki, align 4, !tbaa !16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.5.0.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !16
  %i.akj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.akk = load i8, ptr %i.akj, align 4, !tbaa !57, !range !30, !noundef !31
  %i.akl = trunc nuw i8 %i.akk to i1
  br i1 %i.akl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !58 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !59 ; 3 uses
  %i.akq = fsub float %sqrt.i.i695, %i.akn
  %i.akr = fsub float %i.akq, %i.akp              ; 2 uses
  %i.aks = fcmp olt float %i.akr, 0.000000e+00
  %i.akt = select i1 %i.aks, float 0.000000e+00, float %i.akr
  store float %i.akt, ptr %i.akh, align 4, !tbaa !26
  %i.aku = fmul float %.sroa.5.0.i, %i.akn
  %.sroa.021.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.222.0.copyload = load float, ptr %.sroa.222.0..sroa_idx, align 4
  %i.akv = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.akw = shufflevector <2 x float> %i.akv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akx = fmul <2 x float> %.sroa.018.0.i, %i.akw
  %i.aky = fadd <2 x float> %i.akx, %.sroa.021.0.copyload
  %i.akz = fadd float %i.aku, %.sroa.222.0.copyload
  store <2 x float> %i.aky, ptr %0, align 4, !tbaa !16
  store float %i.akz, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !16
  %i.ala = fmul float %.sroa.5.0.i, %i.akp
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.ajk, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4
  %i.alb = insertelement <2 x float> poison, float %i.akp, i64 0
  %i.alc = shufflevector <2 x float> %i.alb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ald = fmul <2 x float> %.sroa.018.0.i, %i.alc
  %i.ale = fsub <2 x float> %.sroa.04.0.copyload, %i.ald
  %i.alf = fsub float %.sroa.25.0.copyload, %i.ala
  store <2 x float> %i.ale, ptr %i.ajk, align 4, !tbaa !16
  store float %i.alf, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !16
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.alg = load i32, ptr %i.ae, align 8, !tbaa !19 ; 8 uses
  switch i32 %i.alg, label %b3GetMetric.exit.i [
    i32 4, label %bb.cw
    i32 2, label %bb.cu
    i32 3, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  %.sroa.085.0.copyload.i.i = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.486.0.copyload.i.i = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.083.0.copyload.i.i = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.484.0.copyload.i.i = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  %i.alh = fsub float %.sroa.484.0.copyload.i.i, %.sroa.486.0.copyload.i.i ; 2 uses
  %i.ali = fsub <2 x float> %.sroa.083.0.copyload.i.i, %.sroa.085.0.copyload.i.i ; 2 uses
  %i.alj = fmul <2 x float> %i.ali, %i.ali        ; 2 uses
  %shift1214 = shufflevector <2 x float> %i.alj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1215 = fadd <2 x float> %i.alj, %shift1214
  %i.alk = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.all = fmul float %i.alh, %i.alh
  %i.alm = fadd float %i.all, %i.alk
  %sqrt.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.alm)
  br label %b3GetMetric.exit.thread.i

bb.cv:                                            ; preds = %bb.ct
  %.sroa.077.0.copyload.i.i = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.075.0.copyload.i.i = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.476.0.copyload.i.i = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.073.0.copyload.i.i = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.474.0.copyload.i.i = load float, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  %i.aln = fsub <2 x float> %.sroa.075.0.copyload.i.i, %.sroa.077.0.copyload.i.i ; 2 uses
  %i.alo = shufflevector <2 x float> %.sroa.075.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alp = insertelement <2 x float> %i.alo, float %.sroa.476.0.copyload.i.i, i64 1
  %i.alq = shufflevector <2 x float> %.sroa.077.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alr = insertelement <2 x float> %i.alq, float %.sroa.5.0.copyload.i.i, i64 1 ; 2 uses
  %i.als = fsub <2 x float> %i.alp, %i.alr        ; 2 uses
  %i.alt = fsub <2 x float> %.sroa.073.0.copyload.i.i, %.sroa.077.0.copyload.i.i ; 2 uses
  %i.alu = shufflevector <2 x float> %.sroa.073.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alv = insertelement <2 x float> %i.alu, float %.sroa.474.0.copyload.i.i, i64 1
  %i.alw = fsub <2 x float> %i.alv, %i.alr        ; 2 uses
  %shift1217 = shufflevector <2 x float> %i.als, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1218 = fmul <2 x float> %shift1217, %i.alt
  %shift1220 = shufflevector <2 x float> %i.alw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1221 = fmul <2 x float> %i.aln, %shift1220
  %foldExtExtBinop1223 = fsub <2 x float> %foldExtExtBinop1218, %foldExtExtBinop1221 ; 2 uses
  %i.alx = fmul <2 x float> %i.aln, %i.alw
  %i.aly = fmul <2 x float> %i.als, %i.alt
  %i.alz = fsub <2 x float> %i.alx, %i.aly        ; 2 uses
  %foldExtExtBinop1225 = fmul <2 x float> %foldExtExtBinop1223, %foldExtExtBinop1223
  %i.ama = fmul <2 x float> %i.alz, %i.alz        ; 2 uses
  %shift1227 = shufflevector <2 x float> %i.ama, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1228 = fadd <2 x float> %shift1227, %foldExtExtBinop1225
  %foldExtExtBinop1230 = fadd <2 x float> %i.ama, %foldExtExtBinop1228
  %i.amb = extractelement <2 x float> %foldExtExtBinop1230, i64 0
  %sqrt.i.i.i726 = tail call float @llvm.sqrt.f32(float %i.amb)
  %i.amc = fmul float %sqrt.i.i.i726, 5.000000e-01
  br label %b3GetMetric.exit.thread.i

bb.cw:                                            ; preds = %bb.ct
  %.sroa.038.0.copyload.i.i = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 4 uses
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.036.0.copyload.i.i = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.437.0.copyload.i.i = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.034.0.copyload.i.i = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.435.0.copyload.i.i = load float, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.033.0.copyload.i.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !16
  %foldExtExtBinop1232 = fsub <2 x float> %.sroa.036.0.copyload.i.i, %.sroa.038.0.copyload.i.i
  %i.amd = extractelement <2 x float> %foldExtExtBinop1232, i64 1
  %foldExtExtBinop1234 = fsub <2 x float> %.sroa.036.0.copyload.i.i, %.sroa.038.0.copyload.i.i
  %i.ame = fsub float %.sroa.437.0.copyload.i.i, %.sroa.6.0.copyload.i.i
  %i.amf = fsub <2 x float> %.sroa.034.0.copyload.i.i, %.sroa.038.0.copyload.i.i ; 3 uses
  %i.amg = fsub float %.sroa.435.0.copyload.i.i, %.sroa.6.0.copyload.i.i ; 2 uses
  %i.amh = fsub <2 x float> %.sroa.033.0.copyload.i.i, %.sroa.038.0.copyload.i.i ; 3 uses
  %i.ami = fsub float %.sroa.4.0.copyload.i.i, %.sroa.6.0.copyload.i.i ; 2 uses
  %i.amj = extractelement <2 x float> %i.amh, i64 0
  %i.amk = fmul float %i.amg, %i.amj
  %i.aml = extractelement <2 x float> %i.amf, i64 0
  %i.amm = fmul float %i.aml, %i.ami
  %i.amn = fsub float %i.amk, %i.amm
  %i.amo = shufflevector <2 x float> %i.amh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amp = insertelement <2 x float> %i.amo, float %i.ami, i64 1
  %i.amq = fmul <2 x float> %i.amf, %i.amp
  %i.amr = shufflevector <2 x float> %i.amf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ams = insertelement <2 x float> %i.amr, float %i.amg, i64 1
  %i.amt = fmul <2 x float> %i.ams, %i.amh
  %i.amu = fsub <2 x float> %i.amq, %i.amt
  %i.amv = fmul float %i.amd, %i.amn
  %i.amw = insertelement <2 x float> poison, float %i.ame, i64 0
  %i.amx = shufflevector <2 x float> %i.amw, <2 x float> %foldExtExtBinop1234, <2 x i32> <i32 0, i32 2>
  %i.amy = fmul <2 x float> %i.amx, %i.amu        ; 2 uses
  %i.amz = extractelement <2 x float> %i.amy, i64 1
  %i.ana = fadd float %i.amz, %i.amv
  %i.anb = extractelement <2 x float> %i.amy, i64 0
  %i.anc = fadd float %i.anb, %i.ana
  %i.and = fdiv float %i.anc, 6.000000e+00
  br label %b3GetMetric.exit.thread.i

b3GetMetric.exit.thread.i:                        ; preds = %bb.cw, %bb.cv, %bb.cu
  %.0.i.ph.i = phi float [ %sqrt.i.i.i.i, %bb.cu ], [ %i.and, %bb.cw ], [ %i.amc, %bb.cv ]
  store float %.0.i.ph.i, ptr %2, align 4, !tbaa !50
  %i.ane = trunc nuw nsw i32 %i.alg to i16
  store i16 %i.ane, ptr %i.ab, align 4, !tbaa !46
  br label %.lr.ph.i727

b3GetMetric.exit.i:                               ; preds = %bb.ct
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  %i.anf = trunc i32 %i.alg to i16
  store i16 %i.anf, ptr %i.ab, align 4, !tbaa !46
  %i.ang = icmp sgt i32 %i.alg, 0
  br i1 %i.ang, label %.lr.ph.i727, label %b3WriteCache.exit

.lr.ph.i727:                                      ; preds = %b3GetMetric.exit.i, %b3GetMetric.exit.thread.i
  %i.anh = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 3 uses
  %i.anj = icmp eq i32 %i.alg, 1
  br i1 %i.anj, label %.epil.preheader, label %.lr.ph.i727.new

.lr.ph.i727.new:                                  ; preds = %.lr.ph.i727
  %11 = and i32 %i.alg, 2147483646
  %unroll_iter = zext nneg i32 %11 to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i727.new
  %indvars.iv.i729 = phi i64 [ 0, %.lr.ph.i727.new ], [ %indvars.iv.next.i730.1, %bb.cx ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i727.new ], [ %niter.next.1, %bb.cx ]
  %i.ank = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv.i729 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 40
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !48
  %i.ann = trunc i32 %i.anm to i8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 %indvars.iv.i729
  store i8 %i.ann, ptr %i.ano, align 1, !tbaa !47
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !49
  %i.anr = trunc i32 %i.anq to i8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ani, i64 %indvars.iv.i729
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !47
  %indvars.iv.next.i730 = or disjoint i64 %indvars.iv.i729, 1 ; 3 uses
  %i.ant = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv.next.i730 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 40
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !48
  %i.anw = trunc i32 %i.anv to i8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anh, i64 %indvars.iv.next.i730
  store i8 %i.anw, ptr %i.anx, align 1, !tbaa !47
  %i.any = getelementptr inbounds nuw i8, ptr %i.ant, i64 44
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !49
  %i.aoa = trunc i32 %i.anz to i8
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ani, i64 %indvars.iv.next.i730
  store i8 %i.aoa, ptr %i.aob, align 1, !tbaa !47
  %indvars.iv.next.i730.1 = add nuw nsw i64 %indvars.iv.i729, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %b3WriteCache.exit.loopexit.unr-lcssa, label %bb.cx, !llvm.loop !43

b3WriteCache.exit.loopexit.unr-lcssa:             ; preds = %bb.cx
  %lcmp.mod.not = trunc i32 %i.alg to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %b3WriteCache.exit

.epil.preheader:                                  ; preds = %b3WriteCache.exit.loopexit.unr-lcssa, %.lr.ph.i727
  %indvars.iv.i729.epil.init = phi i64 [ 0, %.lr.ph.i727 ], [ %indvars.iv.next.i730.1, %b3WriteCache.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1274 = trunc i32 %i.alg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1274)
  %i.aoc = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv.i729.epil.init ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 40
  %i.aoe = load i32, ptr %i.aod, align 8, !tbaa !48
  %i.aof = trunc i32 %i.aoe to i8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anh, i64 %indvars.iv.i729.epil.init
  store i8 %i.aof, ptr %i.aog, align 1, !tbaa !47
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoc, i64 44
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !49
  %i.aoj = trunc i32 %i.aoi to i8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ani, i64 %indvars.iv.i729.epil.init
  store i8 %i.aoj, ptr %i.aok, align 1, !tbaa !47
  br label %b3WriteCache.exit

b3WriteCache.exit:                                ; preds = %.epil.preheader, %b3WriteCache.exit.loopexit.unr-lcssa, %b3GetMetric.exit.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %.thread777

.thread777:                                       ; preds = %bb.by, %bb.cj, %b3WriteCache.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @b3ComputeWitnessPoints(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  switch i32 %i.b, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !25
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !22 ; 2 uses
  %.sroa.064.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.265.0.copyload = load float, ptr %.sroa.265.0..sroa_idx, align 4
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 4
  %i.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %.sroa.064.0.copyload
  %i.l = insertelement <2 x float> poison, float %i.h, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %.sroa.062.0.copyload
  %i.o = fadd <2 x float> %i.k, %i.n
  %i.p = fmul float %i.e, %.sroa.265.0.copyload
  %i.q = fmul float %i.h, %.sroa.263.0.copyload
  %i.r = fadd float %i.p, %i.q
  store <2 x float> %i.o, ptr %1, align 4, !tbaa !16
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.r, ptr %.sroa.467.0..sroa_idx, align 4, !tbaa !16
  %i.s = load float, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.g, align 4, !tbaa !22 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.054.0.copyload = load <2 x float>, ptr %i.t, align 4
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.255.0.copyload = load float, ptr %.sroa.255.0..sroa_idx, align 4
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.v, align 4
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4
  %i.w = insertelement <2 x float> poison, float %i.s, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.x, %.sroa.054.0.copyload
  %i.z = insertelement <2 x float> poison, float %i.u, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %.sroa.052.0.copyload
  %i.ac = fadd <2 x float> %i.y, %i.ab
  %i.ad = fmul float %i.s, %.sroa.255.0.copyload
  %i.ae = fmul float %i.u, %.sroa.253.0.copyload
  %i.af = fadd float %i.ad, %i.ae
  store <2 x float> %i.ac, ptr %2, align 4, !tbaa !16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.af, ptr %.sroa.457.0..sroa_idx, align 4, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !22 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !22 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %.sroa.044.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.245.0.copyload = load float, ptr %.sroa.245.0..sroa_idx, align 4
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.ai, align 4
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.243.0.copyload = load float, ptr %.sroa.243.0..sroa_idx, align 4
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.5149.0.copyload = load float, ptr %.sroa.5149.0..sroa_idx, align 4, !tbaa !16
  %i.ao = load <2 x float>, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %.sroa.044.0.copyload
  %i.as = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %.sroa.042.0.copyload
  %i.av = fadd <2 x float> %i.ar, %i.au
  %i.aw = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.ax = insertelement <2 x float> %i.ao, float %i.an, i64 0
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = fadd <2 x float> %i.av, %i.ay
  %i.ba = fmul float %i.ah, %.sroa.245.0.copyload
  %i.bb = fmul float %i.ak, %.sroa.243.0.copyload
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fmul float %i.an, %.sroa.5149.0.copyload
  %i.be = fadd float %i.bc, %i.bd
  store <2 x float> %i.az, ptr %1, align 4, !tbaa !16
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.be, ptr %.sroa.447.0..sroa_idx, align 4, !tbaa !16
  %i.bf = load float, ptr %i.ag, align 4, !tbaa !22 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bh = load float, ptr %i.aj, align 4, !tbaa !22 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bj = load float, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.bg, align 4
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.bi, align 4
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.234.0.copyload = load float, ptr %.sroa.234.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx146, align 4, !tbaa !16
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !16 ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %.sroa.035.0.copyload
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %.sroa.033.0.copyload
  %i.bs = fadd <2 x float> %i.bo, %i.br
  %i.bt = insertelement <2 x float> %i.bl, float %i.bj, i64 1
  %i.bu = insertelement <2 x float> %i.bl, float %i.bj, i64 0
  %i.bv = fmul <2 x float> %i.bt, %i.bu
  %i.bw = fadd <2 x float> %i.bs, %i.bv
  %i.bx = fmul float %i.bf, %.sroa.236.0.copyload
  %i.by = fmul float %i.bh, %.sroa.234.0.copyload
  %i.bz = fadd float %i.bx, %i.by
  %i.ca = fmul float %i.bj, %.sroa.5.0.copyload
  %i.cb = fadd float %i.bz, %i.ca
  store <2 x float> %i.bw, ptr %2, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cb, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !22 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !22 ; 2 uses
  %.sroa.021.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.222.0.copyload = load float, ptr %.sroa.222.0..sroa_idx, align 4
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ce, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %i.ch = fmul float %i.cd, %.sroa.222.0.copyload
  %i.ci = fmul float %i.cg, %.sroa.220.0.copyload
  %i.cj = fadd float %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !22 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cp = load float, ptr %i.co, align 4, !tbaa !22 ; 2 uses
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.ck, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.cn, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
  %i.cag = shufflevector <2 x float> %i.bza, <2 x float> %i.bzw, <2 x i32> <i32 1, i32 3>
  %i.cah = fmul <2 x float> %i.caf, %i.cag
  %i.cai = fsub <2 x float> %i.cae, %i.cah
  %i.caj = fmul <2 x float> %i.cai, splat (float 2.000000e+00)
  %i.cak = shufflevector <2 x float> %.sroa.022.0.copyload.i, <2 x float> %.sroa.015.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.cal = fadd <2 x float> %i.cak, %i.caj
  %i.cam = insertelement <2 x float> poison, float %i.bbk, i64 0
  %i.can = insertelement <2 x float> %i.cam, float %i.bdi, i64 1
  %i.cao = fadd <2 x float> %i.can, %i.cal        ; 2 uses
  %i.cap = fadd <2 x float> %i.bdj, %i.cab
  %shift2860 = shufflevector <2 x float> %i.cao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2861 = fsub <2 x float> %i.cao, %shift2860
  %i.caq = extractelement <2 x float> %foldExtExtBinop2861, i64 0
  %i.car = fsub <2 x float> %i.bzg, %i.cap
  %i.cas = fmul float %i.bwv, %i.caq
  %i.cat = fmul <2 x float> %i.bwx, %i.car        ; 2 uses
  %i.cau = extractelement <2 x float> %i.cat, i64 1
  %i.cav = fadd float %i.cau, %i.cas
  %i.caw = extractelement <2 x float> %i.cat, i64 0
  %i.cax = fadd float %i.caw, %i.cav
  br label %b3FindMinSeparation.exit

b3FindMinSeparation.exit:                         ; preds = %b3GetSweepTransform.exit774, %b3GetPointSupport.exit407.i, %b3GetPointSupport.exit545.i, %b3GetPointSupport.exit660.i, %b3GetPointSupport.exit739.i
  %.sroa.297.0.copyload.i2145 = phi float [ %.sroa.297.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.218.0.copyload.i607, %b3GetPointSupport.exit545.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.096.0.copyload.i2142 = phi <2 x float> [ %.sroa.096.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.017.0.copyload.i605, %b3GetPointSupport.exit545.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.216.0.copyload.i2138 = phi float [ %.sroa.216.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.216.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.218.0.copyload.i607, %b3GetPointSupport.exit545.i ], [ %.sroa.297.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.216.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.sroa.015.0.copyload.i2134 = phi <2 x float> [ %.sroa.015.0.copyload.i, %b3GetSweepTransform.exit774 ], [ %.sroa.015.0.copyload.i, %b3GetPointSupport.exit407.i ], [ %.sroa.017.0.copyload.i605, %b3GetPointSupport.exit545.i ], [ %.sroa.096.0.copyload.i, %b3GetPointSupport.exit660.i ], [ %.sroa.015.0.copyload.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.01059 = phi i32 [ undef, %b3GetSweepTransform.exit774 ], [ %.0.lcssa.i.i, %b3GetPointSupport.exit407.i ], [ %.0.lcssa.i486.i, %b3GetPointSupport.exit545.i ], [ -1, %b3GetPointSupport.exit660.i ], [ %.0.lcssa.i719.i, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.01058 = phi i32 [ undef, %b3GetSweepTransform.exit774 ], [ %.0.lcssa.i387.i, %b3GetPointSupport.exit407.i ], [ %.0.lcssa.i525.i, %b3GetPointSupport.exit545.i ], [ %.0.lcssa.i640.i, %b3GetPointSupport.exit660.i ], [ -1, %b3GetPointSupport.exit739.i ] ; 2 uses
  %.0.i = phi float [ 0.000000e+00, %b3GetSweepTransform.exit774 ], [ %i.biu, %b3GetPointSupport.exit407.i ], [ %i.brc, %b3GetPointSupport.exit545.i ], [ %i.bvy, %b3GetPointSupport.exit660.i ], [ %i.cax, %b3GetPointSupport.exit739.i ] ; 3 uses
  %i.cay = fsub float %.0.i, %i.ag
  %i.caz = fcmp ogt float %i.cay, %i.ah
  br i1 %i.caz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %b3FindMinSeparation.exit
  %i.cba = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store float %i.it, ptr %i.bf, align 4
  store i32 %i.jv, ptr %i.bi, align 4
  %i.cbb = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbc = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.cbd = insertelement <2 x float> %i.cbc, float %.sroa.2198.0.copyload, i64 1
  %i.cbe = fmul <2 x float> %i.cbb, %i.cbd
  %i.cbf = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbg = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cbh = fmul <2 x float> %i.cbf, %i.cbg
  %i.cbi = fsub <2 x float> %i.cbh, %i.cbe
  %i.cbj = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cbk = insertelement <4 x float> %i.cbj, float %.sroa.2208.0.copyload, i64 0
  %i.cbl = insertelement <4 x float> %i.cbk, float %.sroa.2198.0.copyload, i64 2 ; 3 uses
  %i.cbm = fmul <4 x float> %i.cba, %i.cbl
  %i.cbn = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cbo = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cbp = fmul <4 x float> %i.cbn, %i.cbo
  %i.cbq = fsub <4 x float> %i.cbm, %i.cbp        ; 2 uses
  %i.cbr = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cbs = shufflevector <4 x float> %i.cbj, <4 x float> %i.cbl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cbt = fmul <4 x float> %i.cbr, %i.cbs
  %i.cbu = fmul <4 x float> %i.cbr, %i.cbl
  %i.cbv = shufflevector <4 x float> %i.cbq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cbw = shufflevector <2 x float> %i.cbi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cbx = shufflevector <4 x float> %i.cbv, <4 x float> %i.cbw, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cby = fadd <4 x float> %i.cbu, %i.cbx        ; 3 uses
  %i.cbz = fadd <4 x float> %i.cbt, %i.cbq        ; 3 uses
  %i.cca = shufflevector <4 x float> %i.cby, <4 x float> %i.cbz, <2 x i32> <i32 1, i32 4>
  %i.ccb = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cca ; 2 uses
  %i.ccc = fmul <4 x float> %i.cbn, %i.cbz
  %i.ccd = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cce = fmul <4 x float> %i.ccd, %i.cby
  %i.ccf = fsub <4 x float> %i.ccc, %i.cce
  %i.ccg = fmul <4 x float> %i.ccf, splat (float 2.000000e+00)
  %i.cch = shufflevector <4 x float> %i.cby, <4 x float> %i.cbz, <2 x i32> <i32 3, i32 6>
  %i.cci = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cch ; 2 uses
  %i.ccj = shufflevector <2 x float> %i.ccb, <2 x float> %i.cci, <2 x i32> <i32 0, i32 2>
  %i.cck = shufflevector <2 x float> %i.ccb, <2 x float> %i.cci, <2 x i32> <i32 1, i32 3>
  %i.ccl = fsub <2 x float> %i.ccj, %i.cck
  %i.ccm = fadd <4 x float> %i.cbo, %i.ccg
  store i32 %.lcssa11611169, ptr %i.bs, align 4
  store i32 %i.azg, ptr %i.bt, align 4
  store i32 4, ptr %0, align 4, !tbaa !86
  %i.ccn = load float, ptr %i.v, align 8, !tbaa !84
  br label %.thread1090

bb.bl:                                            ; preds = %b3FindMinSeparation.exit
  %i.cco = fcmp ult float %.0.i, %i.br
  br i1 %i.cco, label %bb.bm, label %select.unfold1070

bb.bm:                                            ; preds = %bb.bl
  %i.ccp = call fastcc float @b3EvaluateSeparation(ptr noundef %7, i32 noundef %.01059, i32 noundef %.01058, float noundef %.0) ; 3 uses
  %i.ccq = fcmp olt float %i.ccp, %i.br
  br i1 %i.ccq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ccr = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store float %i.it, ptr %i.bf, align 4
  store i32 %i.jv, ptr %i.bi, align 4
  %i.ccs = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cct = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.ccu = insertelement <2 x float> %i.cct, float %.sroa.2198.0.copyload, i64 1
  %i.ccv = fmul <2 x float> %i.ccs, %i.ccu
  %i.ccw = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ccx = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ccy = fmul <2 x float> %i.ccw, %i.ccx
  %i.ccz = fsub <2 x float> %i.ccy, %i.ccv
  %i.cda = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cdb = insertelement <4 x float> %i.cda, float %.sroa.2208.0.copyload, i64 0
  %i.cdc = insertelement <4 x float> %i.cdb, float %.sroa.2198.0.copyload, i64 2 ; 3 uses
  %i.cdd = fmul <4 x float> %i.ccr, %i.cdc
  %i.cde = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cdf = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cdg = fmul <4 x float> %i.cde, %i.cdf
  %i.cdh = fsub <4 x float> %i.cdd, %i.cdg        ; 2 uses
  %i.cdi = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cdj = shufflevector <4 x float> %i.cda, <4 x float> %i.cdc, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cdk = fmul <4 x float> %i.cdi, %i.cdj
  %i.cdl = fmul <4 x float> %i.cdi, %i.cdc
  %i.cdm = shufflevector <4 x float> %i.cdh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cdn = shufflevector <2 x float> %i.ccz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cdo = shufflevector <4 x float> %i.cdm, <4 x float> %i.cdn, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cdp = fadd <4 x float> %i.cdl, %i.cdo        ; 3 uses
  %i.cdq = fadd <4 x float> %i.cdk, %i.cdh        ; 3 uses
  %i.cdr = shufflevector <4 x float> %i.cdp, <4 x float> %i.cdq, <2 x i32> <i32 1, i32 4>
  %i.cds = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cdr ; 2 uses
  %i.cdt = fmul <4 x float> %i.cde, %i.cdq
  %i.cdu = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cdv = fmul <4 x float> %i.cdu, %i.cdp
  %i.cdw = fsub <4 x float> %i.cdt, %i.cdv
  %i.cdx = fmul <4 x float> %i.cdw, splat (float 2.000000e+00)
  %i.cdy = shufflevector <4 x float> %i.cdp, <4 x float> %i.cdq, <2 x i32> <i32 3, i32 6>
  %i.cdz = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cdy ; 2 uses
  %i.cea = shufflevector <2 x float> %i.cds, <2 x float> %i.cdz, <2 x i32> <i32 0, i32 2>
  %i.ceb = shufflevector <2 x float> %i.cds, <2 x float> %i.cdz, <2 x i32> <i32 1, i32 3>
  %i.cec = fsub <2 x float> %i.cea, %i.ceb
  %i.ced = fadd <4 x float> %i.cdf, %i.cdx
  store i32 %.lcssa11611169, ptr %i.bs, align 4
  store i32 %i.azg, ptr %i.bt, align 4
  store i32 1, ptr %0, align 4, !tbaa !86
  br label %.thread1090

bb.bo:                                            ; preds = %bb.bm
  %i.cee = fcmp ugt float %i.ccp, %i.bj
  br i1 %i.cee, label %.preheader.preheader, label %bb.bp

.preheader.preheader:                             ; preds = %bb.bo
  %i.cef = add i32 %.lcssa11611169, 50
  br label %.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.ceg = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  store float %i.it, ptr %i.bf, align 4
  store i32 %i.jv, ptr %i.bi, align 4
  %i.ceh = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cei = insertelement <2 x float> poison, float %.sroa.2208.0.copyload, i64 0
  %i.cej = insertelement <2 x float> %i.cei, float %.sroa.2198.0.copyload, i64 1
  %i.cek = fmul <2 x float> %i.ceh, %i.cej
  %i.cel = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cem = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cen = fmul <2 x float> %i.cel, %i.cem
  %i.ceo = fsub <2 x float> %i.cen, %i.cek
  %i.cep = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ceq = insertelement <4 x float> %i.cep, float %.sroa.2208.0.copyload, i64 0
  %i.cer = insertelement <4 x float> %i.ceq, float %.sroa.2198.0.copyload, i64 2 ; 3 uses
  %i.ces = fmul <4 x float> %i.ceg, %i.cer
  %i.cet = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ceu = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> %.sroa.0197.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cev = fmul <4 x float> %i.cet, %i.ceu
  %i.cew = fsub <4 x float> %i.ces, %i.cev        ; 2 uses
  %i.cex = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cey = shufflevector <4 x float> %i.cep, <4 x float> %i.cer, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cez = fmul <4 x float> %i.cex, %i.cey
  %i.cfa = fmul <4 x float> %i.cex, %i.cer
  %i.cfb = shufflevector <4 x float> %i.cew, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.cfc = shufflevector <2 x float> %i.ceo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cfd = shufflevector <4 x float> %i.cfb, <4 x float> %i.cfc, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.cfe = fadd <4 x float> %i.cfa, %i.cfd        ; 3 uses
  %i.cff = fadd <4 x float> %i.cez, %i.cew        ; 3 uses
  %i.cfg = shufflevector <4 x float> %i.cfe, <4 x float> %i.cff, <2 x i32> <i32 1, i32 4>
  %i.cfh = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cfg ; 2 uses
  %i.cfi = fmul <4 x float> %i.cet, %i.cff
  %i.cfj = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cfk = fmul <4 x float> %i.cfj, %i.cfe
  %i.cfl = fsub <4 x float> %i.cfi, %i.cfk
  %i.cfm = fmul <4 x float> %i.cfl, splat (float 2.000000e+00)
  %i.cfn = shufflevector <4 x float> %i.cfe, <4 x float> %i.cff, <2 x i32> <i32 3, i32 6>
  %i.cfo = fmul <2 x float> %.sroa.010.0.i.i.i, %i.cfn ; 2 uses
  %i.cfp = shufflevector <2 x float> %i.cfh, <2 x float> %i.cfo, <2 x i32> <i32 0, i32 2>
  %i.cfq = shufflevector <2 x float> %i.cfh, <2 x float> %i.cfo, <2 x i32> <i32 1, i32 3>
  %i.cfr = fsub <2 x float> %i.cfp, %i.cfq
  %i.cfs = fadd <4 x float> %i.ceu, %i.cfm
  store i32 %.lcssa11611169, ptr %i.bs, align 4
  store i32 %i.azg, ptr %i.bt, align 4
  store i32 3, ptr %0, align 4, !tbaa !86
  br label %.thread1090

.preheader:                                       ; preds = %.preheader.preheader, %bb.bt
  %i.cft = phi i32 [ %i.cgc, %bb.bt ], [ %.lcssa11611169, %.preheader.preheader ]
  %.0345 = phi float [ %.0345..0348, %bb.bt ], [ %.0326, %.preheader.preheader ] ; 3 uses
  %.0342 = phi float [ %.0348..0342, %bb.bt ], [ %.0, %.preheader.preheader ] ; 4 uses
  %.0341 = phi i32 [ %i.cgd, %bb.bt ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0338 = phi float [ %..0338, %bb.bt ], [ %i.ccp, %.preheader.preheader ] ; 3 uses
  %.0335 = phi float [ %.0335., %bb.bt ], [ %.0.i, %.preheader.preheader ] ; 2 uses
  %.not = trunc i32 %.0341 to i1
  br i1 %.not, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.preheader
  %i.cfu = fsub float %i.ag, %.0338
  %i.cfv = fsub float %.0345, %.0342
  %i.cfw = fmul float %i.cfv, %i.cfu
  %i.cfx = fsub float %.0335, %.0338
  %i.cfy = fdiv float %i.cfw, %i.cfx
  %i.cfz = fadd float %.0342, %i.cfy
  br label %bb.bs

bb.br:                                            ; preds = %.preheader
  %i.cga = fadd float %.0345, %.0342
  %i.cgb = fmul float %i.cga, 5.000000e-01
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0348 = phi float [ %i.cfz, %bb.bq ], [ %i.cgb, %bb.br ] ; 4 uses
  %i.cgc = add nsw i32 %i.cft, 1                  ; 3 uses
  %i.cgd = add nuw nsw i32 %.0341, 1              ; 3 uses
  %i.cge = call fastcc float @b3EvaluateSeparation(ptr noundef %7, i32 noundef %.01059, i32 noundef %.01058, float noundef %.0348) ; 4 uses
  %i.cgf = fsub float %i.cge, %i.ag
  %i.cgg = call float @llvm.fabs.f32(float %i.cgf)
  %i.cgh = fcmp ugt float %i.cgg, %i.ah
  br i1 %i.cgh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.cgi = fcmp ogt float %i.cge, %i.ag           ; 4 uses
  %.0345..0348 = select i1 %i.cgi, float %.0345, float %.0348
  %.0348..0342 = select i1 %i.cgi, float %.0348, float %.0342
  %..0338 = select i1 %i.cgi, float %i.cge, float %.0338
  %.0335. = select i1 %i.cgi, float %.0335, float %i.cge
  %i.cgj = icmp eq i32 %i.cgd, 50
  br i1 %i.cgj, label %.thread1067, label %.preheader

bb.bu:                                            ; preds = %bb.bs
  %i.cgk = icmp eq i32 %i.cgd, 49
  %i.cgl = icmp eq i32 %i.azh, 2
  %or.cond = and i1 %i.cgl, %i.cgk
  br i1 %or.cond, label %bb.bv, label %.thread1067

bb.bv:                                            ; preds = %bb.bu
  %i.cgm = load float, ptr %i.v, align 8, !tbaa !84
  %i.cgn = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.cgo = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.cgp = fmul <2 x float> %i.dd, %i.cgo
  %i.cgq = fadd <2 x float> %i.db, %i.cgp         ; 2 uses
  %i.cgr = fmul <2 x float> %i.dd, %i.cgn
  %i.cgs = fadd <2 x float> %i.dg, %i.cgr         ; 2 uses
  %i.cgt = shufflevector <2 x float> %i.cgq, <2 x float> %i.cgs, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.cgu = fmul <4 x float> %i.cgt, %i.cgt        ; 4 uses
  %shift2863 = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2864 = fadd <4 x float> %i.cgu, %shift2863
  %shift2866 = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2867 = fadd <4 x float> %foldExtExtBinop2864, %shift2866
  %shift2869 = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2870 = fadd <4 x float> %shift2869, %foldExtExtBinop2867
  %i.cgv = extractelement <4 x float> %foldExtExtBinop2870, i64 0 ; 2 uses
  %i.cgw = fcmp ogt float %i.cgv, f0x057A0000
  br i1 %i.cgw, label %bb.bw, label %b3GetSweepTransform.exit903

bb.bw:                                            ; preds = %bb.bv
  %sqrt.i.i.i898 = call float @llvm.sqrt.f32(float %i.cgv)
  %i.cgx = fdiv float 1.000000e+00, %sqrt.i.i.i898
  %i.cgy = insertelement <2 x float> poison, float %i.cgx, i64 0
  %i.cgz = shufflevector <2 x float> %i.cgy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cha = fmul <2 x float> %i.cgq, %i.cgz
  %i.chb = fmul <2 x float> %i.cgs, %i.cgz
  br label %b3GetSweepTransform.exit903

b3GetSweepTransform.exit903:                      ; preds = %bb.bv, %bb.bw
  %.sroa.010.0.i.i.i873 = phi <2 x float> [ %i.cha, %bb.bw ], [ zeroinitializer, %bb.bv ] ; 5 uses
  %.sroa.4.0.i.i.i874 = phi <2 x float> [ %i.chb, %bb.bw ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bv ] ; 4 uses
  %.sroa.3.8.vec.extract.i.i889 = extractelement <2 x float> %.sroa.4.0.i.i.i874, i64 0
  %.sroa.011.0.vec.extract.i.i.i893 = extractelement <2 x float> %.sroa.010.0.i.i.i873, i64 0
  %i.chc = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.chd = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.che = fmul <2 x float> %i.dd, %i.chd
  %i.chf = fadd <2 x float> %i.fg, %i.che         ; 2 uses
  %i.chg = fmul <2 x float> %i.dd, %i.chc
  %i.chh = fadd <2 x float> %i.fj, %i.chg         ; 2 uses
  %i.chi = shufflevector <2 x float> %i.chf, <2 x float> %i.chh, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.chj = fmul <4 x float> %i.chi, %i.chi        ; 4 uses
  %shift2872 = shufflevector <4 x float> %i.chj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2873 = fadd <4 x float> %i.chj, %shift2872
  %shift2875 = shufflevector <4 x float> %i.chj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2876 = fadd <4 x float> %foldExtExtBinop2873, %shift2875
  %shift2878 = shufflevector <4 x float> %i.chj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2879 = fadd <4 x float> %shift2878, %foldExtExtBinop2876
  %i.chk = extractelement <4 x float> %foldExtExtBinop2879, i64 0 ; 2 uses
  %i.chl = fcmp ogt float %i.chk, f0x057A0000
  br i1 %i.chl, label %bb.bx, label %b3GetSweepTransform.exit860

bb.bx:                                            ; preds = %b3GetSweepTransform.exit903
  %sqrt.i.i.i855 = call float @llvm.sqrt.f32(float %i.chk)
  %i.chm = fdiv float 1.000000e+00, %sqrt.i.i.i855
  %i.chn = insertelement <2 x float> poison, float %i.chm, i64 0
  %i.cho = shufflevector <2 x float> %i.chn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chp = fmul <2 x float> %i.chf, %i.cho
  %i.chq = fmul <2 x float> %i.chh, %i.cho
  br label %b3GetSweepTransform.exit860

b3GetSweepTransform.exit860:                      ; preds = %b3GetSweepTransform.exit903, %bb.bx
  %.sroa.010.0.i.i.i830 = phi <2 x float> [ %i.chp, %bb.bx ], [ zeroinitializer, %b3GetSweepTransform.exit903 ] ; 5 uses
  %.sroa.4.0.i.i.i831 = phi <2 x float> [ %i.chq, %bb.bx ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit903 ] ; 5 uses
  %.sroa.011.4.vec.extract.i.i.i847 = extractelement <2 x float> %.sroa.010.0.i.i.i830, i64 1
  %i.chr = shufflevector <2 x float> %.sroa.017.0.copyload.i605, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.chs = fmul float %.sroa.011.0.vec.extract.i.i.i893, %.sroa.249.0.copyload.i1167
  %i.cht = shufflevector <2 x float> %.sroa.048.0.copyload.i1165, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.chu = insertelement <2 x float> %i.cht, float %.sroa.249.0.copyload.i1167, i64 1
  %i.chv = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.chu
  %i.chw = shufflevector <2 x float> %.sroa.010.0.i.i.i873, <2 x float> %.sroa.4.0.i.i.i874, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.chx = fmul <2 x float> %i.chw, %.sroa.048.0.copyload.i1165
  %i.chy = fsub <2 x float> %i.chv, %i.chx
  %i.chz = fmul <2 x float> %.sroa.4.0.i.i.i874, %.sroa.048.0.copyload.i1165 ; 2 uses
  %i.cia = extractelement <2 x float> %i.chz, i64 0
  %i.cib = fsub float %i.cia, %i.chs
  %i.cic = extractelement <2 x float> %i.chz, i64 1
  %i.cid = fadd float %i.cic, %i.cib              ; 2 uses
  %i.cie = shufflevector <2 x float> %.sroa.4.0.i.i.i874, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cif = insertelement <2 x float> %i.cht, float %.sroa.249.0.copyload.i1167, i64 0
  %i.cig = fmul <2 x float> %i.cie, %i.cif
  %i.cih = fadd <2 x float> %i.cig, %i.chy        ; 3 uses
  %i.cii = fmul float %.sroa.3.8.vec.extract.i.i889, %i.cid
  %i.cij = fmul <2 x float> %i.chw, %i.cih
  %foldExtExtBinop2881 = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.cih
  %i.cik = insertelement <2 x float> poison, float %i.cii, i64 0
  %i.cil = shufflevector <2 x float> %i.cik, <2 x float> %foldExtExtBinop2881, <2 x i32> <i32 0, i32 2>
  %i.cim = fsub <2 x float> %i.cij, %i.cil
  %i.cin = insertelement <2 x float> %i.cih, float %i.cid, i64 0
  %i.cio = fmul <2 x float> %.sroa.010.0.i.i.i873, %i.cin ; 2 uses
  %shift2883 = shufflevector <2 x float> %i.cio, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2884 = fsub <2 x float> %i.cio, %shift2883
  %i.cip = extractelement <2 x float> %foldExtExtBinop2884, i64 0
  %i.ciq = fmul <2 x float> %i.cim, splat (float 2.000000e+00)
  %i.cir = fadd <2 x float> %.sroa.048.0.copyload.i1165, %i.ciq ; 3 uses
  %i.cis = fmul float %i.cip, 2.000000e+00
  %i.cit = fadd float %.sroa.249.0.copyload.i1167, %i.cis ; 2 uses
  %i.ciu = fmul float %.sroa.011.4.vec.extract.i.i.i847, %.sroa.218.0.copyload.i607
  %foldExtExtBinop2886 = fmul <2 x float> %.sroa.4.0.i.i.i831, %.sroa.017.0.copyload.i605
  %i.civ = shufflevector <2 x float> %.sroa.4.0.i.i.i831, <2 x float> %.sroa.010.0.i.i.i830, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ciw = insertelement <2 x float> %i.chr, float %.sroa.218.0.copyload.i607, i64 1 ; 2 uses
  %i.cix = fmul <2 x float> %i.civ, %i.ciw
  %i.ciy = insertelement <2 x float> poison, float %i.ciu, i64 0
  %i.ciz = shufflevector <2 x float> %i.ciy, <2 x float> %foldExtExtBinop2886, <2 x i32> <i32 0, i32 2>
  %i.cja = fsub <2 x float> %i.ciz, %i.cix        ; 2 uses
  %i.cjb = fmul <2 x float> %.sroa.010.0.i.i.i830, %i.chr ; 2 uses
  %shift2888 = shufflevector <2 x float> %i.cjb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2889 = fsub <2 x float> %i.cjb, %shift2888
  %i.cjc = shufflevector <2 x float> %.sroa.4.0.i.i.i831, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cjd = fmul <2 x float> %i.cjc, %.sroa.017.0.copyload.i605
  %i.cje = insertelement <2 x float> %i.chr, float %.sroa.218.0.copyload.i607, i64 0
  %i.cjf = fmul <2 x float> %i.cjc, %i.cje
  %i.cjg = fadd <2 x float> %i.cjd, %i.cja        ; 2 uses
  %i.cjh = shufflevector <2 x float> %i.cja, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cji = shufflevector <2 x float> %foldExtExtBinop2889, <2 x float> %i.cjh, <2 x i32> <i32 0, i32 3>
  %i.cjj = fadd <2 x float> %i.cjf, %i.cji        ; 2 uses
  %shift2891 = shufflevector <2 x float> %i.cjg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2892 = fmul <2 x float> %.sroa.4.0.i.i.i831, %shift2891
  %i.cjk = shufflevector <2 x float> %.sroa.010.0.i.i.i830, <2 x float> %.sroa.4.0.i.i.i831, <2 x i32> <i32 1, i32 2>
  %i.cjl = fmul <2 x float> %i.cjk, %i.cjj
  %i.cjm = fmul <2 x float> %i.civ, %i.cjg
  %i.cjn = fmul <2 x float> %.sroa.010.0.i.i.i830, %i.cjj ; 2 uses
  %i.cjo = shufflevector <2 x float> %i.cjn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cjp = shufflevector <2 x float> %foldExtExtBinop2892, <2 x float> %i.cjo, <2 x i32> <i32 0, i32 3>
  %i.cjq = fsub <2 x float> %i.cjl, %i.cjp
  %i.cjr = fsub <2 x float> %i.cjm, %i.cjn
  %i.cjs = fmul <2 x float> %i.cjq, splat (float 2.000000e+00)
  %i.cjt = fmul <2 x float> %i.cjr, splat (float 2.000000e+00)
  %i.cju = fadd <2 x float> %.sroa.017.0.copyload.i605, %i.cjs ; 2 uses
  %i.cjv = fadd <2 x float> %i.ciw, %i.cjt        ; 2 uses
  %i.cjw = extractelement <2 x float> %i.cju, i64 0
  %i.cjx = fmul float %i.cit, %i.cjw
  %shift2894 = shufflevector <2 x float> %i.cjv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2895 = fmul <2 x float> %i.cir, %shift2894
  %i.cjy = extractelement <2 x float> %foldExtExtBinop2895, i64 0
  %i.cjz = fsub float %i.cjx, %i.cjy              ; 3 uses
  %i.cka = fmul <2 x float> %i.cir, %i.cjv
  %i.ckb = shufflevector <2 x float> %i.cir, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ckc = insertelement <2 x float> %i.ckb, float %i.cit, i64 1
  %i.ckd = fmul <2 x float> %i.ckc, %i.cju
  %i.cke = fsub <2 x float> %i.cka, %i.ckd        ; 4 uses
  %i.ckf = fmul float %i.cjz, %i.cjz
  %i.ckg = fmul <2 x float> %i.cke, %i.cke        ; 2 uses
  %i.ckh = extractelement <2 x float> %i.ckg, i64 1
  %i.cki = fadd float %i.ckh, %i.ckf
  %i.ckj = extractelement <2 x float> %i.ckg, i64 0
  %i.ckk = fadd float %i.ckj, %i.cki              ; 2 uses
  %i.ckl = fcmp ogt float %i.ckk, f0x057A0000
  br i1 %i.ckl, label %bb.by, label %b3ForceFixedAxis.exit

bb.by:                                            ; preds = %b3GetSweepTransform.exit860
  %sqrt.i611 = call float @llvm.sqrt.f32(float %i.ckk)
  %i.ckm = fdiv float 1.000000e+00, %sqrt.i611    ; 3 uses
  %i.ckn = extractelement <2 x float> %i.cke, i64 1
  %i.cko = fmul float %i.ckn, %i.ckm
  %.sroa.018.0.vec.insert.i.i612 = insertelement <2 x float> poison, float %i.cko, i64 0
  %i.ckp = fmul float %i.cjz, %i.ckm
  %.sroa.018.4.vec.insert.i.i613 = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i612, float %i.ckp, i64 1
  %i.ckq = extractelement <2 x float> %i.cke, i64 0
  %i.ckr = fmul float %i.ckq, %i.ckm
end_hunk_1
