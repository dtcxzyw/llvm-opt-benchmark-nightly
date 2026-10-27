Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.0?download=true
inline.NumInlined: 712
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10descriptor:bb.a
_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !1083, !noundef !7
  %i.p = load i64, ptr %i.h, align 8, !alias.scope !1083, !noundef !7
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  call void @_RNvMs_NtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB4_11BufReadIter11do_fill_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2), !noalias !1086
  %i.r = load i32, ptr %i.a, align 8, !range !18, !noalias !1085, !noundef !7 ; 2 uses
  %.not.i82 = icmp eq i32 %i.r, -1
  br i1 %.not.i82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4101.0.copyload = load i32, ptr %.sroa.4101.0..sroa_idx, align 4, !noalias !1085
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5102.0.copyload = load ptr, ptr %.sroa.5102.0..sroa_idx, align 8, !noalias !1085
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6103.0.copyload = load i64, ptr %.sroa.6103.0..sroa_idx, align 8, !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1085
  store i32 %i.r, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4101.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  %.sroa.548.sroa.4.0..sroa.548.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5102.0.copyload, ptr %.sroa.548.sroa.4.0..sroa.548.0..sroa_idx.sroa_idx, align 8
  %.sroa.548.sroa.5.0..sroa.548.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6103.0.copyload, ptr %.sroa.548.sroa.5.0..sroa.548.0..sroa_idx.sroa_idx, align 8
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1085
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !1084, !noalias !1087, !noundef !7
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !1084, !noalias !1087, !noundef !7
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream8read_tag(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(112) %2) #25
  %i.v = load i32, ptr %i.b, align 8, !range !18, !noundef !7 ; 2 uses
  %.not77 = icmp eq i32 %i.v, -1
  %i.w = load i32, ptr %i.i, align 4              ; 3 uses
  %i.x = load i8, ptr %i.j, align 8               ; 6 uses
  br i1 %.not77, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %0, align 8
  br label %bb.w

