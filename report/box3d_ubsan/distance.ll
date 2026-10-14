Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeDistance:bb.a
  br label %bb.hj

bb.hj:                                            ; preds = %b3SolveSimplex2.exit.thread, %bb.hi
  %.2 = phi i32 [ %i.agj, %bb.hi ], [ %.12216, %b3SolveSimplex2.exit.thread ] ; 6 uses
  %i.agk = load i32, ptr %i.ba, align 8, !tbaa !23 ; 8 uses
  switch i32 %i.agk, label %bb.ia [
    i32 4, label %bb.hk
    i32 1, label %bb.hl
    i32 2, label %bb.hm
    i32 3, label %bb.hr
  ]

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %0, ptr noundef %7)
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.agl, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !29
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agm, i8 0, i64 16, i1 false)
  store i32 %.04692212, ptr %i.oh, align 4, !tbaa !57
  store i32 %.2, ptr %i.oi, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %.thread822

bb.hl:                                            ; preds = %bb.hj
  %.sroa.0284.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.9.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  br label %bb.ia

bb.hm:                                            ; preds = %bb.hj
  br i1 %.not52.i, label %bb.hn, label %bb.ho, !prof !20, !nosanitize !11

bb.hn:                                            ; preds = %bb.hm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @28, i64 %i.ls, i64 %i.lu) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ho:                                            ; preds = %bb.hm
  br i1 %i.lv, label %bb.hq, label %bb.hp, !prof !12, !nosanitize !11

bb.hp:                                            ; preds = %bb.ho
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @29, i64 %i.ls, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.hq:                                            ; preds = %bb.ho
  %i.agn = load float, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26 ; 2 uses
  %.sroa.0280.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8
  %.sroa.2281.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8
  %.sroa.0278.0.copyload = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8
  %.sroa.2279.0.copyload = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8
  %i.ago = fmul float %i.afv, %.sroa.2281.0.copyload
  %i.agp = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agq = shufflevector <2 x float> %i.agp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agr = fmul <2 x float> %i.agq, %.sroa.0280.0.copyload
  %i.ags = insertelement <2 x float> poison, float %i.agn, i64 0
  %i.agt = shufflevector <2 x float> %i.ags, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agu = fmul <2 x float> %i.agt, %.sroa.0278.0.copyload
  %i.agv = fadd <2 x float> %i.agr, %i.agu
  %i.agw = fmul float %i.agn, %.sroa.2279.0.copyload
  %i.agx = fadd float %i.ago, %i.agw
  br label %bb.ia

bb.hr:                                            ; preds = %bb.hj
  br i1 %.not52.i, label %bb.hs, label %bb.ht, !prof !20, !nosanitize !11

bb.hs:                                            ; preds = %bb.hr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @30, i64 %i.ls, i64 %i.lu) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ht:                                            ; preds = %bb.hr
  %i.agy = load float, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26 ; 2 uses
  br i1 %i.lv, label %bb.hv, label %bb.hu, !prof !12, !nosanitize !11

bb.hu:                                            ; preds = %bb.ht
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.ls, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.hv:                                            ; preds = %bb.ht
  br i1 %.not522, label %bb.hw, label %bb.hx, !prof !20, !nosanitize !11

bb.hw:                                            ; preds = %bb.hv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.ls, i64 %i.lz) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.hx:                                            ; preds = %bb.hv
  br i1 %i.ma, label %bb.hz, label %bb.hy, !prof !12, !nosanitize !11

bb.hy:                                            ; preds = %bb.hx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.ls, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.hz:                                            ; preds = %bb.hx
  %i.agz = load float, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26 ; 3 uses
  %.sroa.0270.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8
  %.sroa.2271.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8
  %.sroa.0268.0.copyload = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8
  %.sroa.2269.0.copyload = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  %i.aha = fmul float %i.afv, %.sroa.2271.0.copyload
  %i.ahb = fmul float %i.agy, %.sroa.2269.0.copyload
  %i.ahc = fadd float %i.aha, %i.ahb
  %i.ahd = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %i.ahe = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.ahf = shufflevector <2 x float> %i.ahe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahg = fmul <2 x float> %i.ahf, %.sroa.0270.0.copyload
  %i.ahh = insertelement <2 x float> poison, float %i.agy, i64 0
  %i.ahi = shufflevector <2 x float> %i.ahh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahj = fmul <2 x float> %i.ahi, %.sroa.0268.0.copyload
  %i.ahk = fadd <2 x float> %i.ahg, %i.ahj
  %i.ahl = insertelement <2 x float> %i.ahd, float %i.agz, i64 1
  %i.ahm = insertelement <2 x float> %i.ahd, float %i.agz, i64 0
  %i.ahn = fmul <2 x float> %i.ahl, %i.ahm
  %i.aho = fadd <2 x float> %i.ahk, %i.ahn
  %i.ahp = fmul float %i.agz, %.sroa.5.0.copyload
  %i.ahq = fadd float %i.ahc, %i.ahp
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hj, %bb.hz, %bb.hq, %bb.hl
  %.sroa.0284.0 = phi <2 x float> [ zeroinitializer, %bb.hj ], [ %.sroa.0284.0.copyload, %bb.hl ], [ %i.agv, %bb.hq ], [ %i.aho, %bb.hz ] ; 2 uses
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.hj ], [ %.sroa.9.0.copyload, %bb.hl ], [ %i.agx, %bb.hq ], [ %i.ahq, %bb.hz ] ; 2 uses
  %i.ahr = fmul <2 x float> %.sroa.0284.0, %.sroa.0284.0 ; 2 uses
  %shift4412 = shufflevector <2 x float> %i.ahr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4413 = fadd <2 x float> %i.ahr, %shift4412
  %i.ahs = extractelement <2 x float> %foldExtExtBinop4413, i64 0
  %i.aht = fmul float %.sroa.9.0, %.sroa.9.0
  %i.ahu = fadd float %i.aht, %i.ahs              ; 2 uses
  %i.ahv = fcmp ult float %i.ahu, %.04672215
  br i1 %i.ahv, label %bb.ib, label %.thread815.sink.split

bb.ib:                                            ; preds = %bb.ia
  switch i32 %i.agk, label %bb.im [
    i32 1, label %bb.ic
    i32 2, label %bb.id
    i32 3, label %bb.ig
  ]

bb.ic:                                            ; preds = %bb.ib
  %.sroa.0222.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8
  %.sroa.2223.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8
  %i.ahw = fneg <2 x float> %.sroa.0222.0.copyload
  %i.ahx = fneg float %.sroa.2223.0.copyload
  br label %bb.im

bb.id:                                            ; preds = %bb.ib
  br i1 %.not52.i, label %bb.ie, label %bb.if, !prof !20, !nosanitize !11

