inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.av = add i64 %i.t, 8                         ; 3 uses
  store i64 %i.av, ptr %i.s, align 8, !alias.scope !478, !noalias !481
  %i.aw = icmp ugt i64 %i.av, %i.y
  br i1 %i.aw, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.q
  %i.ax = icmp ult i64 %i.aq, %i.q
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aq
  %i.az = load i8, ptr %i.ay, align 1, !noalias !485, !noundef !3
  %i.ba = or disjoint i64 %i.aq, 1                ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  br i1 %i.bb, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #52, !noalias !485
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !485, !noundef !3
  %i.be = or disjoint i64 %i.aq, 2                ; 3 uses
  %i.bf = icmp ult i64 %i.be, %i.q
  br i1 %i.bf, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #52, !noalias !485
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = or disjoint i64 %i.aq, 3                ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %i.q
  br i1 %i.bh, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #52, !noalias !485
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #52, !noalias !485
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.be
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !485, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !485, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.bl to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.bj to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.bd to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.az to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i ; 2 uses
  %i.bm = add nuw i64 %i.aq, 4                    ; 6 uses
  %i.bn = tail call i64 @llvm.uadd.sat.i64(i64 %i.bm, i64 %.sroa.0.0.insert.insert.i.i.i.i) ; 7 uses
  %i.bo = icmp ugt i64 %i.bn, %i.q
  br i1 %i.bo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = add i64 %.sroa.0.0.insert.insert.i.i.i.i, %i.av ; 2 uses
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !486, !noalias !487
  %i.bq = icmp ugt i64 %i.bp, %i.y
  br i1 %i.bq, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.q, %bb.p, %bb.o
  %.sroa.051.0.ph.i.i = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  %.sroa.21.0.ph.i.i = phi i64 [ %i.aq, %bb.p ], [ %i.bm, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.bm, %bb.z ]
  %.sroa.23.0.ph.i.i = phi i64 [ %i.at, %bb.p ], [ %i.bn, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.bn, %bb.z ]
  store i64 %.sroa.051.0.ph.i.i, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 8, ptr %.sroa.331.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  store i64 %.sroa.21.0.ph.i.i, ptr %.sink45.i.sroa.gep38, align 8, !alias.scope !488, !noalias !489
  store i64 %.sroa.23.0.ph.i.i, ptr %.sink.i.sroa.gep39, align 8, !alias.scope !488, !noalias !489
  store i64 3, ptr %.sink45.i.sroa.gep, align 8, !alias.scope !488, !noalias !489
  store i64 %i.aq, ptr %.sink.i.sroa.gep, align 8, !alias.scope !488, !noalias !489
  br label %bb.ai

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.z
  %i.br = icmp ult i64 %i.bn, %i.q
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !490, !noundef !3
  %i.bu = icmp eq i8 %i.bt, 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.09.0.i.i = phi i1 [ %i.bu, %bb.ab ], [ false, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangehECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !490
  %i.bv = sub nuw i64 %i.bn, %i.bm
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv), !noalias !490
  %i.bx = load i64, ptr %i.a, align 8, !range !491, !noalias !490, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink45.i.sroa.gep38, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !noalias !489
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !range !492, !noalias !490, !noundef !3
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i = or i1 %.sroa.09.0.i.i, %i.cc
  br i1 %or.cond.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink46.i = phi i64 [ -9223372036854775806, %bb.ad ], [ -9223372036854775805, %bb.ae ]
  %.sink45.i.sroa.phi = phi ptr [ %.sink45.i.sroa.gep, %bb.ad ], [ %.sink45.i.sroa.gep38, %bb.ae ]
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.ad ], [ %.sink.i.sroa.gep39, %bb.ae ]
  store i64 %.sink46.i, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !488, !noalias !489
  store i64 %i.bm, ptr %.sink45.i.sroa.phi, align 8, !alias.scope !488, !noalias !489
  store i64 %i.bn, ptr %.sink.i.sroa.phi, align 8, !alias.scope !488, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  store i64 -9223372036854775798, ptr %i.c, align 8, !alias.scope !488, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %bb.ai