bb.g:                                             ; preds = %.thread
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.652.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.v, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %.sroa.462.0..sroa_idx, align 4
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.x, ptr %.sroa.563.0..sroa_idx, align 8
  br label %bb.w

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %i.w, label %bb.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCslpwiOMB70Kp_8protobuf2rt26read_unknown_or_skip_group(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.w, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.y = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not81 = icmp eq i32 %i.y, -1
  br i1 %.not81, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %i.x, 0
  br i1 %i.z, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCslpwiOMB70Kp_8protobuf2rt26read_repeated_message_intoNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.aa = load i32, ptr %i.e, align 8, !range !18, !noundef !7
  %.not79 = icmp eq i32 %i.aa, -1
  br i1 %.not79, label %bb.r, label %bb.q

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCslpwiOMB70Kp_8protobuf2rt42read_singular_proto3_carllerche_bytes_into(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.ab = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %.not78 = icmp eq i32 %i.ab, -1
  br i1 %.not78, label %bb.t, label %bb.s

bb.m:                                             ; preds = %bb.j
  %i.ac = zext nneg i8 %i.x to i64
  %.sroa.475.0.insert.shift = shl nuw nsw i64 %i.ac, 8
  %.sroa.074.0.insert.insert = or disjoint i64 %.sroa.475.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.074.0.insert.insert, ptr %.sroa.438.0..sroa_idx, align 4
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream9read_enumNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb20ConfChangeTransitionEB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.ad = load i32, ptr %i.f, align 8, !range !18, !noundef !7 ; 2 uses
  %.not80 = icmp eq i32 %i.ad, -1
  %i.ae = load i8, ptr %i.l, align 4              ; 2 uses
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.570.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %i.ad, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ae, ptr %.sroa.472.0..sroa_idx, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 %i.ae, ptr %i.m, align 8
  br label %.backedge

bb.q:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.u:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.v, %bb.t, %bb.r, %bb.p
  br label %bb.b

bb.w:                                             ; preds = %bb.q, %bb.s, %bb.u, %bb.o, %bb.m, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb20ConfChangeTransitionEBK_(i32 noundef 1, i8 noundef %i.b)
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit
  %.sroa.0.110 = phi i32 [ %i.w, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ], [ %.sroa.0.0, %bb.b ]
  %.sroa.06.09 = phi ptr [ %i.h, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ], [ %i.d, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !15, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = load i64, ptr %.sroa.06.09, align 8, !noundef !7 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb14ConfChangeTypeEBK_(i32 noundef 1, i8 noundef %i.j)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 2, i64 noundef %i.k, i8 noundef 0)
  %i.o = add i32 %i.n, %.sroa.0.0.i
  br label %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit

_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit: ; preds = %bb.d, %bb.f
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.d ], [ %i.o, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8
  %i.q = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
  %i.r = add i32 %i.q, %.sroa.0.1.i               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 16
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.s, i32 noundef %i.r)
  %i.t = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.r)
  %i.u = add i32 %.sroa.0.110, 1
  %i.v = add i32 %i.u, %i.r
  %i.w = add i32 %i.v, %i.t                       ; 2 uses
  %i.x = icmp eq ptr %i.h, %i.e
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit, %bb.b
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0, %bb.b ], [ %i.w, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !7
  %i.ad = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt10bytes_size(i32 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.z)
  %i.ae = add i32 %i.ad, %.sroa.0.1.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.0.2 = phi i32 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %i.ae, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  %i.ah = add i32 %i.ag, %.sroa.0.2               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.ai, i32 noundef %i.ah)
  ret i32 %i.ah
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !1090
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1090
  store ptr %i.c, ptr %i.b, align 8, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1090
  store ptr %i.b, ptr %i.a, align 8, !noalias !1090
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1090
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8) acquire, align 8, !noalias !1093
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1093
  store ptr %i.c, ptr %i.b, align 8, !noalias !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1093
  store ptr %i.b, ptr %i.a, align 8, !noalias !1093
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1093
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !15, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.k = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = zext nneg i8 %i.j to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.o)
  %i.p = load i32, ptr %i.h, align 8, !range !18, !noundef !7
  %.not2 = icmp eq i32 %i.p, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b, %bb.t
  %.sroa.0.028 = phi ptr [ %i.q, %bb.t ], [ %i.l, %bb.b ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i8 noundef 2)
  %i.r = load i32, ptr %i.g, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.r, -1
  br i1 %.not3, label %bb.g, label %bb.f

