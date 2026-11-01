Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.0?download=true
inline.NumInlined: 712
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs9RMo4C3Dvu6_10raft_proto6protosNtNtB2_7eraftpb8Snapshot8is_empty:bb.a
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !775
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !775
  store ptr %i.c, ptr %i.b, align 8, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !775
  store ptr %i.b, ptr %i.a, align 8, !noalias !775
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !775
  br label %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i

_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit: ; preds = %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.i, %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i ], [ %i.k, %bb.d ]
  %i.l = load i64, ptr %.sroa.0.0.i, align 8, !noundef !7
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream8read_tag(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !780, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !780, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !780, !noundef !7 ; 2 uses
  %i.g = sub i64 %i.f, %i.d                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 10 uses
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !noalias !781, !noundef !7 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1
  br i1 %i.k, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.l = icmp ugt i64 %i.g, 9
  br i1 %i.l, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !781, !noundef !7 ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !779
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.p = and i8 %i.n, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 7
  %i.s = and i8 %i.i, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.w = load i8, ptr %i.v, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 14
  %i.aa = or disjoint i64 %i.z, %i.u              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 21
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 28
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 35
  %i.av = or i64 %i.au, %i.ao                     ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.az = and i8 %i.ay, 127
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 42
  %i.bc = or i64 %i.bb, %i.av                     ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.bg = and i8 %i.bf, 127
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 49
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.bn = and i8 %i.bm, 127
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 56
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !781, !noundef !7 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl i64 %i.bu, 63
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36

bb.f:                                             ; preds = %bb.e
  %i.by = and i8 %i.i, 127
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = zext nneg i8 %i.n to i64
  %i.cb = shl nuw nsw i64 %i.ca, 7
  %i.cc = or disjoint i64 %i.cb, %i.bz
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cd, %bb.g ], [ %i.cc, %bb.f ], [ %i.bq, %.preheader.8 ], [ %i.bw, %.preheader.9 ], [ %i.aa, %.preheader.2 ], [ %i.ah, %.preheader.3 ], [ %i.ao, %.preheader.4 ], [ %i.av, %.preheader.5 ], [ %i.bc, %.preheader.6 ], [ %i.bj, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.g
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !12

bb.g:                                             ; preds = %bb.b
  %i.cd = zext nneg i8 %i.i to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #24, !noalias !781
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.ce = add i64 %.sroa.02.1.i, %i.d
  store i64 %i.ce, ptr %i.c, align 8, !alias.scope !780
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge41, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge41: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %2 = load <2 x i32>, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36
  %3 = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36 ], [ %2, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <2 x i32> %3, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge41, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.cf = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge41 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ] ; 2 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = and i32 %i.cg, 7                        ; 2 uses
  %i.ci = icmp samesign ult i32 %i.ch, 6
  br i1 %i.ci, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %bb.j
  %i.cj = lshr i32 %i.cg, 3                       ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %bb.k

bb.k:                                             ; preds = %switch.lookup
  %switch.idx.cast = trunc nuw nsw i32 %i.ch to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cj, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %switch.idx.cast, ptr %i.cm, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %switch.lookup
  %.sroa.421.0.insert.ext = shl i64 %i.cf, 32
  %.sroa.019.0.insert.insert = or disjoint i64 %.sroa.421.0.insert.ext, 2
  store i32 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.019.0.insert.insert, ptr %.sroa.417.0..sroa_idx, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs0_NtCs9RMo4C3Dvu6_10raft_proto10confchangeNtNtNtB7_6protos7eraftpb12ConfChangeV211leave_joint(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !7
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %.not = icmp ugt i64 %i.e, %i.g
  br i1 %.not, label %bb.d, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.h, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, 0
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs5_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadata14get_conf_state(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !784
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !784
  store ptr %i.c, ptr %i.b, align 8, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  store ptr %i.b, ptr %i.a, align 8, !noalias !784
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !784
  br label %_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit

_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit: ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr @_RNvNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d, %_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit ], [ %i.k, %bb.d ]
  ret ptr %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs5_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadata14mut_conf_state(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  store i8 1, ptr %i.b, align 8, !alias.scope !789
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !789, !align !6, !noundef !7 ; 7 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !789
  %i.f = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 120, i64 noundef 8) #22, !noalias !789 ; 12 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit.thread, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #23, !noalias !789
  unreachable

_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit.thread: ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !789
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !789
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !789
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.11.0..sroa_idx.i.i, i8 0, i64 25, i1 false), !noalias !789
  store i64 0, ptr %i.f, align 8, !noalias !789
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !789
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !789
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !789
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !789
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !789
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !790, !noalias !789
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %i.i, align 8, !alias.scope !790, !noalias !789
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 0, ptr %i.j, align 8, !alias.scope !790, !noalias !789
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %i.k, align 8, !alias.scope !790, !noalias !789
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i8 0, ptr %i.l, align 8, !alias.scope !790, !noalias !789
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @_RNvXs5_NtCslpwiOMB70Kp_8protobuf7unknownNtB5_13UnknownFieldsNtNtB7_5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !789
  br label %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit

_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit: ; preds = %bb.a, %bb.e
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !17

bb.f:                                             ; preds = %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit.thread, %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit
  %i.n = phi ptr [ %i.f, %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit.thread ], [ %.pr, %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit ]
  ret ptr %i.n

bb.g:                                             ; preds = %_RNvMs2_NtCslpwiOMB70Kp_8protobuf8singularINtB5_16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE11set_defaultB17_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadata14set_conf_state(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !793
  %i.a = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 120, i64 noundef 8) #22, !noalias !793 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3newBK_.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #23
          to label %.noexc unwind label %bb.c
end_hunk_0
