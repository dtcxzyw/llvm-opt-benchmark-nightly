Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/PretransformVertices?download=true
inline.NumInlined: 650
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode:bb.a

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.am, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.hj = load ptr, ptr %i.v, align 8
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hk, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.hl) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.he, ptr %1, align 8
  store ptr %i.hi, ptr %i.u, align 8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hc
  store ptr %i.hm, ptr %i.v, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.aj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.hn = phi ptr [ %.pre74, %bb.aj ], [ %i.he, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ho = phi ptr [ %i.gs, %bb.aj ], [ %i.hi, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = lshr exact i64 %i.hr, 3
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = add i32 %i.w, %i.ht
  %i.hv = load ptr, ptr %i.d, align 8
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv
  store i32 %i.hu, ptr %i.hw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hx = load i32, ptr %i.b, align 8
  %i.hy = zext i32 %i.hx to i64
  %i.hz = icmp samesign ult i64 %indvars.iv.next, %i.hy
  br i1 %i.hz, label %bb.b, label %.preheader, !llvm.loop !33

._crit_edge63:                                    ; preds = %bb.ap, %.preheader
  ret void

bb.ap:                                            ; preds = %.lr.ph62, %bb.ap
  %indvars.iv68 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next69, %bb.ap ] ; 2 uses
  %i.ia = load ptr, ptr %i.z, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv68
  %i.ic = load ptr, ptr %i.ib, align 8
  call void @_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.ic)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.id = load i32, ptr %i.x, align 8
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next69, %i.ie
  br i1 %i.if, label %bb.ap, label %._crit_edge63, !llvm.loop !34
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp13SceneCombiner4CopyEPP6aiMeshPKS1_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6Assimp20PretransformVertices21MakeIdentityTransformEP6aiNode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(93) %0, ptr nofree noundef captures(none) initializes((1028, 1092)) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store float 1.000000e+00, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZNK6Assimp20PretransformVertices21MakeIdentityTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.b, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !35
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6Assimp20PretransformVertices22BuildMeshRefCountArrayEPK6aiNodePj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(93) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %.preheader, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph15, %bb.c
  %indvars.iv18 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next19, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv18
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @_ZNK6Assimp20PretransformVertices22BuildMeshRefCountArrayEPK6aiNodePj(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.s, ptr noundef %2)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.t = load i32, ptr %i.d, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next19, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp20PretransformVertices7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(93) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::vector", align 8       ; 23 uses
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 29 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca [2 x i32], align 8                ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.6)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.dp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.j, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = tail call noundef i32 @_ZNK6Assimp20PretransformVertices10CountNodesEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.n)
  store i32 %i.o, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !range !38, !noundef !39
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1028 ; 2 uses
  %5 = load <4 x float>, ptr %i.s, align 4
  %.sroa.6532.0..sroa_idx533 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = load <4 x float>, ptr %.sroa.6532.0..sroa_idx533, align 8
  %.sroa.8535.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %7 = load <4 x float>, ptr %.sroa.8535.0..sroa_idx536, align 4
  %.sroa.10538.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load <4 x float>, ptr %.sroa.10538.0..sroa_idx539, align 8
  %.sroa.12541.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %9 = load <4 x float>, ptr %.sroa.12541.0..sroa_idx542, align 4
  %.sroa.14544.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load <4 x float>, ptr %.sroa.14544.0..sroa_idx545, align 8
  %.sroa.16547.0..sroa_idx548 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %11 = load <4 x float>, ptr %.sroa.16547.0..sroa_idx548, align 4
  %.sroa.18550.0..sroa_idx551 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = load <4 x float>, ptr %.sroa.18550.0..sroa_idx551, align 8
  %.sroa.20.0..sroa_idx553 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %13 = load <4 x float>, ptr %.sroa.20.0..sroa_idx553, align 4
  %.sroa.22.0..sroa_idx555 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %14 = load <4 x float>, ptr %.sroa.22.0..sroa_idx555, align 8
  %.sroa.24.0..sroa_idx557 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %15 = load <4 x float>, ptr %.sroa.24.0..sroa_idx557, align 4
  %.sroa.26.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %16 = load <4 x float>, ptr %.sroa.26.0..sroa_idx559, align 8
  %.sroa.28.0..sroa_idx561 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %17 = load <4 x float>, ptr %.sroa.28.0..sroa_idx561, align 4
  %.sroa.30.0..sroa_idx563 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.30.0.copyload564 = load float, ptr %.sroa.30.0..sroa_idx563, align 8
  %.sroa.32.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.32.0.copyload566 = load float, ptr %.sroa.32.0..sroa_idx565, align 4
  %.sroa.34.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.34.0.copyload568 = load float, ptr %.sroa.34.0..sroa_idx567, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1044 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1060 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1076 ; 2 uses
  %i.x = load <4 x float>, ptr %i.t, align 4      ; 4 uses
  %i.y = load <4 x float>, ptr %i.u, align 4      ; 4 uses
  %i.z = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x float> %i.z, %i.y
  %i.ab = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ab, <4 x float> %i.aa)
  %i.ad = load <4 x float>, ptr %i.v, align 4     ; 4 uses
  %i.ae = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.ae, <4 x float> %i.ac)
  %i.ag = load <4 x float>, ptr %i.w, align 4     ; 4 uses
  %i.ah = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ah, <4 x float> %i.af)
  store <4 x float> %i.ai, ptr %i.t, align 4
  %i.aj = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = fmul <4 x float> %i.aj, %i.y
  %i.al = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.an, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ap, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %i.u, align 4
  %i.ar = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fmul <4 x float> %i.ar, %i.y
  %i.at = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.at, <4 x float> %i.as)
  %i.av = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ax, <4 x float> %i.aw)
  store <4 x float> %i.ay, ptr %i.v, align 4
  %i.az = insertelement <4 x float> poison, float %.sroa.30.0.copyload564, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = fmul <4 x float> %i.ba, %i.y
  %i.bc = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.bc, <4 x float> %i.bb)
  %i.be = insertelement <4 x float> poison, float %.sroa.32.0.copyload566, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.bf, <4 x float> %i.bd)
  %i.bh = insertelement <4 x float> poison, float %.sroa.34.0.copyload568, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.bi, <4 x float> %i.bg)
  store <4 x float> %i.bj, ptr %i.w, align 4
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bk = phi ptr [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  tail call void @_ZN6Assimp20PretransformVertices24ComputeAbsoluteTransformEP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef %i.bk)
  %i.bl = load i32, ptr %i.i, align 8
  %.not715 = icmp eq i32 %i.bl, 0
  br i1 %.not715, label %._crit_edge606, label %.lr.ph605