bb.ah:                                            ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.aa, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 -9223372036854775808, ptr %i.ce, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.cf, align 8
  store i64 1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cg = load i64, ptr %i.d, align 8, !range !99, !noundef !3
  %.not37 = icmp eq i64 %i.cg, -9223372036854775798
  br i1 %.not37, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !493, !noalias !496, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !493, !noalias !496, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !499 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !506
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !506 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !511
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !511
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !503
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !512, !noalias !513, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !514
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !517
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !512, !noalias !513
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !520

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !520
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.experimental.noalias.scope.decl(metadata !524), !noalias !520
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !527, !noalias !520, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !527, !noalias !520 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !527, !noalias !520 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !527, !noalias !520
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !520
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !520
  call void @llvm.assume(i1 %i.bu), !noalias !520
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !520
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !520
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !528
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !520 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !529
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !532
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !529
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !520
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !520
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !520
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !535, !noalias !538, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !535, !noalias !538, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !541 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !545
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !548
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !548 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !548
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !548
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !553
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !553
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !545
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !545
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !545
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !545
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !554, !noalias !555, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !554, !noalias !555, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !556
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !559
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !554, !noalias !555
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !545
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !545
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !562

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !562
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !562
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !569, !noalias !562, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !569, !noalias !562 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !569, !noalias !562 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !569, !noalias !562
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !562
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !562
  call void @llvm.assume(i1 %i.bu), !noalias !562
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !562
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !570
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !545
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !562 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !571
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !574
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !571
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !562
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !562
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !554, !noalias !555, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !562
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2t_) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !577, !noalias !580, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !577, !noalias !580, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !583 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !587
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !590
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !590 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !590
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !590
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !595
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !595
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !587
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !587
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !587
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !587
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !587
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !587
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !587
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !596, !noalias !597, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !596, !noalias !597, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !598
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !587
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !601
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !596, !noalias !597
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !587
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !587
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !604

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !604
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608), !noalias !604
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !611, !noalias !604, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !611, !noalias !604 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !611, !noalias !604 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !611, !noalias !604
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !604
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !604
  call void @llvm.assume(i1 %i.bu), !noalias !604
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !604
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !604
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !612
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !587
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !604 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !613
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !616
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !613
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !604
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !604
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !596, !noalias !597, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !604
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB2t_) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE14reserve_rehashNCNvXs2_B2b_INtB2b_7DashMapBY_B2P_EINtNtB2b_1t3MapBY_B2P_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !619, !noalias !622, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !619, !noalias !622, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !625 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !629
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !632
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !632 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !632
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !632
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !637
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !637
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !629
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !629
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !629
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !629
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !629
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !629
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !629
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !638, !noalias !639, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !638, !noalias !639, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !640
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !629
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !643
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !638, !noalias !639
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !629
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !629
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !646

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !646
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !646
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !646
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !646
  call void @llvm.assume(i1 %i.bu), !noalias !646
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !646
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !646
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !654
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !629
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !646 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !655
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !658
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !655
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !646
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !646
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !638, !noalias !639, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !646
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE14reserve_rehashNCNvXs2_B2b_INtB2b_7DashMapBY_B2P_EINtNtB2b_1t3MapBY_B2P_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !661, !noalias !664, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !661, !noalias !664, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !667 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !671
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !674
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !674 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !674
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !674
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !679
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !679
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !671
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !671
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !671
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !671
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !671
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !671
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !671
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !680, !noalias !681, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !680, !noalias !681, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !682
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !685
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !680, !noalias !681
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !671
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !671
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !688

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !688
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !688
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !695, !noalias !688, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !695, !noalias !688 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !695, !noalias !688 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !695, !noalias !688
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !688
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !688
  call void @llvm.assume(i1 %i.bu), !noalias !688
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !688
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !688
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !696
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !688 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !697
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !700
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !697
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !688
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !688
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !680, !noalias !681, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !688
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE14reserve_rehashNCNvXs2_B2b_INtB2b_7DashMapBY_B2P_EINtNtB2b_1t3MapBY_B2P_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !703, !noalias !706, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !703, !noalias !706, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !709 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !713
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 104) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !716
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !716 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !716
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !716
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !721
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !721
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !713
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !713
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !713
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !713
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !713
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !713
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !713
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !722, !noalias !723, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !722, !noalias !723, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !724
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !727
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !722, !noalias !723
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !713
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !713
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !730

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !730
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !730
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !737, !noalias !730, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !737, !noalias !730 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !737, !noalias !730 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !737, !noalias !730
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !730
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !730
  call void @llvm.assume(i1 %i.bu), !noalias !730
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !730
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !730
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !738
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !730 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !739
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %._crit_edge ], [ %i.cz, %.lr.ph.i ]
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !3
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cp = load <16 x i8>, ptr %i.ap, align 16, !noalias !742
  %i.cq = icmp slt <16 x i8> %i.cp, zeroinitializer
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cr, 0
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cr, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cv = add i64 %i.cu, 16                       ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cw, %i.aq            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !739
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ct, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.da = lshr i64 %i.ce, 57
  %i.db = trunc nuw nsw i64 %i.da to i8           ; 2 uses
  %i.dc = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dd = and i64 %i.dc, %i.aq
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.i5.i
  store i8 %i.db, ptr %i.de, align 1, !noalias !730
  %i.df = getelementptr i8, ptr %i.ap, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  store i8 %i.db, ptr %i.dg, align 1, !noalias !730
  %i.dh = load ptr, ptr %0, align 8, !alias.scope !722, !noalias !723, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dj = getelementptr inbounds i8, ptr %i.ap, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, ptr noundef nonnull align 1 dereferenceable(104) %i.di, i64 range(i64 24, 105) 104, i1 false), !noalias !730
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i64 } %i.dl, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dm
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !745, !noalias !748, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !745, !noalias !748, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !751 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !755
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 48) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !758
  %i.ai = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !758 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !758
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.al = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !758
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !763
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !763
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aq = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.03.0.i.i = select i1 %i.ap, i64 %i.ao, i64 %i.ar ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !755
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !755
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  %i.as = load i64, ptr %i.e, align 8, !alias.scope !764, !noalias !765, !noundef !3 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !764, !noalias !765, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = load <16 x i8>, ptr %i.au, align 16, !noalias !766
  %i.aw = icmp sgt <16 x i8> %i.av, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.l ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !755
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16, !noalias !769
  %i.ba = icmp sgt <16 x i8> %i.az, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !764, !noalias !765
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bd = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.be = sub i64 %.sroa.03.0.i.i, %i.bd
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  store i64 %i.bd, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !755
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !772