bb.ie:                                            ; preds = %bb.id
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.ls, i64 %i.lu) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.if:                                            ; preds = %bb.id
  %.sroa.5217.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  %.sroa.0215.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 4 uses
  %.sroa.0213.0.copyload = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.4214.0.copyload = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  %i.ahy = shufflevector <2 x float> %.sroa.0215.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahz = fsub <2 x float> %.sroa.0213.0.copyload, %.sroa.0215.0.copyload ; 6 uses
  %i.aia = fmul <2 x float> %i.ahy, %i.ahz        ; 2 uses
  %i.aib = shufflevector <2 x float> %.sroa.0215.0.copyload, <2 x float> %i.ahz, <2 x i32> <i32 0, i32 3>
  %i.aic = insertelement <2 x float> %i.aia, float %.sroa.4214.0.copyload, i64 0
  %i.aid = shufflevector <2 x float> %i.aia, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aie = insertelement <2 x float> %i.aid, float %.sroa.5217.0.copyload, i64 0
  %i.aif = fsub <2 x float> %i.aic, %i.aie        ; 3 uses
  %i.aig = insertelement <2 x float> %i.aif, float %.sroa.5217.0.copyload, i64 1 ; 2 uses
  %i.aih = fmul <2 x float> %i.aig, %i.aib
  %i.aii = shufflevector <2 x float> %i.ahz, <2 x float> %.sroa.0215.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.aij = shufflevector <2 x float> %i.aig, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aik = fmul <2 x float> %i.aii, %i.aij
  %i.ail = fsub <2 x float> %i.aik, %i.aih        ; 3 uses
  %i.aim = shufflevector <2 x float> %i.ail, <2 x float> %i.ahz, <2 x i32> <i32 0, i32 2>
  %i.ain = fmul <2 x float> %i.aif, %i.aim
  %i.aio = shufflevector <2 x float> %i.ail, <2 x float> %i.ahz, <2 x i32> <i32 3, i32 1>
  %i.aip = shufflevector <2 x float> %i.aif, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aiq = fmul <2 x float> %i.aio, %i.aip
  %i.air = fsub <2 x float> %i.ain, %i.aiq
  %i.ais = fmul <2 x float> %i.ahz, %i.ail        ; 2 uses
  %shift4415 = shufflevector <2 x float> %i.ais, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4416 = fsub <2 x float> %shift4415, %i.ais
  %i.ait = extractelement <2 x float> %foldExtExtBinop4416, i64 0
  br label %bb.im

bb.ig:                                            ; preds = %bb.ib
  %.sroa.0170.0.copyload = load <2 x float>, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19 ; 3 uses
  %.sroa.6173.0.copyload = load float, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19 ; 2 uses
  br i1 %.not52.i, label %bb.ih, label %bb.ii, !prof !20, !nosanitize !11

bb.ih:                                            ; preds = %bb.ig
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.ls, i64 %i.lu) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ii:                                            ; preds = %bb.ig
  br i1 %.not522, label %bb.ij, label %bb.ik, !prof !20, !nosanitize !11

bb.ij:                                            ; preds = %bb.ii
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.ls, i64 %i.lz) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ik:                                            ; preds = %bb.ii
  %.sroa.4169.0.copyload = load float, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.0168.0.copyload = load <2 x float>, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.0166.0.copyload = load <2 x float>, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  %11 = load <2 x float>, ptr %.sroa.17157.0..sroa_idx.i, align 8
  %i.aiu = fsub <2 x float> %.sroa.0168.0.copyload, %.sroa.0170.0.copyload ; 3 uses
  %i.aiv = fsub <2 x float> %.sroa.0166.0.copyload, %.sroa.0170.0.copyload ; 3 uses
  %i.aiw = shufflevector <2 x float> %i.aiv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aix = insertelement <2 x float> %11, float %.sroa.4169.0.copyload, i64 1
  %i.aiy = insertelement <2 x float> poison, float %.sroa.6173.0.copyload, i64 0
  %i.aiz = shufflevector <2 x float> %i.aiy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aja = fsub <2 x float> %i.aix, %i.aiz        ; 2 uses
  %i.ajb = shufflevector <2 x float> %i.aiu, <2 x float> %i.aiv, <2 x i32> <i32 1, i32 2>
  %i.ajc = fmul <2 x float> %i.ajb, %i.aja
  %i.ajd = shufflevector <2 x float> %i.aja, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aje = shufflevector <2 x float> %i.aiu, <2 x float> %i.aiv, <2 x i32> <i32 3, i32 0>
  %i.ajf = fmul <2 x float> %i.ajd, %i.aje
  %i.ajg = fsub <2 x float> %i.ajc, %i.ajf        ; 3 uses
  %i.ajh = fmul <2 x float> %i.aiu, %i.aiw        ; 2 uses
  %shift4418 = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4419 = fsub <2 x float> %i.ajh, %shift4418
  %i.aji = extractelement <2 x float> %foldExtExtBinop4419, i64 0 ; 3 uses
  %i.ajj = fmul <2 x float> %.sroa.0170.0.copyload, %i.ajg ; 2 uses
  %shift4421 = shufflevector <2 x float> %i.ajj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4422 = fadd <2 x float> %i.ajj, %shift4421
  %i.ajk = extractelement <2 x float> %foldExtExtBinop4422, i64 0
  %i.ajl = fmul float %.sroa.6173.0.copyload, %i.aji
  %i.ajm = fadd float %i.ajl, %i.ajk
  %i.ajn = fcmp olt float %i.ajm, 0.000000e+00
  br i1 %i.ajn, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ajo = fneg <2 x float> %i.ajg
  %i.ajp = fneg float %i.aji
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik, %bb.ib, %bb.if, %bb.ic
  %.sroa.0226.1 = phi <2 x float> [ zeroinitializer, %bb.ib ], [ %i.ahw, %bb.ic ], [ %i.air, %bb.if ], [ %i.ajo, %bb.il ], [ %i.ajg, %bb.ik ] ; 8 uses
  %.sroa.11.1 = phi float [ 0.000000e+00, %bb.ib ], [ %i.ahx, %bb.ic ], [ %i.ait, %bb.if ], [ %i.ajp, %bb.il ], [ %i.aji, %bb.ik ] ; 6 uses
  %i.ajq = fmul <2 x float> %.sroa.0226.1, %.sroa.0226.1 ; 2 uses
  %shift4424 = shufflevector <2 x float> %i.ajq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4425 = fadd <2 x float> %i.ajq, %shift4424
  %i.ajr = extractelement <2 x float> %foldExtExtBinop4425, i64 0
  %i.ajs = fmul float %.sroa.11.1, %.sroa.11.1
  %i.ajt = fadd float %i.ajs, %i.ajr
  %i.aju = fcmp olt float %i.ajt, f0x057A0000
  br i1 %i.aju, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %0, ptr noundef %8)
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajv, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !29
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ajw, i8 0, i64 16, i1 false)
  store i32 %.04692212, ptr %i.oh, align 4, !tbaa !57
  store i32 %.2, ptr %i.oi, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %.thread822

bb.io:                                            ; preds = %bb.im
  %i.ajx = fneg <2 x float> %.sroa.0226.1         ; 4 uses
  %i.ajy = fneg float %.sroa.11.1                 ; 3 uses
  %i.ajz = load i32, ptr %i.oj, align 8, !tbaa !17 ; 2 uses
  %i.aka = load ptr, ptr %1, align 8, !tbaa !18   ; 6 uses
  %i.akb = icmp ne ptr %i.aka, null, !nosanitize !11
  %i.akc = ptrtoint ptr %i.aka to i64, !nosanitize !11 ; 8 uses
  %i.akd = and i64 %i.akc, 3, !nosanitize !11
  %i.ake = icmp eq i64 %i.akd, 0, !nosanitize !11
  %i.akf = and i1 %i.akb, %i.ake, !nosanitize !11
  br i1 %i.akf, label %bb.iq, label %bb.ip, !prof !12, !nosanitize !11

bb.ip:                                            ; preds = %bb.io
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.akc) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.iq:                                            ; preds = %bb.io
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !19
  %i.akg = icmp sgt i32 %i.ajz, 1
  br i1 %i.akg, label %.lr.ph.i, label %b3GetProxySupport.exit

.lr.ph.i:                                         ; preds = %bb.iq
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.aka, align 4, !tbaa !19
  %wide.trip.count.i = zext nneg i32 %i.ajz to i64
  %i.akh = shufflevector <2 x float> %.sroa.0226.1, <2 x float> %i.ajx, <2 x i32> <i32 0, i32 3>
  br label %bb.ir

bb.ir:                                            ; preds = %bb.it, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.it ] ; 4 uses
  %.039.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.it ]
  %.02738.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.128.i, %bb.it ] ; 2 uses
  %i.aki = mul nuw nsw i64 %indvars.iv.i, 12
  %i.akj = add i64 %i.aki, %i.akc, !nosanitize !11 ; 2 uses
  %.not.i678 = icmp ult i64 %i.akj, %i.akc, !nosanitize !11
  br i1 %.not.i678, label %bb.is, label %bb.it, !prof !20, !nosanitize !11

