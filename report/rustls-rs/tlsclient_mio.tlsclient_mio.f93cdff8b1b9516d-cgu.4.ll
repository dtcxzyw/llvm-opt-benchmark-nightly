Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsclient_mio.tlsclient_mio.f93cdff8b1b9516d-cgu.4?download=true
inline.NumInlined: 416
inline.NumDeleted: 249
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsloGAwzL3aMH_13tlsclient_mio:bb.a
    i8 8, label %bb.j
    i8 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 11, label %bb.n
    i8 12, label %bb.au
    i8 13, label %bb.bm
    i8 14, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 16, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 18, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i8 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !156, !nonnull !6, !noundef !6
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !156
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.bn, %.body.i6, %bb.bg, %.body3.i1, %bb.bk, %.body.i, %bb.ai, %.body3.i, %bb.am, %.body6.i, %bb.ap, %.body8.i, %bb.as, %bb.l, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.bk ], [ %i.g, %bb.e ], [ %i.j, %bb.h ], [ %i.o, %bb.l ], [ %i.bi, %bb.as ], [ %i.bd, %bb.ap ], [ %i.au, %bb.ai ], [ %eh.lpad-body9.i, %.body8.i ], [ %i.ba, %bb.am ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body4.i, %.body3.i ], [ %eh.lpad-body7.i, %.body6.i ], [ %eh.lpad-body4.i2, %.body3.i1 ], [ %i.bz, %bb.bg ], [ %eh.lpad-body.i7, %.body.i6 ], [ %i.ci, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECsloGAwzL3aMH_13tlsclient_mio.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit7.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsloGAwzL3aMH_13tlsclient_mio.exit.i9, %bb.be, %bb.bd, %bb.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECsloGAwzL3aMH_13tlsclient_mio.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsloGAwzL3aMH_13tlsclient_mio.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit12.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsloGAwzL3aMH_13tlsclient_mio.exit.i, %bb.p, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i, %bb.j, %bb.c, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsloGAwzL3aMH_13tlsclient_mio.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeEECsloGAwzL3aMH_13tlsclient_mio.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeEECsloGAwzL3aMH_13tlsclient_mio.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !157, !alias.scope !158, !noundef !6 ; 2 uses
  %switch.i = icmp slt i64 %i.m, -9223372036854775787
  %i.n = icmp eq i64 %i.m, -1
  %or.cond.i = or i1 %switch.i, %i.n
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.r = load i64, ptr %i.q, align 8, !range !164, !alias.scope !161, !noundef !6 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775792
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
  %i.u = icmp slt i64 %i.r, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 16
  switch i64 %i.v, label %bb.o [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 6, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 8, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 10, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 11, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 13, label %bb.q
    i64 14, label %bb.u
    i64 15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 16, label %bb.y
    i64 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 18, label %bb.ad
    i64 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
    i64 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !174, !nonnull !6, !noundef !6
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !174
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.q:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.ah

bb.t:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.u:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body3.i unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit5.i unwind label %bb.al

bb.x:                                             ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !range !23, !alias.scope !175, !noundef !6
  %1 = icmp eq i8 %i.ah, 0
  br i1 %1, label %bb.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !37, !alias.scope !178, !noundef !6
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsloGAwzL3aMH_13tlsclient_mio.exit.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body6.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsloGAwzL3aMH_13tlsclient_mio.exit.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.ao

bb.ad:                                            ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !183, !alias.scope !184, !noundef !6
  %switch1.i.i = icmp slt i64 %i.ao, -9223372036854775806
  br i1 %switch1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsloGAwzL3aMH_13tlsclient_mio.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body8.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.ar

bb.ah:                                            ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ah, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.ah ], [ %i.ab, %bb.r ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #17
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.ak:                                            ; preds = %.body8.i, %.body6.i, %.body3.i, %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.al:                                            ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

.body3.i:                                         ; preds = %bb.al, %bb.v
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.ax, %bb.al ], [ %i.ae, %bb.v ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #17
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit5.i: ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit12.i unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit5.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit12.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsloGAwzL3aMH_13tlsclient_mio.exit5.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsloGAwzL3aMH_13tlsclient_mio.exit.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

.body6.i:                                         ; preds = %bb.ao, %bb.ab
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.bc, %bb.ao ], [ %i.al, %bb.ab ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q) #17
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsloGAwzL3aMH_13tlsclient_mio.exit.i.i.i.i, %bb.z, %bb.y
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsloGAwzL3aMH_13tlsclient_mio.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

.body8.i:                                         ; preds = %bb.ar, %bb.af
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.bf, %bb.ar ], [ %i.ap, %bb.af ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bg) #17
          to label %common.resume unwind label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsloGAwzL3aMH_13tlsclient_mio.exit.i.i, %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECsloGAwzL3aMH_13tlsclient_mio.exit.i unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsloGAwzL3aMH_13tlsclient_mio.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECsloGAwzL3aMH_13tlsclient_mio.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsloGAwzL3aMH_13tlsclient_mio.exit.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit

