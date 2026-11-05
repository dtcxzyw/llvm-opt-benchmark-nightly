Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib9SSLServerC2ERKNS0_9PemMemoryE:bb.a
          to label %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split unwind label %bb.e

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !874 ; 2 uses
  %.not.i25 = icmp eq ptr %i.aa, null
  br i1 %.not.i25, label %_ZN7httplib3tls17set_verify_clientEPvb.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @SSL_CTX_set_verify(ptr noundef nonnull %i.aa, i32 noundef 3, ptr noundef null)
          to label %_ZN7httplib3tls17set_verify_clientEPvb.exit unwind label %bb.e

_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split: ; preds = %.invoke, %_ZN7httplib3tls9get_errorEv.exit21, %_ZN7httplib3tls9get_errorEv.exit, %.noexc13
  store ptr null, ptr %i.a, align 8, !tbaa !874
  br label %_ZN7httplib3tls17set_verify_clientEPvb.exit

_ZN7httplib3tls17set_verify_clientEPvb.exit:      ; preds = %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split, %bb.k, %bb.l, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib3tls19set_server_cert_pemEPvPKcS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7httplib3tls19set_client_cert_pemEPvPKcS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib3tls11load_ca_pemEPvPKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not28 = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %2, 0
  %or.cond3 = or i1 %or.cond.not28, %i.c
  br i1 %or.cond3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @SSL_CTX_get_cert_store(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %2 to i32
  %i.f = tail call ptr @BIO_new_mem_buf(ptr noundef nonnull %1, i32 noundef %i.e) ; 4 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = tail call ptr @PEM_read_bio_X509(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not3033 = icmp eq ptr %i.g, null
  br i1 %.not3033, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  tail call void @X509_free(ptr noundef nonnull %i.h)
  br label %.backedge

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.h = phi ptr [ %i.m, %.backedge ], [ %i.g, %.preheader ] ; 3 uses
  %i.i = tail call i32 @X509_STORE_add_cert(ptr noundef nonnull %i.d, ptr noundef nonnull %i.h)
  %.not31 = icmp eq i32 %i.i, 1
  br i1 %.not31, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call i64 @ERR_peek_last_error()     ; 2 uses
  %i.k = and i64 %i.j, 2147483648
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = trunc i64 %i.j to i32
  %.0.v.i = select i1 %.not.i, i32 8388607, i32 2147483647
  %.0.i = and i32 %.0.v.i, %i.l
  %.not32 = icmp eq i32 %.0.i, 101
  tail call void @X509_free(ptr noundef nonnull %i.h)
  br i1 %.not32, label %.backedge, label %._crit_edge

.backedge:                                        ; preds = %bb.d, %.critedge
  %i.m = tail call ptr @PEM_read_bio_X509(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !2545

._crit_edge:                                      ; preds = %.backedge, %bb.d, %.preheader
  %.not30.lcssa = phi i1 [ true, %.preheader ], [ false, %bb.d ], [ true, %.backedge ]
  %i.n = tail call i32 @BIO_free(ptr noundef nonnull %i.f) ; 0 uses
  tail call void @ERR_clear_error()
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %._crit_edge, %bb.a
  %.222 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not30.lcssa, %._crit_edge ], [ false, %bb.c ]
  ret i1 %.222
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib9SSLServerC2ERKSt8functionIFbPvEE(ptr noundef nonnull align 8 dereferenceable(1140) initializes((0, 44), (48, 145), (152, 183), (184, 208), (216, 220), (224, 232)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN7httplib6ServerC2Ev(ptr noundef nonnull align 8 dereferenceable(1088) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7httplib9SSLServerE, i64 16), ptr %0, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.c = invoke ptr @TLS_server_method()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.d = invoke ptr @SSL_CTX_new(ptr noundef %i.c)
          to label %.noexc3 unwind label %bb.i    ; 5 uses

.noexc3:                                          ; preds = %.noexc
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.noexc3
  %i.e = invoke i64 @SSL_CTX_set_options(ptr noundef nonnull %i.d, i64 noundef 196608)
          to label %.noexc4 unwind label %bb.i    ; 0 uses

.noexc4:                                          ; preds = %bb.b
  %i.f = invoke i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.d, i32 noundef 123, i64 noundef 771, ptr noundef null)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %.noexc4
  store ptr %i.d, ptr %i.b, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2548
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.i, !inline_history !2546

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.k, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !874  ; 2 uses
  %.not.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i8, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.l)
          to label %.sink.split unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %.noexc4, %bb.b, %.noexc, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7httplib6ServerD2Ev(ptr noundef nonnull align 8 dead_on_return(1088) dereferenceable(1088) %0) #23
  resume { ptr, i32 } %i.m

.sink.split:                                      ; preds = %bb.h, %bb.g, %.noexc3
  store ptr null, ptr %i.b, align 8, !tbaa !874
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib9SSLServerD2Ev(ptr noundef nonnull align 8 dead_on_return(1140) dereferenceable(1140) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7httplib9SSLServerE, i64 16), ptr %0, align 8, !tbaa !200
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !874  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN7httplib3tls12free_contextEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.b)
          to label %_ZN7httplib3tls12free_contextEPv.exit unwind label %bb.c

_ZN7httplib3tls12free_contextEPv.exit:            ; preds = %bb.b, %bb.a
  tail call void @_ZN7httplib6ServerD2Ev(ptr noundef nonnull align 8 dead_on_return(1088) dereferenceable(1088) %0) #23
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #49
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib9SSLServerD0Ev(ptr noundef nonnull align 8 dereferenceable(1140) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7httplib9SSLServerD1Ev(ptr noundef nonnull align 8 dead_on_return(1140) dereferenceable(1140) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1144) #47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7httplib9SSLServer8is_validEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1140) %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %3 = load ptr, ptr %2, align 8, !tbaa !874
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %4, label %bb.a

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.b = load i8, ptr %i.a, align 2, !tbaa !714, !range !197, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %4

4:                                                ; preds = %bb.a, %1
  %5 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib9SSLServer24process_and_close_socketEi(ptr noundef nonnull align 8 dereferenceable(1140) %0, i32 noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.503", align 8 ; 11 uses
  %3 = alloca %"class.httplib::detail::SSLSocketStream", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %4 = alloca %"struct.httplib::detail::scope_exit", align 8 ; 12 uses
  %5 = alloca %"struct.httplib::tls::TlsError", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8, !tbaa !189
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 4 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #48
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !874  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq i32 %1, -1
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.p = invoke ptr @SSL_new(ptr noundef nonnull %i.m)
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.q = invoke i64 @SSL_ctrl(ptr noundef nonnull %i.p, i32 noundef 78, i64 noundef 4, ptr noundef null)
          to label %.noexc14 unwind label %bb.i   ; 0 uses

.noexc14:                                         ; preds = %bb.d
  %i.r = invoke ptr @BIO_new_socket(i32 noundef %1, i32 noundef 0)
          to label %.noexc15 unwind label %bb.i   ; 3 uses

.noexc15:                                         ; preds = %.noexc14
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc15
  invoke void @SSL_free(ptr noundef nonnull %i.p)
          to label %bb.g unwind label %bb.i

bb.f:                                             ; preds = %.noexc15
  invoke void @SSL_set_bio(ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r)
          to label %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.noexc, %bb.e
  store ptr null, ptr %i.d, align 8, !tbaa !189
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23 ; 0 uses
  %i.t = tail call noundef i64 @ERR_get_error()
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 %i.u, ptr %i.v, align 8, !tbaa !875
  %i.w = load i32, ptr %i.c, align 4, !tbaa !273  ; 2 uses
  %i.x = tail call noundef i32 @shutdown(i32 noundef %i.w, i32 noundef 2) #23 ; 0 uses
  %i.y = invoke i32 @close(i32 noundef %i.w)
          to label %_ZN7httplib6detail12close_socketEi.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #49
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e, %.noexc14, %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23 ; 0 uses
  br label %bb.ar

_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit: ; preds = %bb.f
  store ptr %i.p, ptr %i.d, align 8, !tbaa !189
  %i.ad = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i8 0, ptr %i.g, align 1, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ae = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #51 ; 6 uses
  store ptr %i.e, ptr %i.ae, align 16, !tbaa !391
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !876
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.g, ptr %.sroa.532.0..sroa_idx, align 16, !tbaa !391
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !391
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.c, ptr %.sroa.733.0..sroa_idx, align 16, !tbaa !456
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLServer24process_and_close_socketEiE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.af, align 8, !tbaa !274
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ae, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !183
  store ptr @"_ZNSt17_Function_handlerIFvvEZN7httplib9SSLServer24process_and_close_socketEiE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.ag, align 8, !tbaa !263
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 1, ptr %i.ah, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 4, ptr %5, align 8, !tbaa !520
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !273
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !682
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !683
  %i.an = invoke noundef zeroext i1 @_ZN7httplib3tls18accept_nonblockingEPvillPNS0_8TlsErrorE(ptr noundef nonnull %i.p, i32 noundef %i.ai, i64 noundef %i.ak, i64 noundef %i.am, ptr noundef nonnull %5)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit
  br i1 %i.an, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %5, align 8, !tbaa !520
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  switch i32 %i.ao, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.ap, align 8, !tbaa !875
  br label %bb.aj

bb.m:                                             ; preds = %_ZN7httplib6detail10scope_exitC2EOSt8functionIFvvEE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %bb.k
  store i32 3, ptr %i.ap, align 8, !tbaa !875
  br label %bb.aj

bb.o:                                             ; preds = %bb.k
  store i32 1, ptr %i.ap, align 8, !tbaa !875
  br label %bb.aj

bb.p:                                             ; preds = %bb.j
  store i8 1, ptr %i.e, align 1, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !182
  store i8 0, ptr %i.ar, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i32 0, ptr %i.h, align 4, !tbaa !273
  %i.at = load i32, ptr %i.c, align 4, !tbaa !273
  invoke void @_ZN7httplib6detail22get_remote_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !181
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !182
  store i8 0, ptr %i.au, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i32 0, ptr %i.i, align 4, !tbaa !273
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !273
  invoke void @_ZN7httplib6detail21get_local_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.r unwind label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.az = load i32, ptr %i.c, align 4, !tbaa !273 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !680 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !681 ; 2 uses
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !682
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !683
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !684
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_0
