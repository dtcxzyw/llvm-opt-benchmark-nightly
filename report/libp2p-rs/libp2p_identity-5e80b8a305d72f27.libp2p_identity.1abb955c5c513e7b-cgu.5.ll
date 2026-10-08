Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identity-5e80b8a305d72f27.libp2p_identity.1abb955c5c513e7b-cgu.5?download=true
inline.NumInlined: 150
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs3_NtCsbZN1VVVQjZP_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2iisHxfqoT7_15libp2p_identity:bb.a
  %i.d = icmp ugt i64 %.val, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit_crit_edge unwind label %bb.e

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !alias.scope !152, !noalias !153
  %.pre11 = load i64, ptr %0, align 8, !range !6, !alias.scope !152, !noalias !153
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit_crit_edge, %bb.a
  %i.e = phi i64 [ %.pre11, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit_crit_edge ], [ %i.c, %bb.a ]
  %i.f = phi i64 [ %.pre, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit_crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %.val, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, !prof !7

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split.us.i, %.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !154, !nonnull !5, !noundef !5
  invoke void %i.j(ptr noundef %.sroa.9.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.val)
          to label %.body.thread unwind label %bb.d, !noalias !153, !inline_history !0

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.split.us.i unwind label %.loopexit.split-lp.i, !noalias !153

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit
  %.not8.i = icmp eq i64 %.val, 0
  br i1 %.not8.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit._crit_edge.i, label %_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c
  %.pre12 = load i64, ptr %i.a, align 8, !alias.scope !155, !noalias !153 ; 3 uses
  %.pre13 = load i64, ptr %0, align 8, !range !6, !alias.scope !155, !noalias !153
  %.pre14 = sub i64 %.pre13, %.pre12
  %i.k = icmp ugt i64 %.val, %.pre14
  br i1 %i.k, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i, label %_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i, !prof !156

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i: ; preds = %.lr.ph.split.us.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.pre12, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.us.i unwind label %.loopexit.split.us.i, !noalias !153

.noexc4.us.i:                                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i
  %i.l = load i64, ptr %i.a, align 8, !alias.scope !157, !noalias !153, !noundef !5
  br label %_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, %.noexc4.us.i, %.lr.ph.split.us.i
  %.sink15.i = phi i64 [ %i.l, %.noexc4.us.i ], [ %.pre12, %.lr.ph.split.us.i ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = icmp sgt i64 %.sink15.i, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !157, !noalias !153, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink15.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.val, i1 false), !noalias !153
  %.pre.i.us.i = load i64, ptr %i.a, align 8, !alias.scope !157, !noalias !153
  %i.q = add i64 %.pre.i.us.i, %.val
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !157, !noalias !153
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.val
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit._crit_edge.i

.loopexit.split.us.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit._crit_edge.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, %_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i
  %i.s = phi ptr [ %i.r, %_RNvXs3_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i ], [ %.sroa.5.0.copyload, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !158, !nonnull !5, !noundef !5
  tail call void %i.u(ptr noundef %.sroa.9.0.copyload, ptr noundef %i.s, i64 noundef 0), !inline_history !146
  ret void

bb.d:                                             ; preds = %.loopexit.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !153
  unreachable

.body.thread:                                     ; preds = %bb.e, %.loopexit.i
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  resume { ptr, i32 } %eh.lpad-body8

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !161, !noundef !5
  %i.z = load ptr, ptr %1, align 8, !alias.scope !161, !nonnull !5, !align !8, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !161, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !161, !noundef !5
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %.val)
          to label %.body.thread unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCsbZN1VVVQjZP_5prost8encodingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter9append_toBB_ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !171, !noalias !172, !noundef !5 ; 3 uses
  %i.g = load i64, ptr %1, align 8, !range !6, !alias.scope !171, !noalias !172, !noundef !5
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph.split.us.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, !prof !7

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i: ; preds = %bb.a
  %.not6.i = icmp eq i64 %i.d, 0
  br i1 %.not6.i, label %_RINvXs2_NtNtCs1eA6bChxBZF_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECs2iisHxfqoT7_15libp2p_identity.exit, label %_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef 1, i64 noundef 1), !noalias !172
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !173, !noalias !172 ; 3 uses
  %.pre1 = load i64, ptr %1, align 8, !range !6, !alias.scope !173, !noalias !172
  %.pre2 = sub i64 %.pre1, %.pre
  %i.j = icmp ugt i64 %i.d, %.pre2
  br i1 %i.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i, label %_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i, !prof !174

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i: ; preds = %.lr.ph.split.us.i
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef 1, i64 noundef 1), !noalias !172
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !175, !noalias !172, !noundef !5
  br label %_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i

