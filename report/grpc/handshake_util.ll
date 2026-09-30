Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshake_util?download=true
inline.NumInlined: 827
inline.NumDeleted: 444
begin_hunk_0_@_Z10RetryAsyncP6ssl_sti:bb.a
  br i1 %or.cond60, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !153 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 37, i64 1, ptr %i.aq) #24 ; 0 uses
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ar = tail call noundef ptr @_Z19PacketedBioGetClockP6bio_st(ptr noundef nonnull %i.ao) ; 4 uses
  %i.as = load i32, ptr %i.al, align 8, !tbaa !157 ; 2 uses
  %i.at = sdiv i32 %i.as, 1000
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !159
  %i.aw = add nsw i64 %i.av, %i.au                ; 2 uses
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !159
  %i.ax = mul nsw i32 %i.as, 1000
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !160
  %i.bb = add nsw i64 %i.ba, %i.ay                ; 3 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !160
  %i.bc = icmp sgt i64 %i.bb, 999999
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = add nsw i64 %i.bb, -1000000
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !160
  %i.be = add nsw i64 %i.aw, 1
  store i64 %i.be, ptr %i.ar, align 8, !tbaa !159
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bf = tail call i32 @DTLSv1_handle_timeout(ptr noundef %0) ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = tail call i32 @SSL_get_error(ptr noundef %0, i32 noundef %i.bf)
  %i.bi = icmp eq i32 %i.bh, 3
  br i1 %i.bi, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !106
  tail call void @_Z18AsyncBioAllowWriteP6bio_stm(ptr noundef %i.bj, i64 noundef 1)
  br label %.critedge

bb.y:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i8 1, ptr %i.bk, align 4, !tbaa !161
  br label %.critedge

