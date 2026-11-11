Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.2?download=true
inline.NumInlined: 246
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RMo4C3Dvu6_10raft_proto:bb.a
bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !44, !noundef !4
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !44, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs9RMo4C3Dvu6_10raft_proto.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.t, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit, %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.019, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs9RMo4C3Dvu6_10raft_proto.exit ], [ %.sroa.18.019, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs9RMo4C3Dvu6_10raft_proto.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.042
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.042
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !49, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !49, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !50, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !50, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !48
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !50, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !50
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !49
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %i.ch = load <2 x i32>, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %i.ci = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %i.ch, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.ci, ptr %0, align 8
  store <2 x i64> %i.cj, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.ck = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.ck)
  %i.cl = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.cl, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %0, align 8
  store i32 %.sroa.443.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  store <2 x i64> %i.cm, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.cp = load i32, ptr %i.a, align 8, !range !6, !noundef !4
  %.not51 = icmp eq i32 %i.cp, -1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream9pop_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.co)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !55, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !55, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !55, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !56, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !56, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !54
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !56, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !56
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !55
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %i.ch = load <2 x i32>, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %i.ci = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %i.ch, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.ci, ptr %0, align 8
  store <2 x i64> %i.cj, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.ck = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.ck)
  %i.cl = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.cl, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %0, align 8
  store i32 %.sroa.443.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  store <2 x i64> %i.cm, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.cp = load i32, ptr %i.a, align 8, !range !6, !noundef !4
  %.not51 = icmp eq i32 %i.cp, -1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream9pop_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.co)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !61, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !61, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !61, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !62, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !62, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !60
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !62, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !62
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !61
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %i.ch = load <2 x i32>, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %i.ci = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %i.ch, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.ci, ptr %0, align 8
  store <2 x i64> %i.cj, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.ck = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.ck)
  %i.cl = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.cl, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %0, align 8
  store i32 %.sroa.443.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  store <2 x i64> %i.cm, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.cp = load i32, ptr %i.a, align 8, !range !6, !noundef !4
  %.not51 = icmp eq i32 %i.cp, -1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream9pop_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.co)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !67, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !67, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !67, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !68, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !66
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !68, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !68
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !67
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %i.ch = load <2 x i32>, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %i.ci = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %i.ch, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.ci, ptr %0, align 8
  store <2 x i64> %i.cj, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.ck = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.ck)
  %i.cl = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.cl, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %0, align 8
  store i32 %.sroa.443.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  store <2 x i64> %i.cm, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.cp = load i32, ptr %i.a, align 8, !range !6, !noundef !4
  %.not51 = icmp eq i32 %i.cp, -1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream9pop_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.co)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream13merge_messageNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1, ptr noalias nofree noundef align 8 dereferenceable(120) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !73, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !73, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !73, !noundef !4 ; 2 uses
  %i.i = sub i64 %i.h, %i.f                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 10 uses
  %.not.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.j, align 1, !noalias !74, !noundef !4 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, 1
  br i1 %i.m, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %i.i, 9
  br i1 %i.n, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !74, !noundef !4 ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !72
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.r = and i8 %i.p, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 7
  %i.u = and i8 %i.k, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.y = load i8, ptr %i.x, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.z = and i8 %i.y, 127
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 14
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %i.ad = icmp sgt i8 %i.y, -1
  br i1 %i.ad, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 21
  %i.aj = or disjoint i64 %i.ai, %i.ac            ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  br i1 %i.ak, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.am = load i8, ptr %i.al, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.aj            ; 2 uses
  %i.ar = icmp sgt i8 %i.am, -1
  br i1 %i.ar, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.at = load i8, ptr %i.as, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 35
  %i.ax = or i64 %i.aw, %i.aq                     ; 2 uses
  %i.ay = icmp sgt i8 %i.at, -1
  br i1 %i.ay, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 42
  %i.be = or i64 %i.bd, %i.ax                     ; 2 uses
  %i.bf = icmp sgt i8 %i.ba, -1
  br i1 %i.bf, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.bi = and i8 %i.bh, 127
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 49
  %i.bl = or i64 %i.bk, %i.be                     ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1
  br i1 %i.bm, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bl                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !74, !noundef !4 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = icmp sgt i8 %i.bv, -1
  br i1 %i.bz, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53

bb.f:                                             ; preds = %bb.e
  %i.ca = and i8 %i.k, 127
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = zext nneg i8 %i.p to i64
  %i.cd = shl nuw nsw i64 %i.cc, 7
  %i.ce = or disjoint i64 %i.cd, %i.cb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cf, %bb.g ], [ %i.ce, %bb.f ], [ %i.bs, %.preheader.8 ], [ %i.by, %.preheader.9 ], [ %i.ac, %.preheader.2 ], [ %i.aj, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.ax, %.preheader.5 ], [ %i.be, %.preheader.6 ], [ %i.bl, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.i
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !5

bb.g:                                             ; preds = %bb.b
  %i.cf = zext nneg i8 %i.k to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26, !noalias !74
  unreachable

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread: ; preds = %.loopexit
  %i.cg = add i64 %.sroa.02.1.i, %i.f
  store i64 %i.cg, ptr %i.e, align 8, !alias.scope !73
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit: ; preds = %bb.c, %bb.a, %bb.d
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %.pr = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %.pr, -1
  br i1 %.not, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.j

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge: ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit
  %i.ch = load <2 x i32>, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53
  %i.ci = phi <2 x i32> [ <i32 1, i32 4>, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread53 ], [ %i.ch, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x i64>, ptr %.sroa.532.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store <2 x i32> %i.ci, ptr %0, align 8
  store <2 x i64> %i.cj, ptr %.sroa.536.0..sroa_idx, align 8
  br label %bb.o

bb.j:                                             ; preds = %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread
  %i.ck = phi i64 [ %.pre, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit._crit_edge58 ], [ %.sroa.0.1.i, %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10push_limit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.ck)
  %i.cl = load i32, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not50 = icmp eq i32 %i.cl, -1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load <2 x i64>, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %0, align 8
  store i32 %.sroa.443.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  store <2 x i64> %i.cm, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.cp = load i32, ptr %i.a, align 8, !range !6, !noundef !4
  %.not51 = icmp eq i32 %i.cp, -1
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream9pop_limit(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.co)
  store i32 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream9read_enumNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb11MessageTypeEB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %.sroa.421.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i32 %i.d, 18
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.idx.cast.i = trunc nuw nsw i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %switch.idx.cast.i, ptr %i.f, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.413.0.insert.ext = zext i32 %i.d to i64
  %.sroa.413.0.insert.shift = shl nuw i64 %.sroa.413.0.insert.ext, 32
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.413.0.insert.shift, 6
  store i32 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.011.0.insert.insert, ptr %.sroa.49.0..sroa_idx, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream9read_enumNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb14ConfChangeTypeEB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %.sroa.421.0..sroa_idx, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i32 %i.d, 2
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.idx.cast.i = trunc nuw nsw i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %switch.idx.cast.i, ptr %i.f, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.413.0.insert.ext = zext i32 %i.d to i64
  %.sroa.413.0.insert.shift = shl nuw i64 %.sroa.413.0.insert.ext, 32
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.413.0.insert.shift, 6
  store i32 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.011.0.insert.insert, ptr %.sroa.49.0..sroa_idx, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream9read_enumNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb20ConfChangeTransitionEB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #1 {
end_hunk_0
