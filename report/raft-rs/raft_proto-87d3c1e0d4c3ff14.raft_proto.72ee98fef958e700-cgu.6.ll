Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.6?download=true
inline.NumInlined: 108
inline.NumDeleted: 65
begin_hunk_0_@_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange21stringify_conf_change:bb.a
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.loopexit

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable47:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27: ; preds = %bb.j, %bb.i, %bb.h
  %.sink51 = phi i8 [ 114, %bb.i ], [ 118, %bb.h ], [ 108, %bb.j ]
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 %.sink51, ptr %i.t, align 1
  %i.u = add nuw i64 %i.q, 2
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.038, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.v = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %.loopexit.loopexit

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  br i1 %i.v, label %.loopexit43, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, !prof !5

.loopexit43:                                      ; preds = %bb.k, %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit43
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.p, %i.d
  br i1 %i.w, label %._crit_edge, label %.peel.next, !llvm.loop !85

bb.l:                                             ; preds = %.loopexit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %.loopexit
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !87, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !87, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !87, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !87
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93, !noalias !90, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !93, !noalias !90, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !93, !noalias !90
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !93, !noalias !90
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %.sroa.516.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.617.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 104) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add i64 %i.g, 17                         ; 2 uses
  %i.p = add i64 %i.o, %i.n                       ; 5 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !97

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.p, 0
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !98
  %i.s = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #17, !noalias !98 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !98
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !98
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.s, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.n
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.o, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.g, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %3, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !113, !noalias !114, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !115
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !113, !noalias !114, !noundef !4 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !116
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 4
  %i.ag = ptrtoint ptr %i.z to i64
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %.pn.pn.i.i.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B1y_B1v_15clone_from_impl0EECs9RMo4C3Dvu6_10raft_proto(i64 %.sroa.011.035.i.i, ptr nonnull align 8 dereferenceable(32) %i.e) #18
          to label %.body unwind label %bb.s, !noalias !113

bb.i:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.011.035.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bk, %bb.r ]
  %.sroa.012.034.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %bb.r ] ; 2 uses
  %.sroa.6.033.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.r ] ; 2 uses
  %.sroa.813.032.i.i = phi i16 [ %i.ae, %.lr.ph.i.i ], [ %i.aq, %bb.r ] ; 2 uses
  %.sroa.1014.031.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %i.at, %bb.r ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.032.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.sroa.6.033.i.i, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.012.034.i.i, %bb.i ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !119
  %i.ak = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -1664 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ak to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.033.i.i, %bb.i ], [ %i.am, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.034.i.i, %bb.i ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.032.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i, -1
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [104 x i8], ptr %.sroa.012.1.i.i, i64 %i.ar ; 6 uses
  %i.at = add i64 %.sroa.1014.031.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -104
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !122, !noalias !125, !noundef !4
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aw)
          to label %.noexc.i.i unwind label %bb.h, !noalias !115

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -72
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax)
          to label %bb.l unwind label %bb.k, !noalias !131

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.m ], [ %i.ay, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body.i.i unwind label %bb.q, !noalias !131

bb.k:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.o unwind label %bb.n, !noalias !131

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.ba, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.j unwind label %bb.q, !noalias !131

bb.n:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.r unwind label %bb.p, !noalias !131

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.m unwind label %bb.q, !noalias !131

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !131
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127
  %i.be = ptrtoint ptr %i.as to i64
  %i.bf = sub i64 %i.ag, %i.be
  %i.bg = sdiv exact i64 %i.bf, 104               ; 2 uses
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [104 x i8], ptr %.sroa.0.0, i64 %i.bh ; 5 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -104
  store i32 %i.av, ptr %i.bj, align 8, !noalias !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, i64 28, i1 false), !noalias !115
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, i64 24, i1 false), !noalias !115
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, i64 24, i1 false), !noalias !115
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bk = add nsw i64 %i.bg, 1
  %i.bl = icmp eq i64 %i.at, 0
  br i1 %i.bl, label %.loopexit, label %bb.i

bb.s:                                             ; preds = %.body.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !115
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false)
  br label %bb.u

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #18
          to label %bb.w unwind label %bb.v

.loopexit:                                        ; preds = %bb.r, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit
  store i64 %i.ab, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !114, !noalias !113
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !113, !noalias !114, !noundef !4
  store i64 %i.bo, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !114, !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t
  ret void

bb.v:                                             ; preds = %.body
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