.lr.ph605:                                        ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

._crit_edge606:                                   ; preds = %bb.k, %bb.d
  %i.bn = phi i32 [ 0, %bb.d ], [ %i.cl, %bb.k ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !range !38, !noundef !39
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %bb.t

bb.e:                                             ; preds = %.lr.ph605, %bb.k
  %indvars.iv774 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next775, %bb.k ] ; 2 uses
  %i.br = load ptr, ptr %i.bm, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv774
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 216 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %.not716 = icmp eq i32 %i.bv, 0
  br i1 %.not716, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 224
  br label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 224 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %bb.j

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.ca = phi i32 [ %i.bv, %.lr.ph ], [ %i.ci, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1048
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN6aiBoneD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.cg) #26
  br label %_ZN6aiBoneD2Ev.exit

_ZN6aiBoneD2Ev.exit:                              ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 1120) #26
  %.pre825 = load i32, ptr %i.bu, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN6aiBoneD2Ev.exit
  %i.ci = phi i32 [ %i.ca, %bb.f ], [ %.pre825, %_ZN6aiBoneD2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.f, label %._crit_edge, !llvm.loop !40

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  store ptr null, ptr %i.bx, align 8
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 1 ; 2 uses
  %i.cl = load i32, ptr %i.i, align 8             ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next775, %i.cm
  br i1 %i.cn, label %bb.e, label %._crit_edge606, !llvm.loop !41

bb.l:                                             ; preds = %._crit_edge606
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %i.m, align 8
  invoke void @_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode(ptr noundef nonnull align 8 dereferenceable(93) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.cp, i32 noundef %i.bn, ptr noundef %i.cq)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %3, align 8               ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  %.pre835 = load i32, ptr %i.i, align 8          ; 2 uses
  br i1 %i.cu, label %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = zext i32 %.pre835 to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = ashr exact i64 %i.cy, 3
  %i.da = add nsw i64 %i.cz, %i.cv                ; 2 uses
  %i.db = icmp ugt i64 %i.da, 2305843009213693951
  %i.dc = shl i64 %i.da, 3
  %i.dd = select i1 %i.db, i64 -1, i64 %i.dc
  %i.de = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #24
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %bb.n
  %i.df = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.dg = load i32, ptr %i.i, align 8             ; 2 uses
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %i.df, i64 %i.di, i1 false)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  %i.dk = lshr exact i64 %i.cy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.cr, i64 %i.cy, i1 false)
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = add i32 %i.dg, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.i, align 8
  %i.dn = icmp eq ptr %i.df, null
  br i1 %i.dn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc
  tail call void @_ZdaPv(ptr noundef nonnull %i.df) #26
  %.pre834.pre = load i32, ptr %i.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc
  %.pre834 = phi i32 [ %.pre834.pre, %bb.o ], [ %i.dm, %.noexc ]
  store ptr %i.de, ptr %i.co, align 8
  br label %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit

_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit: ; preds = %bb.m, %bb.p
  %i.do = phi i32 [ %.pre835, %bb.m ], [ %.pre834, %bb.p ]
  %.not721 = icmp eq i32 %i.do, 0
  br i1 %.not721, label %.loopexit574, label %.lr.ph661

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.n, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dg, %bb.df, %bb.de, %._crit_edge714, %bb.l
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.lr.ph661:                                        ; preds = %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit, %bb.r
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %bb.r ], [ 0, %_ZL22appendNewMeshesToSceneP7aiSceneRSt6vectorIP6aiMeshSaIS3_EE.exit ] ; 4 uses
  %i.dq = load ptr, ptr %i.co, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv786
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 224
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void @_ZNK6Assimp20PretransformVertices14ApplyTransformEP6aiMeshRK12aiMatrix4x4tIfE(ptr nonnull align 8 poison, ptr noundef nonnull %i.ds, ptr noundef nonnull align 4 dereferenceable(64) %i.du)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph661
  %i.dv = load ptr, ptr %i.co, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv786
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 224
  store ptr null, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %i.co, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv786
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 216
  store i32 0, ptr %i.ec, align 8
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %i.ed = load i32, ptr %i.i, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %indvars.iv.next787, %i.ee
  br i1 %i.ef, label %.lr.ph661, label %.loopexit574, !llvm.loop !42

bb.s:                                             ; preds = %.lr.ph661
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.t:                                             ; preds = %._crit_edge606
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8            ; 2 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %.not890 = icmp eq i32 %i.ei, 0
  br i1 %.not890, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.el = shl nuw nsw i64 %i.ej, 4
end_hunk_0
