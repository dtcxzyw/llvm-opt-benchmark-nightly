Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASEParser?download=true
inline.NumInlined: 2106
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp3ASE6Parser27ParseLV3ScaleAnimationBlockERNS0_9AnimationE:bb.a
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.x, %bb.q, %bb.p, %bb.o, %bb.y
  %storemerge = phi i8 [ 1, %bb.y ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.x ]
  %.13134 = phi i32 [ %.0, %bb.y ], [ %.0, %bb.o ], [ %i.bg, %bb.p ], [ %i.bh, %bb.q ], [ %.0, %bb.x ]
  store i8 %storemerge, ptr %i.f, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store ptr %i.ca, ptr %0, align 8
  br label %bb.b, !llvm.loop !99
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser25ParseLV3RotAnimationBlockERNS0_9AnimationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.a
  %i.k = phi ptr [ %.pre, %bb.a ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 5 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.13336, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 5 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 42
  br i1 %i.m, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = call i32 @strncmp(ptr noundef nonnull dereferenceable(19) @.str.127, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 18) #30
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 19 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  switch i8 %i.q, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 0, label %bb.e
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.not11.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %storemerge.i = select i1 %.not11.i, ptr %i.p, ptr %i.r
  store ptr %storemerge.i, ptr %0, align 8
  store i32 0, ptr %1, align 8
  %.pre41 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread: ; preds = %bb.d, %bb.c, %bb.e
  %i.s = phi ptr [ %.pre41, %bb.e ], [ %i.n, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  %.0.i29 = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ] ; 2 uses
  %i.t = call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.128, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 22) #30
  %.not.i16 = icmp eq i32 %i.t, 0
  br i1 %.not.i16, label %bb.f, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread

