Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/lock_request?download=true
inline.NumInlined: 360
inline.NumDeleted: 196
begin_hunk_0_@_ZN4toku12lock_request25insert_into_lock_requestsEv:bb.a

.thread.i.i:                                      ; preds = %bb.h, %bb.b
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i: ; preds = %.thread.i.i, %bb.h, %bb.g
  %storemerge35.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.k, %.thread.i.i ], [ %i.ac, %bb.h ] ; 2 uses
  store i32 %storemerge35.i.i, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

bb.i:                                             ; preds = %bb.a
  %i.ad = call noundef i32 @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE18find_internal_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEES9_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !32
  %.pre1 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i, %bb.i
  %i.ae = phi i32 [ %storemerge35.i.i, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %.pre1, %bb.i ]
  %i.af = phi ptr [ %i.e, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %.pre, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %0, ptr %i.c, align 8, !tbaa !56
  %i.ag = call noundef i32 @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE9insert_atERKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store atomic i8 0, ptr %i.ai seq_cst, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku12lock_request25remove_from_lock_requestsEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !52, !range !53, !noundef !54
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 3 uses
  %.not38.i.i = icmp eq i32 %i.j, 0
  br i1 %.not38.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = add i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = load i64, ptr %0, align 8, !tbaa !50     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.042.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.f ] ; 2 uses
  %.02441.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.125.i.i, %bb.f ] ; 2 uses
  %.02640.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %.127.i.i, %bb.f ] ; 2 uses
  %.02839.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ %.129.i.i, %bb.f ] ; 2 uses
  %i.o = add i32 %.02839.i.i, %.02640.i.i
  %i.p = lshr i32 %i.o, 1                         ; 5 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45   ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.n
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %i.p, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not37.i.i = icmp eq i64 %i.t, %i.n            ; 2 uses
  %.024..i.i = select i1 %.not37.i.i, i32 %.02441.i.i, i32 %i.p
  %..0.i.i = select i1 %.not37.i.i, i32 %i.p, i32 %.042.i.i
  %i.w = freeze i32 %.024..i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.129.i.i = phi i32 [ %i.v, %bb.d ], [ %.02839.i.i, %bb.e ] ; 2 uses
  %.127.i.i = phi i32 [ %.02640.i.i, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.125.i.i = phi i32 [ %.02441.i.i, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %.1.i.i = phi i32 [ %.042.i.i, %bb.d ], [ %..0.i.i, %bb.e ] ; 4 uses
  %.not.i.i = icmp eq i32 %.129.i.i, %.127.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.f
  %.not33.i.i = icmp eq i32 %.1.i.i, -1
  br i1 %.not33.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.x = zext nneg i32 %.1.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  store ptr %i.z, ptr %i.b, align 8, !tbaa !56
  %i.aa = sub i32 %.1.i.i, %i.h
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not34.i.i = icmp eq i32 %.125.i.i, -1
  %i.ab = sub i32 %.125.i.i, %i.h
  br i1 %.not34.i.i, label %.thread.i.i, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

.thread.i.i:                                      ; preds = %bb.h, %bb.b
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i: ; preds = %.thread.i.i, %bb.h, %bb.g
  %storemerge35.i.i = phi i32 [ %i.aa, %bb.g ], [ %i.j, %.thread.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  store i32 %storemerge35.i.i, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

bb.i:                                             ; preds = %bb.a
  %i.ac = call noundef i32 @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE18find_internal_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiRKNS_12omt_internal17subtree_templatedILb0EEES9_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  %.pre3 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i, %bb.i
  %i.ad = phi i32 [ %storemerge35.i.i, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %.pre3, %bb.i ]
  %i.ae = phi ptr [ %i.d, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE24find_internal_zero_arrayImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit.i ], [ %.pre, %bb.i ]
  %i.af = call noundef i32 @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE9delete_atEj(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i32 noundef %i.ad) ; 0 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !32  ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !52, !range !53, !noundef !54
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit

bb.k:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE9find_zeroImTnPFiRKS2_RKT_EXadL_ZNS1_13find_by_txnidES6_RKmEEEEiS9_PS2_Pj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !73 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = zext i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit: ; preds = %bb.j, %bb.l
  %.0.i1.in = phi ptr [ %i.aj, %bb.j ], [ %i.ar, %bb.l ]
  %.0.i1 = load i32, ptr %.0.i1.in, align 4, !tbaa !34
  %i.as = icmp eq i32 %.0.i1, 0
  br i1 %i.as, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, label %bb.m

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread: ; preds = %bb.k, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store atomic i8 1, ptr %i.at seq_cst, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toku12lock_request8completeEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(224) initializes((120, 128)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %1, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 3, ptr %i.b, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4toku12lock_request4waitEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4toku12lock_request4waitEmmPFiPvES1_PFvS1_PSt6vectorINS_14lock_wait_infoESaIS5_EEES1_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4toku12lock_request4waitEmmPFiPvES1_PFvS1_PSt6vectorINS_14lock_wait_infoESaIS5_EEES1_(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 13 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 4 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %"class.std::vector", align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #21 ; 0 uses
  %i.b = load i64, ptr %10, align 8, !tbaa !60
  %i.c = mul i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %i.f = add i64 %i.c, %i.e                       ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.g = mul i64 %1, 1000
  %i.h = add i64 %i.f, %i.g                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !2
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.q) #23
  br label %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit

_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.b, label %thread-pre-split._crit_edge

bb.b:                                             ; preds = %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.u = invoke noundef i32 @_ZN4toku12lock_request5retryEPSt6vectorINS_14lock_wait_infoESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %11)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.r, align 4, !tbaa !43
  %i.w = icmp ne i32 %i.v, 2
  %.not.i = icmp eq ptr %5, null
  %or.cond36 = or i1 %.not.i, %i.w
  br i1 %or.cond36, label %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %5(ptr noundef %6, ptr noundef nonnull %11)
          to label %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit unwind label %bb.e, !inline_history !74

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  resume { ptr, i32 } %i.x

_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit: ; preds = %bb.d, %bb.c
  %i.y = load ptr, ptr %11, align 8, !tbaa !77    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i ], [ %i.y, %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #23
  br label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %thread-pre-split.preheader, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23
  br label %thread-pre-split.preheader

thread-pre-split.preheader:                       ; preds = %bb.g, %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %.pr37.pre = load i32, ptr %i.r, align 4, !tbaa !43
  %i.ap = icmp eq i32 %.pr37.pre, 2
  br i1 %i.ap, label %.lr.ph.lr.ph, label %thread-pre-split._crit_edge

.lr.ph.lr.ph:                                     ; preds = %thread-pre-split.preheader
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %i.aq = icmp eq i64 %2, 0
  %i.ar = mul i64 %2, 1000                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  br i1 %i.aq, label %.lr.ph.split.us, label %.lr.ph.us39

.lr.ph.split.us:                                  ; preds = %.lr.ph.lr.ph, %thread-pre-split.backedge.us
  %.027.ph38.us = phi i64 [ %i.bc, %thread-pre-split.backedge.us ], [ %i.f, %.lr.ph.lr.ph ]
  br i1 %.not, label %.lr.ph.us, label %13

13:                                               ; preds = %.lr.ph.split.us
  %14 = call noundef i32 %3(ptr noundef %4)
  %.not33.us = icmp eq i32 %14, 0
  br i1 %.not33.us, label %.lr.ph.us, label %thread-pre-split._crit_edge.sink.split

.lr.ph.us:                                        ; preds = %13, %.lr.ph.split.us
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = sub i64 %i.h, %.027.ph38.us
  %i.ax = call noundef i32 @_Z28toku_external_cond_timedwaitPSt10shared_ptrIN7rocksdb20TransactionDBCondVarEEPS_INS0_18TransactionDBMutexEEl(ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, i64 noundef %i.aw) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ay = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #21 ; 0 uses
  %i.az = load i64, ptr %8, align 8, !tbaa !60
  %i.ba = mul i64 %i.az, 1000000
  %i.bb = load i64, ptr %12, align 8, !tbaa !61
  %i.bc = add i64 %i.ba, %i.bb                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bd = load i32, ptr %i.r, align 4, !tbaa !43  ; 2 uses
  %i.be = icmp ne i32 %i.bd, 2
  %.not34.us = icmp ult i64 %i.bc, %i.h
  %or.cond.us = or i1 %.not34.us, %i.be
  br i1 %or.cond.us, label %thread-pre-split.backedge.us, label %thread-pre-split._crit_edge.sink.split.sink.split

thread-pre-split.backedge.us:                     ; preds = %.lr.ph.us
  %i.bf = icmp eq i32 %i.bd, 2
  br i1 %i.bf, label %.lr.ph.split.us, label %thread-pre-split._crit_edge, !llvm.loop !116

.lr.ph.us39:                                      ; preds = %.lr.ph.lr.ph
  br i1 %.not, label %.split.us41, label %.lr.ph

.split.us41:                                      ; preds = %.lr.ph.us39, %thread-pre-split.backedge.us45
  %.027.ph38.us39 = phi i64 [ %i.bo, %thread-pre-split.backedge.us45 ], [ %i.f, %.lr.ph.us39 ] ; 2 uses
  %15 = add i64 %.027.ph38.us39, %i.ar
  %spec.select.us = call i64 @llvm.umin.i64(i64 %15, i64 %i.h)
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = sub i64 %spec.select.us, %.027.ph38.us39
  %i.bj = call noundef i32 @_Z28toku_external_cond_timedwaitPSt10shared_ptrIN7rocksdb20TransactionDBCondVarEEPS_INS0_18TransactionDBMutexEEl(ptr noundef nonnull %i.as, ptr noundef nonnull %i.bh, i64 noundef %i.bi) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bk = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #21 ; 0 uses
  %i.bl = load i64, ptr %8, align 8, !tbaa !60
  %i.bm = mul i64 %i.bl, 1000000
  %i.bn = load i64, ptr %12, align 8, !tbaa !61
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !43  ; 2 uses
  %i.bq = icmp ne i32 %i.bp, 2
  %.not34.us43 = icmp ult i64 %i.bo, %i.h
  %or.cond.us44 = or i1 %.not34.us43, %i.bq
  br i1 %or.cond.us44, label %thread-pre-split.backedge.us45, label %thread-pre-split._crit_edge.sink.split.sink.split

thread-pre-split.backedge.us45:                   ; preds = %.split.us41
  %i.br = icmp eq i32 %i.bp, 2
  br i1 %i.br, label %.split.us41, label %thread-pre-split._crit_edge, !llvm.loop !116

.lr.ph:                                           ; preds = %.lr.ph.us39, %thread-pre-split.backedge
  %.027.ph38 = phi i64 [ %i.cc, %thread-pre-split.backedge ], [ %i.f, %.lr.ph.us39 ] ; 2 uses
  %i.bs = call noundef i32 %3(ptr noundef %4)
  %.not33 = icmp eq i32 %i.bs, 0
  br i1 %.not33, label %.split, label %thread-pre-split._crit_edge.sink.split

.split:                                           ; preds = %.lr.ph
  %i.bt = add i64 %.027.ph38, %i.ar
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.h)
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = sub i64 %spec.select, %.027.ph38
  %i.bx = call noundef i32 @_Z28toku_external_cond_timedwaitPSt10shared_ptrIN7rocksdb20TransactionDBCondVarEEPS_INS0_18TransactionDBMutexEEl(ptr noundef nonnull %i.as, ptr noundef nonnull %i.bv, i64 noundef %i.bw) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.by = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #21 ; 0 uses
  %i.bz = load i64, ptr %8, align 8, !tbaa !60
  %i.ca = mul i64 %i.bz, 1000000
  %i.cb = load i64, ptr %12, align 8, !tbaa !61
  %i.cc = add i64 %i.ca, %i.cb                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.cd = load i32, ptr %i.r, align 4, !tbaa !43  ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 2
  %.not34 = icmp ult i64 %i.cc, %i.h
  %or.cond = or i1 %.not34, %i.ce
  br i1 %or.cond, label %thread-pre-split.backedge, label %thread-pre-split._crit_edge.sink.split.sink.split

thread-pre-split.backedge:                        ; preds = %.split
  %i.cf = icmp eq i32 %i.cd, 2
  br i1 %i.cf, label %.lr.ph, label %thread-pre-split._crit_edge, !llvm.loop !116

thread-pre-split._crit_edge.sink.split.sink.split: ; preds = %.split, %.split.us41, %.lr.ph.us
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !117
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !117
  br label %thread-pre-split._crit_edge.sink.split

thread-pre-split._crit_edge.sink.split:           ; preds = %.lr.ph, %13, %thread-pre-split._crit_edge.sink.split.sink.split
  %.sink = phi i32 [ -30994, %thread-pre-split._crit_edge.sink.split.sink.split ], [ -30993, %13 ], [ -30993, %.lr.ph ]
  call void @_ZN4toku12lock_request25remove_from_lock_requestsEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store i32 %.sink, ptr %i.at, align 8, !tbaa !71
  store i32 3, ptr %i.r, align 4, !tbaa !43
  br label %thread-pre-split._crit_edge

thread-pre-split._crit_edge:                      ; preds = %thread-pre-split.backedge, %thread-pre-split.backedge.us45, %thread-pre-split.backedge.us, %thread-pre-split._crit_edge.sink.split, %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit, %thread-pre-split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ck = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #21 ; 0 uses
  %i.cl = load i64, ptr %7, align 8, !tbaa !60
  %i.cm = mul i64 %i.cl, 1000000
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cp = sub i64 %i.co, %i.f
  %i.cq = add i64 %i.cp, %i.cm                    ; 2 uses
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !32  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !50
  %i.cu = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.cq, i64 1 ; 2 uses
  %i.cv = add <2 x i64> %i.ct, %i.cu
  store <2 x i64> %i.cv, ptr %i.cs, align 8, !tbaa !50
  %i.cw = icmp ugt i64 %i.cq, 999999
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %thread-pre-split._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 72 ; 2 uses
  %i.cy = load <2 x i64>, ptr %i.cx, align 8, !tbaa !50
  %i.cz = add <2 x i64> %i.cy, %i.cu
  store <2 x i64> %i.cz, ptr %i.cx, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %thread-pre-split._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !67 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db), !inline_history !3
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !71
  ret i32 %i.dg
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4toku12lock_request5retryEPSt6vectorINS_14lock_wait_infoESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.toku::txnid_set", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4toku9txnid_set6createEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i8, ptr %i.k, align 8, !tbaa !48, !range !53, !noundef !54
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef i32 @_ZN4toku8locktree18acquire_write_lockEmPK10__toku_dbtS3_PNS_9txnid_setEb(ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %2, i1 noundef zeroext %i.m)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = call noundef i32 @_ZN4toku8locktree17acquire_read_lockEmPK10__toku_dbtS3_PNS_9txnid_setEb(ptr noundef nonnull align 8 dereferenceable(400) %i.e, i64 noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %2, i1 noundef zeroext %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.o, %bb.c ]  ; 2 uses
  %i.p = icmp eq i32 %.0, 0
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN4toku12lock_request25remove_from_lock_requestsEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 3, ptr %i.r, align 4, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.t()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !118
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.z = call noundef i64 @_ZNK4toku9txnid_set3getEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !63
  call void @_ZN4toku12lock_request22add_conflicts_to_waitsEPNS_9txnid_setEPSt6vectorINS_14lock_wait_infoESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %2, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN4toku9txnid_set7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %1(ptr noundef %2, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i

_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4toku14lock_wait_infoESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #23
  br label %_ZNSt12_Vector_baseIN4toku14lock_wait_infoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4toku14lock_wait_infoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_Z28toku_external_cond_timedwaitPSt10shared_ptrIN7rocksdb20TransactionDBCondVarEEPS_INS0_18TransactionDBMutexEEl(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %4 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !38
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb18TransactionDBMutexEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