bb.au:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.bl = load i64, ptr %i.bk, align 8, !range !190, !alias.scope !187, !noundef !6
  switch i64 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsloGAwzL3aMH_13tlsclient_mio.exit [
    i64 2, label %bb.av
    i64 3, label %bb.az
    i64 7, label %bb.bd
  ]

bb.av:                                            ; preds = %bb.au
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.ax unwind label %bb.aw

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCsdsZTLzXv0lo_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg14default_valuesB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1r_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4D_3VecB1r_E14extend_trustedBN_E0E0ECsloGAwzL3aMH_13tlsclient_mio:bb.a
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !379, !noalias !382 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !379, !noalias !382 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not5.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not5.i.i, label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB6_8IntoIterNtNtNtCsdsZTLzXv0lo_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !379, !noalias !382
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !384
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !402
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB6_8IntoIterNtNtNtCsdsZTLzXv0lo_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB6_8IntoIterNtNtNtCsdsZTLzXv0lo_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val2.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val2.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !403
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callINtNtB1r_3vec3VechENCINvMsk_B3V_IB3T_B3S_E14extend_trustedBN_E0E0EB24_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_INtNtBU_3vec3VechEuNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs0_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_B2U_IB2S_B2R_E14extend_trustedINtB2j_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val15.i = load ptr, ptr %i.j, align 8, !noalias !404, !nonnull !6, !noundef !6
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val16.i = load i64, ptr %i.k, align 8, !noalias !404, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !407
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val16.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !404

.noexc.i:                                         ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !range !412, !noalias !407, !noundef !6
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = load i64, ptr %i.g, align 8, !range !413, !noalias !407, !noundef !6 ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !414

bb.d:                                             ; preds = %.noexc.i
  %i.o = load i64, ptr %i.h, align 8, !noalias !407
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.o) #22
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !404

