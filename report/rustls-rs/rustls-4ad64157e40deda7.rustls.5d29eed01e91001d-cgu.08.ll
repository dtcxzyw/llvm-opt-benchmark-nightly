Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.08?download=true
inline.NumInlined: 649
inline.NumDeleted: 283
begin_hunk_0_@_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client6commonNtB5_17ClientAuthDetails7resolve:bb.a
bb.e:                                             ; preds = %bb.c
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !5
  %i.t = add nsw i64 %i.s, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !5, !nonnull !5
  %i.z = invoke { ptr, ptr } %i.y(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %._crit_edge, %bb.i
  %i.aa = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.ah, %._crit_edge ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !459
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit unwind label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.f
  %i.ae = extractvalue { ptr, ptr } %i.z, 0       ; 3 uses
  %.not14 = icmp eq ptr %i.ae, null
  br i1 %.not14, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !460
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22 unwind label %bb.d

bb.m:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_(ptr nonnull %i.ae, ptr nonnull %i.ai) #24
          to label %._crit_edge unwind label %bb.t

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !459
  br label %bb.g

bb.n:                                             ; preds = %bb.j
  %i.ai = extractvalue { ptr, ptr } %i.z, 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 6
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ugt i64 %i.aj, 3
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @37, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 22, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @37, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 22, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @36, ptr %i.ap, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 45 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.s unwind label %bb.m

bb.p:                                             ; preds = %bb.n, %bb.s
  %i.aq = phi ptr [ %i.l, %bb.n ], [ %.pre43, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %8, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %9, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls.exit29 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread34 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre43 = load ptr, ptr %i.c, align 8
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls.exit29: ; preds = %bb.p, %bb.w
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.t:                                             ; preds = %bb.h, %bb.m, %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22
  %i.az = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ugt i64 %i.az, 3
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @37, ptr %i.a, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @37, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 22, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @39, ptr %i.bf, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @38, ptr noundef nonnull inttoptr (i64 107 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.z unwind label %bb.d

bb.w:                                             ; preds = %bb.u, %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls.exit29 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread34 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

.thread34:                                        ; preds = %bb.x, %bb.q, %.thread
  %.pn1732 = phi { ptr, i32 } [ %.pn1733, %.thread ], [ %i.bh, %bb.x ], [ %i.aw, %bb.q ]
  resume { ptr, i32 } %.pn1732

.thread:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit, %bb.b
  %.pn1733 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.b ], [ %.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %7) #24
          to label %.thread34 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU2410into_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 6 uses
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !467
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.53.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !467
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noalias !467, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !21, !noalias !467, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !noalias !467
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28, !noalias !467
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !noalias !467, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = icmp ule i64 %.sroa.53.0.copyload, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !467
  %.not1.i.i = icmp eq i64 %.sroa.53.0.copyload, 0
  br i1 %.not1.i.i, label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %.sroa.42.0.copyload, i64 %.sroa.53.0.copyload, i1 false), !noalias !467
  br label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned.exit

_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.6.0.i = phi i64 [ 0, %bb.d ], [ %.sroa.53.0.copyload, %bb.e ], [ %.sroa.53.0.copyload, %bb.a ]
  %.sroa.5.0.i = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.sroa.42.0.copyload, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %.sroa.01.0.copyload, %bb.a ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtCs7ZUl82OSlxp_6rustls13limited_cache12LimitedCacheNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtB12_6client5handy5cache10ServerDataEE4lockB12_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #27
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs7ZUl82OSlxp_6rustls13limited_cache12LimitedCacheNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtB1s_6client5handy5cache10ServerDataEENCNvMs9_B10_BX_3new0EB1s_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB14_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEE4lockB2g_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #27
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1u_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEENCNvMs9_B10_BX_3new0EB2G_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCs7ZUl82OSlxp_6rustls12key_log_file15KeyLogFileInnerE4lockB11_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #27
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCs7ZUl82OSlxp_6rustls12key_log_file15KeyLogFileInnerENCNvMs9_B10_BX_3new0EB1r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCs7ZUl82OSlxp_6rustls12key_log_file15KeyLogFileInnerE8try_lockB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #27
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %.not.i = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCs7ZUl82OSlxp_6rustls12key_log_file15KeyLogFileInnerENCNvMs9_B10_BX_3new0EB1r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.p, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.l, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.r, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodetNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs7ZUl82OSlxp_6rustls() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(136) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 4, 561) 136, i64 noundef 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodetNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs7ZUl82OSlxp_6rustls() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 4, 561) 40, i64 noundef 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(560) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 4, 561) 560, i64 noundef 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 560) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsE13new_uninit_inBM_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 4, 561) 200, i64 noundef 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = sub nuw i64 %i.d, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.h, 1
  ret { ptr, i64 } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret19strip_leading_zeros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !477, !noundef !5 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !477, !noundef !5 ; 6 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #29, !noalias !477
  unreachable

