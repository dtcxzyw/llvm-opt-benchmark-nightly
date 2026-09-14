Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nfd_portal?download=true
inline.NumInlined: 236
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_116ReadResponseUrisEP11DBusMessageR15DBusMessageIter:bb.a
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %6, ptr noundef nonnull %i.b) #15
  %i.e = load i32, ptr %i.b, align 4, !tbaa !39
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %bb.d, label %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread11

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @dbus_message_iter_next(ptr noundef nonnull %6) #15
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @.str.9, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread11

_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread: ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ @.str.9, %bb.a ], [ @.str.10, %bb.b ]
  store ptr %storemerge, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.q

_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread11: ; preds = %bb.e, %bb.c
  %.0.i.ph = phi i32 [ 2, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.g = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull align 8 %5) #15
  %.not.i5 = icmp eq i32 %i.g, 97
  br i1 %.not.i5, label %bb.g, label %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit.thread"

"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit.thread": ; preds = %bb.f
  store ptr @.str.11, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @dbus_message_iter_recurse(ptr noundef nonnull align 8 %5, ptr noundef nonnull %2) #15
  %i.h = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %2) #15
  %i.i = icmp eq i32 %i.h, 101
  br i1 %i.i, label %.lr.ph.i, label %.thread

.thread:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.p

.lr.ph.i:                                         ; preds = %bb.g, %bb.n
  %.17 = phi i1 [ %.2, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @dbus_message_iter_recurse(ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %i.j = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %3) #15
  %.not5.i = icmp eq i32 %i.j, 115
  br i1 %.not5.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i
  store ptr @.str.12, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit"

bb.h:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #15
  %i.k = call i32 @dbus_message_iter_next(ptr noundef nonnull %3) #15
  %.not6.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i, label %.thread3.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %3) #15
  %.not7.i = icmp eq i32 %i.l, 118
  br i1 %.not7.i, label %bb.j, label %.thread3.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @dbus_message_iter_recurse(ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.n = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(5) @.str.7) #16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.p = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull align 8 dereferenceable(72) %4) #15
  %.not.i.i.i = icmp eq i32 %i.p, 97
  br i1 %.not.i.i.i, label %bb.l, label %.thread5.i

bb.l:                                             ; preds = %bb.k
  call void @dbus_message_iter_recurse(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull %1) #15
  br label %bb.m

.thread5.i:                                       ; preds = %bb.k
  store ptr @.str.15, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit"

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2 = phi i1 [ true, %bb.l ], [ %.17, %bb.j ]   ; 2 uses
  %i.q = call i32 @dbus_message_iter_next(ptr noundef nonnull %2) #15
  %.not8.i = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.not8.i, label %bb.o, label %bb.n

.thread3.i:                                       ; preds = %bb.i, %bb.h
  %storemerge.i = phi ptr [ @.str.13, %bb.h ], [ @.str.14, %bb.i ]
  store ptr %storemerge.i, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit"

bb.n:                                             ; preds = %bb.m
  %i.r = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %2) #15
  %i.s = icmp eq i32 %i.r, 101
  br i1 %i.s, label %.lr.ph.i, label %bb.o

"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit": ; preds = %.thread.i, %.thread5.i, %.thread3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  store ptr @.str.8, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit.thread", %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit", %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread11, %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread
  %.1 = phi i32 [ 0, %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread ], [ %.0.i.ph, %_ZN12_GLOBAL__N_119ReadResponseResultsEP11DBusMessageR15DBusMessageIter.exit.thread11 ], [ 0, %bb.p ], [ 0, %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit" ], [ 1, %bb.o ], [ 0, %"_ZN12_GLOBAL__N_18ReadDictIJPKcZNS_16ReadResponseUrisEP11DBusMessageR15DBusMessageIterE3$_0EEE11nfdresult_tS5_DpT_.exit.thread" ]
  ret i32 %.1
}

