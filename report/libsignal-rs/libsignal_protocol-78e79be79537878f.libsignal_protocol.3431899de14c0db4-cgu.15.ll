Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.15?download=true
inline.NumInlined: 304
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs17cqnTMcAHA_5bytes5bytes5BytesECs4tP8yUXWbFU_18libsignal_protocol:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noalias !118, !nonnull !5, !noundef !5
  invoke void %i.j(ptr noundef %.sroa.9.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.val)
          to label %.body.thread unwind label %bb.d, !noalias !117, !inline_history !0

bb.c:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit
  invoke void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.split.us.i unwind label %.loopexit.split-lp.i, !noalias !117

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit
  %.not8.i = icmp eq i64 %.val, 0
  br i1 %.not8.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit._crit_edge.i, label %_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c
  %.pre12 = load i64, ptr %i.a, align 8, !alias.scope !119, !noalias !117 ; 3 uses
  %.pre13 = load i64, ptr %0, align 8, !range !6, !alias.scope !119, !noalias !117
  %.pre14 = sub i64 %.pre13, %.pre12
  %i.k = icmp ugt i64 %.val, %.pre14
  br i1 %i.k, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i, label %_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i, !prof !120

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i: ; preds = %.lr.ph.split.us.i
  invoke void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.pre12, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.us.i unwind label %.loopexit.split.us.i, !noalias !117

.noexc4.us.i:                                     ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i
  %i.l = load i64, ptr %i.a, align 8, !alias.scope !121, !noalias !117, !noundef !5
  br label %_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %.noexc4.us.i, %.lr.ph.split.us.i
  %.sink15.i = phi i64 [ %i.l, %.noexc4.us.i ], [ %.pre12, %.lr.ph.split.us.i ], [ %i.f, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = icmp sgt i64 %.sink15.i, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !121, !noalias !117, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink15.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.val, i1 false), !noalias !117
  %.pre.i.us.i = load i64, ptr %i.a, align 8, !alias.scope !121, !noalias !117
  %i.q = add i64 %.pre.i.us.i, %.val
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !121, !noalias !117
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.val
  br label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit._crit_edge.i

.loopexit.split.us.i:                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit._crit_edge.i: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i
  %i.s = phi ptr [ %i.r, %_RNvXs3_NtCs17cqnTMcAHA_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i ], [ %.sroa.5.0.copyload, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !122, !nonnull !5, !noundef !5
  tail call void %i.u(ptr noundef %.sroa.9.0.copyload, ptr noundef %i.s, i64 noundef 0), !inline_history !110
  ret void

bb.d:                                             ; preds = %.loopexit.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23, !noalias !117
  unreachable

.body.thread:                                     ; preds = %bb.e, %.loopexit.i
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  resume { ptr, i32 } %eh.lpad-body8

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !125, !noundef !5
  %i.z = load ptr, ptr %1, align 8, !alias.scope !125, !nonnull !5, !align !10, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !125, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !125, !noundef !5
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %.val)
          to label %.body.thread unwind label %bb.f, !inline_history !0

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCs43OB2dM8s8d_5prost8encodingINtNtCs6i54tJFfzR_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter9append_toBB_ECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !135, !noalias !136, !noundef !5 ; 3 uses
  %i.g = load i64, ptr %1, align 8, !range !6, !alias.scope !135, !noalias !136, !noundef !5
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %.lr.ph.split.us.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i, !prof !7

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i: ; preds = %bb.a
  %.not6.i = icmp eq i64 %i.d, 0
  br i1 %.not6.i, label %_RINvXs2_NtNtCs17cqnTMcAHA_5bytes3buf7buf_mutINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_6BufMut3putRShECs4tP8yUXWbFU_18libsignal_protocol.exit, label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef 1, i64 noundef 1), !noalias !136
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !137, !noalias !136 ; 3 uses
  %.pre1 = load i64, ptr %1, align 8, !range !6, !alias.scope !137, !noalias !136
  %.pre2 = sub i64 %.pre1, %.pre
  %i.j = icmp ugt i64 %i.d, %.pre2
  br i1 %i.j, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i, label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i, !prof !138

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i: ; preds = %.lr.ph.split.us.i
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef 1, i64 noundef 1), !noalias !136
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !139, !noalias !136, !noundef !5
  br label %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i