bb.is:                                            ; preds = %bb.ir
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.akc, i64 %i.akj) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.it:                                            ; preds = %bb.ir
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.akk = getelementptr inbounds nuw [12 x i8], ptr %i.aka, i64 %indvars.iv.i ; 2 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4
  %i.akl = fsub float %.sroa.28.0.copyload.i, %.sroa.4.0.copyload.i
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.akk, align 4
  %i.akm = fsub <2 x float> %.sroa.07.0.copyload.i, %.sroa.017.0.copyload.i
  %i.akn = fmul <2 x float> %i.akm, %i.akh        ; 2 uses
  %shift4427 = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4428 = fsub <2 x float> %shift4427, %i.akn
  %i.ako = extractelement <2 x float> %foldExtExtBinop4428, i64 0
  %i.akp = fmul float %.sroa.11.1, %i.akl
  %i.akq = fsub float %i.ako, %i.akp              ; 2 uses
  %i.akr = fcmp ogt float %i.akq, %.02738.i       ; 2 uses
  %i.aks = trunc nuw nsw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.akr, i32 %i.aks, i32 %.039.i ; 2 uses
  %.128.i = select i1 %i.akr, float %i.akq, float %.02738.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b3GetProxySupport.exit, label %bb.ir, !llvm.loop !0

b3GetProxySupport.exit:                           ; preds = %bb.it, %bb.iq
  %.0.lcssa.i = phi i32 [ 0, %bb.iq ], [ %.1.i, %bb.it ] ; 4 uses
  %i.akt = sext i32 %.0.lcssa.i to i64            ; 2 uses
  %i.aku = mul nsw i64 %i.akt, 12
  %i.akv = add i64 %i.aku, %i.akc, !nosanitize !11 ; 3 uses
  %i.akw = icmp ne i64 %i.akv, 0
  %i.akx = icmp uge i64 %i.akv, %i.akc, !nosanitize !11
  %i.aky = icmp slt i32 %.0.lcssa.i, 0
  %i.akz = xor i1 %i.aky, %i.akx
  %i.ala = and i1 %i.akw, %i.akz, !nosanitize !11
  br i1 %i.ala, label %bb.iv, label %bb.iu, !prof !12, !nosanitize !11

bb.iu:                                            ; preds = %b3GetProxySupport.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.akc, i64 %i.akv) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.iv:                                            ; preds = %b3GetProxySupport.exit
  %i.alb = getelementptr inbounds [12 x i8], ptr %i.aka, i64 %i.akt ; 2 uses
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.alb, align 4, !tbaa !19 ; 2 uses
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %.sroa.596.0.copyload = load float, ptr %.sroa.596.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %i.alc = shufflevector <2 x float> %.sroa.0226.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ald = fmul <2 x float> %i.oo, %i.alc
  %i.ale = fmul <2 x float> %i.on, %.sroa.0226.1
  %i.alf = fadd <2 x float> %i.ald, %i.ale
  %i.alg = insertelement <2 x float> poison, float %.sroa.11.1, i64 0
  %i.alh = shufflevector <2 x float> %i.alg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ali = fmul <2 x float> %i.om, %i.alh
  %foldExtExtBinop4430 = fmul <2 x float> %i.ag, %.sroa.0226.1
  %foldExtExtBinop4432 = fmul <2 x float> %i.ah, %.sroa.0226.1
  %shift4434 = shufflevector <2 x float> %foldExtExtBinop4432, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4435 = fadd <2 x float> %foldExtExtBinop4430, %shift4434
  %i.alj = extractelement <2 x float> %foldExtExtBinop4435, i64 0
  %i.alk = fmul float %i.aj, %.sroa.11.1
  %i.all = fadd float %i.alk, %i.alj
  %i.alm = fadd <2 x float> %i.ali, %i.alf
  %i.aln = load i32, ptr %i.ok, align 8, !tbaa !17 ; 2 uses
  %i.alo = load ptr, ptr %i.at, align 8, !tbaa !18 ; 6 uses
  %i.alp = icmp ne ptr %i.alo, null, !nosanitize !11
  %i.alq = ptrtoint ptr %i.alo to i64, !nosanitize !11 ; 8 uses
  %i.alr = and i64 %i.alq, 3, !nosanitize !11
  %i.als = icmp eq i64 %i.alr, 0, !nosanitize !11
  %i.alt = and i1 %i.alp, %i.als, !nosanitize !11
  br i1 %i.alt, label %bb.ix, label %bb.iw, !prof !12, !nosanitize !11

bb.iw:                                            ; preds = %bb.iv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.alq) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ix:                                            ; preds = %bb.iv
  %.sroa.4.0..sroa_idx.i687 = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %.sroa.4.0.copyload.i688 = load float, ptr %.sroa.4.0..sroa_idx.i687, align 4, !tbaa !19
  %i.alu = icmp sgt i32 %i.aln, 1
  br i1 %i.alu, label %.lr.ph.i690, label %b3GetProxySupport.exit710

.lr.ph.i690:                                      ; preds = %bb.ix
  %.sroa.017.0.copyload.i691 = load <2 x float>, ptr %i.alo, align 4, !tbaa !19 ; 2 uses
  %wide.trip.count.i696 = zext nneg i32 %i.aln to i64
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ja, %.lr.ph.i690
  %indvars.iv.i697 = phi i64 [ 1, %.lr.ph.i690 ], [ %indvars.iv.next.i701, %bb.ja ] ; 4 uses
  %.039.i698 = phi i32 [ 0, %.lr.ph.i690 ], [ %.1.i707, %bb.ja ]
  %.02738.i699 = phi float [ 0.000000e+00, %.lr.ph.i690 ], [ %.128.i708, %bb.ja ] ; 2 uses
  %i.alv = mul nuw nsw i64 %indvars.iv.i697, 12
  %i.alw = add i64 %i.alv, %i.alq, !nosanitize !11 ; 2 uses
  %.not.i700 = icmp ult i64 %i.alw, %i.alq, !nosanitize !11
  br i1 %.not.i700, label %bb.iz, label %bb.ja, !prof !20, !nosanitize !11

