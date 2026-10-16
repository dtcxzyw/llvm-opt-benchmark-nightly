Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.0?download=true
inline.NumInlined: 712
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from:bb.a

bb.g:                                             ; preds = %.thread
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.687.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.675.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.w, ptr %0, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.x, ptr %.sroa.485.0..sroa_idx, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.y, ptr %.sroa.586.0..sroa_idx, align 8
  br label %bb.y

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %i.x, label %bb.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCslpwiOMB70Kp_8protobuf2rt26read_unknown_or_skip_group(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.x, i8 noundef %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.z = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not124 = icmp eq i32 %i.z, -1
  br i1 %.not124, label %bb.x, label %bb.w

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCslpwiOMB70Kp_8protobuf2rt26read_singular_message_intoNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i8 noundef %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.aa = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not123 = icmp eq i32 %i.aa, -1
  br i1 %.not123, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  %.not121 = icmp eq i8 %i.y, 0
  br i1 %.not121, label %bb.o, label %bb.p

bb.l:                                             ; preds = %bb.h
  %.not119 = icmp eq i8 %i.y, 0
  br i1 %.not119, label %bb.s, label %bb.t

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.ab = load i32, ptr %i.e, align 8, !range !18, !noundef !7 ; 2 uses
  %.not122 = icmp eq i32 %i.ab, -1
  br i1 %.not122, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.ac = zext nneg i8 %i.y to i64
  %.sroa.489.0.insert.shift = shl nuw nsw i64 %i.ac, 8
  %.sroa.088.0.insert.insert = or disjoint i64 %.sroa.489.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.088.0.insert.insert, ptr %.sroa.428.0..sroa_idx, align 4
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.496.0.copyload = load i32, ptr %.sroa.496.0..sroa_idx, align 4
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load <2 x i64>, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.ab, ptr %0, align 8
  store i32 %.sroa.496.0.copyload, ptr %.sroa.4100.0..sroa_idx, align 4
  store <2 x i64> %i.ad, ptr %.sroa.5101.0..sroa_idx, align 8
  br label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %i.m, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ae, ptr %1, align 8
  br label %.backedge

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.af = load i32, ptr %i.d, align 8, !range !18, !noundef !7 ; 2 uses
  %.not120 = icmp eq i32 %i.af, -1
  br i1 %.not120, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ag = zext nneg i8 %i.y to i64
  %.sroa.4104.0.insert.shift = shl nuw nsw i64 %i.ag, 8
  %.sroa.0103.0.insert.insert = or disjoint i64 %.sroa.4104.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0103.0.insert.insert, ptr %.sroa.446.0..sroa_idx, align 4
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4111.0.copyload = load i32, ptr %.sroa.4111.0..sroa_idx, align 4
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load <2 x i64>, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.af, ptr %0, align 8
  store i32 %.sroa.4111.0.copyload, ptr %.sroa.4115.0..sroa_idx, align 4
  store <2 x i64> %i.ah, ptr %.sroa.5116.0..sroa_idx, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.ai = load i64, ptr %i.k, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ai, ptr %i.l, align 8
  br label %.backedge

bb.w:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.x:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %bb.v, %bb.r, %bb.n
  br label %bb.b

bb.y:                                             ; preds = %bb.m, %bb.p, %bb.q, %bb.t, %bb.u, %bb.w, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !14, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !align !6, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.f = load i64, ptr %0, align 8, !noundef !7   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i32 @_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %i.e) ; 2 uses
  %i.i = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.h)
  %i.j = add i32 %i.h, 1
  %i.k = add i32 %i.j, %i.i
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 2, i64 noundef %i.f, i8 noundef 0)
  %i.m = add i32 %i.l, %.sroa.0.0
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.c ], [ %i.m, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 3, i64 noundef %i.o, i8 noundef 0)
  %i.r = add i32 %i.q, %.sroa.0.1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.g ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
  %i.u = add i32 %i.t, %.sroa.0.2                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.v, i32 noundef %i.u)
  ret i32 %i.u
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !14, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.peel.begin

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !align !6, !noundef !7
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.peel.begin, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.peel.begin:                                      ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !1014
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1Q_B1O_3newE0EB1U_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1014
  store ptr %i.c, ptr %i.b, align 8, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1014
  store ptr %i.b, ptr %i.a, align 8, !noalias !1014
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1014
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1Q_B1O_3newE0EB1U_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1Q_B1O_3newE0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8) acquire, align 8, !noalias !1017
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_16SnapshotMetadataNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1017
  store ptr %i.c, ptr %i.b, align 8, !noalias !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1017
  store ptr %i.b, ptr %i.a, align 8, !noalias !1017
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1017
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_16SnapshotMetadataNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_16SnapshotMetadataNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.a, %bb.k
  %i.l = load i64, ptr %1, align 8, !noundef !7   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i8 noundef 2)
  %i.n = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not2 = icmp eq i32 %i.n, -1
  br i1 %.not2, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.p = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.o)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.p)
  %i.q = load i32, ptr %i.e, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.q, -1
  br i1 %.not3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.r = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %.not4 = icmp eq i32 %i.r, -1
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i64 noundef %i.l)
  %i.s = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not5 = icmp eq i32 %i.s, -1
  br i1 %.not5, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.c, %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !7 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.q, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 3, i64 noundef %i.u)
  %i.w = load i32, ptr %i.b, align 8, !range !18, !noundef !7
  %.not6 = icmp eq i32 %i.w, -1
  br i1 %.not6, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
  %i.y = load i32, ptr %i.a, align 8, !range !18, !noundef !7
  %.not7 = icmp eq i32 %i.y, -1
  br i1 %.not7, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.t:                                             ; preds = %bb.q
end_hunk_0