bb.z:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 1, ptr %i.bl, align 8, !tbaa !162
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %bb.q, %bb.v, %bb.d, %bb.f, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.s, %bb.y, %bb.z, %.thread, %bb.k, %bb.i, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ false, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ false, %bb.s ], [ false, %.thread ], [ true, %bb.q ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.i ], [ true, %bb.v ], [ false, %bb.w ], [ true, %bb.x ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_Z13GetTestConfigPK6ssl_st(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z12GetTestStatePK6ssl_st(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_renegotiate(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN17MockQuicTransport13ReadHandshakeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare noundef zeroext i1 @_Z23PacketedBioAdvanceClockP6bio_st(ptr noundef) local_unnamed_addr #2

declare i32 @DTLSv1_handle_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z17AsyncBioAllowReadP6bio_stm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_Z18AsyncBioAllowWriteP6bio_stm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !109
  store ptr null, ptr %1, align 8, !tbaa !109
  %i.b = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !109
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @SSL_SESSION_free(ptr noundef nonnull %i.b)
          to label %_ZNSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EEaSEOS4_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZNSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef ptr @_Z19PacketedBioGetClockP6bio_st(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z20CheckIdempotentErrorPKcP6ssl_stSt8functionIFivEE(ptr noundef %0, ptr noundef %1, ptr noundef align 8 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFivEEclEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFivEEclEv.exit:                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !165
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !163 ; 4 uses
  %i.g = tail call i32 @SSL_get_error(ptr noundef %1, i32 noundef %i.f) ; 3 uses
  %i.h = tail call i32 @ERR_peek_error()          ; 2 uses
  switch i32 %i.g, label %bb.f [
    i32 6, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNKSt8functionIFivEEclEv.exit, %_ZNKSt8functionIFivEEclEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !110
  %.not.i.i23 = icmp eq ptr %i.i, null
  br i1 %.not.i.i23, label %bb.d, label %_ZNKSt8functionIFivEEclEv.exit24

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFivEEclEv.exit24:                 ; preds = %bb.c
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !165
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !163 ; 3 uses
  %i.l = tail call i32 @SSL_get_error(ptr noundef %1, i32 noundef %i.k) ; 2 uses
  %i.m = tail call i32 @ERR_peek_error()          ; 2 uses
  %.not = icmp eq i32 %i.f, %i.k
  %.not20 = icmp eq i32 %i.g, %i.l
  %or.cond = select i1 %.not, i1 %.not20, i1 false
  %.not21 = icmp eq i32 %i.h, %i.m
  %or.cond22 = select i1 %or.cond, i1 %.not21, i1 false
  br i1 %or.cond22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFivEEclEv.exit24
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.1, ptr noundef %0) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = call ptr @ERR_error_string_n(i32 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 256) ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.2, i32 noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %i.a) #27 ; 0 uses
  %i.s = call ptr @ERR_error_string_n(i32 noundef %i.m, ptr noundef nonnull %i.a, i64 noundef 256) ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.3, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.a) #27 ; 0 uses
  call void @exit(i32 noundef 90) #28
  unreachable

bb.f:                                             ; preds = %_ZNKSt8functionIFivEEclEv.exit24, %_ZNKSt8functionIFivEEclEv.exit
  ret i32 %i.f
}

declare i32 @ERR_peek_error() local_unnamed_addr #2

declare ptr @ERR_error_string_n(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z16DoSplitHandshakePSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEEP14SettingsWriterb(ptr nofree noundef captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.fd_set, align 8             ; 7 uses
  %i.e = alloca [64 x i8], align 16               ; 7 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  %4 = alloca %class.anon.120, align 8            ; 8 uses
  %i.g = alloca [5 x i8], align 1                 ; 7 uses
  %i.h = alloca [64 x i8], align 16               ; 3 uses
  %i.i = alloca [2 x i32], align 4                ; 8 uses
  %i.j = alloca [2 x i32], align 4                ; 9 uses
  %5 = alloca %class.ScopedFD, align 4            ; 7 uses
  %6 = alloca %class.ScopedFD, align 4            ; 6 uses
  %7 = alloca %class.ScopedFD, align 4            ; 6 uses
  %8 = alloca %class.ScopedFD, align 4            ; 7 uses
  %9 = alloca %class.ScopedProcess, align 4       ; 9 uses
  %10 = alloca %class.ScopedFD, align 4           ; 9 uses
  %11 = alloca %"class.std::map", align 8         ; 8 uses
  %12 = alloca [2 x %"struct.std::pair"], align 4 ; 8 uses
  %13 = alloca %"struct.std::less", align 1       ; 4 uses
  %14 = alloca %"class.std::allocator.106", align 1 ; 4 uses
  %15 = alloca %"class.std::vector.8", align 8    ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 12 uses
  %16 = alloca %"class.std::function.86", align 8 ; 11 uses
  %17 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 15 uses
  %18 = alloca %struct.ssl_early_callback_ctx, align 8 ; 4 uses
  %19 = alloca %"class.std::vector.13", align 8   ; 11 uses
  %20 = alloca %"class.std::unique_ptr.88", align 8 ; 14 uses
  %21 = alloca %"class.std::unique_ptr.94", align 8 ; 4 uses
  %22 = alloca %struct.cbs_st, align 8            ; 9 uses
  %23 = alloca %struct.cbs_st, align 8            ; 8 uses
  %24 = alloca %"class.std::unique_ptr.94", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !112
  %i.n = invoke noundef ptr @_Z13GetTestConfigPK6ssl_st(ptr noundef %i.m)
          to label %bb.b unwind label %bb.di      ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.o, ptr %i.l, align 8, !tbaa !112
  invoke void @_ZN4bssl20SSL_set_handoff_modeEP6ssl_stb(ptr noundef %i.o, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.p = invoke noundef ptr @_Z13GetTestConfigPK6ssl_st(ptr noundef %i.o)
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 617
  br label %bb.c

bb.c:                                             ; preds = %.noexc40, %.noexc38
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !112
  store i64 0, ptr %i.s, align 8
  store i64 %i.q, ptr %16, align 8, !tbaa !114
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFivEZL14PrepareHandoffP6ssl_stP14SettingsWriterPSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFivEZL14PrepareHandoffP6ssl_stP14SettingsWriterPSt6vectorIhSaIhEEE3$_0E9_M_invokeERKSt9_Any_data">, ptr %i.r, align 8, !tbaa !115
  %i.v = invoke noundef i32 @_Z20CheckIdempotentErrorPKcP6ssl_stSt8functionIFivEE(ptr noundef nonnull @.str.6, ptr noundef %i.u, ptr noundef nonnull align 8 %16)
          to label %bb.d unwind label %bb.h       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  %i.aa = icmp slt i32 %i.v, 0                    ; 2 uses
  br i1 %i.aa, label %_ZL12HandoffReadyP6ssl_sti.exit.i, label %_ZL12HandoffReadyP6ssl_sti.exit.thread.i

_ZL12HandoffReadyP6ssl_sti.exit.i:                ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.ac = invoke i32 @SSL_get_error(ptr noundef %i.ab, i32 noundef %i.v)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %_ZL12HandoffReadyP6ssl_sti.exit.i
  %i.ad = icmp eq i32 %i.ac, 17
  br i1 %i.ad, label %_ZL12HandoffReadyP6ssl_sti.exit12.i, label %_ZL12HandoffReadyP6ssl_sti.exit.thread.i

_ZL12HandoffReadyP6ssl_sti.exit.thread.i:         ; preds = %.noexc39, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !105, !range !77, !noundef !78
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %_ZL12HandoffReadyP6ssl_sti.exit.thread.i
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.ah = invoke noundef zeroext i1 @_Z10RetryAsyncP6ssl_sti(ptr noundef %i.ag, i32 noundef %i.v)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %bb.g
  br i1 %i.ah, label %bb.c, label %.critedge.i, !llvm.loop !166

.critedge.i:                                      ; preds = %.noexc40, %_ZL12HandoffReadyP6ssl_sti.exit.thread.i
  br i1 %i.aa, label %_ZL12HandoffReadyP6ssl_sti.exit12.i, label %.thread

_ZL12HandoffReadyP6ssl_sti.exit12.i:              ; preds = %.noexc39, %.critedge.i
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.aj = invoke i32 @SSL_get_error(ptr noundef %i.ai, i32 noundef %i.v)
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %_ZL12HandoffReadyP6ssl_sti.exit12.i
  %i.ak = icmp eq i32 %i.aj, 17
  br i1 %i.ak, label %bb.k, label %.thread

.thread:                                          ; preds = %.critedge.i, %.noexc41
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.7, i64 44, i64 1, ptr %i.al) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.dh

bb.h:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !110 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.an, null
  br i1 %.not.i13.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit69, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit69 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

bb.k:                                             ; preds = %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.ar = invoke i32 @CBB_init(ptr noundef nonnull %17, i64 noundef 512)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %.noexc42
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.at = invoke noundef zeroext i1 @_ZN4bssl21SSL_serialize_handoffEPK6ssl_stP6cbb_stP22ssl_early_callback_ctx(ptr noundef %i.as, ptr noundef nonnull %17, ptr noundef nonnull %18)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.au = invoke ptr @CBB_data(ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.av = invoke i64 @CBB_len(ptr noundef nonnull %17)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.aw = invoke noundef zeroext i1 @_ZN14SettingsWriter12WriteHandoffEN4bssl4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %i.au, i64 %i.av)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  br i1 %i.aw, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.ay = invoke ptr @SSL_get_SSL_CTX(ptr noundef %i.ax)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.az = invoke noundef zeroext i1 @_Z21SerializeContextStateP10ssl_ctx_stP6cbb_st(ptr noundef %i.ay, ptr noundef nonnull %17)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  br i1 %i.az, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.bb = invoke noundef ptr @_Z12GetTestStatePK6ssl_st(ptr noundef %i.ba)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bc = invoke noundef zeroext i1 @_ZNK9TestState9SerializeEP6cbb_st(ptr noundef nonnull align 8 dereferenceable(200) %i.bb, ptr noundef nonnull %17)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.bc, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.r, %bb.n, %bb.l
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !108
end_hunk_0
begin_hunk_1_@_Z16DoSplitHandshakePSt10unique_ptrI6ssl_stN4bssl8internal7DeleterEEP14SettingsWriterb:bb.a
  call void @perror(ptr noundef nonnull @.str.10) #24
  br label %bb.db

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ca = load i32, ptr %i.j, align 4, !tbaa !119
  store i32 %i.ca, ptr %7, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !119 ; 4 uses
  store i32 %i.cc, ptr %8, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 -1, ptr %9, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 -1, ptr %10, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 4, ptr %12, align 4, !tbaa !125
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ce = load i32, ptr %i.i, align 4, !tbaa !119
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !126
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 5, ptr %i.cf, align 4, !tbaa !125
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.cc, ptr %i.cg, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEC2ESt16initializer_listIS4_ERKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %12, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ch = load i32, ptr %i.bx, align 4, !tbaa !119
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !119
  %i.cj = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %bb.an unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.i ; 4 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.i:         ; preds = %bb.am
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.an:                                            ; preds = %bb.am
  store ptr %i.cj, ptr %15, align 8, !tbaa !127
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !128
  store i32 %i.ch, ptr %i.cj, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.ci, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !129
  %i.co = invoke fastcc noundef zeroext i1 @_ZL15StartHandshakerP13ScopedProcessP8ScopedFDPK10TestConfigbSt3mapIiiSt4lessIiESaISt4pairIKiiEEESt6vectorIiSaIiEE(ptr noundef %9, ptr noundef %10, ptr noundef readonly %i.n, i1 noundef zeroext %2, ptr noundef align 8 %11, ptr noundef align 8 %15)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.cp = load ptr, ptr %15, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !128
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.ap, %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !134
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.cv)
          to label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #25
  unreachable

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.co, label %bb.av, label %bb.cs

bb.ar:                                            ; preds = %bb.al
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %15, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i35.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i35.i, label %.body.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !128
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #30
  br label %.body.i

.body.i:                                          ; preds = %bb.at, %bb.as, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.i
  %.pn.i44 = phi { ptr, i32 } [ %i.ck, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i.i ], [ %i.cz, %bb.at ], [ %i.cz, %bb.as ]
  call void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #23
  br label %bb.au

bb.au:                                            ; preds = %.body.i, %bb.ar
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i44, %.body.i ], [ %i.cy, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.loopexit.split-lp.i

bb.av:                                            ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i
  %i.df = icmp sgt i32 %i.bw, -1
  br i1 %i.df, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dg = invoke i32 @close(i32 noundef %i.bw)
          to label %bb.ax unwind label %.loopexit.split-lp108.i ; 0 uses

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 -1, ptr %5, align 4, !tbaa !121
  %i.dh = icmp sgt i32 %i.cc, -1
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.di = invoke i32 @close(i32 noundef %i.cc)
          to label %bb.az unwind label %.loopexit.split-lp108.i ; 0 uses

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store i32 -1, ptr %8, align 4, !tbaa !121
  %i.dj = load i32, ptr %10, align 4, !tbaa !121  ; 6 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.dk = invoke i64 @write(i32 noundef %i.dj, ptr noundef readonly %i.bp, i64 noundef %i.bu)
          to label %.noexc40.i unwind label %.loopexit107.i ; 2 uses

.noexc40.i:                                       ; preds = %bb.ba
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.bb, label %_ZL11write_eintriPKvm.exit.thread.i

bb.bb:                                            ; preds = %.noexc40.i
  %i.dm = tail call ptr @__errno_location() #31
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !119
  %i.do = icmp eq i32 %i.dn, 4
  br i1 %i.do, label %bb.ba, label %_ZL11write_eintriPKvm.exit.i, !llvm.loop !0

_ZL11write_eintriPKvm.exit.i:                     ; preds = %bb.bb
  %i.dp = icmp eq i64 %i.dk, -1
  br i1 %i.dp, label %bb.bc, label %_ZL11write_eintriPKvm.exit.thread.i

bb.bc:                                            ; preds = %_ZL11write_eintriPKvm.exit.i
  call void @perror(ptr noundef nonnull @.str.11) #24
  br label %bb.cs

.loopexit107.i:                                   ; preds = %bb.ba
  %lpad.loopexit109.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp108.i:                          ; preds = %bb.ay, %bb.aw
  %lpad.loopexit.split-lp110.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZL11write_eintriPKvm.exit.thread.i:              ; preds = %.noexc40.i, %_ZL11write_eintriPKvm.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 617
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !105, !range !77, !noundef !78
  %i.ds = load i32, ptr %i.bx, align 4, !tbaa !119
  %i.dt = load i32, ptr %i.j, align 4, !tbaa !119 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !135
  store i8 %i.dr, ptr %i.c, align 1, !tbaa !136
  store i32 %i.ds, ptr %i.d, align 4, !tbaa !119
  %i.du = srem i32 %i.dt, 64
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv                    ; 2 uses
  %i.dx = sdiv i32 %i.dt, 64
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dy ; 3 uses
  %i.ea = srem i32 %i.dj, 64
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw i64 1, %i.eb                    ; 2 uses
  %i.ed = sdiv i32 %i.dj, 64
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ee ; 3 uses
  %i.eg = call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.dj)
  %i.eh = add nsw i32 %i.eg, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %25 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %.backedge.i.i, %_ZL11write_eintriPKvm.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !170
  %i.em = load i64, ptr %i.dz, align 8, !tbaa !170
  %i.en = or i64 %i.em, %i.dw
  store i64 %i.en, ptr %i.dz, align 8, !tbaa !170
  %i.eo = load i64, ptr %i.ef, align 8, !tbaa !170
  %i.ep = or i64 %i.eo, %i.ec
  store i64 %i.ep, ptr %i.ef, align 8, !tbaa !170
  %i.eq = invoke i32 @select(i32 noundef %i.eh, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc41.i:                                       ; preds = %bb.bd
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %.thread72.i.i, label %bb.be

.thread72.i.i:                                    ; preds = %.noexc41.i
  call void @perror(ptr noundef nonnull @.str.18) #24
  br label %bb.ca

bb.be:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.es = load i64, ptr %i.dz, align 8, !tbaa !170
  %i.et = and i64 %i.es, %i.dw
  %.not.i.i45 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i45, label %_ZL10read_eintriPvm.exit.thread.i.i, label %.preheader81.i.i

.preheader81.i.i:                                 ; preds = %bb.be, %bb.bf
  %i.eu = invoke i64 @read(i32 noundef %i.dt, ptr noundef nonnull %i.e, i64 noundef 64)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 3 uses

.noexc42.i:                                       ; preds = %.preheader81.i.i
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.bf, label %_ZL10read_eintriPvm.exit.i.i

bb.bf:                                            ; preds = %.noexc42.i
  %i.ew = tail call ptr @__errno_location() #31
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !119
  %i.ey = icmp eq i32 %i.ex, 4
  br i1 %i.ey, label %.preheader81.i.i, label %_ZL10read_eintriPvm.exit.thread.i.i, !llvm.loop !1

_ZL10read_eintriPvm.exit.i.i:                     ; preds = %.noexc42.i
  %.not79.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not79.i.i, label %_ZL10read_eintriPvm.exit.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZL10read_eintriPvm.exit.i.i, %.noexc44.i
  %.03890.i.i = phi ptr [ %.139.i.i, %.noexc44.i ], [ %i.e, %_ZL10read_eintriPvm.exit.i.i ] ; 3 uses
  %.04089.i.i = phi i64 [ %.141.i.i, %.noexc44.i ], [ %i.eu, %_ZL10read_eintriPvm.exit.i.i ] ; 3 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.fa = trunc i64 %.04089.i.i to i32
  %i.fb = invoke i32 @BIO_write(ptr noundef %i.ez, ptr noundef %.03890.i.i, i32 noundef %i.fa)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 3 uses

.noexc43.i:                                       ; preds = %.preheader.i.i
  %.not62.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not62.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc43.i
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite63.i.i = call i64 @fwrite(ptr nonnull @.str.19, i64 24, i64 1, ptr %i.fc) #24 ; 0 uses
  br label %.thread76.i.i

bb.bh:                                            ; preds = %.noexc43.i
  %i.fd = icmp slt i32 %i.fb, 0
  br i1 %i.fd, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fe = load i8, ptr %i.c, align 1, !tbaa !136, !range !77, !noundef !78
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !135
  invoke void @_Z18AsyncBioAllowWriteP6bio_stm(ptr noundef %i.fg, i64 noundef 1)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !llvm.loop !167

bb.bk:                                            ; preds = %bb.bi
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite64.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 17, i64 1, ptr %i.fh) #24 ; 0 uses
  br label %.thread76.i.i

bb.bl:                                            ; preds = %bb.bh
  %i.fi = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.03890.i.i, i64 %i.fi
  %i.fk = sub nsw i64 %.04089.i.i, %i.fi
  br label %.noexc44.i

.thread76.i.i:                                    ; preds = %bb.bk, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ca

.noexc44.i:                                       ; preds = %bb.bl, %bb.bj
  %.141.i.i = phi i64 [ %i.fk, %bb.bl ], [ %.04089.i.i, %bb.bj ] ; 2 uses
  %.139.i.i = phi ptr [ %i.fj, %bb.bl ], [ %.03890.i.i, %bb.bj ]
  %.not61.i.i = icmp eq i64 %.141.i.i, 0
  br i1 %.not61.i.i, label %.backedge.i.i, label %.preheader.i.i, !llvm.loop !168

_ZL10read_eintriPvm.exit.thread.i.i:              ; preds = %bb.bf, %_ZL10read_eintriPvm.exit.i.i, %bb.be
  %i.fl = load i64, ptr %i.ef, align 8, !tbaa !170
  %i.fm = and i64 %i.fl, %i.ec
  %.not56.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not56.i.i, label %.backedge.i.i, label %bb.bm, !llvm.loop !168

bb.bm:                                            ; preds = %_ZL10read_eintriPvm.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %i.fn = invoke i64 @read(i32 noundef %i.dj, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc45.i:                                       ; preds = %bb.bn
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.bo, label %_ZL10read_eintriPvm.exit65.i.i

bb.bo:                                            ; preds = %.noexc45.i
  %i.fp = tail call ptr @__errno_location() #31
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !119
  %i.fr = icmp eq i32 %i.fq, 4
  br i1 %i.fr, label %bb.bn, label %_ZL10read_eintriPvm.exit65.thread.i.i, !llvm.loop !1

_ZL10read_eintriPvm.exit65.i.i:                   ; preds = %.noexc45.i
  %.not57.i.i = icmp eq i64 %i.fn, 1
  br i1 %.not57.i.i, label %bb.bp, label %_ZL10read_eintriPvm.exit65.thread.i.i

_ZL10read_eintriPvm.exit65.thread.i.i:            ; preds = %_ZL10read_eintriPvm.exit65.i.i, %bb.bo
  call void @perror(ptr noundef nonnull @.str.14) #24
  br label %.split.thread.i.i

bb.bp:                                            ; preds = %_ZL10read_eintriPvm.exit65.i.i
  %i.fs = load i8, ptr %i.f, align 1, !tbaa !137  ; 2 uses
  switch i8 %i.fs, label %bb.bq [
    i8 72, label %.split.thread.i.i.loopexit
    i8 69, label %.split.thread.i.i
    i8 82, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ft = sext i8 %i.fs to i32
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.21, i32 noundef %i.ft) #27 ; 0 uses
  br label %.split.thread.i.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.c, ptr %4, align 8, !tbaa !171
  store ptr %i.b, ptr %i.ei, align 8, !tbaa !172
  store ptr %i.d, ptr %i.ej, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.fw = invoke fastcc noundef zeroext i1 @"_ZZL5ProxyP6bio_stbiiiENK3$_0clEPhm"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.g, i64 noundef 5)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc46.i:                                       ; preds = %bb.br
  br i1 %i.fw, label %bb.bs, label %.split.thread105.i.i

bb.bs:                                            ; preds = %.noexc46.i
  %i.fx = load i8, ptr %i.ek, align 1, !tbaa !137
  %.not58.i.i = icmp eq i8 %i.fx, 3
  br i1 %.not58.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.22, i64 11, i64 1, ptr %i.fy) #24 ; 0 uses
  br label %.split.thread105.i.i

bb.bu:                                            ; preds = %bb.bs
  %26 = load i8, ptr %i.el, align 1, !tbaa !137
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 8
  %29 = load i8, ptr %25, align 1, !tbaa !137
  %i.fz = zext i8 %29 to i64
  %30 = or disjoint i64 %28, %i.fz
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc47.i, %bb.bu
  %.0.i.i = phi i64 [ %30, %bb.bu ], [ %i.gc, %.noexc47.i ] ; 3 uses
  %.not59.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not59.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.ga = call i64 @llvm.umin.i64(i64 %.0.i.i, i64 64) ; 2 uses
  %i.gb = invoke fastcc noundef zeroext i1 @"_ZZL5ProxyP6bio_stbiiiENK3$_0clEPhm"(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.h, i64 noundef %i.ga)
          to label %.noexc47.i unwind label %.loopexit.split-lp.loopexit.i

.noexc47.i:                                       ; preds = %bb.bw
  %i.gc = sub nuw nsw i64 %.0.i.i, %i.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br i1 %i.gb, label %bb.bv, label %.split.thread105.i.i, !llvm.loop !169

bb.bx:                                            ; preds = %bb.bv
  store i8 87, ptr %i.f, align 1, !tbaa !137
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.gd = invoke i64 @write(i32 noundef %i.dj, ptr noundef nonnull readonly %i.f, i64 noundef 1)
          to label %.noexc48.i unwind label %.loopexit.i ; 2 uses

.noexc48.i:                                       ; preds = %bb.by
  %i.ge = icmp slt i64 %i.gd, 0
  br i1 %i.ge, label %bb.bz, label %_ZL11write_eintriPKvm.exit.i.i

bb.bz:                                            ; preds = %.noexc48.i
  %i.gf = tail call ptr @__errno_location() #31
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !119
  %i.gh = icmp eq i32 %i.gg, 4
  br i1 %i.gh, label %bb.by, label %_ZL11write_eintriPKvm.exit.thread.i.i, !llvm.loop !0

_ZL11write_eintriPKvm.exit.i.i:                   ; preds = %.noexc48.i
  %.not60.i.i = icmp eq i64 %i.gd, 1
  br i1 %.not60.i.i, label %.split.i.i, label %_ZL11write_eintriPKvm.exit.thread.i.i

_ZL11write_eintriPKvm.exit.thread.i.i:            ; preds = %_ZL11write_eintriPKvm.exit.i.i, %bb.bz
  call void @perror(ptr noundef nonnull @.str.11) #24
  br label %.split.thread105.i.i

.split.thread.i.i.loopexit:                       ; preds = %bb.bp
  br label %.split.thread.i.i

.split.thread.i.i:                                ; preds = %bb.bp, %.split.thread.i.i.loopexit, %bb.bq, %_ZL10read_eintriPvm.exit65.thread.i.i
  %.8.ph.i.i = phi i1 [ false, %_ZL10read_eintriPvm.exit65.thread.i.i ], [ true, %.split.thread.i.i.loopexit ], [ false, %bb.bq ], [ false, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ca

.split.thread105.i.i:                             ; preds = %.noexc46.i, %.noexc47.i, %_ZL11write_eintriPKvm.exit.thread.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ca

.split.i.i:                                       ; preds = %_ZL11write_eintriPKvm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.noexc44.i, %.split.i.i, %_ZL10read_eintriPvm.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bd

bb.ca:                                            ; preds = %.split.thread105.i.i, %.split.thread.i.i, %.thread76.i.i, %.thread72.i.i
  %.1075.i.i = phi i1 [ false, %.thread72.i.i ], [ false, %.thread76.i.i ], [ false, %.split.thread105.i.i ], [ %.8.ph.i.i, %.split.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.gi = load i32, ptr %9, align 4, !tbaa !123   ; 3 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %bb.cc, label %.preheader.i49.i

.preheader.i49.i:                                 ; preds = %bb.ca, %bb.cb
  %i.gk = invoke i32 @waitpid(i32 noundef range(i32 0, -2147483648) %i.gi, ptr noundef nonnull %i.k, i32 noundef 0)
          to label %.noexc52.i unwind label %bb.cd ; 2 uses

.noexc52.i:                                       ; preds = %.preheader.i49.i
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.cb, label %_ZL13waitpid_eintriPii.exit.i.i

bb.cb:                                            ; preds = %.noexc52.i
  %i.gm = tail call ptr @__errno_location() #31
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !119
  %i.go = icmp eq i32 %i.gn, 4
  br i1 %i.go, label %.preheader.i49.i, label %_ZL13waitpid_eintriPii.exit.i.i, !llvm.loop !2

_ZL13waitpid_eintriPii.exit.i.i:                  ; preds = %bb.cb, %.noexc52.i
  %.not.i50.i = icmp eq i32 %i.gk, %i.gi
  br i1 %.not.i50.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %_ZL13waitpid_eintriPii.exit.i.i, %bb.ca
  call void @perror(ptr noundef nonnull @.str.12) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit58.i

.loopexit.i:                                      ; preds = %bb.by
  %lpad.loopexit89.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bw
  %lpad.loopexit92.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.bn
  %lpad.loopexit95.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bj, %.preheader.i.i
  %lpad.loopexit98.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader81.i.i
  %lpad.loopexit101.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.br, %bb.bd
  %lpad.loopexit.split-lp102.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cd:                                            ; preds = %.preheader.i49.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ce:                                            ; preds = %_ZL13waitpid_eintriPii.exit.i.i
  store i32 -1, ptr %9, align 4, !tbaa !123
  %i.gq = load i32, ptr %i.k, align 4
  %i.gr = icmp ne i32 %i.gq, 0
  %or.cond.i = select i1 %.1075.i.i, i1 %i.gr, i1 false
  br i1 %or.cond.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !108
  %fwrite.i47 = call i64 @fwrite(ptr nonnull @.str.13, i64 30, i64 1, ptr %i.gs) #24 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit58.i

bb.cg:                                            ; preds = %bb.ce
  br i1 %.1075.i.i, label %bb.ch, label %_ZNSt6vectorIhSaIhEED2Ev.exit58.i

bb.ch:                                            ; preds = %bb.cg
  %i.gt = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #29
          to label %bb.ci unwind label %bb.cl     ; 9 uses

bb.ci:                                            ; preds = %bb.ch
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1048576 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048576) %i.gt, i8 0, i64 1048576, i1 false)
  %i.gv = load i32, ptr %10, align 4, !tbaa !121
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ck, %bb.ci
  %i.gw = invoke i64 @read(i32 noundef %i.gv, ptr noundef nonnull %i.gt, i64 noundef 1048576)
          to label %.noexc54.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.i ; 8 uses

.noexc54.i:                                       ; preds = %bb.cj
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.noexc54.i
  %i.gy = tail call ptr @__errno_location() #31
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !119
  %i.ha = icmp eq i32 %i.gz, 4
  br i1 %i.ha, label %bb.cj, label %_ZL10read_eintriPvm.exit.i, !llvm.loop !1

_ZL10read_eintriPvm.exit.i:                       ; preds = %bb.ck
  %.not88.i = icmp eq i64 %i.gw, -1
  br i1 %.not88.i, label %bb.cq, label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.i:         ; preds = %bb.cj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i, %bb.cn
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.i ], [ %lpad.loopexit.split-lp.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 1048576) #30
  br label %bb.cr

bb.cm:                                            ; preds = %.noexc54.i
  %i.hc = icmp samesign ugt i64 %i.gw, 1048576
end_hunk_1
begin_hunk_2_@_ZN9TestStateD2Ev:bb.a

_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit
  invoke void @SSL_SESSION_free(ptr noundef nonnull %i.ac)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit4 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit4: ; preds = %_ZNSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEED2Ev.exit, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !109 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit4
  invoke void @SSL_SESSION_free(ptr noundef nonnull %i.ag)
          to label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit6 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #25
  unreachable

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit6: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit4, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104 ; 3 uses
  %.not.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrI17MockQuicTransportSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17MockQuicTransportEclEPS0_.exit.i

_ZNKSt14default_deleteI17MockQuicTransportEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit6
  tail call void @_ZN17MockQuicTransportD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ak) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 96) #30
  br label %_ZNSt10unique_ptrI17MockQuicTransportSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17MockQuicTransportSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit6, %_ZNKSt14default_deleteI17MockQuicTransportEclEPS0_.exit.i
  ret void
}

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17MockQuicTransportD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i