bb.iz:                                            ; preds = %bb.iy
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.alq, i64 %i.alw) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ja:                                            ; preds = %bb.iy
  %indvars.iv.next.i701 = add nuw nsw i64 %indvars.iv.i697, 1 ; 2 uses
  %i.alx = getelementptr inbounds nuw [12 x i8], ptr %i.alo, i64 %indvars.iv.i697 ; 2 uses
  %.sroa.28.0..sroa_idx.i702 = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %.sroa.28.0.copyload.i703 = load float, ptr %.sroa.28.0..sroa_idx.i702, align 4
  %.sroa.07.0.copyload.i704 = load <2 x float>, ptr %i.alx, align 4 ; 2 uses
  %i.aly = fsub float %.sroa.28.0.copyload.i703, %.sroa.4.0.copyload.i688
  %foldExtExtBinop4437 = fsub <2 x float> %.sroa.07.0.copyload.i704, %.sroa.017.0.copyload.i691
  %i.alz = insertelement <2 x float> poison, float %i.aly, i64 0
  %i.ama = shufflevector <2 x float> %i.alz, <2 x float> %foldExtExtBinop4437, <2 x i32> <i32 0, i32 2>
  %i.amb = fmul <2 x float> %i.alm, %i.ama        ; 2 uses
  %foldExtExtBinop4439 = fsub <2 x float> %.sroa.07.0.copyload.i704, %.sroa.017.0.copyload.i691
  %i.amc = extractelement <2 x float> %foldExtExtBinop4439, i64 1
  %i.amd = fmul float %i.all, %i.amc
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
  %.sroa.2275.0.copyload = load float, ptr %.sroa.2275.0..sroa_idx, align 4
  %i.s = fsub <2 x float> %.sroa.0274.0.copyload, %.sroa.0298.0.copyload
  %i.t = fsub float %.sroa.2275.0.copyload, %.sroa.10.0.copyload
  store <2 x float> %i.s, ptr %i.r, align 4, !tbaa !19
  store float %i.t, ptr %.sroa.2275.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !35
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.w, i32 %i.y), !nosanitize !11 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 0        ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.z, 1, !nosanitize !11
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !20, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i32 %i.w to i64, !nosanitize !11
  %i.ad = zext i32 %i.y to i64, !nosanitize !11
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @56, i64 %i.ac, i64 %i.ad) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !94
  %i.ag = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.ah = fmul float %i.ag, 5.000000e-03          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !95
  %i.al = load float, ptr %i.aj, align 4, !tbaa !95
  %i.am = fadd float %i.ak, %i.al
  %i.an = fsub float %i.am, %i.ah                 ; 2 uses
  %i.ao = fcmp ogt float %i.ah, %i.an
  %i.ap = select i1 %i.ao, float %i.ah, float %i.an ; 6 uses
  %i.aq = fmul float %i.ah, 2.500000e-01          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !35
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !35
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.4648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.5649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.2217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.2206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 12
  %.sroa.2196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.az = fadd float %i.aq, %i.ap                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 84 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 176 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.10599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.10585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.2573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = ptrtoint ptr %i.a to i64                ; 8 uses
  %i.bm = add i64 %i.bl, 4                        ; 2 uses
  %.not714.i = icmp eq i64 %i.bm, 0               ; 2 uses
  %.not715.i = icmp eq ptr %i.a, inttoptr (i64 -4 to ptr) ; 3 uses
  %.not716.i = icmp ugt ptr %i.a, inttoptr (i64 -9 to ptr) ; 2 uses
  %i.bn = ptrtoint ptr %i.b to i64                ; 8 uses
  %i.bo = add i64 %i.bn, 4                        ; 2 uses
  %.not717.i = icmp eq i64 %i.bo, 0               ; 2 uses
  %.not718.i = icmp eq ptr %i.b, inttoptr (i64 -4 to ptr) ; 3 uses
  %.not719.i = icmp ugt ptr %i.b, inttoptr (i64 -9 to ptr) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %.sroa.71252.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %.sroa.7.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 152 ; 16 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 160 ; 16 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 164 ; 9 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 172 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 60
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 40
  %.sroa.220.0..sroa_idx.i620 = getelementptr inbounds nuw i8, ptr %15, i64 36
  %.sroa.218.0..sroa_idx.i623 = getelementptr inbounds nuw i8, ptr %15, i64 48
  %.sroa.210.0..sroa_idx.i630 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 108
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 104
  %.sroa.218.0..sroa_idx.i594 = getelementptr inbounds nuw i8, ptr %15, i64 116
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 92
  %i.cf = fsub float %i.ap, %i.aq                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 32 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 152
  br label %bb.f

bb.f:                                             ; preds = %select.unfold698, %bb.e
  %.0316 = phi i32 [ 0, %bb.e ], [ %i.fq, %select.unfold698 ]
  %.0 = phi float [ 0.000000e+00, %bb.e ], [ %.2.ph, %select.unfold698 ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %12, ptr noundef nonnull %6, float noundef %.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %13, ptr noundef nonnull %7, float noundef %.0)
  %.sroa.0652.0.copyload = load <2 x float>, ptr %13, align 8
  %.sroa.4653.0.copyload = load float, ptr %.sroa.4653.0..sroa_idx, align 8
  %.sroa.5654.0.copyload = load <2 x float>, ptr %.sroa.5654.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6655.0.copyload = load <2 x float>, ptr %.sroa.6655.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0647.0.copyload = load <2 x float>, ptr %12, align 8 ; 9 uses
  %.sroa.4648.0.copyload = load float, ptr %.sroa.4648.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5649.0.copyload = load <2 x float>, ptr %.sroa.5649.0..sroa_idx, align 4 ; 43 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 26 uses
  %i.cn = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5649.0.copyload, i64 0 ; 14 uses
  %i.cp = fsub <2 x float> %.sroa.0652.0.copyload, %.sroa.0647.0.copyload ; 4 uses
  %i.cq = fsub float %.sroa.4653.0.copyload, %.sroa.4648.0.copyload ; 3 uses
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1 ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %.sroa.5649.0.copyload
  %i.cu = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <2 x i32> <i32 0, i32 2> ; 9 uses
  %i.cv = fmul <2 x float> %i.cp, %i.cu
  %i.cw = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 16 uses
  %i.cx = fmul <2 x float> %i.cp, %i.cw
  %i.cy = insertelement <2 x float> %i.cr, float %i.cq, i64 0 ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %.sroa.5649.0.copyload
  %i.da = fsub <2 x float> %i.ct, %i.cx
  %i.db = fsub <2 x float> %i.cv, %i.cz
  %i.dc = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 10 uses
  %i.dd = fmul <2 x float> %i.cy, %i.dc
  %i.de = fmul <2 x float> %i.cs, %i.dc
  %i.df = fsub <2 x float> %i.da, %i.dd           ; 2 uses
  %i.dg = fsub <2 x float> %i.db, %i.de           ; 2 uses
  %i.dh = fmul <2 x float> %i.cw, %i.df
  %i.di = fmul <2 x float> %i.cu, %i.dg
  %i.dj = fsub <2 x float> %i.dh, %i.di
  %foldExtExtBinop = fmul <2 x float> %.sroa.5649.0.copyload, %i.dg
  %foldExtExtBinop9272 = fmul <2 x float> %.sroa.5649.0.copyload, %i.df
  %shift = shufflevector <2 x float> %foldExtExtBinop9272, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9274 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  %i.dl = fadd <2 x float> %i.cp, %i.dk
  %i.dm = fmul <2 x float> %.sroa.5654.0.copyload, %i.co ; 2 uses
  %shift9276 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9277 = fsub <2 x float> %i.dm, %shift9276
  %i.dn = shufflevector <2 x float> %.sroa.5654.0.copyload, <2 x float> %.sroa.6655.0.copyload, <4 x i32> <i32 poison, i32 1, i32 2, i32 2>
  %i.do = shufflevector <2 x float> %foldExtExtBinop9274, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.dn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.5649.0.copyload, <4 x i32> <i32 poison, i32 0, i32 3, i32 2>
  %i.dr = insertelement <4 x float> %i.dq, float 2.000000e+00, i64 0
  %i.ds = fmul <4 x float> %i.dp, %i.dr           ; 3 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = fadd float %i.cq, %i.dt
  %foldExtExtBinop9279 = fmul <2 x float> %.sroa.5654.0.copyload, %.sroa.7.0.copyload
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dw = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> %foldExtExtBinop9279, <2 x i32> <i32 0, i32 2>
  %i.dy = fsub <2 x float> %i.dv, %i.dx
  %i.dz = fmul <2 x float> %.sroa.5654.0.copyload, %i.dc
  %i.ea = fadd <2 x float> %i.dz, %i.dy
  %i.eb = shufflevector <2 x float> %.sroa.6655.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = fmul <2 x float> %i.eb, %.sroa.5649.0.copyload
  %i.ed = fsub <2 x float> %i.ea, %i.ec
  %i.ee = fmul <2 x float> %.sroa.6655.0.copyload, %i.cn ; 2 uses
  %foldExtExtBinop9281 = fadd <2 x float> %foldExtExtBinop9277, %i.ee
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.231.8.vec.insert.i = fsub <2 x float> %foldExtExtBinop9281, %i.ef
  %i.eg = shufflevector <2 x float> %.sroa.5654.0.copyload, <2 x float> %.sroa.6655.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eh = shufflevector <2 x float> %.sroa.5649.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = fmul <4 x float> %i.eg, %i.eh           ; 4 uses
  %16 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %17 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %18 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %19 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %20 = fadd <2 x float> %18, %19
  %21 = fadd <2 x float> %17, %20
  %22 = fadd <2 x float> %16, %21
  %.sroa.231.12.vec.insert.i = shufflevector <2 x float> %.sroa.231.8.vec.insert.i, <2 x float> %22, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dl, ptr %i.at, align 8, !tbaa !19
  store float %i.du, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  store <2 x float> %i.ed, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %14, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0)
  %i.ej = load float, ptr %i.au, align 4, !tbaa !30 ; 3 uses
  store float %i.ej, ptr %i.av, align 4, !tbaa !96
  %.sroa.0216.0.copyload = load <2 x float>, ptr %i.aw, align 8 ; 5 uses
  %.sroa.2217.0.copyload = load float, ptr %.sroa.2217.0..sroa_idx, align 8 ; 4 uses
  %i.ek = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2217.0.copyload
  %i.el = fmul <2 x float> %i.cw, %.sroa.0216.0.copyload
  %i.em = shufflevector <2 x float> %.sroa.0216.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.en = insertelement <2 x float> %i.em, float %.sroa.2217.0.copyload, i64 1
  %i.eo = fmul <2 x float> %.sroa.5649.0.copyload, %i.en
  %i.ep = fsub <2 x float> %i.eo, %i.el
  %i.eq = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0216.0.copyload ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  %i.es = fsub float %i.er, %i.ek
  %i.et = extractelement <2 x float> %i.eq, i64 1
  %i.eu = fadd float %i.et, %i.es                 ; 2 uses
  %i.ev = shufflevector <2 x float> %.sroa.0216.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ew = insertelement <2 x float> %i.ev, float %.sroa.2217.0.copyload, i64 0
  %i.ex = fmul <2 x float> %i.dc, %i.ew
  %i.ey = fadd <2 x float> %i.ex, %i.ep           ; 3 uses
  %i.ez = fmul <2 x float> %i.cw, %i.ey
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fb = insertelement <2 x float> %i.fa, float %i.eu, i64 0
  %i.fc = fmul <2 x float> %i.cu, %i.fb
  %i.fd = fsub <2 x float> %i.ez, %i.fc
  %i.fe = fmul float %.sroa.09.0.vec.extract.i.i, %i.eu
  %foldExtExtBinop9298 = fmul <2 x float> %.sroa.5649.0.copyload, %i.ey
  %i.ff = extractelement <2 x float> %foldExtExtBinop9298, i64 1
  %i.fg = fsub float %i.fe, %i.ff
  %i.fh = fmul <2 x float> %i.fd, splat (float 2.000000e+00)
  %i.fi = fadd <2 x float> %.sroa.0216.0.copyload, %i.fh ; 16 uses
  %i.fj = fmul float %i.fg, 2.000000e+00
  %i.fk = fadd float %.sroa.2217.0.copyload, %i.fj ; 15 uses
  %.sroa.0205.0.copyload = load <2 x float>, ptr %14, align 8 ; 22 uses
  %.sroa.2206.0.copyload = load float, ptr %.sroa.2206.0..sroa_idx, align 8 ; 19 uses
  %.sroa.0195.0.copyload = load <2 x float>, ptr %i.ax, align 4 ; 22 uses
  %.sroa.2196.0.copyload = load float, ptr %.sroa.2196.0..sroa_idx, align 4 ; 19 uses
  %i.fl = load i32, ptr %i.ay, align 4, !tbaa !97 ; 2 uses
  %i.fm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.fl, i32 1), !nosanitize !11 ; 2 uses
  %i.fn = extractvalue { i32, i1 } %i.fm, 1, !nosanitize !11
  br i1 %i.fn, label %bb.g, label %bb.h, !prof !20, !nosanitize !11

