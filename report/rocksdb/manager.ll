Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/manager?download=true
inline.NumInlined: 217
inline.NumDeleted: 85
begin_hunk_0_@_ZN4toku16locktree_manager6createEPFiPNS_8locktreeEPvEPFvS2_EPFvmPKS1_RKNS_12range_bufferES3_ES3_St10shared_ptrIN7rocksdb25TransactionDBMutexFactoryEE:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, i8 0, i64 104, i1 false)
  %i.as = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(105) %i.ar, ptr noundef null) #13 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.au = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.at, ptr noundef null) #13 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 0, ptr %i.av, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager14escalator_initEv(ptr noundef nonnull align 8 dereferenceable(392) initializes((176, 224)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.a, ptr noundef null) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(105) %i.d, ptr noundef null) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.g = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.f, ptr noundef null) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 0, ptr %i.h, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku16locktree_manager7destroyEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(105) %i.a) #13 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.e) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !38, !range !45, !noundef !46
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.j, align 8, !tbaa !47
  store i32 0, ptr %i.k, align 4, !tbaa !16
  store i32 0, ptr %i.l, align 4, !tbaa !39
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE7destroyEv.exit, label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !16
  store i32 0, ptr %i.k, align 4, !tbaa !16
  store i32 0, ptr %i.l, align 4, !tbaa !39
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %.not2.i = icmp eq ptr %i.o, null
  br i1 %.not2.i, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE7destroyEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ]
  tail call void @_Z9toku_freePv(ptr noundef nonnull %.sink.i)
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE7destroyEv.exit

_ZN4toku3omtIPNS_8locktreeES2_Lb0EE7destroyEv.exit: ; preds = %bb.c, %bb.b, %.sink.split.i
  store ptr null, ptr %i.m, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.p) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager17escalator_destroyEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(105) %i.a) #13 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.e) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager10mutex_lockEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager12mutex_unlockEv(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4toku16locktree_manager19get_max_lock_memoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !25
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 34) i32 @_ZN4toku16locktree_manager19set_max_lock_memoryEm(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 33, %bb.a ]
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #13 ; 0 uses
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.a)
  %i.c = load i64, ptr %1, align 8, !tbaa !51
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !49
  %i.f = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.e)
  %i.g = load i64, ptr %1, align 8, !tbaa !51
  %i.h = icmp ne i64 %i.f, %i.g
  %. = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4toku16locktree_manager17locktree_map_findERK13DICTIONARY_ID(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = select i1 %i.d, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %3, null
  %i.b = select i1 %.not, ptr %i.a, ptr %3        ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16   ; 2 uses
  %.not40.i = icmp eq i32 %i.g, 0
  br i1 %.not40.i, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.i = add i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.044.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.02443.i = phi i32 [ -1, %.lr.ph.i ], [ %.125.i, %bb.d ] ; 2 uses
  %.02642.i = phi i32 [ -1, %.lr.ph.i ], [ %.127.i, %bb.d ] ; 2 uses
  %.02841.i = phi i32 [ %i.i, %.lr.ph.i ], [ %.129.i, %bb.d ] ; 2 uses
  %i.k = add i32 %.02841.i, %.044.i
  %i.l = lshr i32 %i.k, 1                         ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.p)
  %i.r = load i64, ptr %1, align 8, !tbaa !51
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.u = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.t)
  %i.v = load i64, ptr %1, align 8, !tbaa !51
  %.not39.i = icmp eq i64 %i.u, %i.v              ; 2 uses
  %.024..i = select i1 %.not39.i, i32 %.02642.i, i32 %i.l
  %..0.i = select i1 %.not39.i, i32 %i.l, i32 %.02443.i
  br label %bb.d

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i: ; preds = %bb.c
  %i.w = add nuw i32 %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i
  %.129.i = phi i32 [ %.02841.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i ], [ %i.l, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i ] ; 2 uses
  %.127.i = phi i32 [ %.02642.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i ], [ %.024..i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i ] ; 3 uses
  %.125.i = phi i32 [ %.02443.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i ], [ %..0.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i ] ; 4 uses
  %.1.i = phi i32 [ %i.w, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i ], [ %.044.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1.i, %.129.i
  br i1 %.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !53

._crit_edge.i:                                    ; preds = %bb.d
  %.not33.i = icmp eq i32 %.125.i, -1
  br i1 %.not33.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %.not36.i = icmp eq ptr %2, null
  br i1 %.not36.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.y = zext nneg i32 %.125.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  store ptr %i.aa, ptr %2, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ac = sub i32 %.125.i, %i.ab
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit

bb.h:                                             ; preds = %._crit_edge.i
  %.not34.i = icmp eq i32 %.127.i, -1
  br i1 %.not34.i, label %..thread.i_crit_edge, label %bb.i

..thread.i_crit_edge:                             ; preds = %bb.h
  %.pre = load i32, ptr %i.f, align 4, !tbaa !16
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ae = sub i32 %.127.i, %i.ad
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit: ; preds = %bb.b, %..thread.i_crit_edge, %bb.g, %bb.i
  %storemerge35.i = phi i32 [ %i.ac, %bb.g ], [ %i.ae, %bb.i ], [ %.pre, %..thread.i_crit_edge ], [ 0, %bb.b ]
  %.030.i = phi i32 [ 0, %bb.g ], [ -30989, %bb.i ], [ -30989, %..thread.i_crit_edge ], [ -30989, %bb.b ]
  store i32 %storemerge35.i, ptr %i.b, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.af = call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE18find_internal_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit
  %.0 = phi i32 [ %.030.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku16locktree_manager16locktree_map_putEPNS_8locktreeE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.DICTIONARY_ID, align 8      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
  store i64 %i.c, ptr %2, align 8
  %i.d = call noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE6insertI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiS7_SA_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE6insertI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiS7_SA_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 2 uses
  %.not40.i.i = icmp eq i32 %i.f, 0
  br i1 %.not40.i.i, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.h = add i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.044.i.i = phi i32 [ %i.g, %.lr.ph.i.i ], [ %.1.i.i, %bb.d ] ; 2 uses
  %.02443.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.125.i.i, %bb.d ] ; 2 uses
  %.02642.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.127.i.i, %bb.d ] ; 2 uses
  %.02841.i.i = phi i32 [ %i.h, %.lr.ph.i.i ], [ %.129.i.i, %bb.d ] ; 2 uses
  %i.j = add i32 %.02841.i.i, %.044.i.i
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.o)
  %i.q = load i64, ptr %2, align 8, !tbaa !51
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i: ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.t = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.s)
  %i.u = load i64, ptr %2, align 8, !tbaa !51
  %.not39.i.i = icmp eq i64 %i.t, %i.u            ; 2 uses
  %.024..i.i = select i1 %.not39.i.i, i32 %.02642.i.i, i32 %i.k
  %..0.i.i = select i1 %.not39.i.i, i32 %i.k, i32 %.02443.i.i
  br label %bb.d

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i: ; preds = %bb.c
  %i.v = add nuw i32 %i.k, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i
  %.129.i.i = phi i32 [ %.02841.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i ], [ %i.k, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i ] ; 2 uses
  %.127.i.i = phi i32 [ %.02642.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i ], [ %.024..i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i ] ; 3 uses
  %.125.i.i = phi i32 [ %.02443.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i ], [ %..0.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i ] ; 3 uses
  %.1.i.i = phi i32 [ %i.v, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread.i.i ], [ %.044.i.i, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq i32 %.1.i.i, %.129.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !53

._crit_edge.i.i:                                  ; preds = %bb.d
  %.not33.i.i = icmp eq i32 %.125.i.i, -1
  br i1 %.not33.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.w = load i32, ptr %i.d, align 8, !tbaa !16
  %i.x = sub i32 %.125.i.i, %i.w
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %.not34.i.i = icmp eq i32 %.127.i.i, -1
  br i1 %.not34.i.i, label %..thread.i_crit_edge.i, label %bb.g

..thread.i_crit_edge.i:                           ; preds = %bb.f
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !16
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.d, align 8, !tbaa !16
  %i.z = sub i32 %.127.i.i, %i.y
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i: ; preds = %bb.g, %..thread.i_crit_edge.i, %bb.e, %bb.b
  %storemerge35.i.i = phi i32 [ %i.x, %bb.e ], [ %i.z, %bb.g ], [ %.pre.i, %..thread.i_crit_edge.i ], [ 0, %bb.b ]
  %.030.i.i = phi i32 [ 0, %bb.e ], [ -30989, %bb.g ], [ -30989, %..thread.i_crit_edge.i ], [ -30989, %bb.b ]
  store i32 %storemerge35.i.i, ptr %i.a, align 4, !tbaa !17
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE18find_internal_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null, ptr noundef nonnull %i.a)
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i, %bb.h
  %.0.i = phi i32 [ %.030.i.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE24find_internal_zero_arrayI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit.i ], [ %i.aa, %bb.h ] ; 2 uses
  switch i32 %.0.i, label %bb.l [
    i32 0, label %bb.i
    i32 -30989, label %bb.j
  ]

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.l, label %.sink.split

