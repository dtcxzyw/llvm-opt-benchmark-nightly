Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASEParser?download=true
inline.NumInlined: 2106
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp3ASE6Parser27ParseLV3ScaleAnimationBlockERNS0_9AnimationE:bb.a
bb.s:                                             ; preds = %bb.v, %.lr.ph.i
  %i.bn = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.bt, %bb.v ] ; 3 uses
  %i.bo = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i25, %bb.v ]
  %i.bp = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.bu, %bb.v ] ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  switch i8 %i.bq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.t
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 12, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  %i.br = trunc nuw i8 %i.bo to i1
  br i1 %i.br, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = add i32 %i.bn, 1                        ; 2 uses
  store i32 %i.bs, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i25 = phi i8 [ 1, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.bt = phi i32 [ %i.bs, %bb.u ], [ %i.bn, %bb.s ], [ %i.bn, %bb.t ]
  store i8 %storemerge.i25, ptr %i.f, align 4
  switch i8 %i.bq, label %bb.v [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.v:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  store ptr %i.bu, ptr %0, align 8
  %i.bv = icmp eq ptr %i.bu, %i.bl
  br i1 %i.bv, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.s

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.w:                                             ; preds = %bb.o
  tail call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.123) #29
  unreachable

bb.x:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.bw = load i8, ptr %i.f, align 4, !range !248, !noundef !249
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = load i32, ptr %i.g, align 8
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.x, %bb.q, %bb.p, %bb.o, %bb.y
  %storemerge = phi i8 [ 1, %bb.y ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.x ]
  %.13134 = phi i32 [ %.0, %bb.y ], [ %.0, %bb.o ], [ %i.bg, %bb.p ], [ %i.bh, %bb.q ], [ %.0, %bb.x ]
  store i8 %storemerge, ptr %i.f, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store ptr %i.ca, ptr %0, align 8
  br label %bb.b, !llvm.loop !367
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser25ParseLV3RotAnimationBlockERNS0_9AnimationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #11 align 2 !guid !371 {
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
  %i.k = phi ptr [ %.pre, %bb.a ], [ %i.ci, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 5 uses
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
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %.pre43, %bb.l ] ; 4 uses
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
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

bb.p:                                             ; preds = %.critedge.i.i.i
  %i.ax = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  store ptr %i.ax, ptr %0, align 8
  %.pre44 = load float, ptr %i.c, align 4
  %i.ay = fmul float %.pre44, 5.000000e-01
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit:  ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.p
  %i.az = phi float [ 0.000000e+00, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i ], [ %i.ay, %bb.p ] ; 2 uses
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = uitofp i32 %i.ba to double
  store double %i.bb, ptr %i.aj, align 8
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.22.0.copyload = load float, ptr %i.g, align 8 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %i.bc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bd = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.bc)
  %i.be = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %i.bd) ; 2 uses
  %i.bf = fcmp oeq float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.be)
  %i.bg = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %.sroa.01.0.copyload, %i.bi
  %i.bk = fmul float %.sroa.22.0.copyload, %i.bg
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.22.0.copyload, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit ], [ %i.bk, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.bl = phi <2 x float> [ %.sroa.01.0.copyload, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit ], [ %i.bj, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.bm = call noundef float @sinf(float noundef %i.az) #27 ; 2 uses
  %3 = call noundef float @cosf(float noundef %i.az) #27
  %4 = fmul float %.sroa.7.0.i, %i.bm
  %5 = getelementptr inbounds i8, ptr %i.ai, i64 -24
  store float %3, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -20
  %6 = insertelement <2 x float> poison, float %i.bm, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %i.bl, %7
  store <2 x float> %8, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -12
  store float %4, ptr %.sroa.6.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pre45 = load ptr, ptr %0, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, %bb.i
  %.ph = phi ptr [ %.pre45, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit ], [ %i.x, %bb.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.b
  %i.bn = phi i8 [ %.pr, %thread-pre-split ], [ %i.l, %bb.b ]
  %i.bo = phi ptr [ %.ph, %thread-pre-split ], [ %i.k, %bb.b ] ; 2 uses
  switch i8 %i.bn, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.r
    i8 125, label %bb.s
    i8 0, label %bb.y
    i8 13, label %bb.z
    i8 10, label %bb.z
    i8 12, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  %i.bp = add nsw i32 %.0, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.s:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %.0, -1                     ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 3 uses
  store ptr %i.bs, ptr %0, align 8
  %i.bt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %.promoted23.i = load i8, ptr %i.j, align 4
  %.promoted24.i = load i32, ptr %i.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %i.bv = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.cb, %bb.x ] ; 3 uses
  %i.bw = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i27, %bb.x ]
  %i.bx = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.cc, %bb.x ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  switch i8 %i.by, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.v
    i8 10, label %bb.v
    i8 0, label %bb.v
    i8 12, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u
  %i.bz = trunc nuw i8 %i.bw to i1
  br i1 %i.bz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add i32 %i.bv, 1                        ; 2 uses
  store i32 %i.ca, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.w, %bb.v, %bb.u
  %storemerge.i27 = phi i8 [ 1, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %i.cb = phi i32 [ %i.ca, %bb.w ], [ %i.bv, %bb.u ], [ %i.bv, %bb.v ]
  store i8 %storemerge.i27, ptr %i.j, align 4
  switch i8 %i.by, label %bb.x [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.x:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  store ptr %i.cc, ptr %0, align 8
  %i.cd = icmp eq ptr %i.cc, %i.bt
  br i1 %i.cd, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.u

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret void

bb.y:                                             ; preds = %bb.q
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.130) #29
  unreachable

bb.z:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.ce = load i8, ptr %i.j, align 4, !range !248, !noundef !249
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i32, ptr %i.i, align 8
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.z, %bb.s, %bb.r, %bb.q, %bb.aa
  %storemerge = phi i8 [ 1, %bb.aa ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.z ]
  %.13336 = phi i32 [ %.0, %bb.aa ], [ %.0, %bb.q ], [ %i.bp, %bb.r ], [ %i.bq, %bb.s ], [ %.0, %bb.z ]
  store i8 %storemerge, ptr %i.j, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  store ptr %i.ci, ptr %0, align 8
  br label %bb.b, !llvm.loop !370
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPfRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 !guid !372 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA35_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !373 {
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
  %i.y = landingpad { ptr, i32 }
end_hunk_0
