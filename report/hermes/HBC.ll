inline.NumInlined: 3984
inline.NumDeleted: 2586
begin_hunk_0_@_ZN6hermes15StringSetVector6insertEN4llvh9StringRefE:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !829
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !830
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  store ptr %i.bm, ptr %i.r, align 8, !tbaa !214
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.c
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJPKcSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !395, !noalias !831
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i
  %i.bn = phi ptr [ %.pre, %bb.h ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !211, !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.i, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

bb.i:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !210, !noalias !831
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !209
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit, %bb.i
  %i.bu = phi ptr [ %i.bt, %bb.i ], [ %i.bn, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcSA_EEERS5_DpOT_.exit ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !830
  store ptr %i.bw, ptr %4, align 8, !tbaa !825
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !829
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !826
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.au, ptr %i.ca, align 8, !tbaa !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !837
  %i.cb = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !837
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !355, !noalias !837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !837
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit
  %i.cd = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E20InsertIntoBucketImplIS2_EEPS7_RKS2_RKT_SB_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef %i.cc), !noalias !837 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 16, i1 false), !tbaa.struct !842, !noalias !837
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !3, !noalias !837
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !3, !noalias !837
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit, %bb.b
  %.0 = phi i64 [ %i.q, %bb.b ], [ %i.at, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E6insertEOSt4pairIS2_jE.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !745
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !822  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !111
  %i.e = tail call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #18
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %i.h = and i32 %i.g, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ %i.t, %bb.i ]   ; 2 uses
  %.042 = phi i32 [ %i.h, %bb.b ], [ %i.v, %bb.i ] ; 2 uses
  %.039 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.i ] ; 4 uses
  %i.i = zext i32 %.042 to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 9 uses
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !110 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !111 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !110 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !111 ; 2 uses
  %magicptr.i = ptrtoint ptr %.sroa.08.0.copyload to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 -1, label %bb.d
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !843

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload
  br i1 %i.l, label %bb.f, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !844

bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %.sroa.211.0.copyload, 0
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.010.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.211.0.copyload)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !843

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c
  %i.o = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %i.o, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49, !prof !843

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49: ; preds = %bb.e, %bb.g, %bb.d, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.p = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr nonnull inttoptr (i64 -1 to ptr), i64 0)
  br i1 %i.p, label %bb.h, label %bb.i, !prof !392

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49
  %.not = icmp eq ptr %.039, null
  %i.q = select i1 %.not, ptr %i.j, ptr %.039
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread49
  %.sroa.02.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !110
  %.sroa.23.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !111
  %i.r = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr nonnull inttoptr (i64 -2 to ptr), i64 0)
  %i.s = icmp eq ptr %.039, null
  %or.cond.not = select i1 %i.r, i1 %i.s, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.j, ptr %.039
  %i.t = add i32 %.044, 1
  %i.u = add i32 %.042, %.044
  %i.v = and i32 %i.u, %i.g
  br label %bb.c, !llvm.loop !845

.thread:                                          ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, %bb.d, %bb.g, %bb.f, %bb.a, %bb.h
  %.sink = phi ptr [ %i.q, %bb.h ], [ null, %bb.a ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.d ], [ %i.j, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.d ], [ true, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  store ptr %.sink, ptr %2, align 8, !tbaa !355
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.d [
    i64 -1, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, inttoptr (i64 -2 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.d:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, %3
  br i1 %i.c, label %bb.e, label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.e:                                             ; preds = %bb.d
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.e = icmp eq i32 %bcmp, 0
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ false, %bb.d ], [ %i.e, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

declare i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJPKcSA_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ne ptr %i.e, null
  %.neg.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %i.k, %.neg.i.i
  %i.n = shl nsw i64 %i.m, 4
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !395
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !211
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 5
  %i.v = add nsw i64 %i.n, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !395
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %i.ad = add nsw i64 %i.v, %i.ac
  %i.ae = icmp eq i64 %i.ad, 288230376151711743
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !203
  %i.ah = load ptr, ptr %0, align 8, !tbaa !208
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.h, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !753
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %3 = phi ptr [ %i.e, %bb.c ], [ %.pre, %bb.d ]
  %4 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.an, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !214 ; 6 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !110   ; 3 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !828
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !111
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit
  %i.ax = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.ax, ptr %i.ao, align 8, !tbaa !830
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !111
  store i64 %i.ay, ptr %i.ar, align 8, !tbaa !322
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit
  %i.az = phi ptr [ %i.ax, %bb.e ], [ %i.ar, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm.exit ] ; 2 uses
  switch i64 %i.av, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ba = load i8, ptr %i.ap, align 1, !tbaa !322
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !322
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.ap, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !111 ; 2 uses
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !829
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !830
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !753
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !210
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !209 ; 3 uses
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !212
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !214
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !753  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !203  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !208
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !392

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !209
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !209
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !392

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !209
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !209
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, !prof !846

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !392

bb.o:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !209
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !209
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24

_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !208
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #21
  store ptr %i.aq, ptr %0, align 8, !tbaa !208
  store i64 %i.am, ptr %i.k, align 8, !tbaa !203
  br label %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit

_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !210
  %i.be = load ptr, ptr %.0, align 8, !tbaa !209  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !212
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !210
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !209 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
