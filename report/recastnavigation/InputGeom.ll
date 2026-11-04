Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/InputGeom?download=true
inline.NumInlined: 897
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9InputGeom23deleteOffMeshConnectionEi:bb.a
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.o, label %bb.p, !prof !83

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull align 1 %i.az, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13

bb.p:                                             ; preds = %bb.n
  %i.bh = icmp eq i64 %i.bf, 1
  br i1 %i.bh, label %bb.q, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13

bb.q:                                             ; preds = %bb.p
  %i.bi = load i8, ptr %i.az, align 1, !tbaa !16
  store i8 %i.bi, ptr %i.ay, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13

_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13: ; preds = %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit, %bb.o, %bb.p, %bb.q
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !172
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.t ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !172 ; 5 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, 2
  br i1 %i.bv, label %bb.s, label %bb.t, !prof !83

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bn, ptr nonnull align 2 %i.bo, i64 %i.bu, i1 false)
  %.pre.i.i14 = load ptr, ptr %i.bp, align 8, !tbaa !51
  br label %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = icmp eq i64 %i.bu, 2
  br i1 %i.bw, label %bb.u, label %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit

bb.u:                                             ; preds = %bb.t
  %i.bx = load i16, ptr %i.bo, align 2, !tbaa !78
  store i16 %i.bx, ptr %i.bn, align 2, !tbaa !78
  br label %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit

_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit: ; preds = %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13, %bb.s, %bb.t, %bb.u
  %i.by = phi ptr [ %i.bq, %bb.u ], [ %i.bq, %bb.t ], [ %.pre.i.i14, %bb.s ], [ %i.bq, %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EE.exit13 ]
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -2
  store ptr %i.bz, ptr %i.bp, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.t ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !82 ; 5 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cd to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, 4
  br i1 %i.ck, label %bb.w, label %bb.x, !prof !83

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.cd, i64 %i.cj, i1 false)
  %.pre.i.i15 = load ptr, ptr %i.ce, align 8, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

bb.x:                                             ; preds = %bb.v
  %i.cl = icmp eq i64 %i.cj, 4
  br i1 %i.cl, label %bb.y, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

bb.y:                                             ; preds = %bb.x
  %i.cm = load i32, ptr %i.cd, align 4, !tbaa !26
  store i32 %i.cm, ptr %i.cc, align 4, !tbaa !26
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit: ; preds = %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit, %bb.w, %bb.x, %bb.y
  %i.cn = phi ptr [ %i.cf, %bb.y ], [ %i.cf, %bb.x ], [ %.pre.i.i15, %bb.w ], [ %i.cf, %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #14, !call_target !89
  %i.d = load ptr, ptr %1, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, float noundef 2.000000e+00) #14, !call_target !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  %wide.trip.count = and i64 %i.n, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1) #14, !call_target !102
  %i.w = load ptr, ptr %1, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true) #14, !call_target !89
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !25
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 9 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 4 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !24
  %i.ag = load ptr, ptr %1, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.ab, float noundef %i.ad, float noundef %i.af, i32 noundef 1073741824) #14, !call_target !106
  %i.aj = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ak = load float, ptr %i.ac, align 4, !tbaa !24
  %i.al = fadd float %i.ak, 2.000000e-01
  %i.am = load float, ptr %i.ae, align 4, !tbaa !24
  %i.an = load ptr, ptr %1, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.aj, float noundef %i.al, float noundef %i.am, i32 noundef 1073741824) #14, !call_target !106
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 4 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 4 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !24
  %i.aw = load ptr, ptr %1, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.ar, float noundef %i.at, float noundef %i.av, i32 noundef 1073741824) #14, !call_target !106
  %i.az = load float, ptr %i.aq, align 4, !tbaa !24
  %i.ba = load float, ptr %i.as, align 4, !tbaa !24
  %i.bb = fadd float %i.ba, 2.000000e-01
  %i.bc = load float, ptr %i.au, align 4, !tbaa !24
  %i.bd = load ptr, ptr %1, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.az, float noundef %i.bb, float noundef %i.bc, i32 noundef 1073741824) #14, !call_target !106
  %i.bg = load float, ptr %i.aa, align 4, !tbaa !24
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !24
  %i.bi = fadd float %i.bh, 1.000000e-01
  %i.bj = load float, ptr %i.ae, align 4, !tbaa !24
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !24
  tail call void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef nonnull %1, float noundef %i.bg, float noundef %i.bi, float noundef %i.bj, float noundef %i.bm, i32 noundef 1073741824) #14
  %i.bn = load float, ptr %i.aq, align 4, !tbaa !24
  %i.bo = load float, ptr %i.as, align 4, !tbaa !24
  %i.bp = fadd float %i.bo, 1.000000e-01
  %i.bq = load float, ptr %i.au, align 4, !tbaa !24
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !24
  tail call void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef nonnull %1, float noundef %i.bn, float noundef %i.bp, float noundef %i.bq, float noundef %i.bt, i32 noundef 1073741824) #14
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bu = load float, ptr %i.aa, align 4, !tbaa !24
  %i.bv = load float, ptr %i.ac, align 4, !tbaa !24
  %i.bw = load float, ptr %i.ae, align 4, !tbaa !24
  %i.bx = load float, ptr %i.aq, align 4, !tbaa !24
  %i.by = load float, ptr %i.as, align 4, !tbaa !24
  %i.bz = load float, ptr %i.au, align 4, !tbaa !24
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %3 = and i8 %i.cc, 1
  %.not = icmp eq i8 %3, 0
  %i.cd = select i1 %.not, float 0.000000e+00, float 6.000000e-01
  tail call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %1, float noundef %i.bu, float noundef %i.bv, float noundef %i.bw, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef 2.500000e-01, float noundef %i.cd, float noundef 6.000000e-01, i32 noundef -1065353024) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !173
}