bb.f:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 22 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  switch i8 %i.v, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i18 = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %storemerge.i19 = select i1 %.not11.i18, ptr %i.u, ptr %i.w
  store ptr %storemerge.i19, ptr %0, align 8
  store i32 1, ptr %1, align 8
  %.pre42 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread: ; preds = %bb.f, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %bb.g
  %i.x = phi ptr [ %.pre42, %bb.g ], [ %i.s, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread ], [ %i.s, %bb.f ] ; 4 uses
  %.113 = phi i1 [ true, %bb.g ], [ %.0.i29, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread ], [ %.0.i29, %bb.f ]
  %i.y = call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.129, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 19) #30
  %.not.i21 = icmp eq i32 %i.y, 0
  br i1 %.not.i21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 19 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.aa, label %bb.i [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

.critedge:                                        ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.not11.i23 = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %storemerge.i24 = select i1 %.not11.i23, ptr %i.z, ptr %i.ab
  store ptr %storemerge.i24, ptr %0, align 8
  store i32 2, ptr %1, align 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread, %bb.h
  br i1 %.113, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.ac = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ad = load ptr, ptr %i.e, align 8
  %.not.i26 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 1, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.d, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  call void @_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ac)
  %.pre43 = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.k, %bb.l
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %.pre43, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %2)
  %i.ak = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.al = load ptr, ptr %0, align 8               ; 3 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = ptrtoaddr ptr %i.ak to i64
  %i.ao = sub i64 %i.an, %i.am
  %scevgep.i.i.i = getelementptr i8, ptr %i.al, i64 %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %.0.i.i.i = phi ptr [ %i.al, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ], [ %i.aq, %bb.o ] ; 4 uses
  %i.ap = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.ap, label %.critedge.i.i.i [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.ak
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.m, !llvm.loop !0

.critedge.i.i.i:                                  ; preds = %bb.n, %bb.m
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %scevgep.i.i.i, %bb.n ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.ar = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.ar, label %bb.p [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.as = load i32, ptr %i.i, align 8
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.as, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.au = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.av = load i32, ptr %i.i, align 8
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.i, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.a

bb.p:                                             ; preds = %.critedge.i.i.i
  %i.ax = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  store ptr %i.ax, ptr %0, align 8
  %.pre44 = load float, ptr %i.c, align 4
  %i.ay = fmul float %.pre44, 5.000000e-01
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.a

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.a: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.p
  %i.az = phi float [ 0.000000e+00, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i ], [ %i.ay, %bb.p ] ; 2 uses
  %3 = load i32, ptr %i.b, align 4
  %4 = uitofp i32 %3 to double
  store double %4, ptr %i.aj, align 8
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.22.0.copyload = load float, ptr %i.g, align 8 ; 3 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %6 = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %5)
  %7 = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %6)
  %8 = call noundef float @sqrtf(float noundef %7) #27 ; 2 uses
  %9 = fcmp oeq float %8, 0.000000e+00            ; 2 uses
  %10 = fdiv float 1.000000e+00, %8               ; 2 uses
  %11 = fmul float %.sroa.0.0.vec.extract8.i, %10
  %.sroa.0.0.vec.extract.pre-phi.i = select i1 %9, float %.sroa.0.0.vec.extract8.i, float %11
  %12 = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %.sroa.22.0.copyload, i64 1 ; 2 uses
  %14 = insertelement <2 x float> poison, float %10, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x float> %13, %15
  %17 = insertelement <2 x i1> poison, i1 %9, i64 0
  %18 = shufflevector <2 x i1> %17, <2 x i1> poison, <2 x i32> zeroinitializer
  %19 = select <2 x i1> %18, <2 x float> %13, <2 x float> %16
  %i.ba = call noundef float @sinf(float noundef %i.az) #27
  %i.bb = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.bc = call noundef float @cosf(float noundef %i.az) #27
  %i.bd = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ba, i64 1
  %20 = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %21 = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.be = insertelement <4 x float> %21, float %.sroa.0.0.vec.extract.pre-phi.i, i64 1
  %22 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %23 = shufflevector <4 x float> %i.be, <4 x float> %22, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bf = fmul <4 x float> %20, %23
  store <4 x float> %i.bf, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pre45 = load ptr, ptr %0, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.a, %bb.i
  %.ph = phi ptr [ %.pre45, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.a ], [ %i.x, %bb.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.b
  %i.bg = phi i8 [ %.pr, %thread-pre-split ], [ %i.l, %bb.b ]
  %i.bh = phi ptr [ %.ph, %thread-pre-split ], [ %i.k, %bb.b ] ; 2 uses
  switch i8 %i.bg, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.r
    i8 125, label %bb.s
    i8 0, label %bb.y
    i8 13, label %bb.z
    i8 10, label %bb.z
    i8 12, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %.0, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.s:                                             ; preds = %bb.q
  %i.bj = add nsw i32 %.0, -1                     ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 3 uses
  store ptr %i.bl, ptr %0, align 8
  %i.bm = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %.promoted23.i = load i8, ptr %i.j, align 4
  %.promoted24.i = load i32, ptr %i.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %i.bo = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.bu, %bb.x ] ; 3 uses
  %i.bp = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i27, %bb.x ]
  %i.bq = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.bv, %bb.x ] ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  switch i8 %i.br, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.v
    i8 10, label %bb.v
    i8 0, label %bb.v
    i8 12, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u
  %i.bs = trunc nuw i8 %i.bp to i1
  br i1 %i.bs, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = add i32 %i.bo, 1                        ; 2 uses
  store i32 %i.bt, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.w, %bb.v, %bb.u
  %storemerge.i27 = phi i8 [ 1, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %i.bu = phi i32 [ %i.bt, %bb.w ], [ %i.bo, %bb.u ], [ %i.bo, %bb.v ]
  store i8 %storemerge.i27, ptr %i.j, align 4
  switch i8 %i.br, label %bb.x [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.x:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 3 uses
  store ptr %i.bv, ptr %0, align 8
  %i.bw = icmp eq ptr %i.bv, %i.bm
  br i1 %i.bw, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.u

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret void

bb.y:                                             ; preds = %bb.q
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.130) #29
  unreachable

bb.z:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.bx = load i8, ptr %i.j, align 4, !range !17, !noundef !18
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load i32, ptr %i.i, align 8
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.z, %bb.s, %bb.r, %bb.q, %bb.aa
  %storemerge = phi i8 [ 1, %bb.aa ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.z ]
  %.13336 = phi i32 [ %.0, %bb.aa ], [ %.0, %bb.q ], [ %i.bi, %bb.r ], [ %i.bj, %bb.s ], [ %.0, %bb.z ]
  store i8 %storemerge, ptr %i.j, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.cb, ptr %0, align 8
  br label %bb.b, !llvm.loop !101
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPfRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA35_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #27
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #27
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_:bb.a
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !219
  store i8 0, ptr %i.e, align 8, !alias.scope !219
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !219 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !219 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !219 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !219 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !219
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #28
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #27
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #29
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  store double 0.000000e+00, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 1, ptr %i.s, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !alias.scope !227
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !223

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.x, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.w, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i18, i64 32, i1 false), !alias.scope !228
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !223

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.x, %.lr.ph.i.i.i16 ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ac, ptr %i.y, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::vector<Assimp::ASE::Bone>::_Temporary_value", align 8 ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %.not65 = icmp ult i64 %i.i, %2
  br i1 %.not65, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = load ptr, ptr %3, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.n, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.k, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE16_Temporary_valueC2IJRKS2_EEEPS4_DpOT_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %i.l, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE16_Temporary_valueC2IJRKS2_EEEPS4_DpOT_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE16_Temporary_valueC2IJRKS2_EEEPS4_DpOT_.exit