bb.j:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ac = call noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9insert_atERKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ab) ; 2 uses
  %.not14 = icmp eq i32 %i.ac, 0
  br i1 %.not14, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.i
  %.0.ph = phi i32 [ -30996, %bb.i ], [ 0, %bb.k ]
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !17
  store i32 %i.ad, ptr %3, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.j, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit, %bb.i
  %.0 = phi i32 [ %i.ac, %bb.j ], [ -30996, %bb.i ], [ %.0.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj.exit ], [ 0, %bb.k ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku16locktree_manager19locktree_map_removeEPNS_8locktreeE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.DICTIONARY_ID, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.d = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
  store i64 %i.d, ptr %2, align 8
  %i.e = call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.f = load i32, ptr %i.a, align 4, !tbaa !17
  %i.g = call noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9delete_atEj(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i32 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9delete_atEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 2 uses
  %.not = icmp ult i32 %1, %i.h
  br i1 %.not, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.not18 = icmp ult i32 %1, %i.n
  br i1 %.not18, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit
  %.0.i12 = phi i32 [ %i.h, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ %i.n, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16 ]
  %i.o = add i32 %.0.i12, -1
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE23maybe_resize_or_convertEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.o)
  %i.p = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp ne i32 %1, 0
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 3 uses
  %i.u = add i32 %i.t, -1
  %.not9 = icmp eq i32 %1, %i.u
  br i1 %.not9, label %.thread24, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15convert_to_treeEv.exit

_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15convert_to_treeEv.exit: ; preds = %bb.c
  %i.v = shl i32 %i.t, 1
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.v, i32 4) ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 24
  %i.z = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !16
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  store i8 0, ptr %0, align 8, !tbaa !38
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %i.ag, align 4, !tbaa !39
  store i32 0, ptr %i.s, align 4, !tbaa !16
  store i32 -1, ptr %i.aa, align 8, !tbaa !47
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.aa, ptr noundef %i.af, i32 noundef %i.t)
  tail call void @_Z9toku_freePv(ptr noundef %i.ac)
  %.pre = load i8, ptr %0, align 8, !tbaa !38, !range !45
  br label %bb.d

bb.d:                                             ; preds = %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15convert_to_treeEv.exit, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13
  %i.ah = phi i8 [ %.pre, %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15convert_to_treeEv.exit ], [ %i.p, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit13 ]
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread24, label %bb.g

.thread24:                                        ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  %.not11 = icmp eq i32 %1, %i.al
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !16
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread24
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !16
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15delete_internalEPNS_12omt_internal17subtree_templatedILb0EEEjPNS4_18omt_node_templatedIS2_Lb0EEEPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ap, i32 noundef %1, ptr noundef null, ptr noundef nonnull %i.a)
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not10 = icmp eq ptr %i.aq, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9rebalanceEPNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.aq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread: ; preds = %bb.b, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16, %bb.f, %bb.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit
  %.0 = phi i32 [ 22, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 22, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread16 ], [ 22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4toku16locktree_manager6get_ltE13DICTIONARY_IDRKNS_10comparatorEPv(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.DICTIONARY_ID, align 8      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.DICTIONARY_ID, align 8      ; 3 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  store i64 %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE9find_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiSA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, ptr noundef null)
  %i.g = icmp ne i32 %i.f, 0
  %i.h = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.i = icmp eq ptr %i.h, null
  %i.j = select i1 %i.g, i1 true, i1 %i.i
end_hunk_0
begin_hunk_1_@_ZN4toku16locktree_manager29iterate_pending_lock_requestsEPFi13DICTIONARY_IDmPK10__toku_dbtS4_mmPvES5_:bb.a
  %i.cs = icmp eq i32 %.tr21.ph.i.i30, %.0.i19.i.i32
  br i1 %i.cs, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE5fetchEjPS2_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cu = xor i32 %.0.i19.i.i32, -1
  %i.cv = add i32 %.tr21.ph.i.i30, %i.cu
  %.pre.pre.i33 = load i32, ptr %i.ct, align 4, !tbaa !47
  br label %tailrecurse.outer.i.i28

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE5fetchEjPS2_.exit.thread: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %bb.n
  %.sink.in.i34 = phi ptr [ %i.cg, %bb.n ], [ %i.cj, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i35 = load ptr, ptr %.sink.in.i34, align 8, !tbaa !81 ; 5 uses
  %i.cw = call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %.sink.i)
  %i.cx = call noundef i64 @_ZNK4toku12lock_request9get_txnidEv(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i35)
  %i.cy = call noundef ptr @_ZNK4toku12lock_request12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i35)
  %i.cz = call noundef ptr @_ZNK4toku12lock_request13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i35)
  %i.da = call noundef i64 @_ZNK4toku12lock_request21get_conflicting_txnidEv(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i35)
  %i.db = call noundef i64 @_ZNK4toku12lock_request14get_start_timeEv(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i35)
  %i.dc = call noundef i32 %1(i64 %i.cw, i64 noundef %i.cx, ptr noundef %i.cy, ptr noundef %i.cz, i64 noundef %i.da, i64 noundef %i.db, ptr noundef %2) ; 2 uses
  %i.dd = add nuw i32 %.01951, 1                  ; 2 uses
  %i.de = icmp ult i32 %i.dd, %.0.i25
  %i.df = icmp eq i32 %i.dc, 0
  %i.dg = and i1 %i.de, %i.df
  br i1 %i.dg, label %bb.l, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread, !llvm.loop !82

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread: ; preds = %bb.m, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread10.i, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE5fetchEjPS2_.exit.thread, %bb.j, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit
  %.1.lcssa = phi i32 [ 0, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit ], [ 0, %bb.j ], [ 22, %bb.m ], [ 22, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread10.i ], [ 22, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i ], [ %i.dc, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 2 uses
  %i.dh = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh), !inline_history !83
  %i.dl = add nuw i32 %.02053, 1                  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %.0.i
  %i.dn = icmp eq i32 %.1.lcssa, 0
  %i.do = and i1 %i.dm, %i.dn
  br i1 %i.do, label %bb.e, label %._crit_edge56, !llvm.loop !84
}