._crit_edge:                                      ; preds = %bb.t, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.w, label %bb.v

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 16
  %i.w = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.v)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.w)
  %i.x = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not4 = icmp eq i32 %i.x, -1
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !15, !noalias !1097, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.aa = load i64, ptr %.sroa.0.028, align 8, !noalias !1097, !noundef !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1097
  %i.ac = zext nneg i8 %i.z to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.ac), !noalias !1098
  %i.ad = load i32, ptr %i.c, align 8, !range !18, !noalias !1097, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.ad, -1
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.9.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1097
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1097
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1097
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i64 noundef %i.aa), !noalias !1098
  %i.ae = load i32, ptr %i.b, align 8, !range !18, !noalias !1097, !noundef !7 ; 2 uses
  %.not2.i = icmp eq i32 %i.ae, -1
  br i1 %.not2.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1097
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 8
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af), !noalias !1098
  %i.ag = load i32, ptr %i.a, align 8, !range !18, !noalias !1097, !noundef !7 ; 2 uses
  %.not3.i = icmp eq i32 %i.ag, -1
  br i1 %.not3.i, label %bb.t, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1097
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1097
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx13, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1097
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.l
  %.sroa.0.022.ph = phi i32 [ %i.ad, %bb.l ], [ %i.ae, %bb.p ], [ %i.ag, %bb.r ]
  store i32 %.sroa.0.022.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, i64 20, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1097
  %i.ah = icmp eq ptr %i.q, %i.m
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.f, %bb.h, %bb.s, %bb.aa, %bb.z, %bb.x, %bb.d
  ret void

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !7
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.t)
  %i.ak = load i32, ptr %i.e, align 8, !range !18, !noundef !7
  %.not6 = icmp eq i32 %i.ak, -1
  br i1 %.not6, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.y, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
  %i.am = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %.not7 = icmp eq i32 %i.am, -1
  br i1 %.not7, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 -1, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message6as_any(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @129, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @129, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsN_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear(ptr noalias nofree noundef align 8 dereferenceable(88) initializes((24, 32), (80, 81)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1105, !noundef !7
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes8truncate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from:bb.a
  %.not472 = icmp eq i32 %i.db, -1
  br i1 %.not472, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.v
  %i.dc = zext nneg i8 %i.bj to i64
  %.sroa.4421.0.insert.shift = shl nuw nsw i64 %i.dc, 8
  %.sroa.0420.0.insert.insert = or disjoint i64 %.sroa.4421.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0420.0.insert.insert, ptr %.sroa.4198.0..sroa_idx, align 4
  br label %bb.ch

bb.bt:                                            ; preds = %bb.br
  %.sroa.4428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4428.0.copyload = load i32, ptr %.sroa.4428.0..sroa_idx, align 4
  %.sroa.4432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load <2 x i64>, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 %i.db, ptr %0, align 8
  store i32 %.sroa.4428.0.copyload, ptr %.sroa.4432.0..sroa_idx, align 4
  store <2 x i64> %i.dd, ptr %.sroa.5433.0..sroa_idx, align 8
  br label %bb.ch

bb.bu:                                            ; preds = %bb.br
  %i.de = load i64, ptr %i.ac, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.de, ptr %i.ad, align 8
  br label %.backedge

bb.bv:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ch

bb.bw:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.bx:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.df = load i32, ptr %i.e, align 8, !range !18, !noundef !7 ; 2 uses
  %.not469 = icmp eq i32 %i.df, -1
  br i1 %.not469, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.x
  %i.dg = zext nneg i8 %i.bj to i64
  %.sroa.4436.0.insert.shift = shl nuw nsw i64 %i.dg, 8
  %.sroa.0435.0.insert.insert = or disjoint i64 %.sroa.4436.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0435.0.insert.insert, ptr %.sroa.4216.0..sroa_idx, align 4
  br label %bb.ch

bb.bz:                                            ; preds = %bb.bx
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4443.0.copyload = load i32, ptr %.sroa.4443.0..sroa_idx, align 4
  %.sroa.4447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load <2 x i64>, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.df, ptr %0, align 8
  store i32 %.sroa.4443.0.copyload, ptr %.sroa.4447.0..sroa_idx, align 4
  store <2 x i64> %i.dh, ptr %.sroa.5448.0..sroa_idx, align 8
  br label %bb.ch

bb.ca:                                            ; preds = %bb.bx
  %i.di = load i64, ptr %i.z, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.di, ptr %i.aa, align 8
  br label %.backedge

bb.cb:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.dj = load i32, ptr %i.d, align 8, !range !18, !noundef !7 ; 2 uses
  %.not467 = icmp eq i32 %i.dj, -1
  br i1 %.not467, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.y
  %i.dk = zext nneg i8 %i.bj to i64
  %.sroa.4451.0.insert.shift = shl nuw nsw i64 %i.dk, 8
  %.sroa.0450.0.insert.insert = or disjoint i64 %.sroa.4451.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0450.0.insert.insert, ptr %.sroa.4234.0..sroa_idx, align 4
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %.sroa.4458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4458.0.copyload = load i32, ptr %.sroa.4458.0..sroa_idx, align 4
  %.sroa.4462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load <2 x i64>, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.dj, ptr %0, align 8
  store i32 %.sroa.4458.0.copyload, ptr %.sroa.4462.0..sroa_idx, align 4
  store <2 x i64> %i.dl, ptr %.sroa.5463.0..sroa_idx, align 8
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cb
  %i.dm = load i64, ptr %i.x, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.dm, ptr %i.y, align 8
  br label %.backedge

bb.cf:                                            ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.cg, %bb.ce, %bb.ca, %bb.bw, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.bg, %bb.bc, %bb.ay, %bb.aw, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ac
  br label %bb.b

bb.ch:                                            ; preds = %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.am, %bb.an, %bb.aq, %bb.ar, %bb.au, %bb.av, %bb.ax, %bb.ba, %bb.bb, %bb.be, %bb.bf, %bb.bh, %bb.bk, %bb.bl, %bb.bo, %bb.bp, %bb.bs, %bb.bt, %bb.bv, %bb.by, %bb.bz, %bb.cc, %bb.cd, %bb.cf, %bb.ab, %bb.z, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb11MessageTypeEBK_(i32 noundef 1, i8 noundef %i.b)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 2, i64 noundef %i.d, i8 noundef 0)
  %i.h = add i32 %i.g, %.sroa.0.0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 3, i64 noundef %i.j, i8 noundef 0)
  %i.m = add i32 %i.l, %.sroa.0.1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 4, i64 noundef %i.o, i8 noundef 0)
  %i.r = add i32 %i.q, %.sroa.0.2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 5, i64 noundef %i.t, i8 noundef 0)
  %i.w = add i32 %i.v, %.sroa.0.3
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 6, i64 noundef %i.y, i8 noundef 0)
  %i.ab = add i32 %i.aa, %.sroa.0.4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.5 = phi i32 [ %.sroa.0.4, %bb.k ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ac = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0.636 = phi i32 [ %i.al, %.lr.ph ], [ %.sroa.0.5, %bb.m ]
  %.sroa.019.035 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ad, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 104 ; 2 uses
  %i.ah = tail call noundef i32 @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %.sroa.019.035) ; 2 uses
  %i.ai = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.ah)
  %i.aj = add i32 %.sroa.0.636, 1
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.ae
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %.sroa.0.6.lcssa = phi i32 [ %.sroa.0.5, %bb.m ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load i64, ptr %i.an, align 8, !noundef !7 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aq = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 8, i64 noundef %i.ao, i8 noundef 0)
  %i.ar = add i32 %i.aq, %.sroa.0.6.lcssa
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.sroa.0.7 = phi i32 [ %.sroa.0.6.lcssa, %._crit_edge ], [ %i.ar, %bb.n ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load i64, ptr %i.as, align 8, !noundef !7 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 15, i64 noundef %i.at, i8 noundef 0)
  %i.aw = add i32 %i.av, %.sroa.0.7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.0.8 = phi i32 [ %.sroa.0.7, %bb.o ], [ %i.aw, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !range !14, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !align !6, !noundef !7 ; 2 uses
  %.not34 = icmp eq ptr %i.bb, null
  br i1 %.not34, label %bb.u, label %bb.t, !prof !12

bb.s:                                             ; preds = %bb.q, %bb.t
  %.sroa.0.9 = phi i32 [ %i.bj, %bb.t ], [ %.sroa.0.8, %bb.q ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bf = tail call noundef i32 @_RNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %i.bb) ; 2 uses
  %i.bg = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.bf)
  %i.bh = add i32 %.sroa.0.8, 1
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = add i32 %i.bi, %i.bg
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bk = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 13, i64 noundef %i.bd, i8 noundef 0)
  %i.bl = add i32 %i.bk, %.sroa.0.9
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.sroa.0.10 = phi i32 [ %.sroa.0.9, %bb.s ], [ %i.bl, %bb.v ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bn = load i8, ptr %i.bm, align 8, !range !14, !noundef !7
  %i.bo = shl nuw nsw i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i32
  %spec.select = add i32 %.sroa.0.10, %i.bp       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = load i64, ptr %i.bq, align 8, !noundef !7 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 11, i64 noundef %i.br, i8 noundef 0)
  %i.bu = add i32 %i.bt, %spec.select
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.0.12 = phi i32 [ %spec.select, %bb.w ], [ %i.bu, %bb.x ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !7 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !7
  %i.ca = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt10bytes_size(i32 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.bw)
  %i.cb = add i32 %i.ca, %.sroa.0.12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0.13 = phi i32 [ %.sroa.0.12, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !7 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 14, i64 noundef %i.cd, i8 noundef 0)
  %i.cg = add i32 %i.cf, %.sroa.0.13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sroa.0.14 = phi i32 [ %.sroa.0.13, %bb.aa ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !7 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizexECs9RMo4C3Dvu6_10raft_proto(i32 noundef 16, i64 noundef %i.ci, i8 noundef 0)
  %i.cl = add i32 %i.ck, %.sroa.0.14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.0.15 = phi i32 [ %.sroa.0.14, %bb.ac ], [ %i.cl, %bb.ad ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cn = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm)
  %i.co = add i32 %i.cn, %.sroa.0.15              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.cp, i32 noundef %i.co)
  ret i32 %i.co
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.lr.ph.split.us, !prof !12

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i.us = icmp eq ptr %i.k, null
  br i1 %.not.i.us, label %.split.us, label %.lr.ph.split.us.i.us, !prof !12

.lr.ph.split.us.i.us:                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.split.us.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !align !6, !noundef !7
  %.not.i.us.i.us = icmp eq ptr %i.p, null
  br i1 %.not.i.us.i.us, label %.split.us.i, label %._crit_edge, !prof !12

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us:                                        ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i:                                      ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.split.us, %.lr.ph.split.us.i.us, %bb.d
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !1182
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1182
  store ptr %i.c, ptr %i.b, align 8, !noalias !1182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1182
  store ptr %i.b, ptr %i.a, align 8, !noalias !1182
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1182
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8) acquire, align 8, !noalias !1185
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1185
  store ptr %i.c, ptr %i.b, align 8, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1185
  store ptr %i.b, ptr %i.a, align 8, !noalias !1185
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1185
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.w = load i8, ptr %i.v, align 1, !range !19, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = zext nneg i8 %i.w to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.u, align 8, !range !18, !noundef !7
  %.not4 = icmp eq i32 %i.ab, -1
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i64 noundef %i.y)
  %i.ac = load i32, ptr %i.t, align 8, !range !18, !noundef !7
  %.not5 = icmp eq i32 %i.ac, -1
  br i1 %.not5, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 3, i64 noundef %i.ae)
  %i.ag = load i32, ptr %i.s, align 8, !range !18, !noundef !7
  %.not6 = icmp eq i32 %i.ag, -1
  br i1 %.not6, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !7 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.af

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 4, i64 noundef %i.ai)
  %i.ak = load i32, ptr %i.r, align 8, !range !18, !noundef !7
  %.not7 = icmp eq i32 %i.ak, -1
  br i1 %.not7, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load i64, ptr %i.al, align 8, !noundef !7 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.af

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 5, i64 noundef %i.am)
  %i.ao = load i32, ptr %i.q, align 8, !range !18, !noundef !7
  %.not8 = icmp eq i32 %i.ao, -1
  br i1 %.not8, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !7 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.s

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 6, i64 noundef %i.aq)
  %i.as = load i32, ptr %i.p, align 8, !range !18, !noundef !7
  %.not9 = icmp eq i32 %i.as, -1
  br i1 %.not9, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.y
  %i.at = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0      ; 3 uses
  %i.av = extractvalue { ptr, ptr } %i.at, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.af

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