bb.m:                                             ; preds = %._crit_edge31
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !772
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !776), !noalias !772
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !779, !noalias !772, !noundef !3 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !779, !noalias !772 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !779, !noalias !772 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !779, !noalias !772
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl), !noalias !772
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq), !noalias !772
  call void @llvm.assume(i1 %i.bs), !noalias !772
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt), !noalias !772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !772
  %i.bu = sub nsw i64 0, %i.bn
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !780
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !755
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.cc = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ca), !noalias !772 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ao, %i.cc            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !781
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i6, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cf, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.cg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ch
  %i.cj = and i64 %i.ci, %i.ao                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !3
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.cn = load <16 x i8>, ptr %i.an, align 16, !noalias !784
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i6, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i6 = and i64 %i.cu, %i.ao            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i6
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !781
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.cj, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cc, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !772
  %i.dd = getelementptr i8, ptr %i.an, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !772
  %i.df = load ptr, ptr %0, align 8, !alias.scope !764, !noalias !765, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 48
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 48
  %i.dh = getelementptr inbounds i8, ptr %i.an, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dh, ptr noundef nonnull align 1 dereferenceable(48) %i.dg, i64 range(i64 24, 105) 48, i1 false), !noalias !772
  %i.di = icmp eq i64 %i.cb, 0
  br i1 %i.di, label %._crit_edge31.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 48, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core) #51
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.021, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.020, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !787, !noalias !790, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !787, !noalias !790, !noundef !3 ; 3 uses
  %4 = icmp ult i64 %i.j, 8
  %i.k = add i64 %i.j, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.j, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !793 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  %i.s = icmp ult i64 %.sroa.0.0.i5, 8
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %.sroa.0.0.i5, 4
  %..i.i = add nuw nsw i64 %i.u, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ab = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 105) %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  %i.ae = add nuw i64 %i.ad, 8
  %i.af = and i64 %i.ae, -16                      ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !800
  %i.ak = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !800 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !800
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !800
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !805
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.ag, i1 false), !noalias !805
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.03.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !797
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !797
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !797
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !797
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !797
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !797
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !797
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !806, !noalias !807, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge31, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !806, !noalias !807, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !noalias !808
  %i.ay = icmp sgt <16 x i8> %i.ax, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.am, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.7.020 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.021 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.030 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.029 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.028 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.027 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i222 = icmp eq i16 %.sroa.13.027, 0
  br i1 %.not.i222, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.124 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.030, %.preheader ] ; 2 uses
  %.sroa.5.123 = phi i64 [ %i.be, %.noexc3 ], [ %.sroa.5.029, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.124) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.124, i64 16 ; 3 uses
  %i.bb = load <16 x i8>, ptr %i.ba, align 16, !noalias !811
  %i.bc = icmp sgt <16 x i8> %i.bb, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.123, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge31.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !806, !noalias !807
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %._crit_edge31.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bf = phi i64 [ %.pre, %._crit_edge31.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.03.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !797
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !797
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !814

bb.m:                                             ; preds = %._crit_edge31
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #50, !noalias !814
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge31
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !818), !noalias !814
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !821, !noalias !814, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !821, !noalias !814 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !821, !noalias !814 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !821, !noalias !814
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !814
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !814
  call void @llvm.assume(i1 %i.bu), !noalias !814
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !814
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !814
  %i.bw = sub nsw i64 0, %i.bp
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #53, !noalias !822
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.027, %.preheader ], [ %i.bd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.029, %.preheader ], [ %i.be, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.030, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.028, -1                ; 2 uses
  %i.ce = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc), !noalias !814 ; 2 uses
  %.sroa.0.07.i = and i64 %i.aq, %i.ce            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !823
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.e, !inline_history !1147

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50, !inline_history !1147
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g, !inline_history !1147

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50, !inline_history !1147
  unreachable

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinEECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 640, i64 noundef 8) #53
  ret void

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 640, i64 noundef 8) #53
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(1400) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 1400, i64 noundef 8) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(2696) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2696, i64 noundef 8) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 2696, i64 noundef 8) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #53
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #53
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !849, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1148, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1148
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1148 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1148, !noundef !3 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1148, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1148, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1148, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1148
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1148, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1148
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !1148, !nonnull !3, !noundef !3
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !1148, !inline_history !1151
  %i.s = load i64, ptr %i.e, align 8, !noalias !1148, !noundef !3
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !1148
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1148, !noundef !3 ; 3 uses
  %1 = icmp ult i64 %i.v, 8
  %i.w = add i64 %i.v, 1
  %i.x = lshr i64 %i.w, 3
  %i.y = mul nuw i64 %i.x, 7
  %.sroa.01.0.i.i = select i1 %1, i64 %i.v, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1148, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ac = sub i64 %.sroa.01.0.i.i, %i.aa
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !1148
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1158, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1171, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1171, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1171, !noundef !3
  invoke void %i.e(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !inline_history !1172

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1182, !nonnull !3, !align !100, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1182, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1182, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1182, !noundef !3
  invoke void %i.o(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d, !inline_history !1183

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1193, !nonnull !3, !align !100, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1193, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1193, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1193, !noundef !3
  tail call void %i.x(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac), !inline_history !1194
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !1198, !noalias !1201
  %.promoted9.i = load i64, ptr %i.b, align 8, !alias.scope !1195
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1195, !nonnull !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1195 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1195, !nonnull !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.e, align 8, !alias.scope !1195
  br label %bb.b

bb.b:                                             ; preds = %.noexc2, %bb.a
  %i.p = phi ptr [ %i.aq, %.noexc2 ], [ %.promoted12.i, %bb.a ] ; 7 uses
  %.sroa.5.0.i10.i = phi i64 [ %.sroa.5.0.i11.i, %.noexc2 ], [ %.promoted9.i, %bb.a ] ; 3 uses
  %.sroa.0.0.i7.i = phi i64 [ %.sroa.0.0.i8.i, %.noexc2 ], [ %.promoted.i, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.q = trunc nuw i64 %.sroa.0.0.i7.i to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %.sroa.5.0.i10.i, %i.j
  br i1 %i.r, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.s = icmp eq ptr %i.p, %i.d
  br i1 %i.s, label %bb.l, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.e, align 8, !alias.scope !1207, !noalias !1208
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !noalias !1210 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.5.0.i10.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !491, !noalias !1211, !noundef !3
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread.i

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.0.i10.i, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @760) #52
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noalias !1211, !noundef !3
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  %.sroa.5.0.i.i = phi i64 [ %i.z, %bb.g ], [ undef, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.e ] ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !1198, !noalias !1201
  store i64 %.sroa.5.0.i.i, ptr %i.b, align 8, !alias.scope !1198, !noalias !1201
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !1198
  store i64 0, ptr %i.a, align 8, !alias.scope !1201, !noalias !1198
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTIBH_NtNtNtCs4j34XAPZOn0_4http6header4name10HeaderNameENtNtB1b_5value11HeaderValueEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1198
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !1198
  %i.ac = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.05.0.i.i = and i64 %.sroa.0.0.copyload.i.i, 1 ; 3 uses
  %.sroa.56.0.i.i = select i1 %i.ac, i64 %.sroa.7.0.copyload.i.i, i64 undef ; 3 uses
  store i64 %.sroa.05.0.i.i, ptr %0, align 8, !alias.scope !1198, !noalias !1201
  store i64 %.sroa.56.0.i.i, ptr %i.b, align 8, !alias.scope !1198, !noalias !1201
  store i64 1, ptr %i.a, align 8, !alias.scope !1201, !noalias !1198
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
end_hunk_1
begin_hunk_2_@_RNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtB1I_6memory5EntryNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs14kWLkQVSKO_14deltalake_core:bb.a
bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperNtNtCsjyY8HP3IvQ6_12object_store6memory5EntryEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
  ret void

bb.g:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs14kWLkQVSKO_14deltalake_core(ptr %.0.val, i64 %.16.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.16.val ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.d) #49
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.h = load i64, ptr %i.d, align 8, !range !849, !alias.scope !32933, !noundef !3
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  ret void

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr readonly captures(none) %.40.val, i64 noundef range(i64 24, 105) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread18, label %.lr.ph.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread18: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.01.06.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.01.06.i.epil.init ; 2 uses
  %i.j = load <16 x i8>, ptr %i.i, align 16, !noalias !32936
  %.lobit.i.i.epil = ashr <16 x i8> %i.j, splat (i8 7)
  %i.k = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.l = or <2 x i64> %i.k, splat (i64 -9187201950435737472)
  store <2 x i64> %i.l, ptr %i.i, align 16, !noalias !32939
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.26 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %.val15, i64 %.26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.m, align 8
  store i64 %2, ptr %i.n, align 8
  store ptr %0, ptr %i.a, align 8
  %i.p = and i64 %2, 7                            ; 2 uses
  %i.q = lshr i64 %2, 3
  %.not.i19 = icmp eq i64 %i.p, 0
  %i.r = and i64 %2, 120                          ; 2 uses
  %i.s = icmp samesign ult i64 %i.p, 4
  %i.t = and i64 %2, 2
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.01.06.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ab, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.01.06.i ; 2 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16, !noalias !32936
  %.lobit.i.i = ashr <16 x i8> %i.y, splat (i8 7)
  %i.z = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.aa = or <2 x i64> %i.z, splat (i64 -9187201950435737472)
  store <2 x i64> %i.aa, ptr %i.x, align 16, !noalias !32939
  %i.ab = add i64 %.sroa.01.06.i, 32              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.01.06.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load <16 x i8>, ptr %i.ad, align 16, !noalias !32936
  %.lobit.i.i.1 = ashr <16 x i8> %i.ae, splat (i8 7)
  %i.af = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ag = or <2 x i64> %i.af, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ag, ptr %i.ad, align 16, !noalias !32939
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre12 = add i64 %.pre, 1
  %i.ah = lshr i64 %.pre12, 3
  %i.ai = mul nuw i64 %i.ah, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread18, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread18 ]
  %i.aj = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread18 ] ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 8
  %.sroa.01.0 = select i1 %i.ak, i64 %i.aj, i64 %.pre-phi
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = sub i64 %.sroa.01.0, %i.am
  store i64 %i.ao, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %._crit_edge.i, %bb.k
  %.sroa.04.06 = phi i64 [ 0, %._crit_edge.i ], [ %i.ap, %bb.k ] ; 10 uses
  %i.ap = add nuw i64 %.sroa.04.06, 1
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.04.06
  %i.as = load i8, ptr %i.ar, align 1, !noundef !3
  %i.at = icmp eq i8 %i.as, -128
  br i1 %i.at, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.neg = xor i64 %.sroa.04.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.neg11 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.r ; 4 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.backedge, %bb.d
  %i.aw = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.04.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.l, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #49
          to label %bb.t unwind label %bb.s