_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !202

_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !205
  br label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #30
  br label %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit

_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !205  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ad, %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5 ], [ %i.t, %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i4, label %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !143
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #30
  br label %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5

_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !202

_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyIN17MockQuicTransport15EncryptionLevelEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.s, align 8, !tbaa !205
  br label %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i9

_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit
  %i.ae = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.t, %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !207
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #30
  br label %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit11

_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit11: ; preds = %_ZSt8_DestroyIPN17MockQuicTransport15EncryptionLevelES1_EvT_S3_RSaIT0_E.exit.i9, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !143
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN17MockQuicTransport15EncryptionLevelESaIS1_EED2Ev.exit11, %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !135   ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.as = invoke i32 @BIO_free(ptr noundef nonnull %i.ar)
          to label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #25
  unreachable

_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  ret void
}

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { cold nounwind }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !116}
!1 = distinct !{!1, !116}
!2 = distinct !{!2, !116}
!3 = distinct !{!3, !116}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"bool", !12, i64 0}
!17 = !{!"long", !12, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !17, i64 8, !12, i64 16}
!22 = !{!"p1 short", !18, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !23, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseItSaItEE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorItSaItEE", !25, i64 0}
!27 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !18, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !30, i64 0}
!32 = !{!"p1 int", !18, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIiSaIiEE", !35, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIhSaIhEE", !39, i64 0}
!41 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !18, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !44, i64 0}
!46 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !12, i64 0, !16, i64 32}
!47 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !46, i64 0}
!48 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !47, i64 0}
!49 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !48, i64 0}
!50 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !49, i64 0}
!51 = !{!"short", !12, i64 0}
!52 = !{!"_ZTSSt22_Optional_payload_baseIbE", !12, i64 0, !16, i64 1}
!53 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !52, i64 0}
!54 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt8optionalIbE", !54, i64 0}
!56 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIhSaIhEEE", !12, i64 0, !16, i64 24}
!57 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb1ELb0ELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt17_Optional_payloadISt6vectorIhSaIhEELb0ELb0ELb0EE", !57, i64 0}
!59 = !{!"_ZTSSt14_Optional_baseISt6vectorIhSaIhEELb0ELb0EE", !58, i64 0}
!60 = !{!"_ZTSSt8optionalISt6vectorIhSaIhEEE", !59, i64 0}
!61 = !{!"_ZTSSt22_Optional_payload_baseIiE", !12, i64 0, !16, i64 4}
!62 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !61, i64 0}
!63 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt8optionalIiE", !63, i64 0}
!65 = !{!"p1 _ZTS16CredentialConfig", !18, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseI16CredentialConfigSaIS0_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseI16CredentialConfigSaIS0_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseI16CredentialConfigSaIS0_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorI16CredentialConfigSaIS0_EE", !68, i64 0}
!70 = !{!"any p2 pointer", !18, i64 0}
!71 = !{!"p2 omnipotent char", !70, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIPKcSaIS1_EE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIPKcSaIS1_EE", !74, i64 0}
!76 = !{!"_ZTS10TestConfig", !13, i64 0, !16, i64 4, !17, i64 8, !16, i64 16, !16, i64 17, !16, i64 18, !13, i64 20, !21, i64 24, !16, i64 56, !26, i64 64, !26, i64 88, !26, i64 112, !26, i64 136, !21, i64 160, !21, i64 192, !21, i64 224, !21, i64 256, !16, i64 288, !31, i64 296, !31, i64 320, !36, i64 344, !16, i64 368, !21, i64 376, !16, i64 408, !40, i64 416, !16, i64 440, !40, i64 448, !40, i64 472, !16, i64 496, !21, i64 504, !16, i64 536, !21, i64 544, !16, i64 576, !16, i64 577, !21, i64 584, !16, i64 616, !16, i64 617, !16, i64 618, !16, i64 619, !16, i64 620, !16, i64 621, !16, i64 622, !16, i64 623, !16, i64 624, !16, i64 625, !40, i64 632, !16, i64 656, !21, i64 664, !16, i64 696, !21, i64 704, !21, i64 736, !21, i64 768, !21, i64 800, !21, i64 832, !16, i64 864, !16, i64 865, !16, i64 866, !16, i64 867, !45, i64 872, !50, i64 896, !13, i64 936, !40, i64 944, !40, i64 968, !13, i64 992, !16, i64 996, !16, i64 997, !21, i64 1000, !21, i64 1032, !21, i64 1064, !16, i64 1096, !40, i64 1104, !16, i64 1128, !40, i64 1136, !51, i64 1160, !51, i64 1162, !51, i64 1164, !13, i64 1168, !16, i64 1172, !16, i64 1173, !16, i64 1174, !16, i64 1175, !16, i64 1176, !16, i64 1177, !16, i64 1178, !21, i64 1184, !16, i64 1216, !13, i64 1220, !21, i64 1224, !21, i64 1256, !16, i64 1288, !16, i64 1289, !16, i64 1290, !16, i64 1291, !16, i64 1292, !16, i64 1293, !16, i64 1294, !16, i64 1295, !16, i64 1296, !16, i64 1297, !16, i64 1298, !16, i64 1299, !16, i64 1300, !16, i64 1301, !40, i64 1304, !16, i64 1328, !16, i64 1329, !16, i64 1330, !16, i64 1331, !16, i64 1332, !40, i64 1336, !13, i64 1360, !16, i64 1364, !16, i64 1365, !16, i64 1366, !16, i64 1367, !16, i64 1368, !51, i64 1370, !51, i64 1372, !16, i64 1374, !13, i64 1376, !21, i64 1384, !21, i64 1416, !16, i64 1448, !16, i64 1449, !16, i64 1450, !16, i64 1451, !13, i64 1452, !40, i64 1456, !16, i64 1480, !51, i64 1482, !51, i64 1484, !51, i64 1486, !21, i64 1488, !13, i64 1520, !16, i64 1524, !16, i64 1525, !16, i64 1526, !16, i64 1527, !16, i64 1528, !13, i64 1532, !13, i64 1536, !16, i64 1540, !16, i64 1541, !13, i64 1544, !16, i64 1548, !16, i64 1549, !16, i64 1550, !16, i64 1551, !21, i64 1552, !16, i64 1584, !16, i64 1585, !16, i64 1586, !16, i64 1587, !16, i64 1588, !16, i64 1589, !16, i64 1590, !16, i64 1591, !16, i64 1592, !13, i64 1596, !16, i64 1600, !16, i64 1601, !16, i64 1602, !16, i64 1603, !16, i64 1604, !21, i64 1608, !16, i64 1640, !16, i64 1641, !16, i64 1642, !16, i64 1643, !16, i64 1644, !21, i64 1648, !16, i64 1680, !16, i64 1681, !16, i64 1682, !21, i64 1688, !13, i64 1720, !16, i64 1724, !16, i64 1725, !16, i64 1726, !55, i64 1727, !60, i64 1736, !60, i64 1768, !64, i64 1800, !69, i64 1808, !13, i64 1832, !16, i64 1836, !55, i64 1837, !75, i64 1840}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"p1 _ZTS6bio_st", !18, i64 0}
!80 = !{!"p1 _ZTS17MockQuicTransport", !18, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EP17MockQuicTransportLb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJP17MockQuicTransportSt14default_deleteIS0_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJP17MockQuicTransportSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implI17MockQuicTransportSt14default_deleteIS0_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataI17MockQuicTransportSt14default_deleteIS0_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrI17MockQuicTransportSt14default_deleteIS0_EE", !85, i64 0}
!87 = !{!"p1 _ZTS14ssl_session_st", !18, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !87, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !88, i64 0}
!90 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !90, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !92, i64 0}
!94 = !{!"p1 _ZTS11evp_pkey_st", !18, i64 0}
!95 = !{!"_ZTSSt10_Head_baseILm0EP11evp_pkey_stLb0EE", !94, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJP11evp_pkey_stN4bssl8internal7DeleterEEE", !95, i64 0}
!97 = !{!"_ZTSSt5tupleIJP11evp_pkey_stN4bssl8internal7DeleterEEE", !96, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_implI11evp_pkey_stN4bssl8internal7DeleterEE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_dataI11evp_pkey_stN4bssl8internal7DeleterELb1ELb1EE", !98, i64 0}
!100 = !{!"_ZTSSt10unique_ptrI11evp_pkey_stN4bssl8internal7DeleterEE", !99, i64 0}
!101 = !{!"_ZTSSt14_Function_base", !12, i64 0, !18, i64 16}
!102 = !{!"_ZTSSt8functionIFbPK22ssl_early_callback_ctxEE", !101, i64 0, !18, i64 24}
!103 = !{!"_ZTS9TestState", !79, i64 0, !79, i64 8, !86, i64 16, !16, i64 24, !93, i64 32, !93, i64 40, !16, i64 48, !16, i64 49, !100, i64 56, !16, i64 64, !40, i64 72, !13, i64 96, !16, i64 100, !93, i64 104, !16, i64 112, !16, i64 113, !16, i64 114, !16, i64 115, !16, i64 116, !21, i64 120, !16, i64 152, !16, i64 153, !13, i64 156, !102, i64 160, !13, i64 192, !13, i64 196}
!104 = !{!80, !80, i64 0}
!105 = !{!76, !16, i64 617}
!106 = !{!103, !79, i64 0}
!107 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!87, !87, i64 0}
!110 = !{!101, !18, i64 16}
!111 = !{!"p1 _ZTS6ssl_st", !18, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"p2 _ZTS6ssl_st", !70, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!18, !18, i64 0}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!37, !19, i64 0}
!118 = !{!37, !19, i64 8}
!119 = !{!13, !13, i64 0}
!120 = !{!"_ZTS8ScopedFD", !13, i64 0}
!121 = !{!120, !13, i64 0}
!122 = !{!"_ZTS13ScopedProcess", !13, i64 0}
!123 = !{!122, !13, i64 0}
!124 = !{!"_ZTSSt4pairIKiiE", !13, i64 0, !13, i64 4}
!125 = !{!124, !13, i64 0}
!126 = !{!124, !13, i64 4}
!127 = !{!33, !32, i64 0}
!128 = !{!33, !32, i64 16}
!129 = !{!33, !32, i64 8}
!130 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!131 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!132 = !{!"_ZTSSt18_Rb_tree_node_base", !130, i64 0, !131, i64 8, !131, i64 16, !131, i64 24}
!133 = !{!"_ZTSSt15_Rb_tree_header", !132, i64 0, !17, i64 32}
!134 = !{!133, !131, i64 8}
!135 = !{!79, !79, i64 0}
!136 = !{!16, !16, i64 0}
!137 = !{!12, !12, i64 0}
!138 = !{!"p1 bool", !18, i64 0}
!139 = !{!"p2 _ZTS6bio_st", !70, i64 0}
!140 = !{!32, !32, i64 0}
!141 = !{!"p1 _ZTS9TestState", !18, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!37, !19, i64 16}
!144 = !{!133, !131, i64 16}
!145 = !{!133, !131, i64 24}
!146 = !{!133, !17, i64 32}
!147 = !{!21, !19, i64 0}
!148 = !{!133, !130, i64 0}
!149 = !{!131, !131, i64 0}
!150 = !{!132, !131, i64 24}
!151 = !{!76, !16, i64 1367}
!152 = !{!103, !13, i64 156}
!153 = !{!103, !79, i64 8}
!154 = !{!103, !16, i64 24}
!155 = !{!103, !16, i64 115}
!156 = !{!103, !13, i64 96}
!157 = !{!76, !13, i64 1832}
!158 = !{!"_ZTS7timeval", !17, i64 0, !17, i64 8}
!159 = !{!158, !17, i64 0}
!160 = !{!158, !17, i64 8}
!161 = !{!103, !16, i64 116}
end_hunk_2