declare noundef i64 @_ZNK4toku12lock_request9get_txnidEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #5

declare noundef ptr @_ZNK4toku12lock_request12get_left_keyEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #5

declare noundef ptr @_ZNK4toku12lock_request13get_right_keyEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #5

declare noundef i64 @_ZNK4toku12lock_request21get_conflicting_txnidEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #5

declare noundef i64 @_ZNK4toku12lock_request14get_start_timeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 -100000, 1) i32 @_ZN4toku16locktree_manager30check_current_lock_constraintsEb(ptr noundef nonnull align 8 dereferenceable(392) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !25     ; 2 uses
  br i1 %1, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.c, 1
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN4toku16locktree_manager18locktree_escalator3runEPS0_PFvPvES3_(ptr noundef nonnull align 8 dereferenceable(105) %i.e, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @_ZZN4toku16locktree_manager14run_escalationEvEN13escalation_fn3runEPv, ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37
  %i.g = load i64, ptr %0, align 8, !tbaa !25
  %i.h = lshr i64 %i.g, 1
  %.not6 = icmp ult i64 %i.f, %i.h
  br i1 %.not6, label %.thread.thread, label %bb.e

.thread.thread:                                   ; preds = %bb.b, %bb.c
  br label %bb.e

.thread:                                          ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, %i.c
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN4toku16locktree_manager18locktree_escalator3runEPS0_PFvPvES3_(ptr noundef nonnull align 8 dereferenceable(105) %i.k, ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull @_ZZN4toku16locktree_manager14run_escalationEvEN13escalation_fn3runEPv, ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !37
  %i.m = load i64, ptr %0, align 8, !tbaa !25
  %.not8 = icmp ult i64 %i.l, %i.m
  %spec.select4 = select i1 %.not8, i32 0, i32 -100000
  br label %bb.e

bb.e:                                             ; preds = %.thread.thread, %bb.d, %.thread, %bb.c
  %.1 = phi i32 [ -100000, %bb.c ], [ %spec.select4, %bb.d ], [ 0, %.thread ], [ 0, %.thread.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager18locktree_escalator6createEv(ptr noundef nonnull align 8 dereferenceable(105) initializes((0, 48)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.b, ptr noundef null) #13 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.d, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toku16locktree_manager18locktree_escalator7destroyEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.c = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #13 ; 0 uses
  ret void
}

declare void @_ZN4toku8locktree8escalateEPFvmPKS0_RKNS_12range_bufferEPvES6_(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4toku16locktree_manager10get_statusEP12LTM_STATUS_S(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Status", align 8   ; 4 uses
  tail call void @_ZN12LTM_STATUS_S4initEv(ptr noundef nonnull align 8 dereferenceable(1217) @ltm_status)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 32), align 8, !tbaa !16
  %i.c = load i64, ptr %0, align 8, !tbaa !25
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 96), align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 160), align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 224), align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 288), align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 992), align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 1056), align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 1120), align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i64, ptr %i.p, align 8, !tbaa !88
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 1184), align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load <4 x i64>, ptr %i.u, align 8, !tbaa !59 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !59 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !38, !range !45, !noundef !46
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit: ; preds = %bb.c, %bb.e
  %.0.i.in = phi ptr [ %i.z, %bb.c ], [ %i.ah, %bb.e ]
  %.0.i = load i32, ptr %.0.i.in, align 4, !tbaa !16 ; 3 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread
  %i.am = zext i32 %.0.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit
  %.0.i73 = phi i64 [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.d ], [ %i.am, %._crit_edge.loopexit ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.16.0.copyload, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ %.sroa.16.0.copyload, %bb.d ], [ %.sroa.16.2, %._crit_edge.loopexit ]
  %.sroa.16.0.lcssa.a = phi i64 [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.d ], [ %.sroa.16.2.a, %._crit_edge.loopexit ]
  %.023.lcssa = phi i64 [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.d ], [ %.225.a, %._crit_edge.loopexit ]
  %.020.lcssa = phi i64 [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.d ], [ %.121, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.d ], [ %.2, %._crit_edge.loopexit ]
  %3 = phi <4 x i64> [ %i.v, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ %i.v, %bb.d ], [ %10, %._crit_edge.loopexit ]
  %i.an = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #13 ; 0 uses
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread
  %.058 = phi i64 [ 0, %.lr.ph ], [ %.2, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %.055 = phi i32 [ 0, %.lr.ph ], [ %i.dd, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 5 uses
  %.02052 = phi i64 [ 0, %.lr.ph ], [ %.121, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %.02351 = phi i64 [ 0, %.lr.ph ], [ %.225.a, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %.sroa.16.050 = phi i64 [ 0, %.lr.ph ], [ %.sroa.16.2.a, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %.sroa.16.052 = phi i64 [ %.sroa.16.0.copyload, %.lr.ph ], [ %.sroa.16.2, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %4 = phi <4 x i64> [ %i.v, %.lr.ph ], [ %10, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread ] ; 4 uses
  %i.ao = load i8, ptr %i.w, align 8, !tbaa !38, !range !45, !noundef !46
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i: ; preds = %bb.f
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !16
  %.not.i = icmp ult i32 %.055, %i.as
  br i1 %.not.i, label %bb.h, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 3 uses
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  %.not12.i = icmp ult i32 %.055, %i.ax
  br i1 %.not12.i, label %tailrecurse.outer.i.i, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.az = load i32, ptr %i.ai, align 8, !tbaa !16
  %i.ba = add i32 %i.az, %.055
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  br label %.loopexit

tailrecurse.outer.i.i:                            ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i, %bb.i
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.i ], [ %i.aq, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ]
  %.tr21.ph.i.i = phi i32 [ %i.br, %bb.i ], [ %.055, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ] ; 3 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.outer.i.i
  %i.bd = phi i32 [ %i.bh, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ %.pre.i, %tailrecurse.outer.i.i ]
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !47 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i: ; preds = %tailrecurse.i.i
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !55 ; 2 uses
  %i.bn = icmp ult i32 %.tr21.ph.i.i, %i.bm
  br i1 %i.bn, label %tailrecurse.i.i, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.i.i
  %.0.i19.i.i = phi i32 [ %i.bm, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.bo = icmp eq i32 %.tr21.ph.i.i, %.0.i19.i.i
  br i1 %i.bo, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bq = xor i32 %.0.i19.i.i, -1
  %i.br = add i32 %.tr21.ph.i.i, %i.bq
  %.pre.pre.i = load i32, ptr %i.bp, align 4, !tbaa !47
  br label %tailrecurse.outer.i.i

.loopexit:                                        ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %bb.h
  %.sink.in.i = phi ptr [ %i.bc, %bb.h ], [ %i.bf, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !49 ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink.i, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bt), !inline_history !89
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #15
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.by = getelementptr inbounds nuw i8, ptr %.sink.i, i64 80
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !76, !range !45, !noundef !46
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i, i64 92
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink.i, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !47 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink.i, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !16
  %i.ci = zext i32 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !78
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i28 = phi i32 [ %i.cc, %bb.k ], [ %i.cl, %bb.m ], [ 0, %bb.l ]
  %i.cm = zext i32 %.0.i28 to i64
  %i.cn = add i64 %.058, %i.cm
  %i.co = call noundef ptr @_ZN4toku8locktree21get_lock_request_infoEv(ptr noundef nonnull align 8 dereferenceable(400) %.sink.i) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load <4 x i64>, ptr %i.cp, align 8, !tbaa !59
  %i.cr = add <4 x i64> %i.cq, %4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !63
  %i.cu = add i64 %i.ct, %.sroa.16.052
  %i.cv = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !inline_history !83
  %i.cz = call noundef zeroext i1 @_ZNK4toku8locktree25sto_txnid_is_valid_unsafeEv(ptr noundef nonnull align 8 dereferenceable(400) %.sink.i)
  %i.da = zext i1 %i.cz to i64
  %i.db = add i64 %.sroa.16.050, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink.i, i64 384
  %5 = load i64, ptr %i.dc, align 8, !tbaa !90
  %6 = add i64 %5, %.02351
  %7 = getelementptr inbounds nuw i8, ptr %.sink.i, i64 392
  %8 = load i64, ptr %7, align 8, !tbaa !106
  %9 = add i64 %8, %.02052
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE5fetchEjPS2_.exit.thread: ; preds = %bb.g, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i, %bb.n
  %.sroa.16.2 = phi i64 [ %i.cu, %bb.n ], [ %.sroa.16.052, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %.sroa.16.052, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %.sroa.16.052, %bb.g ] ; 2 uses
  %.sroa.16.2.a = phi i64 [ %i.db, %bb.n ], [ %.sroa.16.050, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %.sroa.16.050, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %.sroa.16.050, %bb.g ] ; 2 uses
  %.225.a = phi i64 [ %6, %bb.n ], [ %.02351, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %.02351, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %.02351, %bb.g ] ; 2 uses
  %.121 = phi i64 [ %9, %bb.n ], [ %.02052, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %.02052, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %.02052, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %i.cn, %bb.n ], [ %.058, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %.058, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %.058, %bb.g ] ; 2 uses
  %10 = phi <4 x i64> [ %i.cr, %bb.n ], [ %4, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i ], [ %4, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread10.i ], [ %4, %bb.g ] ; 2 uses
  %i.dd = add nuw i32 %.055, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %.0.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !107

bb.o:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.16.3 = phi i64 [ %.sroa.16.0.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.16.3.a = phi i64 [ %.sroa.16.0.lcssa.a, %._crit_edge ], [ 0, %bb.a ]
  %.3.a = phi i64 [ %.023.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %.222 = phi i64 [ %.020.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %.015 = phi i64 [ %.0.i73, %._crit_edge ], [ 0, %bb.a ]
  %.3 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ]
  %11 = phi <4 x i64> [ %3, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 4 uses
  store i64 %.015, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 352), align 8, !tbaa !16
  store i64 %.3, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 416), align 8, !tbaa !16
  store i64 %.sroa.16.3.a, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 480), align 8, !tbaa !16
  store i64 %.3.a, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 544), align 8, !tbaa !16
  store i64 %.222, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 608), align 8, !tbaa !16
  %i.de = extractelement <4 x i64> %11, i64 0
  store i64 %i.de, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 672), align 8, !tbaa !16
  %i.df = extractelement <4 x i64> %11, i64 1
  store i64 %i.df, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 736), align 8, !tbaa !16
  %i.dg = extractelement <4 x i64> %11, i64 2
  store i64 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 800), align 8, !tbaa !16
  %i.dh = extractelement <4 x i64> %11, i64 3
  store i64 %i.dh, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 864), align 8, !tbaa !16
  store i64 %.sroa.16.3, ptr getelementptr inbounds nuw (i8, ptr @ltm_status, i64 928), align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1217) %1, ptr noundef nonnull align 8 dereferenceable(1217) @ltm_status, i64 1217, i1 false), !tbaa.struct !108
  ret void
}