bb.f:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aw          ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ay, align 1, !noalias !32942
  %i.az = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.ba, %bb.f ], [ %i.bs, %.lr.ph.i18 ]
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = add i64 %.sroa.0.0.lcssa.i, %i.bc
  %i.be = and i64 %i.bd, %.val14                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !3
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.g, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.g:                                             ; preds = %._crit_edge.i17
  %i.bi = load <16 x i8>, ptr %.val, align 16, !noalias !32945
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bk, 0
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bk, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.bn = phi i64 [ %i.bo, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.bo = add i64 %i.bn, 16                       ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bp, %.val14           ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !32942
  %i.br = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.bm, %bb.g ], [ %i.be, %._crit_edge.i17 ] ; 4 uses
  %i.bt = sub i64 %.sroa.04.06, %.sroa.0.07.i
  %i.bu = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bv = xor i64 %i.bu, %i.bt
  %.unshifted = and i64 %i.bv, %.val14
  %i.bw = icmp ult i64 %.unshifted, 16
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bx = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !noundef !3
  %i.ca = lshr i64 %i.aw, 57
  %i.cb = trunc nuw nsw i64 %i.ca to i8           ; 2 uses
  %i.cc = add i64 %.sroa.0.0.i5.i, -16
  %i.cd = and i64 %i.cc, %.val14
  store i8 %i.cb, ptr %i.by, align 1
  %i.ce = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store i8 %i.cb, ptr %i.cg, align 1
  %i.ch = icmp eq i8 %i.bz, -1
  br i1 %i.ch, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %i.ci = lshr i64 %i.aw, 57
  %i.cj = trunc nuw nsw i64 %i.ci to i8           ; 2 uses
  %i.ck = add i64 %.sroa.04.06, -16
  %i.cl = and i64 %.val14, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.04.06
  store i8 %i.cj, ptr %i.cm, align 1
  %i.cn = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cl
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cj, ptr %i.cp, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cq = add i64 %.sroa.04.06, -16
  %i.cr = load i64, ptr %i.b, align 8, !noundef !3
  %i.cs = and i64 %i.cr, %i.cq
  %i.ct = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.04.06
  store i8 -1, ptr %i.cu, align 1
  %i.cv = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cs
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store i8 -1, ptr %i.cx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i64 %2, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.i
  %exitcond.not = icmp eq i64 %.sroa.04.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c