_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE16_Temporary_valueC2IJRKS2_EEEPS4_DpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.t, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.j, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.x = load ptr, ptr %i.d, align 8              ; 10 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %2
  br i1 %i.ac, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE16_Temporary_valueC2IJRKS2_EEEPS4_DpOT_.exit
  %.neg = mul i64 %2, -32                         ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %.neg ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ad, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.013.i.i.i.i.i, align 8
  %i.af = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.af, ptr %.013.i.i.i.i.i, align 8
  %i.am = load i64, ptr %i.ag, align 8
  store i64 %i.am, ptr %i.ae, align 8
  br label %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  store ptr %i.ag, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 0, ptr %i.an, align 8
  store i8 0, ptr %i.ag, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !229

_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %_ZSt10_ConstructIN6Assimp3ASE4BoneEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit

_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, %bb.f
  %i.as = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit ], [ %i.x, %bb.f ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2
  store ptr %i.at, ptr %i.d, align 8
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = sub i64 %i.au, %i.z
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPN6Assimp3ASE4BoneES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i ], [ %i.aw, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.az, %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i ], [ %i.x, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ay, %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i ], [ %i.ad, %_ZSt22__uninitialized_move_aIPN6Assimp3ASE4BoneES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 6 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ay, align 8            ; 6 uses
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i69
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, %.069.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bh, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bd, align 1
  store i8 %i.bj, ptr %i.ba, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bk = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.az, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZN6Assimp3ASE4BoneaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.bd, ptr %i.az, align 8
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  %i.br = load i64, ptr %i.be, align 8
  store i64 %i.br, ptr %i.bb, align 8
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.bb, align 8
  store ptr %i.bd, ptr %i.az, align 8
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
end_hunk_1
begin_hunk_2_@_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %2) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(36) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #27
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #27
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(37) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #27
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #27
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !256
  store i8 0, ptr %i.c, align 8, !alias.scope !256
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !256 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !256 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !256 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !256 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !256
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #27
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.218) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !261
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !260

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE4FaceESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 132                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 132                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 69874030582233151
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 69874030582233150, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %.08.i.i.i.prol, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 124
  store i32 -1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 128
  store i32 0, ptr %i.q, align 4
  %i.r = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 132 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !262

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3ASE4FaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %.08.i.i.i, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 124
  store i32 -1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256
  store i32 -1, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 260
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 388
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 392
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 520
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 524
  store i32 0, ptr %i.ae, align 4
  %i.af = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 528 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3ASE4FaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !263

_ZSt27__uninitialized_default_n_aIPN6Assimp3ASE4FaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.218) #29
  unreachable

_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 69874030582233150) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 132
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #32 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp3ASE4FaceESaIS2_EE12_M_check_lenEmPKc.exit ]
end_hunk_2
begin_hunk_3_@_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.prol ]
  %i.ac = sub i64 %i.k, %2
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %i.ae, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %i.af, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 36
  store i8 %.sroa.4.8.copyload, ptr %i.ag, align 4
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ah = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !278

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.aj = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.aj, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  store ptr %i.ak, ptr %i.c, align 8
  br label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i70 ], [ %i.aj, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i71, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i72, i64 12, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 12
  %.not.i.i.i.i.i73 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !275

_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ap, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 4
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 12 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !276

_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit:   ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8               ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.f, %i.ar
  %i.at = sdiv exact i64 %i.as, 12                ; 4 uses
  %i.au = sub nsw i64 768614336404564650, %i.at
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.215) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %2)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 768614336404564650)
  %i.az = select i1 %i.ax, i64 768614336404564650, i64 %i.ay ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.ba, %i.ar
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = mul nuw nsw i64 %i.az, 12
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #32
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb ; 2 uses
  %xtraiter142 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i82.prol ], [ %i.bf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bg = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 12 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !279

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bh, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ], [ %i.bg, %.lr.ph.i.i.i.i82.prol ]
  %i.bi = icmp ult i64 %2, 4
  br i1 %i.bi, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bm, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bm = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !278

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.aq, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i89 ], [ %i.be, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i89 ], [ %i.aq, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i91, i64 12, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 12 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bo, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !275

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.be, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bp, %.lr.ph.i.i.i.i.i89 ]
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i95 ], [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i97, i64 12, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 12 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.br, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !275

_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.bs, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.aq, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bv) #28
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP10aiVector3tIfES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %bb.m
  store ptr %i.be, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.az
  store ptr %i.bw, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIP10aiVector3tIfES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin allocsize(0) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null, null}