declare void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %struct.ConvexVolume, align 4       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %6, i8 0, i64 144, i1 false)
  %i.a = sext i32 %2 to i64
  %i.b = mul nsw i64 %i.a, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr align 4 %1, i64 %i.b, i1 false)
  %.148..148..148..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float %3, ptr %.148..148..148..sroa_idx, align 4, !tbaa !107
  %.152..152..152..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store float %4, ptr %.152..152..152..sroa_idx, align 4, !tbaa !108
  %.144..144..144..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 %2, ptr %.144..144..144..sroa_idx, align 4, !tbaa !75
  %i.c = zext i8 %5 to i32
  %.156..156..156..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 %i.c, ptr %.156..156..156..sroa_idx, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.f, ptr noundef nonnull align 4 dereferenceable(160) %6, i64 160, i1 false), !tbaa.struct !73
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr %i.j, ptr %i.e, align 8, !tbaa !58
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775680
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = sdiv exact i64 %i.n, 160                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 57646075230342348)
  %i.t = select i1 %i.r, i64 57646075230342348, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = mul nuw nsw i64 %i.t, 160
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.w, ptr noundef nonnull align 4 dereferenceable(160) %6, i64 160, i1 false), !tbaa.struct !73
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(160) %.0911.i.i.i.i.i, i64 160, i1 false), !tbaa.struct !73, !alias.scope !177
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 160
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #17
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !57
  store ptr %i.z, ptr %i.e, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !72
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9InputGeom18deleteConvexVolumeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [160 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp sgt i64 %i.k, 160
  br i1 %i.l, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.e, i64 %i.k, i1 false)
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, 160
  br i1 %i.m, label %bb.e, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.d, ptr noundef nonnull align 4 dereferenceable(160) %i.e, i64 160, i1 false), !tbaa.struct !73
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -160
  store ptr %i.o, ptr %i.f, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom17drawConvexVolumesEP11duDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #14, !call_target !89
  %i.d = load ptr, ptr %1, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2, float noundef 1.000000e+00) #14, !call_target !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge156, label %.lr.ph155

._crit_edge156:                                   ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1) #14, !call_target !102
  %i.o = load ptr, ptr %1, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, float noundef 2.000000e+00) #14, !call_target !93
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge165, label %.lr.ph164

.lr.ph155:                                        ; preds = %bb.a, %._crit_edge
  %.sroa.0148.0153 = phi ptr [ %i.am, %._crit_edge ], [ %i.h, %bb.a ] ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81
  %i.w = load ptr, ptr %1, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.v) #14, !call_target !183 ; 2 uses
  %i.aa = and i32 %i.z, 16777215
  %i.ab = or disjoint i32 %i.aa, 536870912        ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 144 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph155
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 152 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 148 ; 3 uses
  %i.aj = lshr i32 %i.z, 1
end_hunk_0