bb.l:                                             ; preds = %bb.h
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.bx, i64 noundef %i.q)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.l
  br i1 %.not.i19, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.backedge, label %bb.m

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.backedge: ; preds = %.noexc, %bb.q, %bb.r
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

bb.m:                                             ; preds = %.noexc
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.r ; 4 uses
  br i1 %i.s, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32951)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.av, align 1, !alias.scope !32948, !noalias !32951
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.cy, align 1, !alias.scope !32951, !noalias !32948
  store i32 %.sroa.02.0.copyload.i.i.i, ptr %i.av, align 1, !alias.scope !32948, !noalias !32951
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.cy, align 1, !alias.scope !32951, !noalias !32948
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.m ], [ 4, %bb.n ] ; 4 uses
  br i1 %i.u, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32956)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.cz, align 1, !alias.scope !32953, !noalias !32956
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.da, align 1, !alias.scope !32956, !noalias !32953
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.cz, align 1, !alias.scope !32953, !noalias !32956
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.da, align 1, !alias.scope !32956, !noalias !32953
  %i.db = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ %i.db, %bb.p ] ; 2 uses
  br i1 %i.w, label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.1.i.i ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32961)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.dc, align 1, !alias.scope !32958, !noalias !32961
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.dd, align 1, !alias.scope !32961, !noalias !32958
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.dc, align 1, !alias.scope !32958, !noalias !32961
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.dd, align 1, !alias.scope !32961, !noalias !32958
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.backedge

bb.s:                                             ; preds = %bb.e
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.t:                                             ; preds = %bb.e
end_hunk_2