declare void @dbus_message_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 3) i32 @NFD_SaveDialogN(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.nfdsavedialogu8args_t, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !45
  %i.e = call i32 @NFD_SaveDialogN_With_Impl(i64 poison, ptr noundef %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 3) i32 @NFD_SaveDialogN_With_Impl(i64 %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %7 = alloca %struct.DBusMessageIter, align 8    ; 8 uses
  %8 = alloca %struct.DBusMessageIter, align 8    ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %struct.DBusMessageIter, align 8    ; 8 uses
  %10 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %11 = alloca %struct.DBusMessageIter, align 8   ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %struct.DBusError, align 8         ; 5 uses
  %13 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %14 = alloca %struct.DBusMessageIter, align 8   ; 6 uses
  %15 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %17 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %18 = alloca %struct.DBusMessageIter, align 8   ; 17 uses
  %19 = alloca %struct.DBusMessageIter, align 8   ; 13 uses
  %20 = alloca %struct.DBusMessageIter, align 8   ; 10 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %22 = alloca %struct.DBusMessageIter, align 8   ; 5 uses
  %23 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %24 = alloca %struct.DBusMessageIter, align 8   ; 17 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %25 = alloca %struct.DBusError, align 8         ; 5 uses
  %26 = alloca %"class.(anonymous namespace)::DBusSignalSubscriptionHandler", align 8 ; 6 uses
  %27 = alloca %"struct.(anonymous namespace)::DestroyFunc", align 8 ; 6 uses
  %28 = alloca %struct.DBusMessageIter, align 8   ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.q = call fastcc noundef ptr @_ZN12_GLOBAL__N_120MakeUniqueObjectPathEPPKc(ptr noundef %i.h) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @dbus_error_init(ptr noundef nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  store ptr null, ptr %26, align 8, !tbaa !32
  %i.r = call fastcc noundef i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %i.q)
  %.not.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.not.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = call ptr @dbus_message_new_method_call(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  store ptr @_ZN12_GLOBAL__N_17EmptyFnEPv, ptr %27, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !35
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  call void @dbus_message_iter_init_append(ptr noundef %i.t, ptr noundef nonnull %23) #15
  %.val.i.i = load i64, ptr %i.s, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val10.i.i = load ptr, ptr %i.w, align 8
  call fastcc void @_ZN12_GLOBAL__N_131AppendOpenFileQueryParentWindowER15DBusMessageIterRK17nfdwindowhandle_tRNS_11DestroyFuncE(ptr noundef nonnull align 8 dereferenceable(72) %23, i64 %.val.i.i, ptr %.val10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %27)
  %i.x = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull align 8 dereferenceable(72) %23, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_113STR_SAVE_FILEE) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.y = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %23, i32 noundef 97, ptr noundef nonnull @.str.25, ptr noundef nonnull %24) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.v, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.z = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %21) #15 ; 0 uses
  %i.aa = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %21, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_116STR_HANDLE_TOKENE) #15 ; 0 uses
  %i.ab = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %21, i32 noundef 118, ptr noundef nonnull @.str.29, ptr noundef nonnull %22) #15 ; 0 uses
  %i.ac = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %22, i32 noundef 115, ptr noundef nonnull %i.g) #15 ; 0 uses
  %i.ad = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %21, ptr noundef nonnull %22) #15 ; 0 uses
  %i.ae = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %21) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not37.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not37.i.i.i, label %_ZN12_GLOBAL__N_135AppendSaveFileQueryDictEntryFiltersER15DBusMessageIterPK17nfdu8filteritem_tjPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %.not38.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not38.i.i.i, label %select.unfold.i.i.i, label %.preheader45.preheader.i.i.i

