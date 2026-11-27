Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_unexpand-82679497f3b18fac.uu_unexpand.1a172fa36c95b433-cgu.0?download=true
inline.NumInlined: 556
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2eSwMnb0Awh_11uu_unexpand:bb.a
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #21
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_Cs2eSwMnb0Awh_11uu_unexpandNtB4_7Options3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 16               ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !860, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !860, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i ; 2 uses
  %i.ab = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.ab, label %.loopexit272, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.ac, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.x, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.ad, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.ae = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.ae, align 8, !noalias !861, !noundef !4
  %i.af = icmp eq i64 %.val7.i.i.i, 4
  br i1 %i.af, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !861, !nonnull !4, !noundef !4
  %i.ag = load i32, ptr %.val.i.i.i, align 1
  %i.ah = icmp ne i32 %i.ag, 1935827316
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.ak = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ak, label %.loopexit272, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !860, !noundef !4 ; 2 uses
  %i.an = icmp ult i64 %.sroa.8.016.i.i.i, %i.am
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !861
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !860, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %i.ap, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !862
  store i128 53410479646238849826493945191968316847, ptr %i.u, align 16, !noalias !862
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.u) #21, !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !862
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.v, align 16, !noalias !862 ; 3 uses
  %i.ar = icmp eq i128 %.sroa.013.0.copyload.i.i, 53410479646238849826493945191968316847
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.at = trunc nuw i128 %i.as to i64
  %i.au = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.av = inttoptr i64 %i.au to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @52, ptr %i.t, align 8, !noalias !863
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 4, ptr %i.aw, align 8, !noalias !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !863
  store i64 0, ptr %i.s, align 8, !noalias !864
  %.sroa.10155.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.av, ptr %.sroa.10155.8..sroa_idx, align 8, !noalias !864
  %.sroa.13156.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.at, ptr %.sroa.13156.8..sroa_idx, align 8, !noalias !864
  %.sroa.16157.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 3117803386453401007, ptr %.sroa.16157.8..sroa_idx, align 8, !noalias !864
  %.sroa.16157.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 2895387903297248865, ptr %.sroa.16157.8..sroa_idx.sroa_idx, align 8, !noalias !864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !863
  store ptr %i.t, ptr %i.r, align 8, !noalias !863
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs2eSwMnb0Awh_11uu_unexpand, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !863
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.ax, align 8, !noalias !863
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !863
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !863
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !862
  %i.ay = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aq) #21, !noalias !865
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !865, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !865, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bc, 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !866
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.bf = icmp eq ptr %i.bg, %i.bd
  br i1 %i.bf, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread, label %.lr.ph

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread: ; preds = %select.unfold.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !866
  br label %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit

.lr.ph:                                           ; preds = %bb.f, %select.unfold.i.i.i.i
  %.sroa.48.0.copyload.i350966 = phi ptr [ %i.bg, %select.unfold.i.i.i.i ], [ %i.ba, %bb.f ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i350966, i64 24 ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.48.0.copyload.i350966, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !867, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.bi, label %select.unfold.i.i.i.i, label %.loopexit.i48

.loopexit.i48:                                    ; preds = %.lr.ph
  %i.bj = getelementptr i8, ptr %.sroa.48.0.copyload.i350966, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.bj, align 8, !noalias !867, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.le
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %.val.i573 = load ptr, ptr %.val.i.i.i.i.le, align 8, !alias.scope !868, !noalias !869, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 8
  %.val1.i = load ptr, ptr %i.bl, align 8, !alias.scope !868, !noalias !869, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !9, !invariant.load !4, !noalias !870
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = and i64 %i.bo, -16
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i573, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !870
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !4, !noalias !870, !nonnull !4
  call void %i.bt(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.br) #23, !noalias !870, !inline_history !712
  %i.bu = load i128, ptr %i.e, align 16, !noalias !870, !noundef !4
  %.not.i.i574 = icmp eq i128 %i.bu, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !870
  br i1 %.not.i.i574, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %.loopexit.i48
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !870
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit: ; preds = %.loopexit.i48
  %i.bv = add i64 %i.ay, -1                       ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bq, i64 24
  %.val.i.i = load ptr, ptr %i.bw, align 8, !noalias !871, !nonnull !4, !noundef !4
  %i.bx = getelementptr i8, ptr %i.bq, i64 32
  %.val3.i.i = load i64, ptr %i.bx, align 8, !noalias !871, !noundef !4
  %i.by = call i64 @llvm.uadd.sat.i64(i64 %i.bv, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.by, i64 4) ; 3 uses
  %i.bz = shl i64 %..i.i, 4                       ; 4 uses
  %i.ca = icmp ugt i64 %i.bv, 1152921504606846974
  %.not.i.i.i = icmp ugt i64 %i.bz, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.ca, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %2, !prof !15

2:                                                ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit
  %3 = icmp eq i64 %i.bz, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %2
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !872
  %i.cb = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 9) 8) #21, !noalias !872 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.bz) #24, !noalias !866
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %2
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.cb, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %2 ], [ %..i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %4 = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %4)
  store ptr %.val.i.i, ptr %.sroa.10.0.i.i, align 8, !noalias !866, !captures !873
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store i64 %.val3.i.i, ptr %i.cd, align 8, !noalias !866
  store i64 %.sroa.4.0.i.i, ptr %i.q, align 8, !noalias !866
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i49, align 8, !noalias !866
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !866
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %i.ce = phi ptr [ %i.di, %bb.k ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ]
  %.sroa.11.0.copyload = phi i64 [ %i.dl, %bb.k ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ] ; 8 uses
  %i.cf = phi i64 [ %i.db, %bb.k ], [ %i.bv, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ]
  %i.cg = phi ptr [ %.lcssa3.i.i, %bb.k ], [ %i.bk, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ] ; 2 uses
  %i.ch = phi ptr [ %.lcssa.i.i, %bb.k ], [ %i.bg, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ] ; 3 uses
  %.val.i.i.i10.i.lcssa.i.i.pn = phi ptr [ %.val.i.i.i10.i.lcssa.i.i, %bb.k ], [ %.val.i.i.i.i.le, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i ]
  %.val.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i.pn, i64 32 ; 2 uses
  %i.ci = icmp eq ptr %.val.i.i.i11.i.i.i, %i.cg
  br i1 %i.ci, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.i
  %i.cj = icmp eq ptr %i.ch, %i.bd
  br i1 %i.cj, label %.loopexit491, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.ck = icmp eq ptr %i.cm, %i.bd
  br i1 %i.ck, label %.loopexit491, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.cl = phi ptr [ %i.cm, %select.unfold.i.i.i.i.i.i ], [ %i.ch, %select.unfold.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.cn, align 8, !noalias !876, !noundef !4 ; 2 uses
  %i.co = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.co, label %select.unfold.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i

.loopexit.loopexit.i.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.cp = getelementptr i8, ptr %i.cl, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.cp, align 8, !noalias !876, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.i, %.loopexit.loopexit.i.i.loopexit.i
  %.lcssa3.i.i = phi ptr [ %i.cg, %bb.i ], [ %i.cq, %.loopexit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.ch, %bb.i ], [ %i.cm, %.loopexit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i10.i.lcssa.i.i = phi ptr [ %.val.i.i.i11.i.i.i, %bb.i ], [ %.val.i.i.i.i.i.le.i, %.loopexit.loopexit.i.i.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %.val.i575 = load ptr, ptr %.val.i.i.i10.i.lcssa.i.i, align 8, !alias.scope !877, !noalias !878, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i, i64 8
  %.val1.i576 = load ptr, ptr %i.cr, align 8, !alias.scope !877, !noalias !878, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i576, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !9, !invariant.load !4, !noalias !879
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = and i64 %i.cu, -16
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i575, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !879
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i576, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !4, !noalias !879, !nonnull !4
  call void %i.cz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.cx) #23, !noalias !879, !inline_history !729
  %i.da = load i128, ptr %i.d, align 16, !noalias !879, !noundef !4
  %.not.i.i577 = icmp eq i128 %i.da, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !879
  br i1 %.not.i.i577, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578, label %bb.j, !prof !13

bb.j:                                             ; preds = %.loopexit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !879
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578: ; preds = %.loopexit.i.i.i
  %i.db = add i64 %i.cf, -1                       ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cw, i64 24
  %.val.i.i.i6.i = load ptr, ptr %i.dc, align 8, !noalias !880, !nonnull !4, !noundef !4
  %i.dd = getelementptr i8, ptr %i.cw, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.dd, align 8, !noalias !880, !noundef !4
  %i.de = icmp samesign ult i64 %.sroa.11.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.q, align 8, !range !5, !alias.scope !881, !noalias !866, !noundef !4
  %i.dg = icmp eq i64 %.sroa.11.0.copyload, %i.df
  br i1 %i.dg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578
  %i.dh = call i64 @llvm.uadd.sat.i64(i64 %i.db, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %.sroa.11.0.copyload, i64 noundef range(i64 1, 0) %i.dh, i64 noundef 8, i64 noundef 16) #21, !noalias !882
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i49, align 8, !alias.scope !881, !noalias !866
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578
  %i.di = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ], [ %i.ce, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.sroa.11.0.copyload ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.dj, align 8, !noalias !883, !captures !873
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.dk, align 8, !noalias !883
  %i.dl = add nuw nsw i64 %.sroa.11.0.copyload, 1 ; 2 uses
  store i64 %i.dl, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !881, !noalias !866
  br label %bb.i

.loopexit491:                                     ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.0123.0.copyload = load i64, ptr %i.q, align 8, !noalias !884
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i49, align 8, !noalias !884 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !866
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %.idx.i = shl nuw nsw i64 %.sroa.11.0.copyload, 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.idx.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.7.0.copyload, align 8, !alias.scope !885, !nonnull !4, !noundef !4
  %i.do = getelementptr i8, ptr %.sroa.7.0.copyload, i64 8
  %.val75.i = load i64, ptr %i.do, align 8, !alias.scope !885, !noundef !4 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx.i, -16
  %i.dp = lshr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.dq = add i64 %.val75.i, %i.dp                ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  br i1 %i.dr, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i, label %.preheader.i.preheader, !prof !14

.preheader.i.preheader:                           ; preds = %.loopexit491
  %i.ds = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.ds, label %.preheader.i._crit_edge, label %.lr.ph968

.preheader.i:                                     ; preds = %.lr.ph968
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %.preheader.i._crit_edge, label %.lr.ph968

.lr.ph968:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i967 = phi i64 [ %i.dx, %.preheader.i ], [ %i.dq, %.preheader.i.preheader ] ; 2 uses
  %i.dv = phi ptr [ %i.dt, %.preheader.i ], [ %i.dn, %.preheader.i.preheader ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %.val8.i.i = load i64, ptr %i.dw, align 8, !alias.scope !885, !noalias !886, !noundef !4
  %i.dx = add i64 %.val8.i.i, %.sroa.01.0.i.i967  ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %.sroa.01.0.i.i967
  br i1 %i.dy, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.dq, %.preheader.i.preheader ], [ %i.dx, %.preheader.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !887
  %.not.i.i.i50 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i50, label %bb.m, label %bb.l, !prof !15

bb.l:                                             ; preds = %.preheader.i._crit_edge
  %i.dz = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.dz, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51: ; preds = %bb.l
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !888
  %i.ea = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #21, !noalias !888 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i55 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51 ], [ 0, %.preheader.i._crit_edge ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i55, i64 %.sroa.01.0.i.i.lcssa) #24, !noalias !887
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51, %bb.l
  %.sroa.10.0.i.i.a = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.ea, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51 ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.p, align 8, !noalias !887
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.a, ptr %i.ec, align 8, !noalias !887
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.ed, align 8, !noalias !887
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ee = icmp ugt i64 %.val75.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.ee, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, !prof !14

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0, i64 noundef %.val75.i, i64 noundef 1, i64 noundef 1) #21, !noalias !887
  %i.ef = load i64, ptr %i.ed, align 8, !alias.scope !891, !noalias !887, !noundef !4 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, -1
  call void @llvm.assume(i1 %i.eg)
  %.pre.i54 = load ptr, ptr %i.ec, align 8, !alias.scope !891, !noalias !887
  br label %bb.n

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52
  %.not.i.i76.i = icmp samesign eq i64 %.val75.i, 0
  br i1 %.not.i.i76.i, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i
  %i.eh = phi ptr [ %.pre.i54, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i ], [ %.sroa.10.0.i.i.a, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ] ; 2 uses
  %i.ei = phi i64 [ %i.ef, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull readonly align 1 %.val.i, i64 %.val75.i, i1 false), !noalias !892
  br label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %bb.n, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i
  %i.ek = phi ptr [ %i.eh, %bb.n ], [ %.sroa.10.0.i.i.a, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ]
  %i.el = phi i64 [ %i.ei, %bb.n ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ]
  %i.em = add i64 %i.el, %.val75.i                ; 3 uses
  %i.en = icmp sgt i64 %i.em, -1
  call void @llvm.assume(i1 %i.en)
  %i.eo = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.em ; 2 uses
  %i.ep = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.ep, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.em
  br label %.lr.ph.i53

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %.lr.ph968, %.loopexit491
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !887
  unreachable

.lr.ph.i53:                                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i, %.lr.ph.preheader.i
  %.sroa.012.113.i = phi ptr [ %i.er, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.dn, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.212.i = phi ptr [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.eq, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.211.i = phi i64 [ %i.ew, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.012.113.i, i64 16 ; 2 uses
  %.sroa.012.1.val.i = load ptr, ptr %.sroa.012.113.i, align 8, !alias.scope !885, !nonnull !4, !noundef !4
  %i.es = getelementptr i8, ptr %.sroa.012.113.i, i64 8
  %.sroa.012.1.val74.i = load i64, ptr %i.es, align 8, !alias.scope !885, !noundef !4 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMs_Cs2eSwMnb0Awh_11uu_unexpandNtB4_7Options3new:bb.a
  br i1 %i.jb, label %bb.bx, label %bb.br

bb.bl:                                            ; preds = %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.18.1, ptr %i.jc, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.31.1, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.43.1, ptr %.sroa.543.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.jd = icmp eq i64 %.sroa.0163.0, 0
  br i1 %i.jd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5164.0, i64 noundef %.sroa.0163.0, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !910
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit: ; preds = %bb.bl, %bb.bm
  %i.je = icmp eq i64 %.sroa.0123.0216, 0
  br i1 %i.je, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit
  %i.jf = shl nuw i64 %.sroa.0123.0216, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0191214, i64 noundef %i.jf, i64 noundef range(i64 1, -9223372036854775807) 8) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit

bb.bo:                                            ; preds = %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit
  %.sroa.0117.2231 = phi i64 [ %.sroa.022.0.ph.i, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ %.sroa.0117.1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.18.2230 = phi i64 [ %.sroa.828.0.ph.i.ph997, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ %.sroa.18.1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.31.2229 = phi i64 [ %.sroa.060.0.ph.i, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ %.sroa.31.1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.43.2228 = phi i64 [ %.sroa.7.0.ph.i.ph, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ %.sroa.43.1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.52.2227 = phi i64 [ %.sroa.52.32.copyload, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ 1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.57.2226 = phi ptr [ %.sroa.57.32.copyload, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ %.sroa.57.1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %.sroa.61.2225 = phi i64 [ %.sroa.61.32.copyload, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread ], [ 1, %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit ] ; 2 uses
  %i.jg = icmp eq i64 %.sroa.0163.0, 0
  br i1 %i.jg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit62, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5164.0, i64 noundef %.sroa.0163.0, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !911
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit62

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit62: ; preds = %bb.bo, %bb.bp
  %i.jh = icmp eq i64 %.sroa.0123.0216, 0
  br i1 %i.jh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit63, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2eSwMnb0Awh_11uu_unexpand.exit62
  %i.ji = shl nuw i64 %.sroa.0123.0216, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0191214, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 8) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit63

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit63
  %i.jj = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 4) #21
  br i1 %i.jj, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bx
  %.sroa.019.0 = phi i8 [ %i.kj, %bb.bx ], [ 0, %bb.br ]
  %i.jk = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.bs, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69
  %.sroa.0.0917.i.i.i66 = phi ptr [ %i.jl, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69 ], [ %i.x, %bb.bs ] ; 3 uses
  %.sroa.8.016.i.i.i67 = phi i64 [ %i.jm, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69 ], [ 0, %bb.bs ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i66, i64 16 ; 2 uses
  %i.jm = add nuw nsw i64 %.sroa.8.016.i.i.i67, 1
  %i.jn = getelementptr i8, ptr %.sroa.0.0917.i.i.i66, i64 8
  %.val7.i.i.i68 = load i64, ptr %i.jn, align 8, !noalias !915, !noundef !4
  %i.jo = icmp eq i64 %.val7.i.i.i68, 4
  br i1 %i.jo, label %.split.i.i.i71, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69

.split.i.i.i71:                                   ; preds = %.lr.ph.i.i.i65
  %.val.i.i.i72 = load ptr, ptr %.sroa.0.0917.i.i.i66, align 8, !noalias !915, !nonnull !4, !noundef !4
  %i.jp = load i32, ptr %.val.i.i.i72, align 1
  %i.jq = icmp ne i32 %i.jp, 1701603686
  %i.jr = zext i1 %i.jq to i32
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.bt, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i69: ; preds = %.split.i.i.i71, %.lr.ph.i.i.i65
  %i.jt = icmp eq ptr %i.jl, %i.aa
  br i1 %i.jt, label %.loopexit, label %.lr.ph.i.i.i65

bb.bt:                                            ; preds = %.split.i.i.i71
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !916, !noundef !4 ; 2 uses
  %i.jw = icmp ult i64 %.sroa.8.016.i.i.i67, %i.jv
  br i1 %i.jw, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i67, i64 noundef %i.jv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !915
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !916, !nonnull !4, !noundef !4
  %i.jz = getelementptr inbounds nuw [104 x i8], ptr %i.jy, i64 %.sroa.8.016.i.i.i67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !917
  store i128 -49237559333878691962261109163680243548, ptr %i.j, align 16, !noalias !917
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.jz, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.j) #21, !noalias !917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !917
  %.sroa.013.0.copyload.i.i74 = load i128, ptr %i.k, align 16, !noalias !917 ; 3 uses
  %i.ka = icmp eq i128 %.sroa.013.0.copyload.i.i74, -49237559333878691962261109163680243548
  br i1 %i.ka, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kb = lshr i128 %.sroa.013.0.copyload.i.i74, 64
  %i.kc = trunc nuw i128 %i.kb to i64
  %i.kd = trunc i128 %.sroa.013.0.copyload.i.i74 to i64
  %i.ke = inttoptr i64 %i.kd to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @47, ptr %i.i, align 8, !noalias !918
  %i.kf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 4, ptr %i.kf, align 8, !noalias !918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !918
  store i64 0, ptr %i.h, align 8, !noalias !919
  %.sroa.10168.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ke, ptr %.sroa.10168.8..sroa_idx, align 8, !noalias !919
  %.sroa.13169.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.kc, ptr %.sroa.13169.8..sroa_idx, align 8, !noalias !919
  %.sroa.16170.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16170.8..sroa_idx, align 8, !noalias !919
  %.sroa.16170.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16170.8..sroa_idx.sroa_idx, align 8, !noalias !919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !918
  store ptr %i.i, ptr %i.g, align 8, !noalias !918
  %.sroa.42.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs2eSwMnb0Awh_11uu_unexpand, ptr %.sroa.42.0..sroa_idx.i83, align 8, !noalias !918
  %i.kg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.kg, align 8, !noalias !918
  %.sroa.46.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i84, align 8, !noalias !918
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !918
  unreachable

bb.bx:                                            ; preds = %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs2eSwMnb0Awh_11uu_unexpand.exit63
  %i.kh = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 10) #21
  %i.ki = xor i1 %i.kh, true
  %i.kj = zext i1 %i.ki to i8
  br label %bb.bs

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !917
  %i.kk = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.jz) #21, !noalias !920
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !920, !nonnull !4, !noundef !4 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !920, !noundef !4 ; 2 uses
  %.idx973 = mul nuw nsw i64 %i.ko, 24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx973 ; 4 uses
  %i.kq = xor i1 %i.jk, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !921
  %i.kr = icmp eq i64 %i.ko, 0
  br i1 %i.kr, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %.lr.ph970

select.unfold.i.i.i:                              ; preds = %.lr.ph970
  %i.ks = icmp eq ptr %i.kt, %i.kp
  br i1 %i.ks, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %.lr.ph970

.lr.ph970:                                        ; preds = %bb.by, %select.unfold.i.i.i
  %.sroa.5134.0672969 = phi ptr [ %i.kt, %select.unfold.i.i.i ], [ %i.km, %bb.by ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.5134.0672969, i64 24 ; 5 uses
  %i.ku = getelementptr i8, ptr %.sroa.5134.0672969, i64 16
  %.val4.i.i.i = load i64, ptr %i.ku, align 8, !noalias !922, !noundef !4 ; 3 uses
  %i.kv = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.kv, label %select.unfold.i.i.i, label %.loopexit.i109

.loopexit.i109:                                   ; preds = %.lr.ph970
  %i.kw = getelementptr i8, ptr %.sroa.5134.0672969, i64 8
  %.val.i.i.i113.le = load ptr, ptr %i.kw, align 8, !noalias !922, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.le882 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.kx = getelementptr inbounds nuw i8, ptr %.val.i.i.i113.le, i64 %.idx.le882
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i.i.i113.le, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %.val.i579 = load ptr, ptr %.val.i.i.i113.le, align 8, !alias.scope !923, !noalias !924, !nonnull !4, !noundef !4
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i113.le, i64 8
  %.val1.i580 = load ptr, ptr %i.kz, align 8, !alias.scope !923, !noalias !924, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.val1.i580, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !range !9, !invariant.load !4, !noalias !925
  %i.lc = add nsw i64 %i.lb, -1
  %i.ld = and i64 %i.lc, -16
  %i.le = getelementptr inbounds nuw i8, ptr %.val.i579, i64 %i.ld ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !925
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1.i580, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !invariant.load !4, !noalias !925, !nonnull !4
  call void %i.lh(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.lf) #23, !noalias !925, !inline_history !802
  %i.li = load i128, ptr %i.c, align 16, !noalias !925, !noundef !4
  %.not.i.i581 = icmp eq i128 %i.li, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !925
  br i1 %.not.i.i581, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit, label %bb.bz, !prof !13

bb.bz:                                            ; preds = %.loopexit.i109
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !925
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit: ; preds = %.loopexit.i109
  %i.lj = add i64 %i.kk, -1                       ; 3 uses
  %i.lk = getelementptr i8, ptr %i.le, i64 24
  %.val.i110 = load ptr, ptr %i.lk, align 8, !noalias !926, !nonnull !4, !noundef !4
  %i.ll = getelementptr i8, ptr %i.le, i64 32
  %.val2.i = load i64, ptr %i.ll, align 8, !noalias !926, !noundef !4 ; 7 uses
  %i.lm = icmp eq i64 %.val2.i, 0
  br i1 %i.lm, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !927
  %i.ln = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !927 ; 3 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.ca, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit

bb.ca:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #24, !noalias !928
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ln, ptr nonnull readonly align 1 %.val.i110, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !929
  %.not.i = icmp eq i64 %.val2.i, -1
  br i1 %.not.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit
  %.sroa.6189.0265 = phi ptr [ %i.ln, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit ], [ inttoptr (i64 1 to ptr), %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit ]
  %i.lp = call i64 @llvm.uadd.sat.i64(i64 %i.lj, i64 1)
  %..i.i86 = call noundef i64 @llvm.umax.i64(i64 %i.lp, i64 4) ; 3 uses
  %i.lq = mul i64 %..i.i86, 24                    ; 3 uses
  %or.cond.i.i.i87 = icmp ugt i64 %i.lj, 384307168202282324
  br i1 %or.cond.i.i.i87, label %bb.cc, label %bb.cb, !prof !15

bb.cb:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88: ; preds = %bb.cb
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !930
  %i.ls = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.lq, i64 noundef range(i64 1, 9) 8) #21, !noalias !930 ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.cc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89

bb.cc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256
  %.sroa.4.0.ph.i.i107 = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88 ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.thread256 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i107, i64 %i.lq) #24, !noalias !921
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88, %bb.cb
  %.sroa.10.0.i.i90 = phi ptr [ inttoptr (i64 8 to ptr), %bb.cb ], [ %i.ls, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88 ] ; 8 uses
  %.sroa.4.0.i.i.a = phi i64 [ 0, %bb.cb ], [ %..i.i86, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i88 ] ; 6 uses
  %i.lu = icmp ule i64 %..i.i86, %.sroa.4.0.i.i.a
  call void @llvm.assume(i1 %i.lu)
  store i64 %.val2.i, ptr %.sroa.10.0.i.i90, align 8, !noalias !921
  %.sroa.6189.0..sroa.10.0.i.i90.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i90, i64 8
  store ptr %.sroa.6189.0265, ptr %.sroa.6189.0..sroa.10.0.i.i90.sroa_idx, align 8, !noalias !921
  %.sroa.7190.0..sroa.10.0.i.i90.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i90, i64 16
  store i64 %.val2.i, ptr %.sroa.7190.0..sroa.10.0.i.i90.sroa_idx, align 8, !noalias !921
  store i64 %.sroa.4.0.i.i.a, ptr %i.f, align 8, !noalias !921
  %.sroa.4.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i90, ptr %.sroa.4.0..sroa_idx.i91, align 8, !noalias !921
  %.sroa.6.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i92, align 8, !noalias !921
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.lv = icmp eq i64 %.val4.i.i.i, 1
  br i1 %i.lv, label %select.unfold.i.i.i19.i.preheader, label %.loopexit.i10.loopexit.i

select.unfold.i.i.i19.i.preheader:                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89
  %i.lw = icmp eq ptr %i.kt, %i.kp
  br i1 %i.lw, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %.lr.ph972

select.unfold.i.i.i19.i:                          ; preds = %.lr.ph972
  %i.lx = icmp eq ptr %i.ly, %i.kp
  br i1 %i.lx, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %.lr.ph972

.lr.ph972:                                        ; preds = %select.unfold.i.i.i19.i.preheader, %select.unfold.i.i.i19.i
  %.sroa.530.2.i352971 = phi ptr [ %i.ly, %select.unfold.i.i.i19.i ], [ %i.kt, %select.unfold.i.i.i19.i.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.530.2.i352971, i64 24 ; 3 uses
  %i.lz = getelementptr i8, ptr %.sroa.530.2.i352971, i64 16
  %.val4.i.i.i23.i = load i64, ptr %i.lz, align 8, !noalias !933, !noundef !4 ; 2 uses
  %i.ma = icmp eq i64 %.val4.i.i.i23.i, 0
  br i1 %i.ma, label %select.unfold.i.i.i19.i, label %.loopexit.i10.loopexit.i.loopexit

.loopexit.i10.loopexit.i.loopexit:                ; preds = %.lr.ph972
  %i.mb = getelementptr i8, ptr %.sroa.530.2.i352971, i64 8
  %.val.i.i.i22.i = load ptr, ptr %i.mb, align 8, !noalias !933, !nonnull !4, !noundef !4 ; 2 uses
  %.idx363 = shl nuw nsw i64 %.val4.i.i.i23.i, 5
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i, i64 %.idx363
  br label %.loopexit.i10.loopexit.i

.loopexit.i10.loopexit.i:                         ; preds = %.loopexit.i10.loopexit.i.loopexit, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89
  %.sroa.17.2.i.lcssa = phi ptr [ %i.kx, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89 ], [ %i.mc, %.loopexit.i10.loopexit.i.loopexit ]
  %.sroa.11.5.i.lcssa = phi ptr [ %i.ky, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89 ], [ %.val.i.i.i22.i, %.loopexit.i10.loopexit.i.loopexit ] ; 3 uses
  %.sroa.530.2.i.lcssa = phi ptr [ %i.kt, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i89 ], [ %i.ly, %.loopexit.i10.loopexit.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %.val.i582 = load ptr, ptr %.sroa.11.5.i.lcssa, align 8, !alias.scope !934, !noalias !935, !nonnull !4, !noundef !4
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i.lcssa, i64 8
  %.val1.i583 = load ptr, ptr %i.md, align 8, !alias.scope !934, !noalias !935, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.val1.i583, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !range !9, !invariant.load !4, !noalias !936
  %i.mg = add nsw i64 %i.mf, -1
  %i.mh = and i64 %i.mg, -16
  %i.mi = getelementptr inbounds nuw i8, ptr %.val.i582, i64 %i.mh ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !936
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1.i583, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !invariant.load !4, !noalias !936, !nonnull !4
  call void %i.ml(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.mj) #23, !noalias !936, !inline_history !827
  %i.mm = load i128, ptr %i.b, align 16, !noalias !936, !noundef !4
  %.not.i.i584 = icmp eq i128 %i.mm, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !936
  br i1 %.not.i.i584, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit585, label %bb.cd, !prof !13

bb.cd:                                            ; preds = %.loopexit.i10.loopexit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !936
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit585: ; preds = %.loopexit.i10.loopexit.i
  %i.mn = getelementptr i8, ptr %i.mi, i64 24
  %.val.i12.i = load ptr, ptr %i.mn, align 8, !noalias !937, !nonnull !4, !noundef !4
  %i.mo = getelementptr i8, ptr %i.mi, i64 32
  %.val2.i13.i = load i64, ptr %i.mo, align 8, !noalias !937, !noundef !4 ; 6 uses
  %i.mp = icmp eq i64 %.val2.i13.i, 0
  br i1 %i.mp, label %.lr.ph.i.i.i95.preheader, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit585
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !938
  %i.mq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i13.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !938 ; 3 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %bb.ce, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit27.i

bb.ce:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i13.i) #24, !noalias !939
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit27.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr nonnull readonly align 1 %.val.i12.i, i64 range(i64 0, -9223372036854775808) %.val2.i13.i, i1 false), !noalias !940
  %.not1.i.i.i = icmp eq i64 %.val2.i13.i, -1
  br i1 %.not1.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit, label %.lr.ph.i.i.i95.preheader

.lr.ph.i.i.i95.preheader:                         ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit27.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit585
  %.sroa.938.0.i.ph = phi ptr [ inttoptr (i64 1 to ptr), %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit585 ], [ %i.mq, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit27.i ]
  br label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %.lr.ph.i.i.i95.preheader, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %i.ms = phi ptr [ %i.my, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.10.0.i.i90, %.lr.ph.i.i.i95.preheader ]
  %.sroa.27.0.in.i = phi i64 [ %.sroa.27.0.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.lj, %.lr.ph.i.i.i95.preheader ]
  %.sroa.17.0.i = phi ptr [ %.sroa.17.1.i.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.17.2.i.lcssa, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.11.5.i.lcssa.pn = phi ptr [ %.sroa.11.1.i.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.11.5.i.lcssa, %.lr.ph.i.i.i95.preheader ]
  %.sroa.530.0.i = phi ptr [ %.sroa.530.1.i.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.530.2.i.lcssa, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.036.0.i = phi i64 [ %.val2.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.val2.i13.i, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.938.0.i = phi ptr [ %.sroa.938.1.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.938.0.i.ph, %.lr.ph.i.i.i95.preheader ]
  %i.mt = phi i64 [ %i.mz, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %.sroa.4.0.i.i.a, %.lr.ph.i.i.i95.preheader ] ; 3 uses
  %i.mu = phi i64 [ %i.nb, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ 1, %.lr.ph.i.i.i95.preheader ] ; 4 uses
  %.sroa.11.0.i = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i.lcssa.pn, i64 32 ; 2 uses
  %.sroa.27.0.i = add i64 %.sroa.27.0.in.i, -1    ; 2 uses
  %i.mv = icmp samesign ult i64 %i.mu, 384307168202282326
  call void @llvm.assume(i1 %i.mv)
  %i.mw = icmp eq i64 %i.mu, %i.mt
  br i1 %i.mw, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, label %bb.cf

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %.lr.ph.i.i.i95
  %i.mx = call i64 @llvm.uadd.sat.i64(i64 %.sroa.27.0.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.mt, i64 noundef range(i64 1, 0) %i.mx, i64 noundef 8, i64 noundef 24) #21, !noalias !941
  %.pre2.i.i.i = load i64, ptr %i.f, align 8, !range !5, !alias.scope !942, !noalias !921
  %.pre.i106 = load ptr, ptr %.sroa.4.0..sroa_idx.i91, align 8, !alias.scope !942, !noalias !921
  br label %bb.cf

bb.cf:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, %.lr.ph.i.i.i95
  %i.my = phi ptr [ %i.ms, %.lr.ph.i.i.i95 ], [ %.pre.i106, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ] ; 2 uses
  %i.mz = phi i64 [ %i.mt, %.lr.ph.i.i.i95 ], [ %.pre2.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ]
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.my, i64 %i.mu ; 3 uses
  store i64 %.sroa.036.0.i, ptr %i.na, align 8, !noalias !943
  %.sroa.938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %.sroa.938.0.i, ptr %.sroa.938.0..sroa_idx.i, align 8, !noalias !943
  %.sroa.1139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i64 %.sroa.036.0.i, ptr %.sroa.1139.0..sroa_idx.i, align 8, !noalias !943
  %i.nb = add nuw nsw i64 %i.mu, 1                ; 3 uses
  store i64 %i.nb, ptr %.sroa.6.0..sroa_idx.i92, align 8, !alias.scope !942, !noalias !921
  %i.nc = icmp eq ptr %.sroa.11.0.i, %.sroa.17.0.i
  br i1 %i.nc, label %select.unfold.i.i.i.i99, label %.loopexit.i.i

select.unfold.i.i.i.i99:                          ; preds = %bb.cf, %bb.cg
  %.sroa.530.1.i358 = phi ptr [ %i.ne, %bb.cg ], [ %.sroa.530.0.i, %bb.cf ] ; 4 uses
  %i.nd = icmp eq ptr %.sroa.530.1.i358, %i.kp
  br i1 %i.nd, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i.loopexit, label %bb.cg

bb.cg:                                            ; preds = %select.unfold.i.i.i.i99
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.530.1.i358, i64 24 ; 2 uses
  %i.nf = getelementptr i8, ptr %.sroa.530.1.i358, i64 16
  %.val4.i.i.i.i103 = load i64, ptr %i.nf, align 8, !noalias !944, !noundef !4 ; 2 uses
  %i.ng = icmp eq i64 %.val4.i.i.i.i103, 0
  br i1 %i.ng, label %select.unfold.i.i.i.i99, label %.loopexit.i.loopexit.i.loopexit

.loopexit.i.loopexit.i.loopexit:                  ; preds = %bb.cg
  %i.nh = getelementptr i8, ptr %.sroa.530.1.i358, i64 8
  %.val.i.i.i.i102 = load ptr, ptr %i.nh, align 8, !noalias !944, !nonnull !4, !noundef !4 ; 2 uses
  %.idx364 = shl nuw nsw i64 %.val4.i.i.i.i103, 5
  %i.ni = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i102, i64 %.idx364
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.cf, %.loopexit.i.loopexit.i.loopexit
  %.sroa.17.1.i.lcssa = phi ptr [ %.sroa.17.0.i, %bb.cf ], [ %i.ni, %.loopexit.i.loopexit.i.loopexit ]
  %.sroa.11.1.i.lcssa = phi ptr [ %.sroa.11.0.i, %bb.cf ], [ %.val.i.i.i.i102, %.loopexit.i.loopexit.i.loopexit ] ; 3 uses
  %.sroa.530.1.i.lcssa = phi ptr [ %.sroa.530.0.i, %bb.cf ], [ %i.ne, %.loopexit.i.loopexit.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %.val.i586 = load ptr, ptr %.sroa.11.1.i.lcssa, align 8, !alias.scope !945, !noalias !946, !nonnull !4, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.lcssa, i64 8
  %.val1.i587 = load ptr, ptr %i.nj, align 8, !alias.scope !945, !noalias !946, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.val1.i587, i64 16
  %i.nl = load i64, ptr %i.nk, align 8, !range !9, !invariant.load !4, !noalias !947
  %i.nm = add nsw i64 %i.nl, -1
  %i.nn = and i64 %i.nm, -16
  %i.no = getelementptr inbounds nuw i8, ptr %.val.i586, i64 %i.nn ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !947
  %i.nq = getelementptr inbounds nuw i8, ptr %.val1.i587, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8, !invariant.load !4, !noalias !947, !nonnull !4
  call void %i.nr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.np) #23, !noalias !947, !inline_history !827
  %i.ns = load i128, ptr %i.a, align 16, !noalias !947, !noundef !4
  %.not.i.i588 = icmp eq i128 %i.ns, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !947
  br i1 %.not.i.i588, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit589, label %bb.ch, !prof !13

bb.ch:                                            ; preds = %.loopexit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !947
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit589: ; preds = %.loopexit.i.i
  %i.nt = getelementptr i8, ptr %i.no, i64 24
end_hunk_1
