inline.NumInlined: 10149
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core:bb.a

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
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !499 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !503
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !506
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !506 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !506
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !511
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !511
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !503
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !512, !noalias !513, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !512, !noalias !513
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !503
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !514

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !514
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.experimental.noalias.scope.decl(metadata !518), !noalias !514
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !521, !noalias !514, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !521, !noalias !514 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !521, !noalias !514 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !521, !noalias !514
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !514
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !514
  call void @llvm.assume(i1 %i.bt), !noalias !514
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !514
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !514
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !522
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !503
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !514 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !523
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !523
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !514
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !514
  %i.df = load ptr, ptr %0, align 8, !alias.scope !512, !noalias !513, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !514
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !526, !noalias !529, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !526, !noalias !529, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !532 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !536
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !539
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !539 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !539
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !539
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !544
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !544
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !536
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !536
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !536
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !536
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !536
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !536
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !536
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !545, !noalias !546, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !545, !noalias !546, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !536
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !545, !noalias !546
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !536
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !536
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !547

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !547
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  call void @llvm.experimental.noalias.scope.decl(metadata !551), !noalias !547
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !554, !noalias !547, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !547 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !547 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !554, !noalias !547
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !547
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !547
  call void @llvm.assume(i1 %i.bt), !noalias !547
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !547
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !555
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !536
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !547 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !556
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !556
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !547
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !547
  %i.df = load ptr, ptr %0, align 8, !alias.scope !545, !noalias !546, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !547
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2t_) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !559, !noalias !562, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !559, !noalias !562, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !565 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !569
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !572
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !572 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !572
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !572
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !577
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !577
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !569
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !569
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !569
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !569
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !569
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !569
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !569
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !578, !noalias !579, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !578, !noalias !579, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !578, !noalias !579
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !569
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !569
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !580

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !580
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584), !noalias !580
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !587, !noalias !580, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !587, !noalias !580 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !587, !noalias !580 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !587, !noalias !580
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !580
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !580
  call void @llvm.assume(i1 %i.bt), !noalias !580
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !580
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !580
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !588
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !569
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !580 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !589
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !589
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !580
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !580
  %i.df = load ptr, ptr %0, align 8, !alias.scope !578, !noalias !579, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !580
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0B2M_, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB2t_) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !592, !noalias !595, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !592, !noalias !595, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !598 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !605
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !605 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !605
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !605
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !610
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !610
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !602
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !602
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !602
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !602
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !602
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !602
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !602
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !611, !noalias !612, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !611, !noalias !612, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !611, !noalias !612
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !602
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !602
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !613

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !613
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !617), !noalias !613
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !620, !noalias !613, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !620, !noalias !613 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !620, !noalias !613 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !620, !noalias !613
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !613
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !613
  call void @llvm.assume(i1 %i.bt), !noalias !613
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !613
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !613
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !621
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !613 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !622
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !622
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !613
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !613
  %i.df = load ptr, ptr %0, align 8, !alias.scope !611, !noalias !612, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !613
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !625, !noalias !628, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !625, !noalias !628, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !631 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !638
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !638 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !638
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !638
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !643
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !643
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !635
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !635
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !635
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !635
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !635
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !635
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !635
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !644, !noalias !645, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !644, !noalias !645, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !644, !noalias !645
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !635
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !635
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !646

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !646
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650), !noalias !646
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !653, !noalias !646
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !646
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !646
  call void @llvm.assume(i1 %i.bt), !noalias !646
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !646
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !646
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !654
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !646 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !655
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !655
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !646
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !646
  %i.df = load ptr, ptr %0, align 8, !alias.scope !644, !noalias !645, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !646
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !658, !noalias !661, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !658, !noalias !661, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !664 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !668
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !671
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !671 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !671
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !671
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !676
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !676
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !668
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 104, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !668
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !668
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !668
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !668
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !668
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !668
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !677, !noalias !678, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !677, !noalias !678, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !677, !noalias !678
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !668
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !668
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !679

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !679
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !679
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !686, !noalias !679, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !686, !noalias !679 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !686, !noalias !679 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !686, !noalias !679
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !679
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !679
  call void @llvm.assume(i1 %i.bt), !noalias !679
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !679
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !679
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !687
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !679 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !688
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !688
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = lshr i64 %i.cd, 57
  %i.cz = trunc nuw nsw i64 %i.cy to i8           ; 2 uses
  %i.da = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.db = and i64 %i.da, %i.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  store i8 %i.cz, ptr %i.dc, align 1, !noalias !679
  %i.dd = getelementptr i8, ptr %i.aq, i64 %i.db
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store i8 %i.cz, ptr %i.de, align 1, !noalias !679
  %i.df = load ptr, ptr %0, align 8, !alias.scope !677, !noalias !678, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cb, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 104
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 104
  %i.dh = getelementptr inbounds i8, ptr %i.aq, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, ptr noundef nonnull align 1 dereferenceable(104) %i.dg, i64 range(i64 24, 105) 104, i1 false), !noalias !679
  %i.di = icmp eq i64 %i.cc, 0
  br i1 %i.di, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE14reserve_rehashNCNvXs2_B2d_INtB2d_7DashMapB10_B2R_EINtNtB2d_1t3MapB10_B2R_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 104, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dk = insertvalue { i64, i64 } %i.dj, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dk
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
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !691, !noalias !694, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !691, !noalias !694, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !697 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !701
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 48) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !704
  %i.aj = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !704 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !704
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !704
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !709
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ao, i8 -1, i64 %i.af, i1 false), !noalias !709
  %i.ap = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.aq = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ar = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.as = mul nuw nsw i64 %i.ar, 7
  %.sroa.03.0.i.i = select i1 %i.aq, i64 %i.ap, i64 %i.as ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !701
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !701
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !701
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !701
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !701
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !701
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !701
  %i.at = load i64, ptr %i.e, align 8, !alias.scope !710, !noalias !711, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.av = load ptr, ptr %0, align 8, !alias.scope !710, !noalias !711, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.av, align 16
  %i.aw = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.l ], [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !701
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.av, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.ax, %.preheader.lr.ph ], [ %i.by, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bb, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ba, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !710, !noalias !711
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.bc = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bd = sub i64 %.sroa.03.0.i.i, %i.bc
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !701
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !701
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !712

bb.m:                                             ; preds = %._crit_edge37
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !712
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !716), !noalias !712
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !719, !noalias !712, !noundef !3 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !712 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !712 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !712
  %i.bg = add i64 %.val3.i.i, 1
  %i.bh = mul nuw i64 %.val.i.i, %i.bg            ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bk), !noalias !712
  %i.bl = sub i64 0, %.val1.i.i
  %i.bm = and i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !noalias !712
  call void @llvm.assume(i1 %i.br), !noalias !712
  %i.bs = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bs), !noalias !712
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !712
  %i.bt = sub nsw i64 0, %i.bm
  %i.bu = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bt
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !720
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !701
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.ba, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bb, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.bv = add i16 %.sroa.13.1.lcssa, -1
  %i.bw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.sroa.13.1.lcssa
  %i.bz = add i64 %.sroa.5.1.lcssa, %i.bx         ; 2 uses
  %i.ca = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cb = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bz), !noalias !712 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ap, %i.cb            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !721
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ce, %._crit_edge ], [ %i.cv, %.lr.ph.i ]
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cg
  %i.ci = and i64 %i.ch, %i.ap                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !3
  %i.cl = icmp sgt i8 %i.ck, -1
  br i1 %i.cl, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.ao, align 16
  %i.cm = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cn, 0
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cn, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cq = phi i64 [ %i.cr, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cr = add i64 %i.cq, 16                       ; 2 uses
  %i.cs = add i64 %i.cr, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cs, %i.ap           ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ct, align 1, !noalias !721
  %i.cu = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cp, %bb.n ], [ %i.ci, %._crit_edge.i ] ; 3 uses
  %i.cw = lshr i64 %i.cb, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8           ; 2 uses
  %i.cy = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cz = and i64 %i.cy, %i.ap
  %i.da = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.0.0.i5.i
  store i8 %i.cx, ptr %i.da, align 1, !noalias !712
  %i.db = getelementptr i8, ptr %i.ao, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store i8 %i.cx, ptr %i.dc, align 1, !noalias !712
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !710, !noalias !711, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bz, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 48
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 48
  %i.df = getelementptr inbounds i8, ptr %i.ao, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.df, ptr noundef nonnull align 1 dereferenceable(48) %i.de, i64 range(i64 24, 105) 48, i1 false), !noalias !712
  %i.dg = icmp eq i64 %i.ca, 0
  br i1 %i.dg, label %._crit_edge37.loopexit, label %.preheader