.preheader45.preheader.i.i.i:                     ; preds = %bb.c
  %strlen.i.i.i = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.p)
  %scevgep.i.i.i = getelementptr i8, ptr %i.p, i64 %strlen.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader45.preheader.i.i.i
  %.132.i.i.i = phi ptr [ %i.af, %.preheader.i.i.i ], [ %scevgep.i.i.i, %.preheader45.preheader.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.132.i.i.i, i64 -1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %.not40.i.i.i = icmp eq i8 %i.ag, 46
  br i1 %.not40.i.i.i, label %bb.d, label %.preheader.i.i.i, !llvm.loop !59

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.ah = load i8, ptr %.132.i.i.i, align 1, !tbaa !38
  %.fr.i.i.i = freeze i8 %i.ah
  %.not41.i.i.i = icmp eq i8 %.fr.i.i.i, 0
  %spec.select = select i1 %.not41.i.i.i, ptr null, ptr %.132.i.i.i
  br label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.d, %bb.c
  %.134.i.i.i = phi ptr [ %spec.select, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ai = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %18) #15 ; 0 uses
  %i.aj = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %18, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_111STR_FILTERSE) #15 ; 0 uses
  %i.ak = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %18, i32 noundef 118, ptr noundef nonnull @.str.31, ptr noundef nonnull %19) #15 ; 0 uses
  %i.al = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %19, i32 noundef 97, ptr noundef nonnull @.str.32, ptr noundef nonnull %20) #15 ; 0 uses
  %i.am = icmp eq ptr %.134.i.i.i, null
  %29 = zext i32 %i.l to i64                      ; 2 uses
  br i1 %i.am, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %select.unfold.i.i.i, %.split.us.i.i.i
  %indvars.iv53.i.i.i = phi i64 [ %indvars.iv.next54.i.i.i, %.split.us.i.i.i ], [ 0, %select.unfold.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv53.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an)
  %indvars.iv.next54.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next54.i.i.i, %29
  br i1 %exitcond, label %.critedge.i.i.i, label %.split.us.i.i.i, !llvm.loop !60

.split50.us.loopexit52.i.i.i:                     ; preds = %bb.g
  %i.ao = trunc nuw i8 %.130.i.i.i to i1
  call fastcc void @_ZN12_GLOBAL__N_120AppendWildcardFilterER15DBusMessageIter(ptr noundef nonnull align 8 dereferenceable(72) %20)
  %i.ap = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %19, ptr noundef nonnull %20) #15 ; 0 uses
  %i.aq = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %18, ptr noundef nonnull %19) #15 ; 0 uses
  %i.ar = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %18) #15 ; 0 uses
  %i.as = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %18) #15 ; 0 uses
  %i.at = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %18, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_118STR_CURRENT_FILTERE) #15 ; 0 uses
  %i.au = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %18, i32 noundef 118, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #15 ; 0 uses
  br i1 %i.ao, label %bb.h, label %bb.i

.split.i.i.i:                                     ; preds = %select.unfold.i.i.i, %bb.g
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.g ], [ 0, %select.unfold.i.i.i ] ; 3 uses
  %.02847.i.i.i = phi i64 [ %.1.i.i.i, %bb.g ], [ undef, %select.unfold.i.i.i ] ; 2 uses
  %.02946.i.i.i = phi i8 [ %.130.i.i.i, %bb.g ], [ 0, %select.unfold.i.i.i ]
  %i.av = trunc nuw i8 %.02946.i.i.i to i1
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i.i.i ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.i.i.i
  %i.ax = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_127AppendSingleFilterCheckExtnER15DBusMessageIterRK17nfdu8filteritem_tPKc(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aw, ptr noundef %.134.i.i.i) ; 2 uses
  %i.ay = zext i1 %i.ax to i8
  %spec.select44.i.i.i = select i1 %i.ax, i64 %indvars.iv.i.i.i, i64 %.02847.i.i.i
  br label %bb.g

