inline.NumInlined: 1056
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE:bb.a
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.k
  %i.at = tail call noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvh15optional_detail15OptionalStorageIN6hermes6parser15JSONSharedValueELb0EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit
  %i.au = trunc i64 %i.b to i32
  ret i32 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::pair.64", align 8     ; 9 uses
  store ptr %1, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.h = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i32, ptr %i.k, align 8, !tbaa !47
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.m
  %.not8 = icmp ne ptr %i.i, %i.n
  %.not.not = select i1 %i.h, i1 %.not8, i1 false
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  %i.q = zext i32 %i.p to i64
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ne ptr %i.u, null
  %.neg.i.i = sext i1 %i.ab to i64
  %i.ac = add nsw i64 %i.aa, %.neg.i.i
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !58  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5
  %i.al = add nsw i64 %i.ad, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5
  %i.at = add nsw i64 %i.al, %i.as                ; 2 uses
  %i.au = trunc i64 %i.at to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.av = load ptr, ptr %3, align 8, !tbaa !61    ; 4 uses
  store ptr %i.av, ptr %i.d, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !63  ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  %.not.i = icmp eq ptr %i.ae, %i.ba
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store ptr %i.bb, ptr %i.ae, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !70
  %i.bd = icmp ugt i64 %i.aw, 15
  br i1 %i.bd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.be = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.be, ptr %i.ae, align 8, !tbaa !71
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !70
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.bg = phi ptr [ %i.be, %bb.e ], [ %i.bb, %bb.d ] ; 2 uses
  switch i64 %i.aw, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.av, align 1, !tbaa !28
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !68
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !72
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJPKcSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !58, !noalias !73
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i
  %i.bn = phi ptr [ %.pre, %bb.h ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !59, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.i, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

bb.i:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !53, !noalias !73
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit, %bb.i
  %i.bu = phi ptr [ %i.bt, %bb.i ], [ %i.bn, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  store ptr %i.bw, ptr %4, align 8, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !68
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.au, ptr %i.ca, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !80
  %i.cb = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !80
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !80
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit
  %i.cd = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E20InsertIntoBucketImplIS2_EEPS7_RKS2_RKT_SB_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef %i.cc), !noalias !80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 16, i1 false), !tbaa.struct !85, !noalias !80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !3, !noalias !80
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !3, !noalias !80
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit, %bb.b
  %.0 = phi i64 [ %i.q, %bb.b ], [ %i.at, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::Optional.18", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i8, ptr %i.a, align 4, !tbaa !86, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !91   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ugt i64 %i.n, %i.f
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.e to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !103
  %i.u = add nsw i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !104
  %i.x = add nsw i32 %i.w, 1
  call void @_ZNK6hermes9SourceMap20getSegmentForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.18") align 4 %3, ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.u, i32 noundef %i.x) #16
  %.sroa.0.sroa.0.0.copyload = load <28 x i8>, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 29
  %.sroa.5.sroa.0.0.copyload = load <3 x i8>, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.sroa.0.sroa.0.0 = phi <28 x i8> [ undef, %bb.c ], [ %.sroa.0.sroa.0.0.copyload, %bb.d ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.5.sroa.0.0 = phi <3 x i8> [ undef, %bb.c ], [ %.sroa.5.sroa.0.0.copyload, %bb.d ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.r, %bb.d ], [ null, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0 = phi i8 [ 0, %bb.c ], [ %.sroa.4.0.copyload, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  store <28 x i8> %.sroa.0.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx7, align 4
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store <3 x i8> %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx9, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0, ptr %i.y, align 8, !tbaa !105, !alias.scope !111
  ret void
}

declare void @_ZNK6hermes9SourceMap20getSegmentForAddressEjj(ptr dead_on_unwind writable sret(%"class.llvh::Optional.18") align 4, ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes18SourceMapGenerator18hasSourcesMetadataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %.not1314.not = icmp eq ptr %i.b, %i.d
  br i1 %.not1314.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.09.015 = phi ptr [ %i.j, %.critedge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.sroa.09.015, align 8, !tbaa !34
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %.not = icmp eq i32 %i.i, 5
  br i1 %.not, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %.not13.not = icmp eq ptr %i.j, %i.d
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.critedge, %bb.a
  %.not13.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.not13.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18SourceMapGenerator21encodeSourceLocationsERKNS0_5StateEN4llvh8ArrayRefINS_9SourceMap7SegmentEEERNS4_11raw_ostreamE(ptr dead_on_unwind noalias nofree writable sret(%"struct.hermes::SourceMapGenerator::State") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr nofree readonly captures(address) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !3
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !3
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !115
  %.idx = mul nuw nsw i64 %3, 28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.promoted = load i32, ptr %0, align 4          ; 2 uses
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.e, label %_ZN4llvh11raw_ostreamlsEPKc.exit.peel

_ZN4llvh11raw_ostreamlsEPKc.exit.peel:            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted41 = load i32, ptr %i.d, align 4
  %.promoted42 = load i32, ptr %i.e, align 4
  %.promoted43 = load i32, ptr %i.f, align 4
  %.promoted44 = load i32, ptr %i.g, align 4
  %i.h = load i32, ptr %2, align 4, !tbaa !116    ; 3 uses
  %i.i = sub nsw i32 %i.h, %.promoted
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %i.i) #16 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i8, ptr %i.k, align 4, !tbaa !86, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.peel
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !91   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !103  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !104  ; 3 uses
  %i.t = sub nsw i32 %i.o, %.promoted41
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %i.t) #16
  %i.v = sub nsw i32 %i.q, %.promoted42
  %i.w = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %i.u, i32 noundef %i.v) #16
  %i.x = sub nsw i32 %i.s, %.promoted43
  %i.y = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %i.w, i32 noundef %i.x) #16 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !118, !range !17, !noundef !18
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.ae = sub nsw i32 %i.ad, %.promoted44
  %i.af = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %i.ae) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZN4llvh11raw_ostreamlsEPKc.exit.peel
  %.sroa.6.1.peel = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.b ], [ %.sroa.6.0.copyload, %_ZN4llvh11raw_ostreamlsEPKc.exit.peel ] ; 2 uses
  %.sroa.8.1.peel = phi i32 [ %i.q, %bb.c ], [ %i.q, %bb.b ], [ %.sroa.8.0.copyload, %_ZN4llvh11raw_ostreamlsEPKc.exit.peel ] ; 2 uses
  %.sroa.10.1.peel = phi i32 [ %i.s, %bb.c ], [ %i.s, %bb.b ], [ %.sroa.10.0.copyload, %_ZN4llvh11raw_ostreamlsEPKc.exit.peel ] ; 2 uses
  %.sroa.12.1.peel = phi i32 [ %i.ad, %bb.c ], [ %.sroa.12.0.copyload, %bb.b ], [ %.sroa.12.0.copyload, %_ZN4llvh11raw_ostreamlsEPKc.exit.peel ] ; 2 uses
  %.not.peel = icmp eq i64 %3, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.f