.noexc17.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.p = load ptr, ptr %i.h, align 8, !noalias !407, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = icmp ule i64 %.val16.i, %i.n
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !407
  %.not.i.i.i = icmp eq i64 %.val16.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.val15.i, i64 %.val16.i, i1 false), !noalias !407
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.n, ptr %i.r, align 8, !noalias !415
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !415
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val16.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !415
  %i.s = add i64 %.val10.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.f
  br i1 %i.u, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_INtNtBU_3vec3VechEuNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs0_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_B2U_IB2S_B2R_E14extend_trustedINtB2j_3MapBF_B3a_EE0E0E0EB3e_.exit, label %bb.c

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !404
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_INtNtBU_3vec3VechEuNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs0_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_B2U_IB2S_B2R_E14extend_trustedINtB2j_3MapBF_B3a_EE0E0E0EB3e_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !404
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_NCINvMsk_NtB1r_3vecINtB4T_3VecB3R_E14extend_trustedBN_E0E0EB24_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_RDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB5a_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3L_EE0E0E0EB3P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val15.i = load ptr, ptr %i.g, align 8, !noalias !420, !nonnull !6, !noundef !6
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val16.i = load i64, ptr %i.h, align 8, !noalias !420, !noundef !6
  %i.i = invoke { ptr, ptr } @_RNvCsloGAwzL3aMH_13tlsclient_mio17find_key_exchange(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !420 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.i, 0
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !noalias !423
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !423
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_RDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB5a_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3L_EE0E0E0EB3P_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !420
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_RDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uNCNvCsloGAwzL3aMH_13tlsclient_mio11make_configs_0NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtBU_3vecINtB5a_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3L_EE0E0E0EB3P_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !420
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB21_16ConnectionCommonNtNtNtB23_6client11client_conn20ClientConnectionDataENtB1Z_13PlaintextSink14write_vectored0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5N_3VecB5B_E14extend_trustedBN_E0E0ECsloGAwzL3aMH_13tlsclient_mio(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.h, align 8, !noalias !432, !noundef !6
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val16.i = load i64, ptr %i.i, align 8, !noalias !432, !noundef !6
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %.val15.i, ptr %i.j, align 8, !noalias !435, !captures !444
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val16.i, ptr %i.k, align 8, !noalias !445
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val15.i.1 = load ptr, ptr %i.m, align 8, !noalias !432, !noundef !6
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val16.i.1 = load i64, ptr %i.n, align 8, !noalias !432, !noundef !6
  %i.o = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store ptr %.val15.i.1, ptr %i.p, align 8, !noalias !435, !captures !444
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i64 %.val16.i.1, ptr %i.q, align 8, !noalias !445
  %i.r = add i64 %i.g, 2                          ; 3 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %3 = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %.val15.i.epil = load ptr, ptr %i.t, align 8, !noalias !432, !noundef !6
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val16.i.epil = load i64, ptr %i.u, align 8, !noalias !432, !noundef !6
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.epil, ptr %i.v, align 8, !noalias !435, !captures !444
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.val16.i.epil, ptr %i.w, align 8, !noalias !445
  %i.x = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_RShuNCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2W_16ConnectionCommonNtNtNtB2Y_6client11client_conn20ClientConnectionDataENtB2U_13PlaintextSink14write_vectored0NCINvNvB1k_8for_each4callB2I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB64_3VecB2I_E14extend_trustedINtB2a_3MapBF_B2M_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !432
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2f_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3v_3VecB1s_E14extend_trustedBP_E0E0ECsloGAwzL3aMH_13tlsclient_mio(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1C_8for_each4callBQ_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4a_3VecBQ_E14extend_trustedINtNtB2u_6cloned6ClonedBF_EE0E0E0ECsloGAwzL3aMH_13tlsclient_mio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 72
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.55.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.615.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.512.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.615.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.d:                                             ; preds = %bb.s, %bb.b
  %.val10.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.aj, %bb.s ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.s ] ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.0.i ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !455
  %i.m = load i64, ptr %i.l, align 8, !range !37, !alias.scope !461, !noalias !462, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l)
          to label %.noexc.i unwind label %bb.c, !noalias !463

.noexc.i:                                         ; preds = %bb.f
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !455
  %.sroa.55.0.copyload.i.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !455
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.e
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.6.0.copyload.i.i.i.i, %.noexc.i ]
  %.sroa.55.0.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.55.0.copyload.i.i.i.i, %.noexc.i ]
  %.sroa.03.0.i.i.i.i = phi i64 [ -1, %bb.e ], [ %.sroa.03.0.copyload.i.i.i.i, %.noexc.i ]
  store i64 %.sroa.03.0.i.i.i.i, ptr %i.e, align 8, !noalias !455
  store ptr %.sroa.55.0.i.i.i.i, ptr %.sroa.55.0..sroa_idx6.i.i.i.i, align 8, !noalias !455
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx8.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !455
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !37, !alias.scope !461, !noalias !462, !noundef !6
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.l unwind label %bb.k, !noalias !462

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.z, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.t unwind label %bb.r, !noalias !462

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %.sroa.010.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !455
  %.sroa.512.0.copyload.i.i.i.i = load ptr, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.615.0.copyload.i.i.i.i = load i64, ptr %.sroa.615.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.615.0.i.i.i.i = phi i64 [ %i.y, %bb.h ], [ %.sroa.615.0.copyload.i.i.i.i, %bb.l ]
  %.sroa.512.0.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %.sroa.512.0.copyload.i.i.i.i, %bb.l ]
  %.sroa.010.0.i.i.i.i = phi i64 [ -1, %bb.h ], [ %.sroa.010.0.copyload.i.i.i.i, %bb.l ]
  store i64 %.sroa.010.0.i.i.i.i, ptr %i.d, align 8, !noalias !455
  store ptr %.sroa.512.0.i.i.i.i, ptr %.sroa.512.0..sroa_idx13.i.i.i.i, align 8, !noalias !455
  store i64 %.sroa.615.0.i.i.i.i, ptr %.sroa.615.0..sroa_idx16.i.i.i.i, align 8, !noalias !455
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !38, !alias.scope !461, !noalias !462, !noundef !6 ; 2 uses
  switch i64 %i.ab, label %bb.o [
    i64 -2, label %bb.s
    i64 -1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !461, !noalias !462, !nonnull !6, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !461, !noalias !462, !noundef !6
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !455
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.q unwind label %bb.p, !noalias !462

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECsloGAwzL3aMH_13tlsclient_mio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.j unwind label %bb.r, !noalias !462

bb.q:                                             ; preds = %bb.o
  %.sroa.019.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !455
  %.sroa.520.0.copyload.i.i.i.i = load ptr, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !455
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !462
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.n, %bb.m
  %.sroa.5.sroa.4.0.i.i.i.i = phi i64 [ undef, %bb.m ], [ %i.af, %bb.n ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.q ]
  %.sroa.5.sroa.0.0.i.i.i.i = phi ptr [ undef, %bb.m ], [ %i.ad, %bb.n ], [ %.sroa.520.0.copyload.i.i.i.i, %bb.q ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ab, %bb.m ], [ -1, %bb.n ], [ %.sroa.019.0.copyload.i.i.i.i, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !455
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %.sroa.5.0.copyload, i64 %.val10.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, i64 48, i1 false), !noalias !465
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 %.sroa.0.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !466
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !466
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !466
end_hunk_1