!4 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = distinct !{null, null}
!8 = distinct !{null}
!9 = distinct !{!9, !16}
!10 = distinct !{!10, !16}
!11 = distinct !{!11, !16}
!12 = distinct !{!12, !16}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{ptr @_ZN6Assimp3ASE8MaterialD2Ev}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!23 = distinct !{!23, !22, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!25 = distinct !{!25, !24, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!27 = distinct !{!27, !26, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!29 = distinct !{!29, !28, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!30 = !{!23}
!31 = !{!25}
!32 = !{!27}
!33 = !{!29}
!34 = !{!29, !27, !25, !23}
!35 = distinct !{!35, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!36 = distinct !{!36, !35, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!38 = distinct !{!38, !37, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!40 = distinct !{!40, !39, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!42 = distinct !{!42, !41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!43 = !{!36}
!44 = !{!38}
!45 = !{!40}
!46 = !{!42}
!47 = !{!42, !40, !38, !36}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!55 = distinct !{!55, !54, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, i1 true, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !65, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, i1 true, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !70, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = !{!63}
!76 = !{!64}
!77 = !{!66}
!78 = !{!67}
!79 = !{!71}
!80 = !{!72}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!84 = distinct !{!84, !83, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!85 = distinct !{!85, !16}
!86 = !{!84}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !91, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !16}
!95 = !{!93, !92}
!96 = distinct !{!96, i1 true, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!97 = distinct !{!97, !96, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!98 = distinct !{!98, !96, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!99 = distinct !{!99, !16}
!100 = !{!98, !97}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, i1 true, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_"}
!113 = distinct !{!113, !112, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !112, !"_ZSt19__relocate_object_aISt4pairIifES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = !{!113}
!118 = !{!114}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!121 = distinct !{!121, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!123 = distinct !{!123, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = !{!121}
!127 = !{!123}
!128 = distinct !{!128, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!129 = distinct !{!129, !128, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!131 = distinct !{!131, !130, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!132 = !{!129}
!133 = !{!131}
!134 = !{!131, !129}
!135 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null, null, null}
!136 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null, null}
!137 = distinct !{ptr @_ZN6Assimp3ASE8MaterialD2Ev, null}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!140 = distinct !{!140, !139, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!142 = distinct !{!142, !141, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!144 = distinct !{!144, !143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!145 = !{!140}
!146 = !{!142}
!147 = !{!144}
!148 = !{!144, !142, !140}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_"}
!155 = distinct !{!155, !154, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !154, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_"}
!159 = distinct !{!159, !158, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aIN6Assimp3ASE6CameraES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!161 = !{!156, !155}
!162 = !{!160, !159}
!163 = distinct !{!163, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!166 = distinct !{!166, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_"}
!167 = distinct !{!167, !166, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!168 = distinct !{!168, !166, !"_ZSt19__relocate_object_aIN6Assimp3ASE10BoneVertexES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!169 = !{!164}
!170 = !{!165}
!171 = !{!167}
!172 = !{!168}
!173 = distinct !{!173, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !173, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!176 = distinct !{!176, !16}
!177 = distinct !{!177, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!178 = distinct !{!178, !177, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!179 = distinct !{!179, !177, !"_ZSt19__relocate_object_aIN6Assimp3ASE4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!180 = !{!174}
!181 = !{!175}
!182 = !{!174, !175}
!183 = !{!178}
!184 = !{!179}
!185 = !{!178, !179}
end_hunk_3