._crit_edge:                                      ; preds = %bb.k, %bb.d
  %.sroa.6.1.lcssa = phi i32 [ %.sroa.6.1.peel, %bb.d ], [ %.sroa.6.1, %bb.k ]
  %.sroa.8.1.lcssa = phi i32 [ %.sroa.8.1.peel, %bb.d ], [ %.sroa.8.1, %bb.k ]
  %.sroa.10.1.lcssa = phi i32 [ %.sroa.10.1.peel, %bb.d ], [ %.sroa.10.1, %bb.k ]
  %.sroa.12.1.lcssa = phi i32 [ %.sroa.12.1.peel, %bb.d ], [ %.sroa.12.1, %bb.k ]
  %.lcssa45 = phi i32 [ %i.h, %bb.d ], [ %i.am, %bb.k ]
  store i32 %.sroa.6.1.lcssa, ptr %i.d, align 4
  store i32 %.sroa.8.1.lcssa, ptr %i.e, align 4
  store i32 %.sroa.10.1.lcssa, ptr %i.f, align 4
  store i32 %.sroa.12.1.lcssa, ptr %i.g, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa = phi i32 [ %.lcssa45, %._crit_edge ], [ %.promoted, %bb.a ]
  store i32 %.lcssa, ptr %0, align 4
  ret void