bb.o:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core, i64 noundef 48, ptr noundef nonnull @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core) #50
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %bb.o
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.o ], [ %.sroa.12.025, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -9223372036854775807, %bb.o ], [ %.sroa.7.024, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dh = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.di = insertvalue { i64, i64 } %i.dh, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.di
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
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !724, !noalias !727, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !724, !noalias !727, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !730 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !734
  %i.t = icmp ult i64 %.sroa.0.0.i9, 8
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.d
  %i.v = and i64 %.sroa.0.0.i9, 4
  %..i.i = add nuw nsw i64 %i.v, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = shl nuw i64 %.sroa.0.0.i9, 3
  %i.x = udiv i64 %i.w, 7
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = lshr i64 -1, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.ab, %bb.g ], [ %..i.i, %bb.f ] ; 5 uses
  %i.ac = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 24) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !98

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !737
  %i.al = call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !737 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !737
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.ao = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !737
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !742
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !742
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !noalias !734
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !734
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !734
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !734
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !734
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.03.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !734
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !734
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !743, !noalias !744, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !743, !noalias !744, !nonnull !3, !noundef !3 ; 2 uses
  %.val626 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val626, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.7.024 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.025 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.sroa.0.036 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ]
  %.sroa.13.033 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit ] ; 2 uses
  %.not.i228 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i228, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.130 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val527 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val527, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !743, !noalias !744
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bf = sub i64 %.sroa.03.0.i.i, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !734
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !734
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.m, !noalias !745

