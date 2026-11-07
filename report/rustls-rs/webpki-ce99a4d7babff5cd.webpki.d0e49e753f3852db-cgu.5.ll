Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/webpki-ce99a4d7babff5cd.webpki.d0e49e753f3852db-cgu.5?download=true
inline.NumInlined: 120
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCshVVPy9isBpn_6webpki11signed_data16verify_signature:bb.a

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !6, !nonnull !6
  %i.s = call { ptr, i64 } %i.r(ptr noundef nonnull %1) #19 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.v = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !11, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k, !prof !12

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !6, !nonnull !6
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.525.0.copyload, i64 noundef %.sroa.626.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8) #19
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775792, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.r, %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.z, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.ad) #18
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = icmp ule i64 %i.u, %i.y
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.y, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8
  %.not52 = icmp eq i64 %i.u, 0
  br i1 %.not52, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.424.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.t, i64 %i.u, i1 false)
  store i64 %i.u, ptr %i.ah, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.p, %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %bb.v unwind label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.a, align 8, !range !10, !noundef !6
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !11, !noundef !6 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.p, label %bb.q, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr %i.an, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #18
          to label %bb.t unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aq = icmp ule i64 %.sroa.424.0.copyload, %i.am
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not53 = icmp eq i64 %.sroa.424.0.copyload, 0
  br i1 %.not53, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775759, ptr %0, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.am, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ap, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.424.0.copyload, ptr %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %.sroa.023.0.copyload, i64 %.sroa.424.0.copyload, i1 false)
  br label %bb.r

bb.t:                                             ; preds = %bb.p
  unreachable