.lr.ph:                                           ; preds = %bb.w, %bb.ae
  %.sroa.0.026 = phi ptr [ %i.ax, %bb.ae ], [ %i.au, %bb.w ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 7, i8 noundef 2)
  %i.ay = load i32, ptr %i.o, align 8, !range !18, !noundef !7
  %.not10 = icmp eq i32 %i.ay, -1
  br i1 %.not10, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !noundef !7 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.ah, label %bb.ag

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 88
  %i.bd = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.bc)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.bd)
  %i.be = load i32, ptr %i.n, align 8, !range !18, !noundef !7
  %.not11 = icmp eq i32 %i.be, -1
  br i1 %.not11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %.sroa.0.026, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.bf = load i32, ptr %i.m, align 8, !range !18, !noundef !7
  %.not12 = icmp eq i32 %i.bf, -1
  br i1 %.not12, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bg = icmp eq ptr %i.ax, %i.av
  br i1 %i.bg, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %bb.as, %bb.au, %bb.aw, %bb.z, %bb.ab, %bb.ad, %bb.bx, %bb.bw, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.am, %bb.ai, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  ret void

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 8, i64 noundef %i.ba)
  %i.bh = load i32, ptr %i.l, align 8, !range !18, !noundef !7
  %.not13 = icmp eq i32 %i.bh, -1
  br i1 %.not13, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge, %bb.aj
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !7 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 15, i64 noundef %i.bj)
  %i.bl = load i32, ptr %i.k, align 8, !range !18, !noundef !7
  %.not14 = icmp eq i32 %i.bl, -1
  br i1 %.not14, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.an
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load i8, ptr %i.bm, align 8, !range !14, !noundef !7
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.af

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.ao:                                            ; preds = %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !align !6, !noundef !7 ; 3 uses
  %.not15 = icmp eq ptr %i.bq, null
  br i1 %.not15, label %bb.ar, label %bb.aq, !prof !12