bb.m:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !745
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !749), !noalias !745
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !752, !noalias !745, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !752, !noalias !745 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !752, !noalias !745 ; 5 uses
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !752, !noalias !745
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !745
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !745
  call void @llvm.assume(i1 %i.bt), !noalias !745
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !745
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !745
  %i.bv = sub nsw i64 0, %i.bo
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #52, !noalias !753
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner13RawTableInnerECs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
  %i.cb = add i64 %.sroa.5.1.lcssa, %i.bz         ; 2 uses
  %i.cc = add i64 %.sroa.9.034, -1                ; 2 uses
  %i.cd = call noundef i64 @_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !noalias !745 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ar, %i.cd            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !754
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cg, %._crit_edge ], [ %i.cx, %.lr.ph.i ]
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci
  %i.ck = and i64 %i.cj, %i.ar                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !3
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.n, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.n:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.aq, align 16
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ct = add i64 %i.cs, 16                       ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cu, %i.ar           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !754
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsdl0l68gAy31_9arrow_ipc6readerINtB5_10FileReaderINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE7try_newCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.297.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.626.i, i64 24, i1 false), !noalias !32565
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.028.0.copyload.i, ptr %i.hr, align 8, !alias.scope !32557, !noalias !32565
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !32557, !noalias !32565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i)
  br label %bb.ct

bb.db:                                            ; preds = %bb.dg, %bb.df, %bb.ct
  %.sroa.074.11.i = phi i8 [ 1, %bb.dg ], [ 1, %bb.df ], [ %.sroa.074.10.i, %bb.ct ] ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.dd unwind label %bb.dc, !noalias !32564