_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i, %.lr.ph.split.us.i
  %.sink10.i = phi i64 [ %i.k, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.us.i ], [ %.pre, %.lr.ph.split.us.i ], [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = icmp sgt i64 %.sink10.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !175, !noalias !172, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink10.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.b, i64 range(i64 0, -9223372036854775808) %i.d, i1 false)
  %.pre.i.us.i = load i64, ptr %i.e, align 8, !alias.scope !175, !noalias !172
  %i.p = add i64 %.pre.i.us.i, %i.d
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !175, !noalias !172
  br label %_RINvXs2_NtNtCs1eA6bChxBZF_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECs2iisHxfqoT7_15libp2p_identity.exit

_RINvXs2_NtNtCs1eA6bChxBZF_5bytes3buf7buf_mutINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_6BufMut3putRShECs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i, %_RNvXs0_NtNtCs1eA6bChxBZF_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs_NtCsk7Z1gFMStHv_4bs586encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_12EncodeTarget11encode_withNCINvMs3_B5_INtB5_13EncodeBuilderBx_E4ontoQNtNtBC_6string6StringE0ECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(186) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 11 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add i64 %i.b, %1                         ; 2 uses
  %i.e = icmp ugt i64 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2iisHxfqoT7_15libp2p_identity.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !184, !noundef !5
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !185
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !185, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %1, 1
  br i1 %i.n, label %._crit_edge.thread.i.i, label %._crit_edge.i.i

._crit_edge.thread.i.i:                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i
  %i.o = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  %4 = add i64 %i.i, %1                           ; 2 uses
  %i.p = add i64 %4, -1
  %5 = getelementptr i8, ptr %i.k, i64 %4
  %scevgep.i.i = getelementptr i8, ptr %5, i64 -1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.thread.i.i ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.p, %._crit_edge.thread.i.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa28.i.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i.i, 1
  br label %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2iisHxfqoT7_15libp2p_identity.exit

_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.a, %._crit_edge.i.i
  %storemerge.i = phi i64 [ %i.d, %bb.a ], [ %i.q, %._crit_edge.i.i ] ; 5 uses
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !186
  %i.r = icmp ugt i64 %i.b, %storemerge.i
  br i1 %i.r, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2iisHxfqoT7_15libp2p_identity.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = sub nuw i64 %storemerge.i, %i.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.b
  %.val = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.w, align 8, !noundef !5
  %i.x = tail call { i64, i64 } @_RINvNtCsk7Z1gFMStHv_4bs586encode11encode_intoRShECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val8, ptr noalias nofree noundef nonnull %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(186) %3) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2iisHxfqoT7_15libp2p_identity.exit, label %bb.f

bb.e:                                             ; preds = %_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2iisHxfqoT7_15libp2p_identity.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %storemerge.i, i64 noundef %storemerge.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = extractvalue { i64, i64 } %i.x, 1       ; 3 uses
  %i.ab = add i64 %i.aa, %i.b                     ; 2 uses
  %i.ac = load i64, ptr %i.a, align 8, !alias.scope !187, !noundef !5
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2iisHxfqoT7_15libp2p_identity.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !187
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2iisHxfqoT7_15libp2p_identity.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.3.0 = phi i64 [ undef, %bb.d ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.ae = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.af = insertvalue { i64, i64 } %i.ae, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !194, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !194, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i, !prof !7

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !195, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2iisHxfqoT7_15libp2p_identity.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !195, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !195
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2iisHxfqoT7_15libp2p_identity.exit

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2iisHxfqoT7_15libp2p_identity.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !195
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXCsgtZiP9A0p0_7zeroizehNtB2_7Zeroize7zeroizeCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  store volatile i8 0, ptr %0, align 1
  tail call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull %0) #23, !srcloc !9
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjgXT0eFS72R_4hmac9block_apiINtB2_8HmacCoreNtCsjXykfGCpjhN_4sha26Sha256ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2iisHxfqoT7_15libp2p_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtNtCsfgXEkcZqqoj_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsjXykfGCpjhN_4sha29block_api13Sha256VarCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCsfgXEkcZqqoj_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsjXykfGCpjhN_4sha29block_api13Sha256VarCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_Cs2iisHxfqoT7_15libp2p_identityNtB5_7KeyTypeNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !196, !noundef !5
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 7)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 3)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 9)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !203, !noalias !204, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !205
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !206
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly %i.d, ptr noundef nonnull readonly %i.g), !noalias !203
  %i.i = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !205
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !210
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !210
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !210
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRShNtB6_5Debug3fmtCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
end_hunk_0