bb.ap:                                            ; preds = %bb.al, %bb.ax
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i64, ptr %i.br, align 8, !noundef !7 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.az, label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 9, i8 noundef 2)
  %i.bu = load i32, ptr %i.j, align 8, !range !18, !noundef !7
  %.not16 = icmp eq i32 %i.bu, -1
  br i1 %.not16, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.af

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bw = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.bv)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.bw)
  %i.bx = load i32, ptr %i.i, align 8, !range !18, !noundef !7
  %.not17 = icmp eq i32 %i.bx, -1
  br i1 %.not17, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.by = load i32, ptr %i.h, align 8, !range !18, !noundef !7
  %.not18 = icmp eq i32 %i.by, -1
  br i1 %.not18, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.af

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.ay:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 13, i64 noundef %i.bs)
  %i.bz = load i32, ptr %i.g, align 8, !range !18, !noundef !7
  %.not19 = icmp eq i32 %i.bz, -1
  br i1 %.not19, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.ap, %bb.bb
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cb = load i8, ptr %i.ca, align 8, !range !14, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.bc, label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_bool(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 10, i1 noundef zeroext true)
  %i.cd = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not20 = icmp eq i32 %i.cd, -1
  br i1 %.not20, label %bb.bf, label %bb.be
end_hunk_1
begin_hunk_2_@_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_:bb.a
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9check_eof(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1329, !noundef !7
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9 unwind label %bb.o

.body:                                            ; preds = %bb.h, %bb.m, %bb.o, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.z, %bb.h ], [ %i.af, %bb.o ], [ %i.ad, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.s:                                             ; preds = %.body, %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvXNtCslpwiOMB70Kp_8protobuf19coded_output_streamQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteEL_NtB3_21WithCodedOutputStream24with_coded_output_streamuNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtB5_7message7Message15write_to_writer0EB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i64 %3, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i8 3, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 100, ptr %i.c, align 4
  invoke void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(112) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB2_11BufReadIterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.f = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1342, !noundef !7 ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 3
  br i1 %i.g, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1344, !noundef !7 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1344, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1344
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.i = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1346, !noundef !7 ; 2 uses
  %i.j = icmp samesign ult i8 %i.i, 3
  br i1 %i.j, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %.not.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1348, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1348, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #22, !noalias !1349
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 0 uses
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.c)
  %i.d = load i32, ptr %i.b, align 8, !range !18, !noundef !7
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noundef !7
  %.not1 = icmp eq i32 %i.e, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [20 x i8], align 4            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = invoke noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1361
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.g)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc
  %i.h = load i32, ptr %i.b, align 8, !range !18, !noalias !1361, !noundef !7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1361
  br label %bb.f

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1361
  invoke void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !range !18, !noalias !1361, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.i, -1
  br i1 %.not1.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1361
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc, %bb.a, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #21
          to label %common.resume unwind label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.ph = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.d ]
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream5flush(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.k, -1
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 8
  %i.l = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1362, !noundef !7
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.n, %bb.l ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split: ; preds = %bb.k, %bb.o
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split, %bb.j, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.i, %bb.f
  %i.p = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1363, !noundef !7
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message31write_length_delimited_to_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvNtCslpwiOMB70Kp_8protobuf19coded_output_stream33with_coded_output_stream_to_bytesNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtB4_7message7Message31write_length_delimited_to_bytes0EB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message32write_length_delimited_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
end_hunk_2
begin_hunk_3_@_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_:bb.a
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.s

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9check_eof(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1592, !noundef !7
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9 unwind label %bb.s

.body:                                            ; preds = %bb.l, %bb.q, %bb.s, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ao, %bb.l ], [ %i.au, %bb.s ], [ %i.as, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9: ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.t

bb.w:                                             ; preds = %.body, %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvXNtCslpwiOMB70Kp_8protobuf19coded_output_streamQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteEL_NtB3_21WithCodedOutputStream24with_coded_output_streamuNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB5_7message7Message15write_to_writer0EB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i64 %3, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i8 3, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 100, ptr %i.c, align 4
  invoke void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(112) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB2_11BufReadIterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.f = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1605, !noundef !7 ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 3
  br i1 %i.g, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1607, !noundef !7 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1607, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1607
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.i = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1609, !noundef !7 ; 2 uses
  %i.j = icmp samesign ult i8 %i.i, 3
  br i1 %i.j, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %.not.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1611, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1611, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #22, !noalias !1612
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %.lr.ph.split.us.i, !prof !12

.lr.ph.split.us.i:                                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i.us.i = icmp eq ptr %i.k, null
  br i1 %.not.i.us.i, label %.split.us.i, label %.lr.ph.split.us.i.us.i, !prof !12

.lr.ph.split.us.i.us.i:                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.d:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !align !6, !noundef !7
  %.not.i.us.i.us.i = icmp eq ptr %i.p, null
  br i1 %.not.i.us.i.us.i, label %.split.us.i.i, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit, !prof !12

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i:                                      ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i.i:                                    ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit: ; preds = %bb.a, %.lr.ph.split.us.i, %.lr.ph.split.us.i.us.i, %bb.d
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.c)
  %i.d = load i32, ptr %i.b, align 8, !range !18, !noundef !7
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noundef !7
  %.not1 = icmp eq i32 %i.e, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [20 x i8], align 4            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = invoke noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1624
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.g)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc
  %i.h = load i32, ptr %i.b, align 8, !range !18, !noalias !1624, !noundef !7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1624
  br label %bb.f

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1624
  invoke void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !range !18, !noalias !1624, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.i, -1
  br i1 %.not1.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1624
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc, %bb.a, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #21
          to label %common.resume unwind label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.ph = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.d ]
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream5flush(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.k, -1
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 8
  %i.l = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1625, !noundef !7
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.n, %bb.l ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op
end_hunk_3