bb.dc:                                            ; preds = %bb.db
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body224.thread.i unwind label %bb.de, !noalias !32564

bb.dd:                                            ; preds = %bb.db
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %.body224.thread250.i, !noalias !32564

bb.de:                                            ; preds = %bb.dc
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !32564
  unreachable

bb.df:                                            ; preds = %bb.t
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !32565
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !32557, !noalias !32565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32562
  br label %bb.db

bb.dg:                                            ; preds = %bb.q
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !32565
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !32557, !noalias !32565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32562
  br label %bb.db

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !32562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !32562
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.dh, !noalias !32564

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.body226.i unwind label %bb.di, !noalias !32564

bb.di:                                            ; preds = %bb.dh
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !32564
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dj, !noalias !32564

.body226.i:                                       ; preds = %.body224.thread.i, %bb.do, %bb.dj, %bb.dh, %.body224.i, %bb.b
  %.sroa.074.12.i = phi i8 [ %.sroa.074.7.i, %.body224.i ], [ %.sroa.074.0245.i, %.body224.thread.i ], [ %.sroa.074.2.i, %bb.b ], [ %.sroa.074.11.i, %bb.dh ], [ %.sroa.074.13.i, %bb.dj ], [ 1, %bb.do ]
  %.pn176.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body224.i ], [ %.pn174246.i, %.body224.thread.i ], [ %.pn172.i, %bb.b ], [ %i.hw, %bb.dh ], [ %i.ib, %bb.dj ], [ %i.ih, %bb.do ] ; 2 uses
  %i.hy = load i64, ptr %i.as, align 8, !range !777, !alias.scope !32560, !noalias !32625, !noundef !3
  %i.hz = icmp ne i64 %i.hy, -9223372036854775808
  %i.ia = trunc nuw i8 %.sroa.074.12.i to i1
  %or.cond3.i = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond3.i, label %bb.ds, label %.thread12

bb.dj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i230.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.074.13.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i230.i ], [ %.sroa.074.11.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body226.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ic = load i64, ptr %i.as, align 8, !range !777, !alias.scope !32560, !noalias !32625, !noundef !3
  %i.id = icmp ne i64 %i.ic, -9223372036854775808
  %i.ie = trunc nuw i8 %.sroa.074.11.i to i1
  %or.cond.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond.i, label %bb.dk, label %bb.dt

bb.dk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit235.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dl, !noalias !32557

bb.dl:                                            ; preds = %bb.dk
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %.thread12 unwind label %bb.dm, !noalias !32557

bb.dm:                                            ; preds = %bb.dl
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !32557
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.dk
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.as)
  br label %bb.dt

bb.dn:                                            ; preds = %bb.dr, %bb.dq, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !32562
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i230.i unwind label %bb.do, !noalias !32564

bb.do:                                            ; preds = %bb.dn
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.body226.i unwind label %bb.dp, !noalias !32564

bb.dp:                                            ; preds = %bb.do
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !32564
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i230.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit235.i unwind label %bb.dj, !noalias !32564

bb.dq:                                            ; preds = %bb.g
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !32565
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !32557, !noalias !32565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32562
  br label %bb.dn

bb.dr:                                            ; preds = %bb.d
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !32565
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !32557, !noalias !32565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32562
  br label %bb.dn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit235.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i230.i
  %i.il = load i64, ptr %i.as, align 8, !range !777, !alias.scope !32560, !noalias !32625, !noundef !3
  %.not178.i = icmp eq i64 %i.il, -9223372036854775808
  br i1 %.not178.i, label %bb.dt, label %bb.dk