bb.f:                                             ; preds = %.split.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aw)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.130.i.i.i = phi i8 [ 1, %bb.f ], [ %i.ay, %bb.e ] ; 2 uses
  %.1.i.i.i = phi i64 [ %.02847.i.i.i, %bb.f ], [ %spec.select44.i.i.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not42.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %29
  br i1 %.not42.i.i.i, label %.split50.us.loopexit52.i.i.i, label %.split.i.i.i, !llvm.loop !60

bb.h:                                             ; preds = %.split50.us.loopexit52.i.i.i
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.1.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_118AppendSingleFilterER15DBusMessageIterRK17nfdu8filteritem_t(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.az)
  br label %bb.j

.critedge.i.i.i:                                  ; preds = %.split.us.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_120AppendWildcardFilterER15DBusMessageIter(ptr noundef nonnull align 8 dereferenceable(72) %20)
  %i.ba = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %19, ptr noundef nonnull %20) #15 ; 0 uses
  %i.bb = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %18, ptr noundef nonnull %19) #15 ; 0 uses
  %i.bc = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %18) #15 ; 0 uses
  %i.bd = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %18) #15 ; 0 uses
  %i.be = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %18, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_118STR_CURRENT_FILTERE) #15 ; 0 uses
  %i.bf = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %18, i32 noundef 118, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i, %.split50.us.loopexit52.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_120AppendWildcardFilterER15DBusMessageIter(ptr noundef nonnull align 8 dereferenceable(72) %19)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %18, ptr noundef nonnull %19) #15 ; 0 uses
  %i.bh = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %18) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %_ZN12_GLOBAL__N_135AppendSaveFileQueryDictEntryFiltersER15DBusMessageIterPK17nfdu8filteritem_tjPKc.exit.i.i

_ZN12_GLOBAL__N_135AppendSaveFileQueryDictEntryFiltersER15DBusMessageIterPK17nfdu8filteritem_tjPKc.exit.i.i: ; preds = %bb.j, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.p, ptr %i.f, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_139AppendSaveFileQueryDictEntryCurrentNameER15DBusMessageIterPKc.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_135AppendSaveFileQueryDictEntryFiltersER15DBusMessageIterPK17nfdu8filteritem_tjPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.bi = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %16) #15 ; 0 uses
  %i.bj = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %16, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_116STR_CURRENT_NAMEE) #15 ; 0 uses
  %i.bk = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %16, i32 noundef 118, ptr noundef nonnull @.str.29, ptr noundef nonnull %17) #15 ; 0 uses
  %i.bl = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %17, i32 noundef 115, ptr noundef nonnull %i.f) #15 ; 0 uses
  %i.bm = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %16, ptr noundef nonnull %17) #15 ; 0 uses
  %i.bn = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %16) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %_ZN12_GLOBAL__N_139AppendSaveFileQueryDictEntryCurrentNameER15DBusMessageIterPKc.exit.i.i

_ZN12_GLOBAL__N_139AppendSaveFileQueryDictEntryCurrentNameER15DBusMessageIterPKc.exit.i.i: ; preds = %bb.k, %_ZN12_GLOBAL__N_135AppendSaveFileQueryDictEntryFiltersER15DBusMessageIterPK17nfdu8filteritem_tjPKc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_ZN12_GLOBAL__N_141AppendOpenFileQueryDictEntryCurrentFolderER15DBusMessageIterPKc(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef %i.n)
  %i.bo = icmp ne ptr %i.n, null
  %i.bp = icmp ne ptr %i.p, null
  %or.cond.i.i.i = and i1 %i.bo, %i.bp
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN12_GLOBAL__N_125AppendSaveFileQueryParamsEP11DBusMessagePKcPK17nfdu8filteritem_tjS3_S3_RK17nfdwindowhandle_tRNS_11DestroyFuncE.exit.i

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_139AppendSaveFileQueryDictEntryCurrentNameER15DBusMessageIterPKc.exit.i.i
  %i.bq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #16 ; 8 uses
  %i.br = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #16 ; 8 uses
  %.not.i11.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i11.i.i, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.bs = add i64 %i.br, 2
  %i.bt = call noalias noundef ptr @malloc(i64 noundef %i.bs) #17 ; 2 uses
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr i8, ptr %i.n, i64 %i.bq
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !38
  %i.bx = icmp eq i8 %i.bw, 47
  %i.by = add i64 %i.br, %i.bq                    ; 3 uses
  br i1 %i.bx, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i, label %.lr.ph.i58.preheader.i.i.i

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i: ; preds = %bb.m
  %i.bz = add i64 %i.by, 1
  %i.ca = call noalias noundef ptr @malloc(i64 noundef %i.bz) #17 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull readonly align 1 %i.n, i64 %i.bq, i1 false), !tbaa !38
  %scevgep.i12.i.i = getelementptr i8, ptr %i.ca, i64 %i.bq ; 2 uses
  %.not7.i50.i.i.i = icmp samesign eq i64 %i.br, 0
  br i1 %.not7.i50.i.i.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i, label %.lr.ph.i51.preheader.i.i.i