_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i, %.lr.ph.split.us.i
  %.sink10.i = phi i64 [ %i.k, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.us.i ], [ %.pre, %.lr.ph.split.us.i ], [ %i.f, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = icmp sgt i64 %.sink10.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !139, !noalias !136, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink10.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.b, i64 range(i64 0, -9223372036854775808) %i.d, i1 false)
  %.pre.i.us.i = load i64, ptr %i.e, align 8, !alias.scope !139, !noalias !136
  %i.p = add i64 %.pre.i.us.i, %i.d
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !139, !noalias !136
  br label %_RINvXs2_NtNtCs17cqnTMcAHA_5bytes3buf7buf_mutINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_6BufMut3putRShECs4tP8yUXWbFU_18libsignal_protocol.exit

_RINvXs2_NtNtCs17cqnTMcAHA_5bytes3buf7buf_mutINtNtCs6i54tJFfzR_5alloc3vec3VechENtB6_6BufMut3putRShECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i, %_RNvXs0_NtNtCs17cqnTMcAHA_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvXs_CsS4eg1WQ3uw_4uuidNtB5_4UuidNtNtCsgxBkk5gSRhY_4core4hash4Hash4hashNtNtNtCs9k3SxhrAWiO_3std4hash6random13DefaultHasherECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !158, !noalias !159, !noundef !5
  %i.c = add i64 %i.b, 16
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !158, !noalias !159
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !158, !noalias !159, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 4 uses
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, 54) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 16) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3                     ; 2 uses
  %.sroa.014.0.copyload.i.i.i = load i32, ptr %0, align 1
  %i.i = zext i32 %.sroa.014.0.copyload.i.i.i to i64
  %.sroa.03.0.i.i.i = select i1 %i.h, i64 4, i64 0 ; 5 uses
  %.sroa.0.0.i10.i.i = select i1 %i.h, i64 %i.i, i64 0 ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i.i.i
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 %.sroa.03.0.i.i.i
  %.sroa.015.0.copyload.i.i.i = load i16, ptr %i.l, align 1, !alias.scope !160, !noalias !158
  %i.m = zext i16 %.sroa.015.0.copyload.i.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.1.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.03.0.i.i.i, %bb.b ] ; 3 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.0.0.i10.i.i, %bb.b ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i.i, %.sroa.0.0.i.i.i
  br i1 %i.r, label %bb.e, label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.03.1.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !160, !noalias !158, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i.i
  br label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit.i.i

_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.2.i.i.i = phi i64 [ %i.x, %bb.e ], [ %.sroa.0.1.i.i.i, %bb.d ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !158, !noalias !159, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !158, !noalias !159
  %i.ae = icmp ugt i64 %i.g, 16
  br i1 %i.ae, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.g ] ; 7 uses
  %i.af = sub nuw nsw i64 16, %.sroa.0.0.i.i      ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 24                       ; 3 uses
  %i.ai = icmp samesign ult i64 %.sroa.0.0.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.al, align 8, !alias.scope !161, !noalias !159
  %.promoted21.i.i = load i64, ptr %i.ak, align 8, !alias.scope !161, !noalias !159 ; 3 uses
  %.promoted20.i.i = load i64, ptr %i.aj, align 8, !alias.scope !158, !noalias !159
  %.promoted.i.i = load i64, ptr %1, align 8, !alias.scope !158, !noalias !159
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.am, align 1, !alias.scope !159, !noalias !158 ; 2 uses
  %i.an = xor i64 %.sroa.07.0.copyload.i.i, %.promoted20.i.i ; 3 uses
  %i.ao = add i64 %.promoted.i.i, %.promoted21.i.i ; 3 uses
  %i.ap = add i64 %i.an, %.promoted23.i.i         ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %.promoted21.i.i, i64 %.promoted21.i.i, i64 13)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.at = xor i64 %i.ap, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ap, %i.ar                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 17)
  %i.ay = xor i64 %i.av, %i.ax                    ; 4 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 21)
  %i.ba = xor i64 %i.az, %i.aw                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32) ; 2 uses
  %i.bc = xor i64 %i.aw, %.sroa.07.0.copyload.i.i ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0.0.i.i, 8       ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.ah
  br i1 %i.be, label %bb.o, label %._crit_edge.i.i