bb.u:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.v:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %5, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 3 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 11 uses
  %i.h = alloca [48 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.i = load i64, ptr %6, align 8, !alias.scope !181, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  store i64 -9223372036854775784, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.437.0..sroa_idx, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store i64 -9223372036854775784, ptr %i.a, align 8, !noalias !182
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  store i64 %i.k, ptr %6, align 8, !alias.scope !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -1, ptr %i.h, align 8
  %.idx = shl nuw nsw i64 %2, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %.loopexit45.thread, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i64, ptr %i.n, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !6
  %i.r = load ptr, ptr %5, align 8, !nonnull !6
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.lr.ph
  %i.z = phi ptr [ %1, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph.i.backedge ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !183, !nonnull !6, !noundef !6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !183, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !6, !noalias !183, !nonnull !6
  %i.ag = invoke { ptr, i64 } %i.af(ptr noundef nonnull %i.ab) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !178 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1
  %i.ai = icmp eq i64 %i.ah, %i.p
  br i1 %i.ai, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.thread.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.i: ; preds = %.noexc
  %i.aj = extractvalue { ptr, i64 } %i.ag, 0
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.aj, ptr nonnull %i.q, i64 %i.p), !noalias !183
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0EB2R_.exit, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.thread.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.i, %.noexc
  %i.al = icmp eq ptr %i.aa, %i.l
  br i1 %i.al, label %.loopexit45, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.thread.i, %bb.u
  br label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.t, %bb.w, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bi, %bb.t ], [ %i.bi, %bb.w ], [ %i.bi, %bb.t ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.am = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %.not21 = icmp eq i64 %i.am, -1
  br i1 %.not21, label %bb.y, label %bb.z

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0EB2R_.exit, %bb.v, %.loopexit45.thread, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0EB2R_.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCshVVPy9isBpn_6webpki11signed_data16verify_signature(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit45:                                      ; preds = %bb.u, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0INtB7_5FnMutTRRRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EE8call_mutBU_.exit.thread.i
  %.pr = load i64, ptr %i.h, align 8
  %.not14 = icmp eq i64 %.pr, -1
  br i1 %.not14, label %.loopexit45.thread, label %bb.d

bb.d:                                             ; preds = %.loopexit45
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 -9223372036854775759, ptr %0, align 8
  br label %bb.e

.loopexit45.thread:                               ; preds = %bb.c, %.loopexit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshVVPy9isBpn_6webpki(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d, %bb.x, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.f:                                             ; preds = %.loopexit45.thread
  %i.ar = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !11, !noundef !6 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.av, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #18
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ay = icmp ule i64 %i.aq, %i.au
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.au, ptr %i.d, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8
  %.not15 = icmp eq i64 %i.aq, 0
  br i1 %.not15, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterRDNtB17_30SignatureVerificationAlgorithmEL_ENCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_datas_0EE9from_iterB4D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.l)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  store i64 %i.aq, ptr %i.ba, align 8
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECshVVPy9isBpn_6webpki(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #16
          to label %.loopexit.split-lp.loopexit.split-lp unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775763, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e, %bb.b
  ret void

bb.n:                                             ; preds = %bb.z, %bb.w, %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.o:                                             ; preds = %bb.g
  unreachable

bb.p:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCshVVPy9isBpn_6webpki11signed_data18verify_signed_data0EB2R_.exit
  %i.be = load i64, ptr %i.g, align 8, !range !9, !noundef !6
  %.not16 = icmp eq i64 %i.be, -9223372036854775759
  br i1 %.not16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bf = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %.not17 = icmp eq i64 %i.bf, -1
  br i1 %.not17, label %bb.e, label %bb.x

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.bg = load i64, ptr %i.h, align 8, !range !7, !alias.scope !184, !noundef !6
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEEB11_.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.bj = load i64, ptr %i.g, align 8, !range !9, !noundef !6 ; 2 uses
  switch i64 %i.bj, label %bb.w [
    i64 -1, label %.loopexit.split-lp.loopexit.split-lp
    i64 -9223372036854775759, label %.loopexit.split-lp.loopexit.split-lp
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEEB11_.exit: ; preds = %bb.s
  %.pre = load i64, ptr %i.g, align 8, !range !9  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  switch i64 %.pre, label %bb.v [
    i64 -1, label %bb.u
    i64 -9223372036854775759, label %bb.u
  ]

bb.u:                                             ; preds = %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEEB11_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEEB11_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = icmp eq ptr %i.aa, %i.l
  br i1 %i.bk, label %.loopexit45, label %.lr.ph.i.backedge

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEEB11_.exit
  %7 = icmp ne i64 %.pre, -9223372036854775804
  call void @llvm.assume(i1 %7)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.t
  %i.bl = icmp ne i64 %i.bj, -9223372036854775804
  call void @llvm.assume(i1 %i.bl)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #16
          to label %.loopexit.split-lp.loopexit.split-lp unwind label %bb.n

bb.x:                                             ; preds = %bb.q
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
  br label %bb.e

bb.y:                                             ; preds = %bb.z, %.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #16
          to label %bb.y unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCshVVPy9isBpn_6webpki12trust_anchor24anchor_from_trusted_cert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [248 x i8], align 8               ; 4 uses
  %i.g = alloca [248 x i8], align 8               ; 10 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtCshVVPy9isBpn_6webpki4certNtB2_4Cert16for_trust_anchor(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
  %i.h = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %i.i = icmp eq i64 %i.h, -2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !8, !noundef !6 ; 2 uses
  %i.l = icmp ne i64 %i.k, -9223372036854775804
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, -9223372036854775775
  br i1 %i.m, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.f, ptr noundef nonnull align 8 dereferenceable(248) %i.g, i64 248, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXNtCshVVPy9isBpn_6webpki12trust_anchorNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtB4_4cert4CertE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.f)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtCshVVPy9isBpn_6webpki5error5ErrorE2orB1t_EB1x_.exit, %bb.d
  %i.n = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8, !noalias !192
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.3.0, ptr %i.p, align 8, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !192
  invoke void @_RINvMs_NtCs2XfPe3Xe4Zx_9untrusted5inputNtB5_5Input8read_allNCNvNtCshVVPy9isBpn_6webpki12trust_anchor37extract_trust_anchor_from_v1_cert_der0NtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtB11_5error5ErrorEB11_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %.invoke unwind label %.body

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.i

.invoke:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 -9223372036854775808, ptr %i.r, align 8
  store i64 -2, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.s = load i64, ptr %i.d, align 8, !range !5, !alias.scope !195, !noundef !6
  %i.t = icmp eq i64 %i.s, -2                     ; 2 uses
  %. = select i1 %i.t, ptr %i.c, ptr %i.d
  %.5 = select i1 %i.t, ptr %i.d, ptr %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %., i64 72, i1 false), !alias.scope !196
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtCshVVPy9isBpn_6webpki5error5ErrorEEB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.5)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtCshVVPy9isBpn_6webpki5error5ErrorE2orB1t_EB1x_.exit unwind label %.body

.body:                                            ; preds = %.invoke, %bb.c, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.v, -2
  br i1 %.not, label %bb.k, label %bb.j

_RINvMNtCsj6eKBz9Db1c_4core6resultINtB3_6ResultNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtCshVVPy9isBpn_6webpki5error5ErrorE2orB1t_EB1x_.exit: ; preds = %.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.w)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.k, %.body
  resume { ptr, i32 } %i.u

bb.k:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.x) #16
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCshVVPy9isBpn_6webpki12trust_anchor4skip(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef range(i8 -96, 49) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCshVVPy9isBpn_6webpki3der10expect_tag(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i8 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB2_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB12_3crl5types19BorrowedRevokedCertEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB12_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !208, !nonnull !6, !align !13, !noundef !6 ; 8 uses
  call void @_RNvXs_NtCshVVPy9isBpn_6webpki3derINtB4_11DerIteratorNtNtNtB6_3crl5types19BorrowedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load i64, ptr %i.a, align 8, !range !209, !noundef !6 ; 2 uses
  %.not24.i.i = icmp eq i64 %i.d, -2
  br i1 %.not24.i.i, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB13_3crl5types19BorrowedRevokedCertEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB13_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3u_12try_for_each4callB1F_INtNtNtB7_3ops12control_flow11ControlFlowB1F_ENcNtB4K_5Break0E0B4K_EB13_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB15_3crl5types19BorrowedRevokedCertEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB15_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3w_12try_for_each4callB1H_INtNtNtB9_3ops12control_flow11ControlFlowB1H_ENcNtB4M_5Break0E0B4M_E0B15_.exit.thread.i.i, %.lr.ph.i.i
  %i.e = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.i, %_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB15_3crl5types19BorrowedRevokedCertEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB15_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3w_12try_for_each4callB1H_INtNtNtB9_3ops12control_flow11ControlFlowB1H_ENcNtB4M_5Break0E0B4M_E0B15_.exit.thread.i.i ] ; 3 uses
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !range !9, !alias.scope !210, !noalias !211, !noundef !6
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB13_3crl5types19BorrowedRevokedCertEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB13_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3u_12try_for_each4callB1F_INtNtNtB7_3ops12control_flow11ControlFlowB1F_ENcNtB4K_5Break0E0B4K_EB13_.exit.thread4, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB13_3crl5types19BorrowedRevokedCertEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB13_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3u_12try_for_each4callB1F_INtNtNtB7_3ops12control_flow11ControlFlowB1F_ENcNtB4K_5Break0E0B4K_EB13_.exit.thread4 unwind label %bb.f, !noalias !212

bb.e:                                             ; preds = %bb.b
  switch i64 %.sroa.510.0.copyload.i.i, label %_RINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB3_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB13_3crl5types19BorrowedRevokedCertEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB13_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB3u_12try_for_each4callB1F_INtNtNtB7_3ops12control_flow11ControlFlowB1F_ENcNtB4K_5Break0E0B4K_EB13_.exit [
    i64 2, label %_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB15_3crl5types19BorrowedRevokedCertEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB15_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3w_12try_for_each4callB1H_INtNtNtB9_3ops12control_flow11ControlFlowB1H_ENcNtB4M_5Break0E0B4M_E0B15_.exit.thread.i.i
    i64 -1, label %_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtCshVVPy9isBpn_6webpki3der11DerIteratorNtNtNtB15_3crl5types19BorrowedRevokedCertEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB15_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB3w_12try_for_each4callB1H_INtNtNtB9_3ops12control_flow11ControlFlowB1H_ENcNtB4M_5Break0E0B4M_E0B15_.exit.thread.i.i
  ]

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !213, !noalias !211
  %.sroa.516.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.510.0.copyload.i.i, ptr %.sroa.516.0..8.val.sroa_idx.i.i.i, align 8, !alias.scope !213, !noalias !211
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i64 40, i1 false)
  resume { ptr, i32 } %i.h
end_hunk_0