.lr.ph.i51.preheader.i.i.i:                       ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i12.i.i, ptr nonnull readonly align 1 %i.p, i64 %i.br, i1 false), !tbaa !38
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.br
  %scevgep79.i.i.i = getelementptr i8, ptr %i.cb, i64 %i.bq
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i

.lr.ph.i58.preheader.i.i.i:                       ; preds = %bb.m
  %i.cc = add i64 %i.by, 2
  %i.cd = call noalias noundef ptr @malloc(i64 noundef %i.cc) #17 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull readonly align 1 %i.n, i64 %i.bq, i1 false), !tbaa !38
  %scevgep80.i.i.i = getelementptr i8, ptr %i.cd, i64 %i.bq
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i: ; preds = %.lr.ph.i58.preheader.i.i.i, %.thread.i.i.i
  %i.ce = phi ptr [ %i.bt, %.thread.i.i.i ], [ %i.cd, %.lr.ph.i58.preheader.i.i.i ] ; 3 uses
  %i.cf = phi i64 [ %i.br, %.thread.i.i.i ], [ %i.by, %.lr.ph.i58.preheader.i.i.i ]
  %.0.lcssa.i62.i.i.i = phi ptr [ %i.bt, %.thread.i.i.i ], [ %scevgep80.i.i.i, %.lr.ph.i58.preheader.i.i.i ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.0.lcssa.i62.i.i.i, i64 1 ; 2 uses
  store i8 47, ptr %.0.lcssa.i62.i.i.i, align 1, !tbaa !38
  %.not7.i64.i.i.i = icmp samesign eq i64 %i.br, 0
  br i1 %.not7.i64.i.i.i, label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i, label %.lr.ph.i65.preheader.i.i.i

.lr.ph.i65.preheader.i.i.i:                       ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull readonly align 1 %i.p, i64 %i.br, i1 false), !tbaa !38
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cf
  %scevgep81.i.i.i = getelementptr i8, ptr %i.ch, i64 1
  br label %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i