declare void @_ZN12LTM_STATUS_S4initEv(ptr noundef nonnull align 8 dereferenceable(1217)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4toku8locktree25sto_txnid_is_valid_unsafeEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !110
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #10

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_Z12toku_xmallocm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE18find_internal_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  store i32 0, ptr %4, align 4, !tbaa !17
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.ac, %tailrecurse ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.h)
  %i.j = load i64, ptr %2, align 8, !tbaa !51
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread, label %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.m = tail call i64 @_ZNK4toku8locktree11get_dict_idEv(ptr noundef nonnull align 8 dereferenceable(400) %i.l)
  %i.n = load i64, ptr %2, align 8, !tbaa !51
  %.not39 = icmp eq i64 %i.m, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  br i1 %.not39, label %bb.d, label %tailrecurse

_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = tail call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE18find_internal_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread, %bb.c
  %.0.i35 = phi i32 [ %i.z, %bb.c ], [ 1, %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit.thread ]
  %i.aa = load i32, ptr %4, align 4, !tbaa !17
  %i.ab = add i32 %i.aa, %.0.i35
  store i32 %i.ab, ptr %4, align 4, !tbaa !17
  br label %bb.h

tailrecurse:                                      ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !47  ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %tailrecurse._crit_edge, label %bb.b

bb.d:                                             ; preds = %_ZN4toku16locktree_manager15find_by_dict_idERKPNS_8locktreeERK13DICTIONARY_ID.exit
  %i.ae = tail call noundef i32 @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE18find_internal_zeroI13DICTIONARY_IDTnPFiRKS2_RKT_EXadL_ZNS_16locktree_manager15find_by_dict_idES7_RKS5_EEEEiRKNS_12omt_internal17subtree_templatedILb0EEESA_PS2_Pj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.af = icmp eq i32 %i.ae, -30989
  br i1 %i.af, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !47  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37: ; preds = %bb.e, %bb.f
  %.0.i36 = phi i32 [ %i.am, %bb.f ], [ 0, %bb.e ]
  store i32 %.0.i36, ptr %4, align 4, !tbaa !17
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !111
  store ptr %i.an, ptr %3, align 8, !tbaa !49
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37, %bb.g, %bb.d, %tailrecurse._crit_edge
  %.1 = phi i32 [ -30989, %tailrecurse._crit_edge ], [ %i.q, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit37 ], [ %i.ae, %bb.d ], [ 0, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9insert_atERKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread23

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit: ; preds = %bb.b
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15, label %bb.m

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread23: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = icmp ugt i32 %2, %i.l
  br i1 %i.m, label %bb.m, label %bb.c

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = icmp ugt i32 %2, %i.o
  br i1 %i.p, label %bb.m, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15

bb.c:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = zext i32 %i.e to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread, %bb.c
  %.0.i14 = phi i32 [ %i.o, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread ], [ %i.v, %bb.c ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ]
  %i.w = add i32 %.0.i14, 1
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE23maybe_resize_or_convertEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.w)
  %i.x = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.thread27