bb.g:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !158, !noalias !159, !noundef !5
  %i.bh = xor i64 %i.bg, %i.ad                    ; 3 uses
  %i.bi = load i64, ptr %1, align 8, !alias.scope !162, !noalias !159, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !162, !noalias !159, !noundef !5 ; 3 uses
  %i.bl = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !162, !noalias !159, !noundef !5
  %i.bo = add i64 %i.bn, %i.bh                    ; 2 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.bq = xor i64 %i.bp, %i.bl                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bs = xor i64 %i.bo, %i.br                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bu = add i64 %i.bo, %i.bq                    ; 3 uses
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bx = xor i64 %i.bu, %i.bw
  store i64 %i.bx, ptr %i.bj, align 8, !alias.scope !162, !noalias !159
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bz = xor i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.bf, align 8, !alias.scope !162, !noalias !159
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  store i64 %i.ca, ptr %i.bm, align 8, !alias.scope !162, !noalias !159
  %i.cb = xor i64 %i.bv, %i.ad
  store i64 %i.cb, ptr %1, align 8, !alias.scope !158, !noalias !159
  br label %bb.f

bb.h:                                             ; preds = %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit.i.i
  %i.cc = add i64 %i.e, 16
  br label %_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write.exit

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o, %.lr.ph.i.i
  %.lcssa23 = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %i.dl, %bb.o ], [ %i.ee, %bb.p ]
  %.lcssa22 = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %i.dn, %bb.o ], [ %i.eg, %bb.p ]
  %.lcssa21 = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %i.do, %bb.o ], [ %i.eh, %bb.p ]
  %.lcssa20 = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %i.dp, %bb.o ], [ %i.ei, %bb.p ]
  %.lcssa = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %i.dq, %bb.o ], [ %2, %bb.p ]
  store i64 %.lcssa22, ptr %i.aj, align 8, !alias.scope !158, !noalias !159
  store i64 %.lcssa23, ptr %i.ak, align 8, !alias.scope !161, !noalias !159
  store i64 %.lcssa21, ptr %i.al, align 8, !alias.scope !161, !noalias !159
  store i64 %.lcssa20, ptr %1, align 8, !alias.scope !158, !noalias !159
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.f
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 3 uses
  %i.cd = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.lcssa.i.i
  %.sroa.014.0.copyload.i17.i.i = load i32, ptr %i.ce, align 1, !alias.scope !163, !noalias !158
  %i.cf = zext i32 %.sroa.014.0.copyload.i17.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.03.0.i11.i.i = phi i64 [ 4, %bb.j ], [ 0, %bb.i ] ; 5 uses
  %.sroa.0.0.i12.i.i = phi i64 [ %i.cf, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.cg = or disjoint i64 %.sroa.03.0.i11.i.i, 1
  %i.ch = icmp samesign ult i64 %i.cg, %i.ag
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr i8, ptr %0, i64 %.sroa.0.1.lcssa.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 %.sroa.03.0.i11.i.i
  %.sroa.015.0.copyload.i16.i.i = load i16, ptr %i.cj, align 1, !alias.scope !163, !noalias !158
  %i.ck = zext i16 %.sroa.015.0.copyload.i16.i.i to i64
  %i.cl = shl nuw nsw i64 %.sroa.03.0.i11.i.i, 3
  %i.cm = shl nuw nsw i64 %i.ck, %i.cl
  %i.cn = or i64 %i.cm, %.sroa.0.0.i12.i.i
  %i.co = or disjoint i64 %.sroa.03.0.i11.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.1.i13.i.i = phi i64 [ %i.co, %bb.l ], [ %.sroa.03.0.i11.i.i, %bb.k ] ; 3 uses
  %.sroa.0.1.i14.i.i = phi i64 [ %i.cn, %bb.l ], [ %.sroa.0.0.i12.i.i, %bb.k ] ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.03.1.i13.i.i, %i.ag
  br i1 %i.cp, label %bb.n, label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i.i

bb.n:                                             ; preds = %bb.m
  %i.cq = add nuw nsw i64 %.sroa.03.1.i13.i.i, %.sroa.0.1.lcssa.i.i ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cq, 16
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !163, !noalias !158, !noundef !5
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %.sroa.03.1.i13.i.i, 3
  %i.cw = shl nuw nsw i64 %i.cu, %i.cv
  %i.cx = or i64 %i.cw, %.sroa.0.1.i14.i.i
  br label %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i.i

_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.2.i15.i.i = phi i64 [ %i.cx, %bb.n ], [ %.sroa.0.1.i14.i.i, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.sroa.0.2.i15.i.i, ptr %i.cy, align 8, !alias.scope !158, !noalias !159
  br label %_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write.exit

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %.sroa.07.0.copyload.i.i.2.a = load i64, ptr %i.cz, align 1, !alias.scope !159, !noalias !158 ; 2 uses
  %i.da = xor i64 %.sroa.07.0.copyload.i.i.2.a, %i.ba ; 3 uses
  %i.db = add i64 %i.bc, %i.ay                    ; 3 uses
  %i.dc = add i64 %i.da, %i.bb                    ; 2 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 13)
  %i.de = xor i64 %i.db, %i.dd                    ; 3 uses
  %i.df = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 16)
  %i.dg = xor i64 %i.dc, %i.df                    ; 3 uses
  %i.dh = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 32)
  %i.di = add i64 %i.dc, %i.de                    ; 3 uses
  %i.dj = add i64 %i.dg, %i.dh                    ; 2 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 17)
  %i.dl = xor i64 %i.di, %i.dk                    ; 4 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.dn = xor i64 %i.dm, %i.dj                    ; 2 uses
  %i.do = tail call noundef i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 32) ; 2 uses
  %i.dp = xor i64 %i.dj, %.sroa.07.0.copyload.i.i.2.a ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.0.0.i.i, 16      ; 3 uses
  %i.dr = icmp samesign ult i64 %i.dq, %i.ah
  br i1 %i.dr, label %bb.p, label %._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  %.sroa.07.0.copyload.i.i.3 = load i64, ptr %i.ds, align 1, !alias.scope !159, !noalias !158 ; 2 uses
  %i.dt = xor i64 %.sroa.07.0.copyload.i.i.3, %i.dn ; 3 uses
  %i.du = add i64 %i.dp, %i.dl                    ; 3 uses
  %i.dv = add i64 %i.dt, %i.do                    ; 2 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 13)
  %i.dx = xor i64 %i.du, %i.dw                    ; 3 uses
  %i.dy = tail call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 16)
  %i.dz = xor i64 %i.dv, %i.dy                    ; 3 uses
  %i.ea = tail call noundef i64 @llvm.fshl.i64(i64 %i.du, i64 %i.du, i64 32)
  %i.eb = add i64 %i.dv, %i.dx                    ; 3 uses
  %i.ec = add i64 %i.dz, %i.ea                    ; 2 uses
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 17)
  %i.ee = xor i64 %i.eb, %i.ed
  %i.ef = tail call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 21)
  %i.eg = xor i64 %i.ef, %i.ec
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  %i.ei = xor i64 %i.ec, %.sroa.07.0.copyload.i.i.3
  %2 = add nuw nsw i64 %.sroa.0.0.i.i, 24
  br label %._crit_edge.i.i

