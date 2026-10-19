Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.2?download=true
inline.NumInlined: 134
inline.NumDeleted: 71
begin_hunk_0_@_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECskaDheoimX9_18simple_0rtt_client:bb.a

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult ptr %0, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !25
  store i8 3, ptr %i.b, align 8, !alias.scope !25
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.f, %bb.d, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  resume { ptr, i32 } %i.j

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr nonnull %1) #14
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread:                                          ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14, %bb.c
  %.sroa.0.019 = phi ptr [ null, %bb.c ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14 ], [ %0, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.019, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %1, 1
  ret { ptr, ptr } %i.m

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14
    i64 1, label %bb.m
  ], !prof !6

bb.l:                                             ; preds = %bb.k
  %i.p = icmp ult ptr %1, inttoptr (i64 188978561024 to ptr)
  %i.q = and i64 %i.n, 1095216660480
  %i.r = icmp ne i64 %i.q, 1095216660480
  call void @llvm.assume(i1 %i.p)
  call void @llvm.assume(i1 %i.r)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %1, i64 -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !26
  store i8 3, ptr %i.a, align 8, !alias.scope !26
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskaDheoimX9_18simple_0rtt_client.exit14: ; preds = %bb.k, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread
}

; Function Attrs: noinline nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECskaDheoimX9_18simple_0rtt_client(i8 noundef range(i8 0, 44) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCs4wP2HXfJTCR_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCsj6eKBz9Db1c_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMNtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB3_13RootCertStore25add_parsable_certificatesINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtCseO5Jl7W60Eg_16rustls_pki_types3pem8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB2l_14CertificateDerENCNvCskaDheoimX9_18simple_0rtt_client4mains_0EEB4Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [104 x i8], align 8               ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.t = load i8, ptr %i.s, align 8, !range !7, !alias.scope !59, !noundef !8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.loopexit28, label %.preheader.i.i.lr.ph

.preheader.i.i.lr.ph:                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit
  %i.ao = phi i64 [ 0, %.preheader.i.i.lr.ph ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit ] ; 3 uses
  %i.ap = phi i64 [ 0, %.preheader.i.i.lr.ph ], [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  store i64 0, ptr %i.w, align 8, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63
  invoke void @_RNvNtCseO5Jl7W60Eg_16rustls_pki_types3pem14from_buf_inner(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @25, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.preheader.i.i
  %i.aq = load i64, ptr %i.c, align 8, !range !9, !noalias !63, !noundef !8
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.noexc20
  %i.as = load i64, ptr %i.z, align 8, !range !10, !noalias !63, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 3
  br i1 %i.at, label %bb.f, label %bb.g

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc20
  %i.au = load i64, ptr %i.y, align 8, !range !11, !noalias !63, !noundef !8
  %.not9.i.i = icmp eq i64 %i.au, -1
  br i1 %.not9.i.i, label %_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types3pemINtB5_8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB7_14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.av = load i8, ptr %i.z, align 8, !range !64, !noalias !63, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.thread.i.i unwind label %bb.d, !noalias !66

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.e, !noalias !66

bb.e:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !66
  unreachable

_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.thread.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc19 unwind label %.loopexit.split-lp

_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload12.i.i = load i64, ptr %i.b, align 8, !alias.scope !67, !noalias !63 ; 2 uses
  %.not10.i.i = icmp eq i64 %.sroa.0.0.copyload12.i.i, -2
  br i1 %.not10.i.i, label %.noexc19, label %bb.l

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.az = load ptr, ptr %i.y, align 8, !noalias !63, !nonnull !8, !noundef !8
  store i8 1, ptr %i.s, align 8, !alias.scope !62
  %i.ba = ptrtoint ptr %i.az to i64
  br label %bb.h

.noexc19:                                         ; preds = %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.thread.i.i, %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  store i64 0, ptr %i.w, align 8, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63
  invoke void @_RNvNtCseO5Jl7W60Eg_16rustls_pki_types3pem14from_buf_inner(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @25, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc19
  %i.bb = load i64, ptr %i.c, align 8, !range !9, !noalias !63, !noundef !8
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %.sroa.9.0.copyload3.i = load i64, ptr %i.y, align 8, !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !noalias !68
  br label %bb.h

_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types3pemINtB5_8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB7_14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  br label %.loopexit28

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.9.0.ph.ph.i = phi i64 [ %i.ba, %bb.f ], [ %.sroa.9.0.copyload3.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store i64 %i.as, ptr %i.a, align 8, !noalias !70
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.9.0.ph.ph.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !70
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !71
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #16
          to label %bb.j unwind label %bb.i, !noalias !72

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types3pem5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #14
          to label %.body unwind label %bb.k, !noalias !72

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !noalias !72
  unreachable

.body:                                            ; preds = %.loopexit.split-lp, %bb.ab, %bb.i, %bb.d, %bb.o
  %.pn17 = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.bd, %bb.i ], [ %i.ax, %bb.d ], [ %i.cj, %bb.ab ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCseO5Jl7W60Eg_16rustls_pki_types3pem8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB1e_14CertificateDerENCNvCskaDheoimX9_18simple_0rtt_client4mains_0EEB3S_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p) #14
          to label %bb.an unwind label %bb.ad

.loopexit.split-lp:                               ; preds = %.noexc19, %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.thread.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i.i.i, %.preheader.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_RNvXNtCseO5Jl7W60Eg_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCskaDheoimX9_18simple_0rtt_client.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store i64 %.sroa.0.0.copyload12.i.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvNtCshVVPy9isBpn_6webpki12trust_anchor24anchor_from_trusted_cert(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.q unwind label %bb.p

.loopexit28:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit, %bb.a, %_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types3pemINtB5_8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB7_14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.bf = phi i64 [ %i.ao, %_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types3pemINtB5_8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB7_14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client.exit.i ], [ 0, %bb.a ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit ]
  %i.bg = phi i64 [ %i.ap, %_RNvXs0_NtCseO5Jl7W60Eg_16rustls_pki_types3pemINtB5_8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB7_14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskaDheoimX9_18simple_0rtt_client.exit.i ], [ 0, %bb.a ], [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCseO5Jl7W60Eg_16rustls_pki_types3pem8ReadIterINtNtNtNtCs4wP2HXfJTCR_5alloc2io8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileENtB1e_14CertificateDerENCNvCskaDheoimX9_18simple_0rtt_client4mains_0EEB3S_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bh = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 6
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i64 %i.bh, 3
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.r, ptr %i.e, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %i.bk, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @3, ptr %i.d, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 23, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @3, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 23, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @2, ptr %i.bo, align 8
  call void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECskaDheoimX9_18simple_0rtt_client(ptr noundef nonnull @0, ptr noundef nonnull %i.e, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load i64, ptr %i.r, align 8
  %.pre41 = load i64, ptr %i.q, align 8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit28, %bb.m
  %i.bp = phi i64 [ %i.bf, %.loopexit28 ], [ %.pre41, %bb.m ]
  %i.bq = phi i64 [ %i.bg, %.loopexit28 ], [ %.pre, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.br = insertvalue { i64, i64 } poison, i64 %i.bq, 0
  %i.bs = insertvalue { i64, i64 } %i.br, i64 %i.bp, 1
  ret { i64, i64 } %i.bs

bb.o:                                             ; preds = %bb.ae, %.body21, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.cm, %bb.ae ], [ %eh.lpad-body22, %.body21 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #14
          to label %.body unwind label %bb.ad

bb.p:                                             ; preds = %bb.ak, %bb.x, %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  %i.bu = load i64, ptr %i.n, align 8, !range !12, !noundef !8
  %i.bv = icmp eq i64 %i.bu, -2
  br i1 %i.bv, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_11TrustAnchor8to_owned(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.m)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.v, %bb.s
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.ca, %bb.v ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #14
          to label %bb.o unwind label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.bx = load i64, ptr %i.ab, align 8, !alias.scope !73, !noundef !8 ; 3 uses
  %i.by = load i64, ptr %0, align 8, !range !13, !alias.scope !73, !noundef !8
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE8grow_oneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.x unwind label %bb.v, !noalias !74

bb.v:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l) #14
          to label %.body21 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cc = load ptr, ptr %i.ac, align 8, !alias.scope !73, !nonnull !8, !noundef !8
  %i.cd = getelementptr inbounds nuw [72 x i8], ptr %i.cc, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %i.ce = add i64 %i.bx, 1
  store i64 %i.ce, ptr %i.ab, align 8, !alias.scope !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cf = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.cf, ptr %i.r, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m)
          to label %bb.y unwind label %bb.p

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

bb.z:                                             ; preds = %bb.am, %bb.y
  %i.cg = phi i64 [ %i.cv, %bb.am ], [ %i.ao, %bb.y ] ; 2 uses
  %i.ch = phi i64 [ %i.ap, %bb.am ], [ %i.cf, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ci = load i64, ptr %i.o, align 8, !range !11, !alias.scope !75, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECskaDheoimX9_18simple_0rtt_client.exit unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ae, %.body21, %bb.o, %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ae:                                            ; preds = %bb.aj, %bb.ag
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #14
          to label %bb.o unwind label %bb.ad

bb.af:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false)
  %i.cn = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.co = icmp ult i64 %i.cn, 6
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp samesign ugt i64 %i.cn, 4
  br i1 %i.cp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cq = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %i.cr = load i64, ptr %i.ae, align 8, !noundef !8
  store ptr %i.cq, ptr %i.j, align 8
  store i64 %i.cr, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRShNtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @3, ptr %i.h, align 8
  store i64 23, ptr %i.ag, align 8
  store ptr @3, ptr %i.ah, align 8
  store i64 23, ptr %i.ai, align 8
  store ptr @5, ptr %i.aj, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECskaDheoimX9_18simple_0rtt_client(ptr noundef nonnull @4, ptr noundef nonnull %i.i, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.ah unwind label %bb.ae

end_hunk_0