bb.d:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 3 uses
  %.not = icmp eq i32 %2, %i.ab
  br i1 %.not, label %.thread26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12 = icmp eq i32 %2, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !16
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.thread26

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = shl i32 %i.ab, 1
  %i.af = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 4) ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = load i32, ptr %i.z, align 8, !tbaa !16
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  store i8 0, ptr %0, align 8, !tbaa !38
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !39
  store i32 0, ptr %i.aa, align 4, !tbaa !16
  store i32 -1, ptr %i.z, align 8, !tbaa !47
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.z, ptr noundef %i.an, i32 noundef %i.ab)
  tail call void @_Z9toku_freePv(ptr noundef %i.ak)
  %.pre = load i8, ptr %0, align 8, !tbaa !38, !range !45
  %i.ap = trunc nuw i8 %.pre to i1
  br i1 %i.ap, label %.thread26, label %.thread27

.thread26:                                        ; preds = %bb.d, %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = icmp eq i32 %2, %i.as
  %i.au = load ptr, ptr %1, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread26
  %i.ay = add i32 %i.ax, %2
  br label %bb.j

bb.i:                                             ; preds = %.thread26
  %i.az = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.az, ptr %i.aq, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  %i.ba = zext i32 %.sink to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba
  store ptr %i.au, ptr %i.bb, align 8, !tbaa !49
  %i.bc = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !16
  br label %bb.m

.thread27:                                        ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit15, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15insert_internalEPNS_12omt_internal17subtree_templatedILb0EEERKS2_jPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %i.a)
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not13 = icmp eq ptr %i.bf, null
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread27
  call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9rebalanceEPNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bf)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.m

bb.m:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread23, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread, %bb.j, %bb.l, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit
  %.0 = phi i32 [ 22, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit ], [ 0, %bb.l ], [ 0, %bb.j ], [ 22, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread ], [ 22, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.thread23 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE23maybe_resize_or_convertEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %i.d = shl i32 %i.c, 1                          ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16
  %i.i = sub i32 %i.f, %i.h
  %i.j = icmp uge i32 %i.i, %1
  %i.k = lshr i32 %i.f, 1
  %.not.i = icmp ult i32 %i.k, %i.d
  %or.cond.i = and i1 %.not.i, %i.j
  br i1 %or.cond.i, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE18maybe_resize_arrayEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %i.d to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16   ; 2 uses
  %.not9.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = load i32, ptr %i.g, align 8, !tbaa !16
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %i.v = zext i32 %i.p to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !16
  store i32 %i.d, ptr %i.e, align 4, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  tail call void @_Z9toku_freePv(ptr noundef %i.y)
  store ptr %i.n, ptr %i.x, align 8, !tbaa !16
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE18maybe_resize_arrayEj.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.ab = icmp eq i32 %i.aa, -1                   ; 2 uses
  br i1 %i.ab, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = zext i32 %i.aa to i64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ah, %bb.g ], [ 0, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !39 ; 3 uses
  %i.ak = lshr i32 %i.aj, 1
  %.not = icmp ult i32 %i.ak, %i.d
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %.not7 = icmp uge i32 %i.am, %i.aj
  %i.an = icmp ult i32 %.0.i, %1
  %or.cond = and i1 %i.an, %.not7
  %i.ao = icmp ult i32 %i.aj, %1
  %or.cond8 = or i1 %i.ao, %or.cond
  br i1 %or.cond8, label %bb.i, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE18maybe_resize_arrayEj.exit

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, %bb.h
  br i1 %i.ab, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.ar = zext i32 %i.aa to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !55
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit

_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i32 [ 0, %bb.i ], [ %i.au, %bb.j ] ; 2 uses
  %i.av = shl i32 %.0.i.i, 1
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.av, i32 4) ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ay) ; 2 uses
  tail call void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16
  tail call void @_Z9toku_freePv(ptr noundef %i.bb)
  store i8 1, ptr %0, align 8, !tbaa !38
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.i, ptr %i.bc, align 4, !tbaa !16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !16
  store i32 0, ptr %i.z, align 8, !tbaa !16
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE18maybe_resize_arrayEj.exit