.body224.thread.i:                                ; preds = %bb.dc, %.body224.thread250.i, %bb.b
  %.pn174246.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body224.thread250.i ], [ %.pn172.i, %bb.b ], [ %i.hs, %bb.dc ]
  %.sroa.074.0245.i = phi i8 [ %.sroa.074.1.ph.i, %.body224.thread250.i ], [ %.sroa.074.2.i, %bb.b ], [ %.sroa.074.11.i, %bb.dc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar) #48
          to label %.body226.i unwind label %bb.bu, !noalias !32564

bb.ds:                                            ; preds = %.body226.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.as) #48
          to label %.thread12 unwind label %bb.bu, !noalias !32557

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit235.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std2io6cursor6CursorINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

.thread12:                                        ; preds = %.body226.i, %bb.dl, %bb.ds
  %.pn10 = phi { ptr, i32 } [ %.pn176.i, %bb.ds ], [ %.pn176.i, %.body226.i ], [ %i.if, %bb.dl ]
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32670
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32670 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32670
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32670
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32675 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32675
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE16with_capacity_inB2J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32676
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32676 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32676
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32676
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32681 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32681
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE16with_capacity_inB2J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32682
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32682 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32682
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32682
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32687 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32687
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32688
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32688 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32688
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32688
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32693 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32693
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32694
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32694 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32694
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32694
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32699 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32699
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 104) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32700
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32700 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32700
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32700
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32705 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32705
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 48) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32706
  %i.r = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32706 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32706
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.o), !noalias !32706
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32711 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.y = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.z = add nsw i64 %.sroa.4.0.i.ph.i, -1        ; 2 uses
  %i.aa = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ab = mul nuw nsw i64 %i.aa, 7
  %.sroa.03.0.i.i = select i1 %i.y, i64 %i.z, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ac, i8 -1, i64 %i.n, i1 false), !noalias !32711
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.x, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.w, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.z, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ac, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 8
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.j, label %bb.e, !prof !98

bb.d:                                             ; preds = %bb.b
  %i.d = and i64 %1, 4
  %..i.i = add nuw nsw i64 %i.d, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw i64 %1, 3
  %i.f = udiv i64 %i.e, 7
  %i.g = add nsw i64 %i.f, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = lshr i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.ph.i = phi i64 [ %i.j, %bb.e ], [ %..i.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 105) 24) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.g, !prof !98

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = add nuw i64 %i.m, 8
  %i.o = and i64 %i.n, -16                        ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16    ; 2 uses
  %i.q = add i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ult i64 %i.q, %i.o
  %i.s = icmp ugt i64 %i.q, 9223372036854775792
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.h, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !75

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32712
  %i.t = tail call noalias noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !32712 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32712
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.w = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.q), !noalias !32712
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.j:                                             ; preds = %bb.c
  %i.x = tail call { i64, i64 } @_RNvMNtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !32717 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { i64, i64 } [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.sroa.12.09.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.010.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.aa = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ab = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ac = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.03.0.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.p, i1 false), !noalias !32717
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.j, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.0 = phi i64 [ %i.z, %bb.j ], [ %.sroa.12.09.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.sroa.03.0.i.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.y, %bb.j ], [ %.sroa.7.010.i, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ab, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.ae, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit.i ], [ @7, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileNtB5_6Footer12dictionaries(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32725
  %i.b = load ptr, ptr %1, align 8, !alias.scope !32721, !noalias !32726, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32721, !noalias !32726, !noundef !3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !32721, !noalias !32726, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32727)
  %i.g = add i64 %i.f, 4                          ; 2 uses
  %i.h = icmp ult i64 %i.f, -4
  %i.i = icmp ule i64 %i.g, %i.d
  %or.cond.i1.i = and i1 %i.h, %i.i
  br i1 %or.cond.i1.i, label %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !32517

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @979) #51, !noalias !32730
  unreachable