bb.f:                                             ; preds = %.peel.next, %bb.k
  %i.ah = phi i32 [ %.sroa.12.1.peel, %.peel.next ], [ %.sroa.12.1, %bb.k ] ; 3 uses
  %i.ai = phi i32 [ %.sroa.10.1.peel, %.peel.next ], [ %.sroa.10.1, %bb.k ] ; 2 uses
  %i.aj = phi i32 [ %.sroa.8.1.peel, %.peel.next ], [ %.sroa.8.1, %bb.k ] ; 2 uses
  %i.ak = phi i32 [ %.sroa.6.1.peel, %.peel.next ], [ %.sroa.6.1, %bb.k ] ; 2 uses
  %.03235 = phi ptr [ %i.ag, %.peel.next ], [ %i.br, %bb.k ] ; 8 uses
  %i.al = phi i32 [ %i.h, %.peel.next ], [ %i.am, %bb.k ]
  %i.am = load i32, ptr %.03235, align 4, !tbaa !116 ; 3 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !122 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @.str.1, i64 noundef 1) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.f
  store i8 44, ptr %i.ao, align 1
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.c, align 8, !tbaa !122
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.aq, %bb.g ], [ %4, %bb.h ]
  %i.at = sub nsw i32 %i.am, %i.al
  %i.au = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i32 noundef %i.at) #16 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03235, i64 24
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !86, !range !17, !noundef !18
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.03235, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !91 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03235, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !103 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03235, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104 ; 3 uses
  %i.be = sub nsw i32 %i.az, %i.ak
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %i.be) #16
  %i.bg = sub nsw i32 %i.bb, %i.aj
  %i.bh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %i.bf, i32 noundef %i.bg) #16
  %i.bi = sub nsw i32 %i.bd, %i.ai
  %i.bj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %i.bh, i32 noundef %i.bi) #16 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03235, i64 20
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !118, !range !17, !noundef !18
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.03235, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = sub nsw i32 %i.bo, %i.ah
  %i.bq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes9base64vlq6encodeERN4llvh11raw_ostreamEi(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %i.bp) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.sroa.6.1 = phi i32 [ %i.az, %bb.j ], [ %i.az, %bb.i ], [ %i.ak, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %i.bb, %bb.j ], [ %i.bb, %bb.i ], [ %i.aj, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %i.bd, %bb.j ], [ %i.bd, %bb.i ], [ %i.ai, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %i.bo, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03235, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.a
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !123
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator20getVLQMappingsStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::raw_string_ostream", align 8 ; 12 uses
  %3 = alloca %"struct.hermes::SourceMapGenerator::State", align 4 ; 6 uses
  %4 = alloca %"struct.hermes::SourceMapGenerator::State", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !68
  store i8 0, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %.not10 = icmp eq ptr %i.h, %i.j
  br i1 %.not10, label %_ZN4llvh11raw_ostream5flushEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !122
  %.pre12 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.m = icmp eq ptr %.pre, %.pre12
  br i1 %i.m, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #16
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.a, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEc.exit
  %.sroa.07.011 = phi ptr [ %i.h, %.lr.ph ], [ %i.y, %_ZN4llvh11raw_ostreamlsEc.exit ] ; 3 uses
  store i32 0, ptr %3, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.n = load ptr, ptr %.sroa.07.011, align 8, !tbaa !131 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 28
  call void @_ZN6hermes18SourceMapGenerator21encodeSourceLocationsERKNS0_5StateEN4llvh8ArrayRefINS_9SourceMap7SegmentEEERNS4_11raw_ostreamE(ptr dead_on_unwind nonnull writable sret(%"struct.hermes::SourceMapGenerator::State") align 4 %4, ptr noundef nonnull align 4 dereferenceable(20) %3, ptr %i.n, i64 %i.t, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !122  ; 3 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !119
  %.not.i5 = icmp ult ptr %i.u, %i.v
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 59) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %i.k, align 8, !tbaa !122
  store i8 59, ptr %i.u, align 1, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.d, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.j
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator10getSourcesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !135 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !135 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !135 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58, !noalias !140 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59, !noalias !140
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !140 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.l, null
  %.neg.i.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i.i
  %i.t = shl nsw i64 %i.s, 4
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, %i.t                     ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 576460752303423487
  br i1 %i.ae, label %bb.b, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.af = shl nuw nsw i64 %i.ad, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ah = phi ptr [ %i.ag, %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i ], [ null, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !145
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !148
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.aw, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.al = phi ptr [ %i.av, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.b, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.05.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ], [ %i.ah, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71
  store ptr %i.am, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !68
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ak
  br i1 %i.ar, label %bb.c, label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  br label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i = phi ptr [ %i.as, %bb.c ], [ %.sroa.9.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.av = phi ptr [ %i.at, %bb.c ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aw = phi ptr [ %i.au, %bb.c ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !149

_ZNSt6vectorIN4llvh9StringRefESaIS1_EEC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_PSC_EvEET_SG_RKS2_.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i ], [ %i.ax, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes18SourceMapGenerator25mergedWithInputSourceMapsEv(ptr dead_on_unwind noalias writable sret(%"class.hermes::SourceMapGenerator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Optional.18", align 4 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.llvh::Optional", align 16   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !151 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60, !noalias !151 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !151 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58, !noalias !158 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59, !noalias !158
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53, !noalias !158 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ne ptr %i.l, null
  %.neg.i.i.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.p, %.neg.i.i.i.i
  %i.s = shl nsw i64 %i.r, 4
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 5
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 5
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.s                     ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17, !noalias !163
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.ae = shl nuw nsw i64 %i.ac, 4
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #18, !noalias !163
  br label %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i
  %i.ag = phi ptr [ %i.af, %_ZNSt15__new_allocatorIN4llvh9StringRefEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i ] ; 4 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi ptr [ %.sroa.9.1.i.i.i.i.i.i, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ %i.at, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.b, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71, !noalias !163
  store ptr %i.aj, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !61, !noalias !163
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !68, !noalias !163
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !63, !noalias !163
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %bb.c, label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79, !noalias !163 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  br label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i

_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.c ], [ %.sroa.9.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.as = phi ptr [ %i.aq, %bb.c ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.at = phi ptr [ %i.ar, %bb.c ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !149

_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh9StringRefESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 176, i1 false)
  store i64 8, ptr %i.aw, align 8, !tbaa !164
  %i.ax = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !165
  %.06.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  %i.ay = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 6 uses
  store ptr %i.ay, ptr %.06.i.i.ptr.i.i.i.i, align 8, !tbaa !79
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.ba, align 8, !tbaa !53
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 512 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.06.i.i.ptr.i.i.i.i, ptr %i.bf, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !60
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !166
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bj, i8 0, i64 44, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !167
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !169
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 24                ; 2 uses
  %i.bs = and i64 %i.br, 4294967295
  %.not201 = icmp eq i64 %i.bs, 0
  br i1 %.not201, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = and i64 %i.br, 4294967295
  br label %bb.f

._crit_edge200:                                   ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23, %_ZNK6hermes18SourceMapGenerator10getSourcesEv.exit
  %.not.i = icmp eq ptr %1, %0
  br i1 %.not.i, label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge200
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(20) %i.ce, ptr noundef nonnull align 8 dereferenceable(20) %i.cf)
  br label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit

_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit: ; preds = %._crit_edge200, %bb.d
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit
  %.idx = shl nuw nsw i64 %i.ac, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %.idx) #19
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit:  ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEEaSERKS9_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph199, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 5 uses
  %.sroa.063.0195 = phi ptr [ undef, %.lr.ph199 ], [ %.sroa.063.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %.sroa.3.0194 = phi ptr [ undef, %.lr.ph199 ], [ %.sroa.3.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %.sroa.5.0193 = phi ptr [ undef, %.lr.ph199 ], [ %.sroa.5.1.lcssa, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23 ] ; 2 uses
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !169
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !170 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170 ; 2 uses
  %.not139170 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not139170, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit, %bb.f
  %.sroa.14132.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.14132.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.9129.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.9129.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.0126.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.0126.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.5.1.lcssa = phi ptr [ %.sroa.5.0193, %bb.f ], [ %.sroa.5.2313, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.3.1.lcssa = phi ptr [ %.sroa.3.0194, %bb.f ], [ %.sroa.3.2315, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.063.1.lcssa = phi ptr [ %.sroa.063.0195, %bb.f ], [ %.sroa.063.2317, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ]
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !167
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !169 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24                ; 2 uses
  %.not.i19 = icmp ugt i64 %i.cq, %indvars.iv
  br i1 %.not.i19, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cr = add nuw nsw i64 %indvars.iv, 1
  %i.cs = sub nuw nsw i64 %i.cr, %i.cq
  call void @_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.cs)
  %.pre218 = load ptr, ptr %i.cc, align 8, !tbaa !169
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i: ; preds = %bb.g, %._crit_edge
  %i.ct = phi ptr [ %i.cm, %._crit_edge ], [ %.pre218, %bb.g ]
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %indvars.iv ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !131 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !171
  store ptr %.sroa.0126.0.lcssa, ptr %i.cu, align 8, !tbaa !131
  store ptr %.sroa.9129.0.lcssa, ptr %i.cw, align 8, !tbaa !134
  store ptr %.sroa.14132.0.lcssa, ptr %i.cx, align 8, !tbaa !171
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EED2Ev.exit23: ; preds = %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE6resizeEm.exit.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge200, label %bb.f, !llvm.loop !172

.lr.ph:                                           ; preds = %bb.f, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit
  %.sroa.063.1179 = phi ptr [ %.sroa.063.2317, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.063.0195, %bb.f ] ; 10 uses
  %.sroa.3.1178 = phi ptr [ %.sroa.3.2315, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.3.0194, %bb.f ] ; 10 uses
  %.sroa.5.1177 = phi ptr [ %.sroa.5.2313, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.5.0193, %bb.f ] ; 10 uses
  %.sroa.0126.0174 = phi ptr [ %.sroa.0126.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 6 uses
  %.sroa.9129.0173 = phi ptr [ %.sroa.9129.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 12 uses
  %.sroa.14132.0172 = phi ptr [ %.sroa.14132.1, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.f ] ; 2 uses
  %.sroa.0123.0171 = phi ptr [ %i.nb, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit ], [ %i.ci, %bb.f ] ; 13 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 24 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !86, !range !17, !noalias !173, !noundef !18
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.i, label %bb.bb

bb.i:                                             ; preds = %.lr.ph
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !91, !noalias !173 ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = load ptr, ptr %i.bu, align 8, !tbaa !97, !noalias !173
  %i.dj = load ptr, ptr %i.bt, align 8, !tbaa !100, !noalias !173 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = icmp ugt i64 %i.dn, %i.dh
  br i1 %i.do, label %bb.j, label %bb.bb

bb.j:                                             ; preds = %bb.i
  %i.dp = sext i32 %i.dg to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !101, !noalias !173 ; 7 uses
  %.not.i24 = icmp eq ptr %i.dr, null
  br i1 %.not.i24, label %bb.bb, label %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit

_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !173
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !103, !noalias !173
  %i.du = add nsw i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !104, !noalias !173
  %i.dx = add nsw i32 %i.dw, 1
  call void @_ZNK6hermes9SourceMap20getSegmentForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.18") align 4 %2, ptr noundef nonnull align 8 dereferenceable(104) %i.dr, i32 noundef %i.du, i32 noundef %i.dx) #16, !noalias !173
  %.sroa.0.i.sroa.4.0.copyload = load i32, ptr %.sroa.0.i.sroa.4.0..sroa_idx, align 4, !noalias !173
  %.sroa.0.i.sroa.5.0.copyload = load i32, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 4, !noalias !173
  %.sroa.0.i.sroa.6.0.copyload = load i32, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 4, !noalias !173
  %.sroa.0.i.sroa.8.0.copyload = load i8, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 4, !noalias !173
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !173
  %i.dy = trunc nuw i8 %.sroa.4.0.copyload.i to i1
  %.sroa.075.0.copyload = load i32, ptr %.sroa.0123.0171, align 4 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 25
  %.sroa.15.sroa.0.0.copyload = load <3 x i8>, ptr %.sroa.15.0..sroa_idx, align 1 ; 2 uses
  %i.dz = trunc nuw i8 %.sroa.0.i.sroa.8.0.copyload to i1
  %or.cond = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond, label %bb.k, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.k:                                             ; preds = %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.eb = zext i32 %.sroa.0.i.sroa.4.0.copyload to i64 ; 3 uses
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !179, !noalias !176
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !71, !noalias !184
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !68, !noalias !184 ; 3 uses
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !71, !noalias !184
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !68, !noalias !184 ; 3 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !66, !alias.scope !185
  store i64 0, ptr %i.bw, align 8, !tbaa !68, !alias.scope !185
  store i8 0, ptr %i.bv, align 8, !tbaa !28, !alias.scope !185
  %i.ek = add i64 %i.ej, %i.eg
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ek) #16
  %i.el = load i64, ptr %i.bw, align 8, !tbaa !68, !alias.scope !185
  %i.em = sub i64 4611686018427387903, %i.el
  %i.en = icmp ult i64 %i.em, %i.eg
  br i1 %i.en, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %bb.k
  %i.eo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ee, i64 noundef %i.eg) #16 ; 0 uses
  %i.ep = load i64, ptr %i.bw, align 8, !tbaa !68, !alias.scope !185
  %i.eq = sub i64 4611686018427387903, %i.ep
  %i.er = icmp ult i64 %i.eq, %i.ej
  br i1 %i.er, label %bb.m, label %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.es = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.eh, i64 noundef %i.ej) #16 ; 0 uses
  %i.et = load ptr, ptr %3, align 8, !tbaa !71
  %i.eu = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 88
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !7, !noalias !188
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !11, !noalias !188 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 5
  %.not.i25 = icmp ugt i64 %i.fc, %i.eb
  br i1 %.not.i25, label %bb.n, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.n:                                             ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.eb ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !12, !range !17, !noalias !188, !noundef !18
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.o, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.o:                                             ; preds = %bb.n
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !34, !noalias !188 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !191, !noalias !188 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !19, !noalias !188 ; 4 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !188
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !3, !noalias !188
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fm, align 4, !tbaa !3, !noalias !188
  br label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

bb.r:                                             ; preds = %bb.p
  %i.fq = atomicrmw volatile add ptr %i.fm, i32 1 acq_rel, align 4, !noalias !188 ; 0 uses
  br label %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit

_ZNK6hermes9SourceMap17getSourceMetadataEj.exit:  ; preds = %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit, %bb.n, %bb.o, %bb.q, %bb.r
  %.sroa.8.0 = phi i1 [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ false, %bb.n ], [ false, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ]
  %.sroa.5.3 = phi ptr [ null, %bb.o ], [ %i.fl, %bb.r ], [ %i.fl, %bb.q ], [ %.sroa.5.1177, %bb.n ], [ %.sroa.5.1177, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 16 uses
  %.sroa.3.3 = phi ptr [ %i.fj, %bb.o ], [ %i.fj, %bb.r ], [ %i.fj, %bb.q ], [ %.sroa.3.1178, %bb.n ], [ %.sroa.3.1178, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 2 uses
  %.sroa.063.3 = phi ptr [ %i.fh, %bb.o ], [ %i.fh, %bb.r ], [ %i.fh, %bb.q ], [ %.sroa.063.1179, %bb.n ], [ %.sroa.063.1179, %_ZNK6hermes9SourceMap17getSourceFullPathB5cxx11Ej.exit ] ; 3 uses
  %i.fr = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr %i.et, i64 %i.eu) ; 3 uses
  %i.fs = load ptr, ptr %i.bx, align 8, !tbaa !7  ; 3 uses
  %i.ft = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 5                 ; 4 uses
  %i.fy = and i64 %i.fr, 4294967295               ; 2 uses
  %.not.i27 = icmp ugt i64 %i.fx, %i.fy
  br i1 %.not.i27, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit
  %i.fz = add i64 %i.fr, 1
  %i.ga = and i64 %i.fz, 4294967295               ; 4 uses
  %i.gb = icmp samesign ugt i64 %i.ga, %i.fx
  br i1 %i.gb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gc = sub nuw nsw i64 %i.ga, %i.fx
  call void @_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 noundef %i.gc)
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

bb.u:                                             ; preds = %bb.s
  %i.gd = icmp samesign ult i64 %i.ga, %i.fx
  br i1 %i.gd, label %bb.v, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.ga ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.fs, %i.ge
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %bb.v, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i30 = phi ptr [ %i.gz, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i ], [ %i.ge, %bb.v ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 24
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !12, !range !17, !noundef !18
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.w, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.gk, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4, !tbaa !24
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #16, !inline_history !192
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #16, !inline_history !192
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gn, %bb.aa ], [ %i.gx, %bb.ab ]
  %i.gy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gy, label %bb.ac, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i, !prof !29

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #16
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.w, %.lr.ph.i.i.i.i.i29
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.gz, %i.fs
  br i1 %.not.i.i.i.i.i31, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i29, !llvm.loop !30

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.ge, ptr %i.bx, align 8, !tbaa !7
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i, %bb.v, %bb.u, %bb.t, %_ZNK6hermes9SourceMap17getSourceMetadataEj.exit
  br i1 %.sroa.8.0, label %bb.ad, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i
  %i.ha = load i32, ptr %.sroa.063.3, align 4, !tbaa !40
  %.not6.i = icmp eq i32 %i.ha, 5
  br i1 %.not6.i, label %bb.au, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hb = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %i.fy ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !12, !range !17, !noundef !18
  %i.hf = trunc nuw i8 %i.he to i1
  store ptr %.sroa.063.3, ptr %i.hc, align 8, !tbaa !34
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %.sroa.3.3, ptr %i.hg, align 8, !tbaa !191
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 4 uses
  br i1 %i.hf, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19 ; 3 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %.sroa.5.3, %i.hi
  br i1 %.not.i.i.i.i.i58, label %bb.au, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not7.i.i.i.i.i = icmp eq ptr %.sroa.5.3, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 3 uses
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hn = atomicrmw volatile add ptr %i.hj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !tbaa !19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ho = phi ptr [ %i.hi, %bb.ag ], [ %i.hi, %bb.ai ], [ %.pr.pre.i.i.i.i.i, %bb.aj ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.hp, align 8, !tbaa !22
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !24
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !25
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #16, !inline_history !193
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !25
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #16, !inline_history !193
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.hs, %bb.an ], [ %i.ic, %bb.ao ]
  %i.id = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.id, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !29

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %.sroa.5.3, ptr %i.hh, align 8, !tbaa !19
  br label %bb.au

bb.aq:                                            ; preds = %bb.ae
  store ptr %.sroa.5.3, ptr %i.hh, align 8, !tbaa !19
  %.not.i.i.i.i3.i = icmp eq ptr %.sroa.5.3, null
  br i1 %.not.i.i.i.i3.i, label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 3 uses
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i4.i = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i4.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !3
  br label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.ii = atomicrmw volatile add ptr %i.ie, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i

_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i: ; preds = %bb.at, %bb.as, %bb.aq
  store i8 1, ptr %i.hd, align 8, !tbaa !12
  br label %bb.au

bb.au:                                            ; preds = %_ZN6hermes6parser15JSONSharedValueC2ERKS1_.exit.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %bb.af, %bb.ad
  %.not.i.i.i.i.i.i32 = icmp eq ptr %.sroa.5.3, null
  br i1 %.not.i.i.i.i.i.i32, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 8 ; 4 uses
  %i.ik = load atomic i64, ptr %i.ij acquire, align 8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 4294967297
  %i.im = trunc i64 %i.ik to i32                  ; 2 uses
  br i1 %i.il, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ij, align 8, !tbaa !22
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.5.3, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !24
  %i.io = load ptr, ptr %.sroa.5.3, align 8, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16, !inline_history !194
  %i.ir = load ptr, ptr %.sroa.5.3, align 8, !tbaa !25
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16, !inline_history !194
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i33 = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i33, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.ay ], [ %i.iw, %bb.az ]
  %i.ix = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ix, label %bb.ba, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, !prof !29

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.3) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit

_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i, %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ba
  %i.iy = trunc i64 %i.fr to i32
  %i.iz = load ptr, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.bv
  br i1 %i.ja, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit
  %i.jb = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bb:                                            ; preds = %.lr.ph, %bb.i, %bb.j
  %.sroa.075.0.copyload269 = load i32, ptr %.sroa.0123.0171, align 4 ; 7 uses
  %.sroa.15.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 25
  %.sroa.15.sroa.0.0.copyload363 = load <3 x i8>, ptr %.sroa.15.0..sroa_idx271, align 1 ; 7 uses
  %i.jd = load i8, ptr %i.dc, align 4, !tbaa !86, !range !17, !noundef !18
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bc, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bc:                                            ; preds = %bb.bb
  %.sroa.578.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 4
  %.sroa.9.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 8
  %.sroa.9.4.copyload = load i32, ptr %.sroa.9.4..sroa_idx, align 4 ; 6 uses
  %.sroa.10.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 12
  %.sroa.10.4.copyload = load i32, ptr %.sroa.10.4..sroa_idx, align 4 ; 6 uses
  %.sroa.11.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 16
  %.sroa.11.4.copyload = load i64, ptr %.sroa.11.4..sroa_idx, align 4 ; 6 uses
  %i.jf = load i32, ptr %.sroa.578.0..sroa_idx270, align 4, !tbaa !91 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.jg ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.jh, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !70
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.ji = zext i32 %i.jf to i64                   ; 2 uses
  %i.jj = load ptr, ptr %i.bz, align 8, !tbaa !7, !noalias !195
  %i.jk = load ptr, ptr %i.by, align 8, !tbaa !11, !noalias !195 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = ashr exact i64 %i.jn, 5
  %.not.i34 = icmp ugt i64 %i.jo, %i.ji
  br i1 %.not.i34, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 0, ptr %i.ca, align 8, !tbaa !12, !alias.scope !195
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.be:                                            ; preds = %bb.bc
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.ji ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !12, !range !17, !noalias !195, !noundef !18 ; 2 uses
  %i.js = trunc nuw i8 %i.jr to i1
  store i8 %i.jr, ptr %i.ca, align 8, !tbaa !12, !alias.scope !195
  br i1 %i.js, label %bb.bf, label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.bf:                                            ; preds = %bb.be
  %i.jt = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !198, !noalias !195
  store <2 x ptr> %i.jt, ptr %4, align 16, !tbaa !198, !alias.scope !195
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !19, !noalias !195 ; 3 uses
  store ptr %i.jv, ptr %i.cb, align 16, !tbaa !19, !alias.scope !195
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !195
  %.not.i.i.i.i.i.i.i.i36 = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i.i.i.i.i36, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !3, !noalias !195
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !3, !noalias !195
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ka = atomicrmw volatile add ptr %i.jw, i32 1 acq_rel, align 4, !noalias !195 ; 0 uses
  br label %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit

_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit: ; preds = %bb.bd, %bb.be, %bb.bf, %bb.bh, %bb.bi
  %i.kb = call noundef i64 @_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 5 uses
  %i.kc = load ptr, ptr %i.bx, align 8, !tbaa !7  ; 3 uses
  %i.kd = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 5                 ; 4 uses
  %i.ki = and i64 %i.kb, 4294967295               ; 2 uses
  %.not.i37 = icmp ugt i64 %i.kh, %i.ki
  br i1 %.not.i37, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38, label %bb.bj

bb.bj:                                            ; preds = %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit
  %i.kj = add i64 %i.kb, 1
  %i.kk = and i64 %i.kj, 4294967295               ; 4 uses
  %i.kl = icmp samesign ugt i64 %i.kk, %i.kh
  br i1 %i.kl, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.km = sub nuw nsw i64 %i.kk, %i.kh
  call void @_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 noundef %i.km)
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

bb.bl:                                            ; preds = %bb.bj
  %i.kn = icmp samesign ult i64 %i.kk, %i.kh
  br i1 %i.kn, label %bb.bm, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

bb.bm:                                            ; preds = %bb.bl
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %i.kk ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.kc, %i.ko
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38, label %.lr.ph.i.i.i.i.i41

.lr.ph.i.i.i.i.i41:                               ; preds = %bb.bm, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43
  %.05.i.i.i.i.i42 = phi ptr [ %i.lj, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43 ], [ %i.ko, %bb.bm ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 24
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !12, !range !17, !noundef !18
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.bn, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i41
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i46, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 4 uses
  %i.kv = load atomic i64, ptr %i.ku acquire, align 8 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, 4294967297
  %i.kx = trunc i64 %i.kv to i32                  ; 2 uses
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.ku, align 8, !tbaa !22
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store i32 0, ptr %i.ky, align 4, !tbaa !24
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !25
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #16, !inline_history !192
  %i.lc = load ptr, ptr %i.kt, align 8, !tbaa !25
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #16, !inline_history !192
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

bb.bq:                                            ; preds = %bb.bo
  %i.lf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i47, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lg = add nsw i32 %i.kx, -1
  store i32 %i.lg, ptr %i.ku, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48

bb.bs:                                            ; preds = %bb.bq
  %i.lh = atomicrmw volatile add ptr %i.ku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.kx, %bb.br ], [ %i.lh, %bb.bs ]
  %i.li = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.li, label %bb.bt, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43, !prof !29

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kt) #16
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i.i48, %bb.bp, %bb.bn, %.lr.ph.i.i.i.i.i41
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 32 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.lj, %i.kc
  br i1 %.not.i.i.i.i.i44, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45, label %.lr.ph.i.i.i.i.i41, !llvm.loop !30

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i.i.i43
  store ptr %i.ko, ptr %i.bx, align 8, !tbaa !7
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i.i.i45, %bb.bm, %bb.bl, %bb.bk, %_ZNK6hermes18SourceMapGenerator17getSourceMetadataEj.exit
  %i.lk = load i8, ptr %i.ca, align 8, !tbaa !32, !range !17, !noundef !18
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.bu, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351: ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38
  %i.lm = trunc i64 %i.kb to i32
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bu:                                            ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EE6resizeEm.exit.i38
  %i.ln = load ptr, ptr %4, align 16, !tbaa !34
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !40
  %.not6.i39 = icmp eq i32 %i.lo, 5
  br i1 %.not6.i39, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread, label %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread: ; preds = %bb.bu
  %i.lp = trunc i64 %i.kb to i32
  br label %bb.bv

_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50: ; preds = %bb.bu
  %i.lq = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %i.ki
  %i.ls = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN4llvh15optional_detail15OptionalStorageIN6hermes6parser15JSONSharedValueELb0EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  %.pre = load i8, ptr %i.ca, align 8, !tbaa !12, !range !17
  %i.lt = trunc nuw i8 %.pre to i1
  %i.lu = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.lt, label %bb.bv, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.bv:                                            ; preds = %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50
  %i.lv = phi i32 [ %i.lp, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread ], [ %i.lu, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ] ; 4 uses
  %i.lw = load ptr, ptr %i.cb, align 16, !tbaa !19 ; 8 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i.i51, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  %i.ly = load atomic i64, ptr %i.lx acquire, align 8 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 4294967297
  %i.ma = trunc i64 %i.ly to i32                  ; 2 uses
  br i1 %i.lz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.lx, align 8, !tbaa !22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  store i32 0, ptr %i.mb, align 4, !tbaa !24
  %i.mc = load ptr, ptr %i.lw, align 8, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #16, !inline_history !194
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #16, !inline_history !194
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

bb.by:                                            ; preds = %bb.bw
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i52 = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i.i.i.i.i52, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mj = add nsw i32 %i.ma, -1
  store i32 %i.mj, ptr %i.lx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53

bb.ca:                                            ; preds = %bb.by
  %i.mk = atomicrmw volatile add ptr %i.lx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i.i54 = phi i32 [ %i.ma, %bb.bz ], [ %i.mk, %bb.ca ]
  %i.ml = icmp eq i32 %.0.i.i.i.i.i.i.i.i54, 1
  br i1 %i.ml, label %bb.cb, label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55, !prof !29

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #16
  br label %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55

_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53, %bb.bx, %bb.bv, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50, %bb.bb
  %.sroa.15.sroa.0.0 = phi <3 x i8> [ %.sroa.15.sroa.0.0.copyload363, %bb.bv ], [ %.sroa.15.sroa.0.0.copyload363, %bb.bx ], [ %.sroa.15.sroa.0.0.copyload363, %bb.cb ], [ %.sroa.15.sroa.0.0.copyload363, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.15.sroa.0.0.copyload363, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.15.sroa.0.0.copyload363, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ %.sroa.15.sroa.0.0.copyload363, %bb.bb ], [ %.sroa.15.sroa.0.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.15.sroa.0.0.copyload, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.063.2317 = phi ptr [ %.sroa.063.1179, %bb.bv ], [ %.sroa.063.1179, %bb.bx ], [ %.sroa.063.1179, %bb.cb ], [ %.sroa.063.1179, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.063.1179, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.063.1179, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ %.sroa.063.1179, %bb.bb ], [ %.sroa.063.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.063.1179, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.3.2315 = phi ptr [ %.sroa.3.1178, %bb.bv ], [ %.sroa.3.1178, %bb.bx ], [ %.sroa.3.1178, %bb.cb ], [ %.sroa.3.1178, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.3.1178, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.3.1178, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ %.sroa.3.1178, %bb.bb ], [ %.sroa.3.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.3.1178, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.5.2313 = phi ptr [ %.sroa.5.1177, %bb.bv ], [ %.sroa.5.1177, %bb.bx ], [ %.sroa.5.1177, %bb.cb ], [ %.sroa.5.1177, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.5.1177, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.5.1177, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ %.sroa.5.1177, %bb.bb ], [ %.sroa.5.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.5.1177, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.075.0.copyload278299 = phi i32 [ %.sroa.075.0.copyload269, %bb.bv ], [ %.sroa.075.0.copyload269, %bb.bx ], [ %.sroa.075.0.copyload269, %bb.cb ], [ %.sroa.075.0.copyload269, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.075.0.copyload269, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.075.0.copyload269, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ %.sroa.075.0.copyload269, %bb.bb ], [ %.sroa.075.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %.sroa.075.0.copyload, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.12.1 = phi i8 [ 1, %bb.bv ], [ 1, %bb.bx ], [ 1, %bb.cb ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ 1, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ 0, %bb.bb ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.4.copyload, %bb.bv ], [ %.sroa.11.4.copyload, %bb.bx ], [ %.sroa.11.4.copyload, %bb.cb ], [ %.sroa.11.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.11.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ 0, %bb.bb ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 0, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.4.copyload, %bb.bv ], [ %.sroa.10.4.copyload, %bb.bx ], [ %.sroa.10.4.copyload, %bb.cb ], [ %.sroa.10.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.10.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ undef, %bb.bb ], [ %.sroa.0.i.sroa.6.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.4.copyload, %bb.bv ], [ %.sroa.9.4.copyload, %bb.bx ], [ %.sroa.9.4.copyload, %bb.cb ], [ %.sroa.9.4.copyload, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %.sroa.9.4.copyload, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ undef, %bb.bb ], [ %.sroa.0.i.sroa.5.0.copyload, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.sroa.578.1 = phi i32 [ %i.lv, %bb.bv ], [ %i.lv, %bb.bx ], [ %i.lv, %bb.cb ], [ %i.lv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53 ], [ %i.lu, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50 ], [ %i.lm, %_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE.exit50.thread351 ], [ undef, %bb.bb ], [ %i.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ undef, %_ZNK6hermes18SourceMapGenerator25getInputSegmentForSegmentERKNS_9SourceMap7SegmentE.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9129.0173, %.sroa.14132.0172
  br i1 %.not.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55
  store i32 %.sroa.075.0.copyload278299, ptr %.sroa.9129.0173, align 4
  %.sroa.578.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 4
  store i32 %.sroa.578.1, ptr %.sroa.578.0..sroa_idx79, align 4
  %.sroa.9.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 8
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx84, align 4
  %.sroa.10.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 12
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx89, align 4
  %.sroa.11.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.11.0..sroa_idx94, align 4
  %.sroa.12.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx99, align 4
  %.sroa.15.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %.sroa.9129.0173, i64 25
  store <3 x i8> %.sroa.15.sroa.0.0, ptr %.sroa.15.0..sroa_idx103, align 1
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit

bb.cd:                                            ; preds = %_ZN4llvh8OptionalIN6hermes6parser15JSONSharedValueEED2Ev.exit55
  %i.mm = ptrtoint ptr %.sroa.9129.0173 to i64
  %i.mn = ptrtoint ptr %.sroa.0126.0174 to i64
  %i.mo = sub i64 %i.mm, %i.mn                    ; 4 uses
  %i.mp = icmp eq i64 %i.mo, 9223372036854775800
  br i1 %i.mp, label %bb.ce, label %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cd
  %i.mq = sdiv exact i64 %i.mo, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mq, i64 1)
  %i.mr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mq ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.mq
  %i.mt = call i64 @llvm.umin.i64(i64 %i.mr, i64 329406144173384850)
  %i.mu = select i1 %i.ms, i64 329406144173384850, i64 %i.mt ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.mu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.mv = mul nuw nsw i64 %i.mu, 28
  %i.mw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mv) #18 ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mo ; 7 uses
  store i32 %.sroa.075.0.copyload278299, ptr %i.mx, align 4
  %.sroa.578.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  store i32 %.sroa.578.1, ptr %.sroa.578.0..sroa_idx81, align 4
  %.sroa.9.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i32 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx86, align 4
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx91, align 4
  %.sroa.11.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.11.0..sroa_idx96, align 4
  %.sroa.12.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx101, align 4
  %.sroa.15.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.mx, i64 25
  store <3 x i8> %.sroa.15.sroa.0.0, ptr %.sroa.15.0..sroa_idx104, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0126.0174, %.sroa.9129.0173
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i.i ], [ %i.mw, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0126.0174, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !alias.scope !199
  %i.my = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i57 = icmp eq ptr %i.my, %.sroa.9129.0173
  br i1 %.not.i.i.i.i.i.i57, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !203

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.mw, %_ZNKSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.mz, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0126.0174, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0174, i64 noundef %i.mo) #19
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.cf, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.na = getelementptr inbounds nuw [28 x i8], ptr %i.mw, i64 %i.mu
  br label %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.cc, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.14132.1 = phi ptr [ %i.na, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.14132.0172, %bb.cc ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.9129.0173, %bb.cc ]
  %.sroa.0126.1 = phi ptr [ %i.mw, %_ZNSt6vectorIN6hermes9SourceMap7SegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0126.0174, %bb.cc ] ; 2 uses
  %.sroa.9129.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 28 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0123.0171, i64 28 ; 2 uses
  %.not139 = icmp eq ptr %i.nb, %i.ck
  br i1 %.not139, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18SourceMapGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !207 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.o, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.g = load i32, ptr %.010.i.i, align 4, !tbaa !3
  %switch.i.i = icmp ugt i32 %i.g, -3
  br i1 %switch.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !211
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !212

_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !207
  br label %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i
  %i.p = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.p) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7    ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !12, !range !17, !noundef !18
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !24
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #16, !inline_history !213
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #16, !inline_history !213
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, !prof !29

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #16
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.d, %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !11
  br label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i ], [ %i.r, %_ZN4llvh8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #19
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.ax) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !79, !noalias !215
  store <2 x ptr> %i.bc, ptr %1, align 16, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load <2 x ptr>, ptr %i.az, align 8, !tbaa !198, !noalias !215
  store <2 x ptr> %i.be, ptr %i.bd, align 16, !tbaa !198
  %i.bf = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !79, !noalias !218
  store <2 x ptr> %i.bf, ptr %2, align 16, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !198, !noalias !218
  store <2 x ptr> %i.bh, ptr %i.bg, align 16, !tbaa !198
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i1, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !221 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !222 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.l ] ; 3 uses
  %i.bp = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !79
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef 512) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.br = icmp ult ptr %.06.i.i.i.i, %i.bm
  br i1 %i.br, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !223

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !165
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.l
  %i.bs = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.bi, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !164
  %i.bv = shl i64 %i.bu, 3
end_hunk_0