_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i: ; preds = %.lr.ph.i65.preheader.i.i.i, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i, %.lr.ph.i51.preheader.i.i.i, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i
  %.0.lcssa.i69.sink.i.i.i = phi ptr [ %scevgep79.i.i.i, %.lr.ph.i51.preheader.i.i.i ], [ %scevgep.i12.i.i, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i ], [ %i.cg, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i ], [ %scevgep81.i.i.i, %.lr.ph.i65.preheader.i.i.i ] ; 3 uses
  %.044.i.i.i = phi ptr [ %i.ca, %.lr.ph.i51.preheader.i.i.i ], [ %i.ca, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit.i.i.i ], [ %i.ce, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit63.i.i.i ], [ %i.ce, %.lr.ph.i65.preheader.i.i.i ] ; 4 uses
  store i8 0, ptr %.0.lcssa.i69.sink.i.i.i, align 1, !tbaa !38
  %i.ci = call i32 @access(ptr noundef %.044.i.i.i, i32 noundef 0) #15
  %.not48.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not48.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i
  %.043.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i69.sink.i.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.cj = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %24, i32 noundef 101, ptr noundef null, ptr noundef nonnull %13) #15 ; 0 uses
  %i.ck = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %13, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_116STR_CURRENT_FILEE) #15 ; 0 uses
  %i.cl = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %13, i32 noundef 118, ptr noundef nonnull @.str.39, ptr noundef nonnull %14) #15 ; 0 uses
  %i.cm = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %14, i32 noundef 97, ptr noundef nonnull @.str.40, ptr noundef nonnull %15) #15 ; 0 uses
  %.not4974.i.i.i = icmp eq ptr %.044.i.i.i, %.043.i.i.i
  br i1 %.not4974.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.n
  %i.cn = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %14, ptr noundef nonnull %15) #15 ; 0 uses
  %i.co = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %13, ptr noundef nonnull %14) #15 ; 0 uses
  %i.cp = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr noundef nonnull %13) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.o

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %.075.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i ], [ %.044.i.i.i, %bb.n ] ; 3 uses
  %i.cq = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %15, i32 noundef 121, ptr noundef %.075.i.i.i) #15 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.075.i.i.i, i64 1
  %.not49.i.i.i = icmp eq ptr %.075.i.i.i, %.0.lcssa.i69.sink.i.i.i
  br i1 %.not49.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !61

bb.o:                                             ; preds = %._crit_edge.i.i.i, %_ZN12_GLOBAL__N_14copyIcEEPT_PKS1_S4_S2_.exit56.i.i.i
  call void @free(ptr noundef %.044.i.i.i) #15
  br label %_ZN12_GLOBAL__N_125AppendSaveFileQueryParamsEP11DBusMessagePKcPK17nfdu8filteritem_tjS3_S3_RK17nfdwindowhandle_tRNS_11DestroyFuncE.exit.i

_ZN12_GLOBAL__N_125AppendSaveFileQueryParamsEP11DBusMessagePKcPK17nfdu8filteritem_tjS3_S3_RK17nfdwindowhandle_tRNS_11DestroyFuncE.exit.i: ; preds = %bb.o, %_ZN12_GLOBAL__N_139AppendSaveFileQueryDictEntryCurrentNameER15DBusMessageIterPKc.exit.i.i
  %i.cs = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %23, ptr noundef nonnull %24) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.ct = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.cu = call ptr @dbus_connection_send_with_reply_and_block(ptr noundef %i.ct, ptr noundef %i.t, i32 noundef 2147483647, ptr noundef nonnull %25) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_125AppendSaveFileQueryParamsEP11DBusMessagePKcPK17nfdu8filteritem_tjS3_S3_RK17nfdwindowhandle_tRNS_11DestroyFuncE.exit.i
  call void @dbus_error_free(ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  call void @dbus_move_error(ptr noundef nonnull %25, ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18dbus_errE, i64 8), align 8, !tbaa !24
  store ptr %i.cv, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.y

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_125AppendSaveFileQueryParamsEP11DBusMessagePKcPK17nfdu8filteritem_tjS3_S3_RK17nfdwindowhandle_tRNS_11DestroyFuncE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.cw = call i32 @dbus_message_iter_init(ptr noundef nonnull %i.cu, ptr noundef nonnull %28) #15
  %.not28.i = icmp eq i32 %i.cw, 0
  br i1 %.not28.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %28) #15
  %.not29.i = icmp eq i32 %i.cx, 111
  br i1 %.not29.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %28, ptr noundef nonnull %i.i) #15
  %i.cy = load ptr, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.cz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cy, ptr noundef nonnull dereferenceable(1) %i.q) #16
  %.not30.i = icmp eq i32 %i.cz, 0
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = call fastcc noundef i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %i.cy) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.u
  %i.db = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.dc = call ptr @dbus_connection_pop_message(ptr noundef %i.db) #15 ; 2 uses
  %.not3147.i = icmp eq ptr %i.dc, null
  br i1 %.not3147.i, label %._crit_edge.i, label %.lr.ph.i
end_hunk_0
