Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CommandHistory?download=true
begin_hunk_0_@_ZNK12lldb_private14CommandHistory7GetSizeEv:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 0 uses
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private14CommandHistory7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 0 uses
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private14CommandHistory10FindStringEN4llvm9StringRefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.d = icmp ult i64 %3, 2
  br i1 %i.d, label %bb.o, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.e = load i8, ptr %2, align 1, !tbaa !14
  %.not = icmp eq i8 %i.e, 33
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  switch i8 %i.g, label %bb.k [
    i8 33, label %bb.e
    i8 45, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  store ptr %i.n, ptr %0, align 8, !tbaa !21
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !22
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = add i64 %3, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.s = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.q, i64 %i.r, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #11
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %.not2 = icmp ult i64 %i.t, %i.ab
  br i1 %.not2, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nuw i64 %i.ab, %i.t
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.ad = add i64 %3, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ae = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.f, i64 %i.ad, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #11
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.af = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 5
  %.not1 = icmp ult i64 %i.af, %i.an
  br i1 %.not1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ao = phi ptr [ %i.x, %bb.j ], [ %i.aj, %bb.m ]
  %.0 = phi i64 [ %i.ac, %bb.j ], [ %i.af, %bb.m ]
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %.0 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20
  store ptr %i.aq, ptr %0, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.e, %bb.c, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.h, %bb.l, %bb.n, %bb.f
  %.sink = phi i8 [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.i ], [ 1, %bb.n ], [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ], [ 0, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !25
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #11 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK12lldb_private14CommandHistory16GetStringAtIndexEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %.sroa.02.0 = phi ptr [ %i.l, %bb.c ], [ @.str, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ]
  %.sroa.3.0 = phi i64 [ %i.n, %bb.c ], [ 0, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ]
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 0 uses
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK12lldb_private14CommandHistoryixEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(64) %0) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK12lldb_private14CommandHistory16GetStringAtIndexEm.exit

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  br label %_ZNK12lldb_private14CommandHistory16GetStringAtIndexEm.exit

_ZNK12lldb_private14CommandHistory16GetStringAtIndexEm.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, %bb.c
  %.sroa.02.0.i = phi ptr [ %i.l, %bb.c ], [ @.str, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i ]
  %.sroa.3.0.i = phi i64 [ %i.n, %bb.c ], [ 0, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i ]
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(64) %0) #11 ; 0 uses
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK12lldb_private14CommandHistory19GetRecentmostStringEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.c
  %.sroa.01.0 = phi ptr [ %i.h, %bb.c ], [ @.str, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ]
  %.sroa.3.0 = phi i64 [ %i.j, %bb.c ], [ 0, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ]
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 0 uses
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14CommandHistory12AppendStringEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  br i1 %3, label %bb.c, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %.not.i = icmp eq i64 %2, %i.k
  br i1 %.not.i, label %bb.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.i, i64 %2)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

_ZN4llvmeqENS_9StringRefES0_.exit.thread7:        ; preds = %bb.d, %bb.c, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !28
  %i.p = icmp eq ptr %1, null
  %i.q = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread7
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

bb.g:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %2, ptr %i.a, align 8, !tbaa !22
  %i.r = icmp ugt i64 %2, 15
  br i1 %i.r, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #11 ; 2 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !15
  %i.t = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.t, ptr %i.o, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  switch i64 %2, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.v, ptr %i.u, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.i, %bb.j
  %i.w = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = load ptr, ptr %4, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.not.i.i1 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i1, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !28
  %i.af = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.o
  br i1 %i.ag, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !20  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !15
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !14
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !14
  %.pre = load i64, ptr %i.x, align 8, !tbaa !20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ah, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !20
  store ptr %i.o, ptr %4, align 8, !tbaa !15
  store i64 0, ptr %i.x, align 8, !tbaa !20
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.ao, ptr %i.aa, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre9 = load ptr, ptr %4, align 8, !tbaa !15   ; 2 uses
  %i.ap = icmp eq ptr %.pre9, %i.o
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aq = load i64, ptr %i.o, align 8, !tbaa !14
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.pre9, i64 noundef %i.ar) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.e, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14CommandHistory5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #12
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i1, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #13
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

end_hunk_0