bb.g:                                             ; preds = %bb.f
  %i.fo = zext nneg i32 %i.fl to i64, !nosanitize !11
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @57, i64 %i.fo, i64 1) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.h:                                             ; preds = %bb.f
  %i.fp = extractvalue { i32, i1 } %i.fm, 0, !nosanitize !11
  store i32 %i.fp, ptr %i.ay, align 4, !tbaa !97
  %i.fq = add nuw nsw i32 %.0316, 1               ; 2 uses
  %i.fr = fcmp ugt float %i.ej, 0.000000e+00
  br i1 %i.fr, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fs = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2206.0.copyload
  %i.ft = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fu = insertelement <2 x float> %i.ft, float %.sroa.2206.0.copyload, i64 1
  %i.fv = fmul <2 x float> %.sroa.5649.0.copyload, %i.fu
  %i.fw = fmul <2 x float> %i.cw, %.sroa.0205.0.copyload
  %i.fx = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2196.0.copyload
  %i.fy = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fz = insertelement <2 x float> %i.fy, float %.sroa.2196.0.copyload, i64 1
  %i.ga = fmul <2 x float> %.sroa.5649.0.copyload, %i.fz
  %i.gb = fmul <2 x float> %i.cw, %.sroa.0195.0.copyload
  store i32 2, ptr %0, align 4, !tbaa !98
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !91
  %i.gc = load float, ptr %i.ai, align 4, !tbaa !95 ; 2 uses
  %i.gd = fmul float %i.fk, %i.gc
  %i.ge = load float, ptr %i.aj, align 4, !tbaa !95 ; 2 uses
  %i.gf = fmul float %i.fk, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gh = fsub <2 x float> %i.fv, %i.fw
  %i.gi = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  %i.gk = fsub float %i.gj, %i.fs
  %i.gl = extractelement <2 x float> %i.gi, i64 1
  %i.gm = fadd float %i.gl, %i.gk                 ; 2 uses
  %i.gn = insertelement <2 x float> %i.ft, float %.sroa.2206.0.copyload, i64 0
  %i.go = fmul <2 x float> %i.dc, %i.gn
  %i.gp = fadd <2 x float> %i.go, %i.gh           ; 3 uses
  %i.gq = fmul <2 x float> %i.cw, %i.gp
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gs = insertelement <2 x float> %i.gr, float %i.gm, i64 0
  %i.gt = fmul <2 x float> %i.cu, %i.gs
  %i.gu = fsub <2 x float> %i.gq, %i.gt
  %i.gv = fmul float %.sroa.09.0.vec.extract.i.i, %i.gm
  %foldExtExtBinop9300 = fmul <2 x float> %.sroa.5649.0.copyload, %i.gp
  %i.gw = extractelement <2 x float> %foldExtExtBinop9300, i64 1
  %i.gx = fsub float %i.gv, %i.gw
  %i.gy = fmul <2 x float> %i.gu, splat (float 2.000000e+00)
  %i.gz = fadd <2 x float> %.sroa.0205.0.copyload, %i.gy
  %i.ha = fmul float %i.gx, 2.000000e+00
  %i.hb = fadd float %.sroa.2206.0.copyload, %i.ha
  %i.hc = fadd <2 x float> %.sroa.0647.0.copyload, %i.gz
  %i.hd = fadd float %.sroa.4648.0.copyload, %i.hb
  %i.he = fsub <2 x float> %i.ga, %i.gb
  %i.hf = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 0
  %i.hh = fsub float %i.hg, %i.fx
  %i.hi = extractelement <2 x float> %i.hf, i64 1
  %i.hj = fadd float %i.hi, %i.hh                 ; 2 uses
  %i.hk = insertelement <2 x float> %i.fy, float %.sroa.2196.0.copyload, i64 0
  %i.hl = fmul <2 x float> %i.dc, %i.hk
  %i.hm = fadd <2 x float> %i.hl, %i.he           ; 3 uses
  %i.hn = fmul <2 x float> %i.cw, %i.hm
  %i.ho = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hp = insertelement <2 x float> %i.ho, float %i.hj, i64 0
  %i.hq = fmul <2 x float> %i.cu, %i.hp
  %i.hr = fsub <2 x float> %i.hn, %i.hq
  %i.hs = fmul float %.sroa.09.0.vec.extract.i.i, %i.hj
  %foldExtExtBinop9302 = fmul <2 x float> %.sroa.5649.0.copyload, %i.hm
  %i.ht = extractelement <2 x float> %foldExtExtBinop9302, i64 1
  %i.hu = fsub float %i.hs, %i.ht
  %i.hv = fmul <2 x float> %i.hr, splat (float 2.000000e+00)
  %i.hw = fadd <2 x float> %.sroa.0195.0.copyload, %i.hv
  %i.hx = fmul float %i.hu, 2.000000e+00
  %i.hy = fadd float %.sroa.2196.0.copyload, %i.hx
  %i.hz = fadd <2 x float> %.sroa.0647.0.copyload, %i.hw
  %i.ia = fadd float %.sroa.4648.0.copyload, %i.hy
  %i.ib = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.fi, %i.ic
  %i.ie = fadd <2 x float> %i.hc, %i.id
  %i.if = fadd float %i.hd, %i.gd
  %i.ig = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x float> %i.fi, %i.ih
  %i.ij = fsub <2 x float> %i.hz, %i.ii
  %i.ik = fsub float %i.ia, %i.gf
  %i.il = fmul float %i.if, 5.000000e-01
  %i.im = fmul <2 x float> %i.ie, splat (float 5.000000e-01)
  %i.in = fmul <2 x float> %i.ij, splat (float 5.000000e-01)
  %i.io = fadd <2 x float> %i.im, %i.in
  %i.ip = fmul float %i.ik, 5.000000e-01
  %i.iq = fadd float %i.il, %i.ip
  %i.ir = fadd <2 x float> %.sroa.0298.0.copyload, %i.io
  %i.is = fadd float %.sroa.10.0.copyload, %i.iq
  store <2 x float> %i.ir, ptr %i.gg, align 4, !tbaa !19
  store float %i.is, ptr %.sroa.4170.0..sroa_idx, align 4, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fi, ptr %i.it, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fk, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !19
  br label %.thread715