_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.j, align 1, !alias.scope !32727, !noalias !32732
  %i.k = trunc i64 %i.f to i32
  %i.l = sub i32 %i.k, %.sroa.0.0.copyload.i2.i
  %i.m = sext i32 %i.l to i64
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !32733, !noalias !32736
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.n, align 8, !alias.scope !32733, !noalias !32736
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.o, align 8, !alias.scope !32733, !noalias !32736
  %i.p = call noundef i16 @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i16 noundef 8), !noalias !32725 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32725
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr null, ptr %0, align 8, !alias.scope !32726, !noalias !32721
  br label %_RINvMNtCs2TwJzntlzha_11flatbuffers5tableNtB3_5Table3getINtNtB5_10primitives15ForwardsUOffsetINtNtB5_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.r = zext i16 %i.p to i64
  %i.s = add i64 %i.f, %i.r                       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32738)
  %i.t = add i64 %i.s, 4                          ; 2 uses
  %i.u = icmp ult i64 %i.s, -4
  %i.v = icmp ule i64 %i.t, %i.d
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetINtNtB7_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e, !prof !32517

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @694) #51, !noalias !32741
  unreachable

_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetINtNtB7_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 1, !alias.scope !32738, !noalias !32743
  %i.x = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.y = add i64 %i.s, %i.x
  store ptr %i.b, ptr %0, align 8, !alias.scope !32718, !noalias !32744
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !32718, !noalias !32744
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !32718, !noalias !32744
  br label %_RINvMNtCs2TwJzntlzha_11flatbuffers5tableNtB3_5Table3getINtNtB5_10primitives15ForwardsUOffsetINtNtB5_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvMNtCs2TwJzntlzha_11flatbuffers5tableNtB3_5Table3getINtNtB5_10primitives15ForwardsUOffsetINtNtB5_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetINtNtB7_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileNtB5_6Footer13recordBatches(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32752
  %i.b = load ptr, ptr %1, align 8, !alias.scope !32748, !noalias !32753, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32748, !noalias !32753, !noundef !3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !32748, !noalias !32753, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32754)
  %i.g = add i64 %i.f, 4                          ; 2 uses
  %i.h = icmp ult i64 %i.f, -4
  %i.i = icmp ule i64 %i.g, %i.d
  %or.cond.i1.i = and i1 %i.h, %i.i
  br i1 %or.cond.i1.i, label %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !32517

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @979) #51, !noalias !32757
  unreachable

_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %.sroa.0.0.copyload.i2.i = load i32, ptr %i.j, align 1, !alias.scope !32754, !noalias !32759
  %i.k = trunc i64 %i.f to i32
  %i.l = sub i32 %i.k, %.sroa.0.0.copyload.i2.i
  %i.m = sext i32 %i.l to i64
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !32760, !noalias !32763
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.n, align 8, !alias.scope !32760, !noalias !32763
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.o, align 8, !alias.scope !32760, !noalias !32763
  %i.p = call noundef i16 @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i16 noundef 10), !noalias !32752 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32752
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr null, ptr %0, align 8, !alias.scope !32753, !noalias !32748
  br label %_RINvMNtCs2TwJzntlzha_11flatbuffers5tableNtB3_5Table3getINtNtB5_10primitives15ForwardsUOffsetINtNtB5_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RNvXse_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_16BackwardsSOffsetNtNtB7_6vtable6VTableENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.r = zext i16 %i.p to i64
  %i.s = add i64 %i.f, %i.r                       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32765)
  %i.t = add i64 %i.s, 4                          ; 2 uses
  %i.u = icmp ult i64 %i.s, -4
  %i.v = icmp ule i64 %i.t, %i.d
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetINtNtB7_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e, !prof !32517

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.s, i64 noundef %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @694) #51, !noalias !32768
  unreachable

_RNvXs9_NtCs2TwJzntlzha_11flatbuffers10primitivesINtB5_15ForwardsUOffsetINtNtB7_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEENtNtB7_6follow6Follow6followCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.w, align 1, !alias.scope !32765, !noalias !32770
  %i.x = zext i32 %.sroa.0.0.copyload.i.i to i64
end_hunk_1