_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !477, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = sub nuw i64 %i.d, %i.b                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  %i.j = icmp samesign eq i64 %i.b, %i.d
  br i1 %i.j, label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit10, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.m = add i64 %i.p, 1
  %i.n = icmp eq ptr %i.l, %i.i
  br i1 %i.n, label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit10, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.o = phi ptr [ %i.k, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ]  ; 2 uses
  %i.q = load i8, ptr %i.o, align 1, !alias.scope !478, !noalias !479, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit10

_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit10: ; preds = %bb.d, %bb.c, %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit
  %.sroa.02.0 = phi i64 [ %i.h, %_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret12secret_bytes.exit ], [ %i.p, %bb.d ], [ %i.h, %bb.c ]
  %i.r = add i64 %.sroa.02.0, %i.b
  store i64 %i.r, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload10into_owned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.b = load i64, ptr %1, align 8, !range !4, !alias.scope !484, !noalias !483, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !485 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !485 ; 6 uses
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !486
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !486
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !486, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !21, !noalias !486, !noundef !5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !noalias !486
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #28, !noalias !486
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !noalias !486, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !486
  %.not1.i = icmp eq i64 %i.f, 0
  br i1 %.not1.i, label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.d, i64 %i.f, i1 false), !noalias !486
  br label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec.exit

_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.a ]
  %.sroa.5.0 = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.b, %bb.a ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader4rest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB4_7Payload8into_vec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !21, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  store i64 %i.f, ptr %i.p, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6client6commonNtB4_18ClientHelloDetails34server_sent_unsolicited_extensions(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs3l_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16ServerExtensions12collect_used(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %.not = icmp ne ptr %i.h, null                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.j, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.58.0 = select i1 %.not, i64 %i.l, i64 0
  store i64 %.sroa.07.sroa.0.0, ptr %i.e, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.4.sroa.4.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %.sroa.010.sroa.4.sroa.4.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.4.sroa.5.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.010.sroa.4.sroa.5.0..sroa.010.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %.sroa.010.sroa.6.0..sroa_idx, align 8
  %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.h, ptr %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sroa.58.0, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtB8_11collections5btree3set4ItertENCNvMs_NtNtBM_6client6commonNtB3p_18ClientHelloDetails34server_sent_unsolicited_extensions0EEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.o = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693952
  call void @llvm.assume(i1 %i.r)
  %.idx = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 8
  %.not70 = icmp eq i64 %i.q, 0
  br i1 %.not70, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1v_.exit52, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  br label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.thread unwind label %bb.l

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %i.x = phi ptr [ %i.n, %.lr.ph ], [ %i.al, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !490
  %i.z = load <2 x i16>, ptr %i.x, align 2, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i16> %i.z, ptr %i.c, align 4
  %i.aa = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.u, i64 noundef %i.w)
          to label %bb.e unwind label %.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1v_.exit52: ; preds = %bb.k, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1v_.exit53
  %i.ab = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1v_.exit53 ], [ false, %bb.b ], [ false, %bb.k ]
  call void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.ab

bb.e:                                             ; preds = %bb.d
  br i1 %i.aa, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  br i1 %i.ac, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 6
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ugt i64 %i.ad, 4
  br i1 %i.af, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeEEB1v_.exit53

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsZ_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @37, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %i.ag, align 8
end_hunk_0