bb.j:                                             ; preds = %bb.h
  %i.iu = fcmp ugt float %i.ej, %i.az
  br i1 %i.iu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iv = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2206.0.copyload
  %i.iw = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ix = insertelement <2 x float> %i.iw, float %.sroa.2206.0.copyload, i64 1
  %i.iy = fmul <2 x float> %.sroa.5649.0.copyload, %i.ix
  %i.iz = fmul <2 x float> %i.cw, %.sroa.0205.0.copyload
  %i.ja = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2196.0.copyload
  %i.jb = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = insertelement <2 x float> %i.jb, float %.sroa.2196.0.copyload, i64 1
  %i.jd = fmul <2 x float> %.sroa.5649.0.copyload, %i.jc
  %i.je = fmul <2 x float> %i.cw, %.sroa.0195.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !98
  %i.jf = load float, ptr %i.ai, align 4, !tbaa !95 ; 2 uses
  %i.jg = fmul float %i.fk, %i.jf
  %i.jh = load float, ptr %i.aj, align 4, !tbaa !95 ; 2 uses
  %i.ji = fmul float %i.fk, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jk = fsub <2 x float> %i.iy, %i.iz
  %i.jl = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.jm = extractelement <2 x float> %i.jl, i64 0
  %i.jn = fsub float %i.jm, %i.iv
  %i.jo = extractelement <2 x float> %i.jl, i64 1
  %i.jp = fadd float %i.jo, %i.jn                 ; 2 uses
  %i.jq = insertelement <2 x float> %i.iw, float %.sroa.2206.0.copyload, i64 0
  %i.jr = fmul <2 x float> %i.dc, %i.jq
  %i.js = fadd <2 x float> %i.jr, %i.jk           ; 3 uses
  %i.jt = fmul <2 x float> %i.cw, %i.js
  %i.ju = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jv = insertelement <2 x float> %i.ju, float %i.jp, i64 0
  %i.jw = fmul <2 x float> %i.cu, %i.jv
  %i.jx = fsub <2 x float> %i.jt, %i.jw
  %i.jy = fmul float %.sroa.09.0.vec.extract.i.i, %i.jp
  %foldExtExtBinop9304 = fmul <2 x float> %.sroa.5649.0.copyload, %i.js
  %i.jz = extractelement <2 x float> %foldExtExtBinop9304, i64 1
  %i.ka = fsub float %i.jy, %i.jz
  %i.kb = fmul <2 x float> %i.jx, splat (float 2.000000e+00)
  %i.kc = fadd <2 x float> %.sroa.0205.0.copyload, %i.kb
  %i.kd = fmul float %i.ka, 2.000000e+00
  %i.ke = fadd float %.sroa.2206.0.copyload, %i.kd
  %i.kf = fadd <2 x float> %.sroa.0647.0.copyload, %i.kc
  %i.kg = fadd float %.sroa.4648.0.copyload, %i.ke
  %i.kh = fsub <2 x float> %i.jd, %i.je
  %i.ki = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