_ZN4toku3omtIPNS_8locktreeES2_Lb0EE18maybe_resize_arrayEj.exit: ; preds = %bb.h, %bb.e, %bb.b, %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15insert_internalEPNS_12omt_internal17subtree_templatedILb0EEERKS2_jPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39
  %i.d = phi i32 [ %i.a, %.lr.ph.lr.ph ], [ %i.co, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  %.tr42.ph52 = phi i32 [ %3, %.lr.ph.lr.ph ], [ %i.cm, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ] ; 2 uses
  %.tr40.ph51 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.cn, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  br label %bb.b

tailrecurse.outer._crit_edge:                     ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39, %tailrecurse, %bb.a
  %.tr40.lcssa = phi ptr [ %i.w, %tailrecurse ], [ %1, %bb.a ], [ %i.cn, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 3 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 -1, ptr %i.m, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 -1, ptr %i.n, align 8, !tbaa !47
  %i.o = load ptr, ptr %2, align 8, !tbaa !49
  store ptr %i.o, ptr %i.k, align 8, !tbaa !111
  store i32 %i.f, ptr %.tr40.lcssa, align 4, !tbaa !47
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.p = phi i32 [ %i.d, %.lr.ph ], [ %i.x, %tailrecurse ]
  %.tr4049 = phi ptr [ %.tr40.ph51, %.lr.ph ], [ %i.w, %tailrecurse ] ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.r = zext i32 %i.p to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47   ; 4 uses
  %i.y = icmp eq i32 %i.x, -1                     ; 3 uses
  br i1 %i.y, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  %.not = icmp ugt i32 %.tr42.ph52, %.0.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !57
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  br i1 %i.af, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !16  ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !55
  %i.ap = add i32 %i.ao, 1
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.ap, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, %bb.g
  %.0.i11.i = phi i32 [ %i.aw, %bb.g ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i ] ; 2 uses
  %i.ax = add i32 %.0.i.i, 1
  %i.ay = add i32 %.0.i11.i, 2
  %i.az = lshr i32 %i.ay, 1
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = add i32 %.0.i11.i, 1
  %i.bc = add i32 %.0.i.i, 2
  %i.bd = lshr i32 %i.bc, 1
  %i.be = icmp ult i32 %i.bb, %i.bd
  %i.bf = select i1 %i.ba, i1 true, i1 %i.be
  br i1 %i.bf, label %bb.h, label %tailrecurse

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit
  store ptr %.tr4049, ptr %4, align 8, !tbaa !57
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, %bb.d
  br i1 %i.y, label %tailrecurse.outer._crit_edge, label %bb.b

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !16  ; 3 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.r ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32: ; preds = %bb.k, %bb.j
  %.0.i.i33 = phi i32 [ %i.bo, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !47 ; 2 uses
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37, label %bb.l

bb.l:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55
  %i.bw = add i32 %i.bv, 1
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32, %bb.l
  %.0.i11.i35 = phi i32 [ %i.bw, %bb.l ], [ 1, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32 ] ; 2 uses
  %i.bx = add i32 %.0.i.i33, 1
  %i.by = add i32 %.0.i11.i35, 2
  %i.bz = lshr i32 %i.by, 1
  %i.ca = icmp ult i32 %i.bx, %i.bz
  %i.cb = add i32 %.0.i11.i35, 1
  %i.cc = add i32 %.0.i.i33, 2
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = icmp ult i32 %i.cb, %i.cd
  %i.cf = select i1 %i.ca, i1 true, i1 %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37
  store ptr %.tr4049, ptr %4, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37, %bb.i
  br i1 %i.y, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ch = zext i32 %i.x to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !55
  %i.cl = xor i32 %i.ck, -1
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39: ; preds = %bb.n, %bb.o
  %.0.i38 = phi i32 [ %i.cl, %bb.o ], [ -1, %bb.n ]
  %i.cm = add i32 %.0.i38, %.tr42.ph52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %tailrecurse.outer._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE9rebalanceEPNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !tbaa !38, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.a, -1
  br i1 %i.g, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = shl i32 %.0.i.i, 1
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.n, i32 4) ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.q) ; 2 uses
  tail call void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @_Z9toku_freePv(ptr noundef %i.t)
  store i8 1, ptr %0, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.u, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.i, ptr %i.v, align 4, !tbaa !16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !16
  store i32 0, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %i.y = zext i32 %i.a to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.ai = sub i32 %i.af, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 24
  %.not = icmp samesign ugt i64 %i.ad, %i.ak      ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.014 = phi ptr [ %i.am, %bb.f ], [ %i.an, %bb.g ] ; 3 uses
  tail call void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.014, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !55
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %.014, i32 noundef %i.ao)
  br i1 %.not, label %bb.i, label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Z9toku_freePv(ptr noundef nonnull %.014)
  br label %_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit

_ZN4toku3omtIPNS_8locktreeES2_Lb0EE16convert_to_arrayEv.exit: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE4sizeEv.exit.i, %bb.b, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.aa, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ]
  %.tr1416 = phi ptr [ %1, %.lr.ph ], [ %i.y, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ] ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  tail call void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.tr1416, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, label %bb.c

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread: ; preds = %bb.b
  store ptr %i.i, ptr %.tr1416, align 8, !tbaa !49
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.tr1416, i64 %i.q
  store ptr %i.i, ptr %i.r, align 8, !tbaa !49
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, %bb.c
  %.0.i11 = phi i64 [ %i.x, %bb.c ], [ 1, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.tr1416, i64 %.0.i11
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr19.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %tailrecurse ]
  store i32 -1, ptr %.tr19.lcssa, align 4, !tbaa !47
  ret void

tailrecurse:                                      ; preds = %.lr.ph, %tailrecurse
  %.tr2124 = phi i32 [ %3, %.lr.ph ], [ %i.s, %tailrecurse ] ; 3 uses
  %.tr2023 = phi ptr [ %2, %.lr.ph ], [ %i.r, %tailrecurse ] ; 3 uses
  %.tr1922 = phi ptr [ %1, %.lr.ph ], [ %i.o, %tailrecurse ]
  %i.d = lshr i32 %.tr2124, 1                     ; 3 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !16   ; 3 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !16
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.tr2124, ptr %i.j, align 8, !tbaa !55
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.tr2023, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  store ptr %i.m, ptr %i.i, align 8, !tbaa !111
  store i32 %i.e, ptr %.tr1922, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %.tr2023, i32 noundef %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = add nuw i32 %i.d, 1                      ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.tr2023, i64 %i.q
  %i.s = sub i32 %.tr2124, %i.p                   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %tailrecurse._crit_edge, label %tailrecurse
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !47     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.ad, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ]
  %.tr1416 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ]
  %.tr1315 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ] ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  tail call void @_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.tr1315, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.i = load i32, ptr %.tr1416, align 4, !tbaa !47
  %i.j = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = zext i32 %i.p to i64
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.tr1315, i64 %.0.i
  store i32 %i.i, ptr %i.r, align 4, !tbaa !17
  %i.s = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12, label %bb.d