_RNvXs2_NtNtCs9k3SxhrAWiO_3std4hash6randomNtB5_13DefaultHasherNtNtCsgxBkk5gSRhY_4core4hash6Hasher5write.exit: ; preds = %bb.h, %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i.i
  %storemerge.i.i = phi i64 [ %i.cc, %bb.h ], [ %i.ag, %_RNvNtNtCsgxBkk5gSRhY_4core4hash3sip9u8to64_le.exit18.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !alias.scope !158, !noalias !159
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !170, !noundef !5 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !170, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.i, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, !prof !7

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !171, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !171, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !171
  br label %_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol.exit

_RNvXs2_NtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhEE11spec_extendCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VechE7reserveCs4tP8yUXWbFU_18libsignal_protocol.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !171
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs1_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateE9wrap_copyB18_(i64 %.0.val, ptr nofree captures(none) %.8.val, i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %0                           ; 2 uses
  %i.d = add i64 %i.c, %.0.val                    ; 2 uses
  %.not = icmp ult i64 %i.d, %.0.val
  %. = select i1 %.not, i64 %i.d, i64 %i.c
  %i.e = icmp ult i64 %., %2                      ; 2 uses
  %i.f = sub i64 %.0.val, %0                      ; 11 uses
  %i.g = sub i64 %.0.val, %1                      ; 11 uses
  %i.h = icmp ult i64 %i.f, %2
  %i.i = icmp ult i64 %i.g, %2                    ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.j = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %0
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %1
  %i.l = mul nuw nsw i64 %2, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.j, i64 %i.l, i1 false)
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = getelementptr [112 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %1
  %i.o = mul nuw nsw i64 %i.g, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.o, i1 false)
  %i.p = sub nuw i64 %2, %i.g
  %i.q = getelementptr [112 x i8], ptr %i.m, i64 %i.g
  %i.r = mul nuw nsw i64 %i.p, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.q, i64 %i.r, i1 false)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.t = getelementptr [112 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.u = getelementptr [112 x i8], ptr %i.t, i64 %i.g
  %i.v = mul nuw nsw i64 %i.s, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr align 8 %i.u, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %1
  %i.x = mul nuw nsw i64 %i.g, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %0 ; 2 uses
  %i.z = getelementptr [112 x i8], ptr %.8.val, i64 %1 ; 4 uses
  %i.aa = mul nuw nsw i64 %i.f, 112               ; 2 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.ab = sub nuw i64 %2, %i.f
  %i.ac = getelementptr [112 x i8], ptr %i.z, i64 %i.f
  %i.ad = mul nuw nsw i64 %i.ab, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr nonnull align 8 %.8.val, i64 %i.ad, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ae = sub i64 %i.g, %i.f                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.af = getelementptr [112 x i8], ptr %i.z, i64 %i.f
  %i.ag = mul nuw nsw i64 %i.ae, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr nonnull align 8 %.8.val, i64 %i.ag, i1 false)
  %i.ah = sub nuw i64 %2, %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %i.ae
  %i.aj = mul nuw nsw i64 %i.ah, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.ak = sub nuw i64 %2, %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.al = getelementptr [112 x i8], ptr %.8.val, i64 %1 ; 2 uses
  %i.am = getelementptr [112 x i8], ptr %i.al, i64 %i.f
  %i.an = mul nuw nsw i64 %i.ak, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %.8.val, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %0
  %i.ap = mul nuw nsw i64 %i.f, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.aq = sub i64 %i.f, %i.g                      ; 3 uses
  %i.ar = sub nuw i64 %2, %i.f
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %i.aq
  %i.at = mul nuw nsw i64 %i.ar, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %.8.val, i64 %i.at, i1 false)
  %i.au = sub i64 %.0.val, %i.aq
  %i.av = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %i.au
  %i.aw = mul nuw nsw i64 %i.aq, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.8.val, ptr nonnull align 8 %i.av, i64 %i.aw, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %0
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.8.val, i64 %1
  %i.az = mul nuw nsw i64 %i.g, 112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.ax, i64 %i.az, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateE13push_back_mutB18_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i64 [ %.pre6, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %.not = icmp ult i64 %i.j, %i.e
  %i.k = select i1 %.not, i64 0, i64 %i.e
  %.sroa.03.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %i.m, i64 %.sroa.03.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  ret ptr %i.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateE4growB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
end_hunk_0