end_hunk_1
begin_hunk_2_@b3EvaluateSeparation:bb.a
  %i.rr = icmp ne ptr %i.rm, null, !nosanitize !11
  %i.rs = icmp eq i64 %i.rq, 0
  %i.rt = xor i1 %i.rr, %i.rs
  %i.ru = icmp uge i64 %i.rq, %i.rp, !nosanitize !11
  %i.rv = icmp slt i32 %1, 0
  %i.rw = xor i1 %i.rv, %i.ru
  %i.rx = and i1 %i.rt, %i.rw, !nosanitize !11
  br i1 %i.rx, label %bb.af, label %bb.ae, !prof !12, !nosanitize !11

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.rp, i64 %i.rq) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.af:                                            ; preds = %bb.ad
  %i.ry = getelementptr inbounds [12 x i8], ptr %i.rm, i64 %i.rn ; 2 uses
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.ry, align 4 ; 5 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0456.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4457.0.copyload = load float, ptr %.sroa.4457.0..sroa_idx, align 8
  %.sroa.5458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.5458.0.copyload = load <2 x float>, ptr %.sroa.5458.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.6459.0.copyload = load <2 x float>, ptr %.sroa.6459.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.4.vec.extract13.i.i404 = extractelement <2 x float> %.sroa.5458.0.copyload, i64 1
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.rz, align 4 ; 5 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0455.0.copyload = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %i.sa = fmul float %.sroa.223.0.copyload, %.sroa.09.4.vec.extract13.i.i404
  %shift557 = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop558 = fmul <2 x float> %shift557, %.sroa.6459.0.copyload
  %i.sb = shufflevector <2 x float> %.sroa.6459.0.copyload, <2 x float> %.sroa.5458.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.sc = fmul <2 x float> %.sroa.022.0.copyload, %i.sb ; 2 uses
  %i.sd = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.se = insertelement <2 x float> %i.sd, float %.sroa.223.0.copyload, i64 0 ; 2 uses
  %i.sf = fmul <2 x float> %i.se, %.sroa.5458.0.copyload ; 2 uses
  %i.sg = shufflevector <2 x float> %i.sc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sh = insertelement <2 x float> %i.sg, float %i.sa, i64 0
  %i.si = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sj = shufflevector <2 x float> %foldExtExtBinop558, <2 x float> %i.si, <2 x i32> <i32 0, i32 3>
  %i.sk = fsub <2 x float> %i.sh, %i.sj
  %i.sl = fsub <2 x float> %i.sc, %i.sf
  %i.sm = shufflevector <2 x float> %.sroa.6459.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.sn = fmul <2 x float> %.sroa.022.0.copyload, %i.sm
  %i.so = insertelement <2 x float> %i.sd, float %.sroa.223.0.copyload, i64 1
  %i.sp = fmul <2 x float> %i.so, %i.sm
  %i.sq = fadd <2 x float> %i.sn, %i.sk           ; 2 uses
  %i.sr = fadd <2 x float> %i.sp, %i.sl           ; 2 uses
  %i.ss = fmul <2 x float> %.sroa.5458.0.copyload, %i.sr
  %i.st = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.6459.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.su = fmul <2 x float> %i.st, %i.sq
  %i.sv = fsub <2 x float> %i.ss, %i.su
  %i.sw = fmul <2 x float> %i.sv, splat (float 2.000000e+00)
  %i.sx = fadd <2 x float> %i.se, %i.sw
  %i.sy = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sz = insertelement <2 x float> %i.sy, float %.sroa.4457.0.copyload, i64 0
  %i.ta = fadd <2 x float> %i.sz, %i.sx
  %i.tb = fmul float %.sroa.09.4.vec.extract13.i.i394, %.sroa.216.0.copyload
  %shift560 = shufflevector <2 x float> %.sroa.015.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop561 = fmul <2 x float> %i.qd, %shift560
  %i.tc = fmul <2 x float> %i.qg, %.sroa.015.0.copyload ; 2 uses
  %i.td = shufflevector <2 x float> %.sroa.015.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.te = insertelement <2 x float> %i.td, float %.sroa.216.0.copyload, i64 0 ; 2 uses
  %i.tf = fmul <2 x float> %i.qb, %i.te           ; 2 uses
  %i.tg = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.th = insertelement <2 x float> %i.tg, float %i.tb, i64 0
  %i.ti = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.tj = shufflevector <2 x float> %foldExtExtBinop561, <2 x float> %i.ti, <2 x i32> <i32 0, i32 3>
  %i.tk = fsub <2 x float> %i.th, %i.tj
  %i.tl = fsub <2 x float> %i.tc, %i.tf
  %i.tm = fmul <2 x float> %i.qr, %.sroa.015.0.copyload
  %i.tn = insertelement <2 x float> %i.td, float %.sroa.216.0.copyload, i64 1
  %i.to = fmul <2 x float> %i.qr, %i.tn
  %i.tp = fadd <2 x float> %i.tm, %i.tk           ; 2 uses
  %i.tq = fadd <2 x float> %i.to, %i.tl           ; 2 uses
  %i.tr = fmul <2 x float> %i.qb, %i.tq
  %i.ts = fmul <2 x float> %i.qz, %i.tp
  %i.tt = fsub <2 x float> %i.tr, %i.ts
  %i.tu = fmul <2 x float> %i.tt, splat (float 2.000000e+00)
  %i.tv = fadd <2 x float> %i.te, %i.tu
  %i.tw = shufflevector <2 x float> %.sroa.6459.0.copyload, <2 x float> %i.qd, <2 x i32> <i32 0, i32 2>
  %i.tx = shufflevector <2 x float> %i.sq, <2 x float> %i.tp, <2 x i32> <i32 0, i32 2>
  %i.ty = fmul <2 x float> %i.tw, %i.tx
  %i.tz = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %i.qb, <2 x i32> <i32 0, i32 2>
  %i.ua = shufflevector <2 x float> %i.sr, <2 x float> %i.tq, <2 x i32> <i32 1, i32 3>
  %i.ub = fmul <2 x float> %i.tz, %i.ua
  %i.uc = fsub <2 x float> %i.ty, %i.ub
  %i.ud = fmul <2 x float> %i.uc, splat (float 2.000000e+00)
  %i.ue = shufflevector <2 x float> %.sroa.022.0.copyload, <2 x float> %.sroa.015.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.uf = fadd <2 x float> %i.ue, %i.ud
  %i.ug = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> %.sroa.0455.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.uh = fadd <2 x float> %i.ug, %i.uf           ; 2 uses
  %i.ui = shufflevector <2 x float> %.sroa.0455.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uj = insertelement <2 x float> %i.ui, float %.sroa.4.0.copyload, i64 0
  %i.uk = fadd <2 x float> %i.uj, %i.tv
  %shift563 = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop564 = fsub <2 x float> %i.uh, %shift563
  %i.ul = extractelement <2 x float> %foldExtExtBinop564, i64 0
  %i.um = fsub <2 x float> %i.ta, %i.uk
  %i.un = fmul float %i.re, %i.ul
  %i.uo = fmul <2 x float> %i.rf, %i.um           ; 2 uses
  %i.up = extractelement <2 x float> %i.uo, i64 1
  %i.uq = fadd float %i.up, %i.un
  %i.ur = extractelement <2 x float> %i.uo, i64 0
  %i.us = fadd float %i.ur, %i.uq
  br label %bb.ag

bb.ag:                                            ; preds = %bb.c, %bb.af, %bb.aa, %bb.v, %bb.l
  %.0 = phi float [ %i.us, %bb.af ], [ %i.dq, %bb.l ], [ %i.ky, %bb.v ], [ %i.py, %bb.aa ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3BarycentricCoordsTri(ptr noundef nonnull %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, float %6) unnamed_addr #0 !func_sanitize !105 {
bb.a:
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.07.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 3 uses
  %i.a = fmul float %.sroa.0.4.vec.extract.i, %4
  %i.b = fmul float %2, %.sroa.07.4.vec.extract.i
  %i.c = fsub float %i.a, %i.b
  %i.d = fmul float %2, %.sroa.07.0.vec.extract.i
  %i.e = fmul float %.sroa.0.0.vec.extract.i, %4
  %i.f = fsub float %i.d, %i.e
  %i.g = fmul float %.sroa.0.0.vec.extract.i, %.sroa.07.4.vec.extract.i
  %i.h = fmul float %.sroa.0.4.vec.extract.i, %.sroa.07.0.vec.extract.i
  %i.i = fsub float %i.g, %i.h
  %i.j = fsub <2 x float> %3, %1                  ; 2 uses
  %i.k = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = insertelement <2 x float> %i.k, float %4, i64 1 ; 2 uses
  %i.m = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %2, i64 1 ; 2 uses
  %i.o = fsub <2 x float> %i.l, %i.n              ; 2 uses
  %i.p = fsub <2 x float> %5, %1                  ; 2 uses
  %i.q = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x float> %i.q, float %6, i64 1 ; 2 uses
  %i.s = fsub <2 x float> %i.r, %i.n              ; 2 uses
  %i.t = fmul <2 x float> %i.j, %i.s
  %i.u = fmul <2 x float> %i.o, %i.p
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.p
  %shift153 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop154 = fmul <2 x float> %i.j, %shift153
  %foldExtExtBinop156 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop154 ; 4 uses
  %i.v = extractelement <2 x float> %foldExtExtBinop156, i64 0
  %i.w = fsub <2 x float> %i.t, %i.u              ; 6 uses
  %i.x = ptrtoint ptr %0 to i64, !nosanitize !11  ; 8 uses
  %i.y = and i64 %i.x, 3, !nosanitize !11
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !11
  br i1 %i.z, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.x) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.aa = fmul <2 x float> %3, %i.r
  %i.ab = fmul <2 x float> %i.l, %5
  %i.ac = fsub <2 x float> %i.aa, %i.ab
  %i.ad = fmul <2 x float> %i.ac, %i.w            ; 2 uses
  %i.ae = shufflevector <2 x float> %5, <2 x float> %1, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.af = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ag = insertelement <4 x float> %i.af, float %4, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %6, i64 2
  %i.ai = insertelement <4 x float> %i.ah, float %2, i64 3 ; 2 uses
  %i.aj = fmul <4 x float> %i.ae, %i.ai
  %i.ak = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.ai, <4 x i32> <i32 6, i32 1, i32 7, i32 6>
  %i.am = shufflevector <2 x float> %3, <2 x float> %5, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.an = insertelement <4 x float> %i.am, float %.sroa.0.4.vec.extract.i, i64 3
  %i.ao = fmul <4 x float> %i.al, %i.an
  %i.ap = extractelement <2 x float> %i.ad, i64 1
  %i.aq = extractelement <2 x float> %i.ad, i64 0
  %i.ar = fsub <4 x float> %i.aj, %i.ao
  %i.as = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.at = shufflevector <2 x float> %foldExtExtBinop156, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.av = fmul <4 x float> %i.ar, %i.au           ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = fadd float %i.ap, %i.aw
  %i.ay = fadd float %i.aq, %i.ax
  store float %i.ay, ptr %0, align 4, !tbaa !19
  %.not = icmp ugt ptr %0, inttoptr (i64 -5 to ptr)
  br i1 %.not, label %bb.d, label %bb.e, !prof !20, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  %i.az = add i64 %i.x, 4, !nosanitize !11
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @83, i64 %i.x, i64 %i.az) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %shift161 = fadd <4 x float> %7, %8
  %foldExtExtBinop162 = fadd <4 x float> %i.av, %shift161
  %i.bb = extractelement <4 x float> %foldExtExtBinop162, i64 1
  store float %i.bb, ptr %i.ba, align 4, !tbaa !19
  %i.bc = extractelement <2 x float> %i.w, i64 1  ; 3 uses
  %.not101 = icmp ugt ptr %0, inttoptr (i64 -9 to ptr)
  br i1 %.not101, label %bb.f, label %bb.g, !prof !20, !nosanitize !11