bb.d:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !55
  %i.z = add i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, %bb.d
  %.0.i11 = phi i64 [ %i.aa, %bb.d ], [ 1, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.tr1315, i64 %.0.i11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr17.lcssa = phi ptr [ %1, %bb.a ], [ %i.l, %tailrecurse ]
  store i32 -1, ptr %.tr17.lcssa, align 4, !tbaa !47
  ret void

tailrecurse:                                      ; preds = %.lr.ph, %tailrecurse
  %.tr1922 = phi i32 [ %3, %.lr.ph ], [ %i.p, %tailrecurse ] ; 3 uses
  %.tr1821 = phi ptr [ %2, %.lr.ph ], [ %i.o, %tailrecurse ] ; 3 uses
  %.tr1720 = phi ptr [ %1, %.lr.ph ], [ %i.l, %tailrecurse ]
  %i.c = lshr i32 %.tr1922, 1                     ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.tr1821, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 2 uses
  store i32 %i.f, ptr %.tr1720, align 4, !tbaa !47
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.tr1922, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  tail call void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.k, ptr noundef %.tr1821, i32 noundef %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = add nuw i32 %i.c, 1                      ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.tr1821, i64 %i.n
  %i.p = sub i32 %.tr1922, %i.m                   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %tailrecurse._crit_edge, label %tailrecurse
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_8locktreeES2_Lb0EE15delete_internalEPNS_12omt_internal17subtree_templatedILb0EEEjPNS4_18omt_node_templatedIS2_Lb0EEEPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %tailrecurse.outer.outer

tailrecurse.outer.outer:                          ; preds = %bb.a, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread
  %.tr76.ph.ph = phi ptr [ %1, %bb.a ], [ %i.bf, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread ]
  %.tr77.ph.ph = phi i32 [ %2, %bb.a ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread ]
  %.tr78.ph.ph = phi ptr [ %3, %bb.a ], [ %i.k, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread ] ; 3 uses
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.outer, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread
  %.tr76.ph = phi ptr [ %i.dh, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread ], [ %.tr76.ph.ph, %tailrecurse.outer.outer ] ; 3 uses
  %.tr77.ph = phi i32 [ %i.dj, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread ], [ %.tr77.ph.ph, %tailrecurse.outer.outer ] ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load i32, ptr %.tr76.ph, align 4, !tbaa !47 ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %tailrecurse.outer, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread
  %i.i = phi i32 [ %i.az, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.g, %tailrecurse.outer ] ; 4 uses
  %i.j = phi ptr [ %i.ay, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.f, %tailrecurse.outer ] ; 2 uses
  %i.k = phi ptr [ %i.ax, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.e, %tailrecurse.outer ] ; 6 uses
  %i.l = phi i64 [ %i.o, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.d, %tailrecurse.outer ] ; 2 uses
  %i.m = phi i32 [ %i.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.c, %tailrecurse.outer ] ; 3 uses
  %i.n = phi ptr [ %i.aw, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %i.b, %tailrecurse.outer ] ; 2 uses
  %.tr7695 = phi ptr [ %i.j, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ], [ %.tr76.ph, %tailrecurse.outer ] ; 4 uses
  %i.o = zext i32 %i.i to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55   ; 3 uses
  %i.s = icmp ult i32 %.tr77.ph, %i.r
  br i1 %i.s, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !55
  %i.w = load ptr, ptr %4, align 8, !tbaa !57
  %i.x = icmp ne ptr %i.w, null
  %i.y = icmp eq i32 %i.m, -1
  %or.cond = or i1 %i.y, %i.x
  %.pre118 = load ptr, ptr %i.a, align 8, !tbaa !16 ; 5 uses
  br i1 %or.cond, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.pre118, i64 %i.l ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.pre118, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.ag, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !47 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.pre118, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, %bb.e
  %.0.i11.i = phi i32 [ %i.an, %bb.e ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i ] ; 2 uses
  %i.ao = add i32 %.0.i11.i, 2
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = icmp ult i32 %.0.i.i, %i.ap
  %i.ar = add i32 %.0.i11.i, 1
  %i.as = add i32 %.0.i.i, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = icmp ult i32 %i.ar, %i.at
  %i.av = select i1 %i.aq, i1 true, i1 %i.au
  br i1 %i.av, label %bb.f, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread

bb.f:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit
  store ptr %.tr7695, ptr %4, align 8, !tbaa !57
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread: ; preds = %bb.f, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, %bb.b
  %i.aw = phi ptr [ %.pre, %bb.f ], [ %.pre118, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit ], [ %.pre118, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.o ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !47 ; 2 uses
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread, %tailrecurse.outer
  %.tr76.lcssa = phi ptr [ %.tr76.ph, %tailrecurse.outer ], [ %i.j, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ] ; 2 uses
  %.lcssa85 = phi i32 [ %i.c, %tailrecurse.outer ], [ %i.i, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ]
  %.lcssa83 = phi i64 [ %i.d, %tailrecurse.outer ], [ %i.o, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ]
  %.lcssa81 = phi ptr [ %i.e, %tailrecurse.outer ], [ %i.ax, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit.thread ] ; 3 uses
  %i.bb = icmp eq i32 %.tr77.ph, 0
  br i1 %i.bb, label %bb.g, label %bb.k

.thread:                                          ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  %i.bc = icmp eq i32 %.tr77.ph, %i.r
  br i1 %i.bc, label %.thread71, label %bb.k

bb.g:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa81, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !17
  store i32 %i.be, ptr %.tr76.lcssa, align 4, !tbaa !17
  %.not52 = icmp eq ptr %.tr78.ph.ph, null
  br i1 %.not52, label %bb.p, label %.sink.split

.thread71:                                        ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !47 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread71
  store i32 %i.i, ptr %.tr7695, align 4, !tbaa !17
  %.not = icmp eq ptr %.tr78.ph.ph, null
  br i1 %.not, label %bb.p, label %.sink.split

bb.i:                                             ; preds = %.thread71
  %i.bi = load ptr, ptr %4, align 8, !tbaa !57
  %i.bj = icmp ne ptr %i.bi, null
  %i.bk = icmp eq i32 %i.m, -1
  %or.cond74 = or i1 %i.bk, %i.bj
  br i1 %or.cond74, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59: ; preds = %bb.i
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !55 ; 2 uses
  %i.bp = add i32 %.tr77.ph, 1
  %i.bq = add i32 %i.bo, 1
  %i.br = lshr i32 %i.bq, 1
  %i.bs = icmp ult i32 %i.bp, %i.br
  %i.bt = add i32 %.tr77.ph, 2
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = icmp ult i32 %i.bo, %i.bu
  %i.bw = or i1 %i.bv, %i.bs
  br i1 %i.bw, label %bb.j, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread

bb.j:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59
  store ptr %.tr7695, ptr %4, align 8, !tbaa !57
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59.thread: ; preds = %bb.j, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit59, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !55
  br label %tailrecurse.outer.outer

bb.k:                                             ; preds = %.thread, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread
  %.tr7692 = phi ptr [ %.tr7695, %.thread ], [ %.tr76.lcssa, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.ca = phi i32 [ %i.m, %.thread ], [ %.lcssa85, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.cb = phi i64 [ %i.l, %.thread ], [ %.lcssa83, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.cc = phi ptr [ %i.k, %.thread ], [ %.lcssa81, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ] ; 2 uses
  %.0.i6770 = phi i32 [ %i.r, %.thread ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !55
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !55
  %i.cg = load ptr, ptr %4, align 8, !tbaa !57
  %i.ch = icmp ne ptr %i.cg, null
  %i.ci = icmp eq i32 %i.ca, -1
  %or.cond75 = or i1 %i.ci, %i.ch
  br i1 %or.cond75, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cb ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !47 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60: ; preds = %bb.m, %bb.l
  %.0.i.i61 = phi i32 [ %i.cr, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !47 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65, label %bb.n

bb.n:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !55
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65: ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60, %bb.n
  %.0.i11.i63 = phi i32 [ %i.cy, %bb.n ], [ 0, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i60 ] ; 2 uses
  %i.cz = add i32 %.0.i.i61, 1
  %i.da = add i32 %.0.i11.i63, 1
  %i.db = lshr i32 %i.da, 1
  %i.dc = icmp ult i32 %i.cz, %i.db
  %i.dd = add i32 %.0.i.i61, 2
  %i.de = lshr i32 %i.dd, 1
  %i.df = icmp ult i32 %.0.i11.i63, %i.de
  %i.dg = select i1 %i.dc, i1 true, i1 %i.df
  br i1 %i.dg, label %bb.o, label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread

bb.o:                                             ; preds = %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65
  store ptr %.tr7692, ptr %4, align 8, !tbaa !57
  br label %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread

_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65.thread: ; preds = %bb.o, %_ZNK4toku3omtIPNS_8locktreeES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit65, %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.di = xor i32 %.0.i6770, -1
  %i.dj = add i32 %.tr77.ph, %i.di
  br label %tailrecurse.outer

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.lcssa136.lcssa.lcssa.sink = phi ptr [ %.lcssa81, %bb.g ], [ %i.k, %bb.h ]
  %i.dk = load ptr, ptr %.lcssa136.lcssa.lcssa.sink, align 8, !tbaa !111
  store ptr %i.dk, ptr %.tr78.ph.ph, align 8, !tbaa !111
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt12__shared_ptrIN7rocksdb25TransactionDBMutexFactoryELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTSN7rocksdb25TransactionDBMutexFactoryE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !6, i64 8}
!19 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!20 = !{!19, !6, i64 12}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = distinct !{null, null, null, null}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN4toku16locktree_managerE", !27, i64 0, !27, i64 8, !28, i64 16, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !29, i64 88, !31, i64 112, !32, i64 128, !32, i64 176, !27, i64 224, !27, i64 232, !27, i64 240, !27, i64 248, !27, i64 256, !27, i64 264, !27, i64 272, !34, i64 280}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSN4toku11lt_countersE", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!29 = !{!"_ZTSN4toku3omtIPNS_8locktreeES2_Lb0EEE", !30, i64 0, !6, i64 4, !7, i64 8}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"_ZTSSt10shared_ptrIN7rocksdb25TransactionDBMutexFactoryEE", !10, i64 0}
!32 = !{!"_ZTS12toku_mutex_t", !7, i64 0, !33, i64 40}
!33 = !{!"p1 _ZTS9PSI_mutex", !12, i64 0}
!34 = !{!"_ZTSN4toku16locktree_manager18locktree_escalatorE", !32, i64 0, !35, i64 48, !30, i64 104}
!35 = !{!"_ZTS11toku_cond_t", !7, i64 0, !36, i64 48}
!36 = !{!"p1 _ZTS8PSI_cond", !12, i64 0}
!37 = !{!26, !27, i64 8}
!38 = !{!29, !30, i64 0}
!39 = !{!29, !6, i64 4}
!40 = !{!26, !12, i64 56}
!41 = !{!26, !12, i64 64}
!42 = !{!26, !12, i64 72}
!43 = !{!26, !12, i64 80}
!44 = !{!34, !30, i64 104}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!48, !6, i64 0}
!48 = !{!"_ZTSN4toku12omt_internal17subtree_templatedILb0EEE", !6, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSN4toku8locktreeE", !12, i64 0}
!51 = !{!52, !27, i64 0}
!52 = !{!"_ZTS13DICTIONARY_ID", !27, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!56, !6, i64 8}
!56 = !{!"_ZTSN4toku12omt_internal18omt_node_templatedIPNS_8locktreeELb0EEE", !50, i64 0, !6, i64 8, !48, i64 12, !48, i64 16}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN4toku12omt_internal17subtree_templatedILb0EEE", !12, i64 0}
!59 = !{!27, !27, i64 0}
!60 = !{!12, !12, i64 0}
!61 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb25TransactionDBMutexFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!62 = distinct !{null, null}
!63 = !{!28, !27, i64 32}
!64 = !{i64 6856535}
!65 = distinct !{!65, !54}
!66 = !{!26, !27, i64 224}
!67 = !{!26, !27, i64 232}
!68 = !{!26, !27, i64 240}
!69 = distinct !{!69, !54}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN7rocksdb18TransactionDBMutexELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !13, i64 8}
!72 = !{!"p1 _ZTSN7rocksdb18TransactionDBMutexE", !12, i64 0}
!73 = distinct !{null}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 omnipotent char", !12, i64 0}
!76 = !{!77, !30, i64 0}
!77 = !{!"_ZTSN4toku3omtIPNS_12lock_requestES2_Lb0EEE", !30, i64 0, !6, i64 4, !7, i64 8}
!78 = !{!79, !6, i64 8}
!79 = !{!"_ZTSN4toku12omt_internal18omt_node_templatedIPNS_12lock_requestELb0EEE", !80, i64 0, !6, i64 8, !48, i64 12, !48, i64 16}
!80 = !{!"p1 _ZTSN4toku12lock_requestE", !12, i64 0}
!81 = !{!80, !80, i64 0}
!82 = distinct !{!82, !54}
!83 = distinct !{null}
!84 = distinct !{!84, !54}
!85 = !{!26, !27, i64 248}
!86 = !{!26, !27, i64 256}
!87 = !{!26, !27, i64 264}
!88 = !{!26, !27, i64 272}
!89 = distinct !{null}
!90 = !{!91, !27, i64 384}
!91 = !{!"_ZTSN4toku8locktreeE", !92, i64 0, !52, i64 8, !6, i64 16, !93, i64 24, !12, i64 48, !12, i64 56, !94, i64 64, !12, i64 72, !95, i64 80, !27, i64 304, !102, i64 312, !6, i64 376, !27, i64 384, !27, i64 392}
!92 = !{!"p1 _ZTSN4toku16locktree_managerE", !12, i64 0}
!93 = !{!"_ZTSN4toku10comparatorE", !12, i64 0, !12, i64 8, !7, i64 16}
!94 = !{!"p1 _ZTSN4toku15concurrent_treeE", !12, i64 0}
!95 = !{!"_ZTSN4toku20lt_lock_request_infoE", !77, i64 0, !96, i64 24, !98, i64 32, !30, i64 48, !28, i64 56, !99, i64 96, !101, i64 104, !32, i64 112, !35, i64 160, !30, i64 216}
!96 = !{!"_ZTSSt6atomicIbE", !97, i64 0}
!97 = !{!"_ZTSSt13__atomic_baseIbE", !30, i64 0}
!98 = !{!"_ZTSSt10shared_ptrIN7rocksdb18TransactionDBMutexEE", !71, i64 0}
!99 = !{!"_ZTSSt6atomicIyE", !100, i64 0}
!100 = !{!"_ZTSSt13__atomic_baseIyE", !101, i64 0}
!101 = !{!"long long", !7, i64 0}
!102 = !{!"_ZTSN4toku12range_bufferE", !103, i64 0, !6, i64 56}
!103 = !{!"_ZTS8memarena", !104, i64 0, !105, i64 24, !6, i64 32, !27, i64 40, !27, i64 48}
!104 = !{!"_ZTSN8memarena11arena_chunkE", !75, i64 0, !27, i64 8, !27, i64 16}
!105 = !{!"p1 _ZTSN8memarena11arena_chunkE", !12, i64 0}
!106 = !{!91, !27, i64 392}
!107 = distinct !{!107, !54}
!108 = !{i64 0, i64 1216, !16, i64 1216, i64 1, !109}
!109 = !{!30, !30, i64 0}
!110 = distinct !{null}
!111 = !{!56, !50, i64 0}
end_hunk_1
