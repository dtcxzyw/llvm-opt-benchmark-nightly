Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nfd_portal?download=true
inline.NumInlined: 236
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@NFD_PickFolderN_With_Impl:bb.a
  call void @dbus_message_iter_init_append(ptr noundef %i.n, ptr noundef nonnull %9) #15
  %.val.i.i = load i64, ptr %i.m, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6.i.i = load ptr, ptr %i.q, align 8
  call fastcc void @_ZN12_GLOBAL__N_131AppendOpenFileQueryParentWindowER15DBusMessageIterRK17nfdwindowhandle_tRNS_11DestroyFuncE(ptr noundef nonnull align 8 dereferenceable(72) %9, i64 %.val.i.i, ptr %.val6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %13)
  %i.r = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_117STR_SELECT_FOLDERE) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.s = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %9, i32 noundef 97, ptr noundef nonnull @.str.25, ptr noundef nonnull %10) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.t = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 101, ptr noundef null, ptr noundef nonnull %7) #15 ; 0 uses
  %i.u = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %7, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_116STR_HANDLE_TOKENE) #15 ; 0 uses
  %i.v = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %7, i32 noundef 118, ptr noundef nonnull @.str.29, ptr noundef nonnull %8) #15 ; 0 uses
  %i.w = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %8, i32 noundef 115, ptr noundef nonnull %i.b) #15 ; 0 uses
  %i.x = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %7, ptr noundef nonnull %8) #15 ; 0 uses
  %i.y = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull %7) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.z = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 101, ptr noundef null, ptr noundef nonnull %5) #15 ; 0 uses
  %i.aa = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %5, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_113STR_DIRECTORYE) #15 ; 0 uses
  %i.ab = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %5, i32 noundef 118, ptr noundef nonnull @.str.52, ptr noundef nonnull %6) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 1, ptr %i.a, align 4, !tbaa !39
  %i.ac = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %6, i32 noundef 98, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ad = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %5, ptr noundef nonnull %6) #15 ; 0 uses
  %i.ae = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull %5) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call fastcc void @_ZN12_GLOBAL__N_141AppendOpenFileQueryDictEntryCurrentFolderER15DBusMessageIterPKc(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef %i.j)
  %i.af = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %9, ptr noundef nonnull %10) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.ag = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.ah = call ptr @dbus_connection_send_with_reply_and_block(ptr noundef %i.ag, ptr noundef %i.n, i32 noundef 2147483647, ptr noundef nonnull %11) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @dbus_error_free(ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  call void @dbus_move_error(ptr noundef nonnull %11, ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18dbus_errE, i64 8), align 8, !tbaa !24
  store ptr %i.ai, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.aj = call i32 @dbus_message_iter_init(ptr noundef nonnull %i.ah, ptr noundef nonnull %14) #15
  %.not27.i = icmp eq i32 %i.aj, 0
  br i1 %.not27.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %14) #15
  %.not28.i = icmp eq i32 %i.ak, 111
  br i1 %.not28.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %14, ptr noundef nonnull %i.d) #15
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %i.am = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.k) #16
  %.not29.i = icmp eq i32 %i.am, 0
  br i1 %.not29.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call fastcc noundef i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.al) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.k
  %i.ao = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.ap = call ptr @dbus_connection_pop_message(ptr noundef %i.ao) #15 ; 2 uses
  %.not3010.i = icmp eq ptr %i.ap, null
  br i1 %.not3010.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %i.aq = phi ptr [ %i.at, %bb.m ], [ %i.ap, %bb.l ] ; 3 uses
  %i.ar = call i32 @dbus_message_is_signal(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  %.not31.i = icmp eq i32 %i.ar, 0
  br i1 %.not31.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %.lr.ph.i
  call void @dbus_message_unref(ptr noundef nonnull %i.aq) #15
  %i.as = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.at = call ptr @dbus_connection_pop_message(ptr noundef %i.as) #15 ; 2 uses
  %.not30.i = icmp eq ptr %i.at, null
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %i.au = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.av = call i32 @dbus_connection_read_write(ptr noundef %i.au, i32 noundef -1) #15
  %.not32.i = icmp eq i32 %i.av, 0
  br i1 %.not32.i, label %bb.n, label %bb.l, !llvm.loop !68

bb.n:                                             ; preds = %._crit_edge.i
  store ptr @.str.24, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %.thread.i

.critedge.i:                                      ; preds = %bb.h, %bb.g
  %storemerge.i = phi ptr [ @.str.20, %bb.g ], [ @.str.21, %bb.h ]
  store ptr %storemerge.i, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %.critedge.i, %bb.n
  %.023 = phi ptr [ undef, %.critedge.i ], [ undef, %bb.n ], [ %i.aq, %.lr.ph.i ]
  %i.aw = phi i1 [ true, %.critedge.i ], [ true, %bb.n ], [ false, %.lr.ph.i ]
  call void @dbus_message_unref(ptr noundef nonnull %i.ah) #15
  br label %bb.o

bb.o:                                             ; preds = %.thread.i, %bb.f
  %.1 = phi ptr [ undef, %bb.f ], [ %.023, %.thread.i ]
  %.5.i = phi i1 [ true, %bb.f ], [ %i.aw, %.thread.i ]
  %.val34.i = load ptr, ptr %13, align 8, !tbaa !34
  %.val35.i = load ptr, ptr %i.o, align 8, !tbaa !35
  call void %.val34.i(ptr noundef %.val35.i) #15, !inline_history !69
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @dbus_message_unref(ptr noundef %i.n) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %.2 = phi ptr [ undef, %bb.d ], [ %.1, %bb.o ]  ; 2 uses
  %.6.i = phi i1 [ true, %bb.d ], [ %.5.i, %bb.o ]
  %i.ax = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @dbus_error_init(ptr noundef nonnull %4) #15
  %i.ay = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  call void @dbus_bus_remove_match(ptr noundef %i.ay, ptr noundef nonnull %i.ax, ptr noundef nonnull %4) #15
  call void @free(ptr noundef nonnull %i.ax) #15
  call void @dbus_error_free(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit

_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @free(ptr noundef %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %.6.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.az = call fastcc noundef i32 @_ZN12_GLOBAL__N_116ReadResponseUrisEP11DBusMessageR15DBusMessageIter(ptr noundef %.2, ptr noundef nonnull align 8 dereferenceable(72) %3) ; 2 uses
  %.not.i21 = icmp eq i32 %i.az, 1
  br i1 %.not.i21, label %bb.s, label %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %3) #15
  %.not5.i = icmp eq i32 %i.ba, 115
  br i1 %.not5.i, label %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread, label %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread28

_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread28: ; preds = %bb.s
  store ptr @.str.3, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.t

_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread: ; preds = %bb.s
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bc = call fastcc noundef i32 @_ZN12_GLOBAL__N_120AllocAndCopyFilePathEPKcRPc(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.t

_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit, %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread28, %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread
  %.3 = phi i32 [ %i.bc, %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread ], [ %i.az, %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit ], [ 0, %_ZN12_GLOBAL__N_122ReadResponseUrisSingleEP11DBusMessageRPKc.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @dbus_message_unref(ptr noundef %.2) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit, %.thread
  %.5 = phi i32 [ 0, %.thread ], [ %.3, %bb.t ], [ 0, %_ZN12_GLOBAL__N_117NFD_DBus_OpenFileILb0ELb1EEE11nfdresult_tRP11DBusMessagePK17nfdu8filteritem_tjPKcRK17nfdwindowhandle_t.exit ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN12_GLOBAL__N_119NFD_DBus_GetVersionERj(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.DBusError, align 8          ; 5 uses
  %2 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @dbus_error_init(ptr noundef nonnull %1) #15
  %i.c = call ptr @dbus_message_new_method_call(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @dbus_message_iter_init_append(ptr noundef %i.c, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr @.str.18, ptr %i.a, align 8, !tbaa !20
  %i.d = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr @.str.45, ptr %i.b, align 8, !tbaa !20
  %i.e = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.f = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.g = call ptr @dbus_connection_send_with_reply_and_block(ptr noundef %i.f, ptr noundef %i.c, i32 noundef 2147483647, ptr noundef nonnull %1) #15 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @dbus_error_free(ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  call void @dbus_move_error(ptr noundef nonnull %1, ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18dbus_errE, i64 8), align 8, !tbaa !24
  store ptr %i.h, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.i = call i32 @dbus_message_iter_init(ptr noundef nonnull %i.g, ptr noundef nonnull %3) #15
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %3) #15
  %.not12 = icmp eq i32 %i.j, 118
  br i1 %.not12, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @dbus_message_iter_recurse(ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %i.k = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %4) #15
  %.not13 = icmp eq i32 %i.k, 117
  br i1 %.not13, label %bb.g, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ @.str.46, %bb.c ], [ @.str.47, %bb.d ]
  store ptr %storemerge, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr @.str.48, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %4, ptr noundef nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread, %bb.g
  %5 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @dbus_message_unref(ptr noundef nonnull %i.g) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.3 = phi i32 [ %5, %bb.h ], [ 0, %bb.b ]
  call void @dbus_message_unref(ptr noundef %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i32 %.3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122NFDi_SetFormattedErrorEPKcz(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #6 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i32 @vsnprintf(ptr noundef nonnull @_ZN12_GLOBAL__N_19owned_errE, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  store ptr @_ZN12_GLOBAL__N_19owned_errE, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 3) i32 @NFD_PickFolderMultipleN(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.nfdpickfolderu8args_t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !50
  %i.b = call i32 @NFD_PickFolderMultipleN_With_Impl(i64 poison, ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 3) i32 @NFD_PickFolderMultipleN_With_Impl(i64 %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DBusError, align 8          ; 5 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %7 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %9 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %10 = alloca %struct.DBusMessageIter, align 8   ; 7 uses
  %11 = alloca %struct.DBusMessageIter, align 8   ; 11 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %struct.DBusError, align 8         ; 5 uses
  %13 = alloca %"class.(anonymous namespace)::DBusSignalSubscriptionHandler", align 8 ; 6 uses
  %14 = alloca %"struct.(anonymous namespace)::DestroyFunc", align 8 ; 6 uses
  %15 = alloca %struct.DBusMessageIter, align 8   ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %16 = alloca %struct.DBusMessageIter, align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.g = call fastcc noundef i32 @_ZN12_GLOBAL__N_119NFD_DBus_GetVersionERj(ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 4, !tbaa !39   ; 2 uses
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZN12_GLOBAL__N_122NFDi_SetFormattedErrorEPKcz(ptr noundef nonnull @.str.1, i32 noundef %i.h)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.j = load ptr, ptr %2, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.k = call fastcc noundef ptr @_ZN12_GLOBAL__N_120MakeUniqueObjectPathEPPKc(ptr noundef %i.d) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @dbus_error_init(ptr noundef nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr null, ptr %13, align 8, !tbaa !32
  %i.l = call fastcc noundef i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.k)
  %.not.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.not.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = call ptr @dbus_message_new_method_call(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.49) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store ptr @_ZN12_GLOBAL__N_17EmptyFnEPv, ptr %14, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !35
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @dbus_message_iter_init_append(ptr noundef %i.n, ptr noundef nonnull %10) #15
  %.val.i.i = load i64, ptr %i.m, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6.i.i = load ptr, ptr %i.q, align 8
  call fastcc void @_ZN12_GLOBAL__N_131AppendOpenFileQueryParentWindowER15DBusMessageIterRK17nfdwindowhandle_tRNS_11DestroyFuncE(ptr noundef nonnull align 8 dereferenceable(72) %10, i64 %.val.i.i, ptr %.val6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %14)
  %i.r = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_118STR_SELECT_FOLDERSE) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.s = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %10, i32 noundef 97, ptr noundef nonnull @.str.25, ptr noundef nonnull %11) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.p, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.t = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 101, ptr noundef null, ptr noundef nonnull %8) #15 ; 0 uses
  %i.u = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %8, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_116STR_HANDLE_TOKENE) #15 ; 0 uses
  %i.v = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %8, i32 noundef 118, ptr noundef nonnull @.str.29, ptr noundef nonnull %9) #15 ; 0 uses
  %i.w = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %9, i32 noundef 115, ptr noundef nonnull %i.c) #15 ; 0 uses
  %i.x = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %8, ptr noundef nonnull %9) #15 ; 0 uses
  %i.y = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %8) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.z = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 101, ptr noundef null, ptr noundef nonnull %6) #15 ; 0 uses
  %i.aa = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %6, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_112STR_MULTIPLEE) #15 ; 0 uses
  %i.ab = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %6, i32 noundef 118, ptr noundef nonnull @.str.52, ptr noundef nonnull %7) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 1, ptr %i.b, align 4, !tbaa !39
  %i.ac = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %7, i32 noundef 98, ptr noundef nonnull %i.b) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ad = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %6, ptr noundef nonnull %7) #15 ; 0 uses
  %i.ae = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %6) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.af = call i32 @dbus_message_iter_open_container(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 101, ptr noundef null, ptr noundef nonnull %4) #15 ; 0 uses
  %i.ag = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %4, i32 noundef 115, ptr noundef nonnull @_ZN12_GLOBAL__N_113STR_DIRECTORYE) #15 ; 0 uses
  %i.ah = call i32 @dbus_message_iter_open_container(ptr noundef nonnull %4, i32 noundef 118, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 1, ptr %i.a, align 4, !tbaa !39
  %i.ai = call i32 @dbus_message_iter_append_basic(ptr noundef nonnull %5, i32 noundef 98, ptr noundef nonnull %i.a) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aj = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.ak = call i32 @dbus_message_iter_close_container(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call fastcc void @_ZN12_GLOBAL__N_141AppendOpenFileQueryDictEntryCurrentFolderER15DBusMessageIterPKc(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef %i.j)
  %i.al = call i32 @dbus_message_iter_close_container(ptr noundef nonnull %10, ptr noundef nonnull %11) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.am = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.an = call ptr @dbus_connection_send_with_reply_and_block(ptr noundef %i.am, ptr noundef %i.n, i32 noundef 2147483647, ptr noundef nonnull %12) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @dbus_error_free(ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  call void @dbus_move_error(ptr noundef nonnull %12, ptr noundef nonnull @_ZN12_GLOBAL__N_18dbus_errE) #15
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_18dbus_errE, i64 8), align 8, !tbaa !24
  store ptr %i.ao, ptr @_ZN12_GLOBAL__N_17err_ptrE, align 8, !tbaa !20
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.ap = call i32 @dbus_message_iter_init(ptr noundef nonnull %i.an, ptr noundef nonnull %15) #15
  %.not27.i = icmp eq i32 %i.ap, 0
  br i1 %.not27.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = call i32 @dbus_message_iter_get_arg_type(ptr noundef nonnull %15) #15
  %.not28.i = icmp eq i32 %i.aq, 111
  br i1 %.not28.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @dbus_message_iter_get_basic(ptr noundef nonnull %15, ptr noundef nonnull %i.e) #15
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %i.k) #16
  %.not29.i = icmp eq i32 %i.as, 0
  br i1 %.not29.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = call fastcc noundef i32 @_ZN12_GLOBAL__N_129DBusSignalSubscriptionHandler9SubscribeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %i.ar) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.k
  %i.au = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
  %i.av = call ptr @dbus_connection_pop_message(ptr noundef %i.au) #15 ; 2 uses
  %.not3010.i = icmp eq ptr %i.av, null
  br i1 %.not3010.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %i.aw = phi ptr [ %i.az, %bb.m ], [ %i.av, %bb.l ] ; 3 uses
  %i.ax = call i32 @dbus_message_is_signal(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  %.not31.i = icmp eq i32 %i.ax, 0
  br i1 %.not31.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %.lr.ph.i
  call void @dbus_message_unref(ptr noundef nonnull %i.aw) #15
  %i.ay = load ptr, ptr @_ZN12_GLOBAL__N_19dbus_connE, align 8, !tbaa !22
end_hunk_0