bb.f:                                             ; preds = %bb.e
  %i.bd = add i64 %i.x, 8, !nosanitize !11
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.x, i64 %i.bd) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = extractelement <2 x float> %i.w, i64 0
  %i.bg = fmul float %i.i, %i.bf
  %i.bh = fmul float %i.c, %i.bc
  %i.bi = fmul float %i.f, %i.v
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = fadd float %i.bg, %i.bj
  store float %i.bk, ptr %i.be, align 4, !tbaa !19
  %.not102 = icmp ugt ptr %0, inttoptr (i64 -13 to ptr)
  br i1 %.not102, label %bb.h, label %bb.i, !prof !20, !nosanitize !11

bb.h:                                             ; preds = %bb.g
  %i.bl = add i64 %i.x, 12, !nosanitize !11
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.x, i64 %i.bl) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %foldExtExtBinop164 = fmul <2 x float> %i.w, %i.w
  %i.bn = extractelement <2 x float> %foldExtExtBinop164, i64 0
  %i.bo = fmul float %i.bc, %i.bc
  %foldExtExtBinop166 = fmul <2 x float> %foldExtExtBinop156, %foldExtExtBinop156
  %i.bp = extractelement <2 x float> %foldExtExtBinop166, i64 0
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = fadd float %i.bn, %i.bq
  store float %i.br, ptr %i.bm, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @b3UniqueCount(i32 noundef range(i32 0, 65536) %0, ptr noundef nonnull %1) unnamed_addr #6 !func_sanitize !106 {
bb.a:
  %trunc = trunc nuw i32 %0 to i16
  switch i16 %trunc, label %bb.aa [
    i16 1, label %bb.ab
    i16 2, label %bb.b
    i16 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !11  ; 4 uses
  %i.b = and i64 %i.a, 3, !nosanitize !11
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !11
  br i1 %i.c, label %bb.d, label %bb.c, !prof !12, !nosanitize !11

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @174, i64 %i.a) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.d:                                             ; preds = %bb.b
  %.not37 = icmp ugt ptr %1, inttoptr (i64 -5 to ptr)
  br i1 %.not37, label %bb.e, label %bb.f, !prof !20, !nosanitize !11

bb.e:                                             ; preds = %bb.d
  %i.d = add i64 %i.a, 4, !nosanitize !11
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @175, i64 %i.a, i64 %i.d) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %1, align 4, !tbaa !27
  %i.g = load i32, ptr %i.e, align 4, !tbaa !27
  %.not38 = icmp eq i32 %i.f, %i.g
  %i.h = select i1 %.not38, i32 1, i32 2
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %1 to i64, !nosanitize !11  ; 12 uses
  %i.j = and i64 %i.i, 3, !nosanitize !11
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !11
  br i1 %i.k, label %bb.i, label %bb.h, !prof !12, !nosanitize !11

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @176, i64 %i.i) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.i:                                             ; preds = %bb.g
  %i.l = load i32, ptr %1, align 4, !tbaa !27     ; 3 uses
  %i.m = add i64 %i.i, 4, !nosanitize !11         ; 3 uses
  %.not = icmp eq i64 %i.m, 0, !nosanitize !11    ; 3 uses
  %.not29 = icmp ugt ptr %1, inttoptr (i64 -5 to ptr)
  br i1 %.not29, label %bb.j, label %bb.k, !prof !20, !nosanitize !11

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @177, i64 %i.i, i64 %i.m) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27   ; 2 uses
  %.not30 = icmp eq i32 %i.l, %i.o
  br i1 %.not30, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = add i64 %i.i, 8, !nosanitize !11         ; 2 uses
  %.not31 = icmp eq i64 %i.p, 0, !nosanitize !11
  %.not32 = icmp ugt ptr %1, inttoptr (i64 -9 to ptr)
  br i1 %.not32, label %bb.m, label %bb.n, !prof !20, !nosanitize !11

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @178, i64 %i.i, i64 %i.p) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.n:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 2 uses
  %.not33 = icmp eq i32 %i.l, %i.r
  br i1 %.not33, label %.thread40, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %bb.q, !prof !20, !nosanitize !11

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @179, i64 %i.i, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.q:                                             ; preds = %bb.o
  br i1 %.not31, label %bb.r, label %bb.s, !prof !20, !nosanitize !11

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @180, i64 %i.i, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.s:                                             ; preds = %bb.q
  %.not34 = icmp eq i32 %i.o, %i.r
  br i1 %.not34, label %.thread39, label %bb.ab

bb.t:                                             ; preds = %bb.k
  br i1 %.not, label %bb.u, label %bb.v, !prof !107, !nosanitize !11

.thread40:                                        ; preds = %bb.n
  br i1 %.not, label %bb.u, label %.thread39, !prof !107, !nosanitize !11

bb.u:                                             ; preds = %.thread40, %bb.t
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @181, i64 %i.i, i64 %i.m) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.v:                                             ; preds = %bb.t
  %i.s = add i64 %i.i, 8, !nosanitize !11         ; 2 uses
  %.not35 = icmp eq i64 %i.s, 0, !nosanitize !11
  %.not36 = icmp ugt ptr %1, inttoptr (i64 -9 to ptr)
  br i1 %.not36, label %bb.w, label %bb.x, !prof !20, !nosanitize !11

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @182, i64 %i.i, i64 %i.s) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.x:                                             ; preds = %bb.v
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = icmp eq i32 %i.l, %i.u
  br i1 %i.v, label %bb.y, label %.thread39

bb.y:                                             ; preds = %bb.x
  br i1 %.not35, label %bb.z, label %bb.ab, !prof !20, !nosanitize !11

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @183, i64 %i.i, i64 0) #8, !nosanitize !11
  unreachable, !nosanitize !11

.thread39:                                        ; preds = %.thread40, %bb.s, %bb.x
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.s, %bb.a, %bb.aa, %.thread39, %bb.f
  %.0 = phi i32 [ 0, %bb.aa ], [ 2, %.thread39 ], [ %i.h, %bb.f ], [ 1, %bb.a ], [ 3, %bb.s ], [ 1, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
