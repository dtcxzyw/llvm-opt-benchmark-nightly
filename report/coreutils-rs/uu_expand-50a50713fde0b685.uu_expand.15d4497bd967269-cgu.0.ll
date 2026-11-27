Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expand-50a50713fde0b685.uu_expand.15d4497bd967269-cgu.0?download=true
inline.NumInlined: 580
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7ggdWxGWrR_9uu_expand:bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #22
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
define void @_RNvMs_Cs7ggdWxGWrR_9uu_expandNtB4_7Options3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !816, !nonnull !4, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !816, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.y, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0                     ; 2 uses
  br i1 %i.aa, label %.loopexit321, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.ab, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.w, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.ac, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.ad = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.ad, align 8, !noalias !817, !noundef !4
  %i.ae = icmp eq i64 %.val7.i.i.i, 4
  br i1 %i.ae, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !817, !nonnull !4, !noundef !4
  %i.af = load i32, ptr %.val.i.i.i, align 1
  %i.ag = icmp ne i32 %i.af, 1935827316
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.aj = icmp eq ptr %i.ab, %i.z
  br i1 %i.aj, label %.loopexit321, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !816, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %.sroa.8.016.i.i.i, %i.al
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !817
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !816, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %i.ao, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !818
  store i128 53410479646238849826493945191968316847, ptr %i.t, align 16, !noalias !818
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.t) #22, !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !818
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.u, align 16, !noalias !818 ; 3 uses
  %i.aq = icmp eq i128 %.sroa.013.0.copyload.i.i, 53410479646238849826493945191968316847
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.as = trunc nuw i128 %i.ar to i64
  %i.at = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.au = inttoptr i64 %i.at to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @64, ptr %i.s, align 8, !noalias !819
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 4, ptr %i.av, align 8, !noalias !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !819
  store i64 0, ptr %i.r, align 8, !noalias !820
  %.sroa.10167.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.au, ptr %.sroa.10167.8..sroa_idx, align 8, !noalias !820
  %.sroa.13168.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.as, ptr %.sroa.13168.8..sroa_idx, align 8, !noalias !820
  %.sroa.16169.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 3117803386453401007, ptr %.sroa.16169.8..sroa_idx, align 8, !noalias !820
  %.sroa.16169.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 2895387903297248865, ptr %.sroa.16169.8..sroa_idx.sroa_idx, align 8, !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !819
  store ptr %i.s, ptr %i.q, align 8, !noalias !819
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !819
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.aw, align 8, !noalias !819
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !819
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !819
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !818
  %i.ax = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ap) #22, !noalias !821
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !821, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !821, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bb, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !822
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs7ggdWxGWrR_9uu_expand.exit.thread, label %.lr.ph

select.unfold.i.i.i.i:                            ; preds = %.lr.ph
  %i.be = icmp eq ptr %i.bf, %i.bc
  br i1 %i.be, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs7ggdWxGWrR_9uu_expand.exit.thread, label %.lr.ph

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs7ggdWxGWrR_9uu_expand.exit.thread: ; preds = %select.unfold.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !822
  br label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaEBP_.exit.thread.i

.lr.ph:                                           ; preds = %bb.f, %select.unfold.i.i.i.i
  %.sroa.48.0.copyload.i389981 = phi ptr [ %i.bf, %select.unfold.i.i.i.i ], [ %i.az, %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i389981, i64 24 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.48.0.copyload.i389981, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.bg, align 8, !noalias !823, !noundef !4 ; 2 uses
  %i.bh = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.bh, label %select.unfold.i.i.i.i, label %.loopexit.i44

.loopexit.i44:                                    ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %.sroa.48.0.copyload.i389981, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.bi, align 8, !noalias !823, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.le
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %.val.i607 = load ptr, ptr %.val.i.i.i.i.le, align 8, !alias.scope !824, !noalias !825, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 8
  %.val1.i = load ptr, ptr %i.bk, align 8, !alias.scope !824, !noalias !825, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !10, !invariant.load !4, !noalias !826
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = and i64 %i.bn, -16
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i607, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !826
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !4, !noalias !826, !nonnull !4
  call void %i.bs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.bq) #24, !noalias !826, !inline_history !625
  %i.bt = load i128, ptr %i.e, align 16, !noalias !826, !noundef !4
  %.not.i.i608 = icmp eq i128 %i.bt, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !826
  br i1 %.not.i.i608, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit, label %bb.g, !prof !14

bb.g:                                             ; preds = %.loopexit.i44
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !826
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit: ; preds = %.loopexit.i44
  %i.bu = add i64 %i.ax, -1                       ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bp, i64 24
  %.val.i.i = load ptr, ptr %i.bv, align 8, !noalias !827, !nonnull !4, !noundef !4
  %i.bw = getelementptr i8, ptr %i.bp, i64 32
  %.val3.i.i = load i64, ptr %i.bw, align 8, !noalias !827, !noundef !4
  %i.bx = call i64 @llvm.uadd.sat.i64(i64 %i.bu, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.bx, i64 4) ; 3 uses
  %i.by = shl i64 %..i.i, 4                       ; 4 uses
  %i.bz = icmp ugt i64 %i.bu, 1152921504606846974
  %.not.i.i.i = icmp ugt i64 %i.by, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bz, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %2, !prof !15

2:                                                ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit
  %3 = icmp eq i64 %i.by, 0
  br i1 %3, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %2
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !828
  %i.ca = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 1, 9) 8) #22, !noalias !828 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.by) #25, !noalias !822
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %2
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ca, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %2 ], [ %..i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %4 = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %4)
  store ptr %.val.i.i, ptr %.sroa.10.0.i.i, align 8, !noalias !822, !captures !829
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store i64 %.val3.i.i, ptr %i.cc, align 8, !noalias !822
  store i64 %.sroa.4.0.i.i, ptr %i.p, align 8, !noalias !822
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !822
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !822
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i
  %i.cd = phi ptr [ %i.dh, %bb.k ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.11.0.copyload = phi i64 [ %i.dk, %bb.k ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ] ; 8 uses
  %i.ce = phi i64 [ %i.da, %bb.k ], [ %i.bu, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ]
  %i.cf = phi ptr [ %.lcssa3.i.i, %bb.k ], [ %i.bj, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ] ; 2 uses
  %i.cg = phi ptr [ %.lcssa.i.i, %bb.k ], [ %i.bf, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ] ; 3 uses
  %.val.i.i.i10.i.lcssa.i.i.pn = phi ptr [ %.val.i.i.i10.i.lcssa.i.i, %bb.k ], [ %.val.i.i.i.i.le, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.val.i.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i.pn, i64 32 ; 2 uses
  %i.ch = icmp eq ptr %.val.i.i.i11.i.i.i, %i.cf
  br i1 %i.ch, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.i
  %i.ci = icmp eq ptr %i.cg, %i.bc
  br i1 %i.ci, label %.loopexit535, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.cj = icmp eq ptr %i.cl, %i.bc
  br i1 %i.cj, label %.loopexit535, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.ck = phi ptr [ %i.cl, %select.unfold.i.i.i.i.i.i ], [ %i.cg, %select.unfold.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !832, !noundef !4 ; 2 uses
  %i.cn = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.cn, label %select.unfold.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit.i

.loopexit.loopexit.i.i.loopexit.i:                ; preds = %.lr.ph.i
  %i.co = getelementptr i8, ptr %i.ck, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.co, align 8, !noalias !832, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.i, %.loopexit.loopexit.i.i.loopexit.i
  %.lcssa3.i.i = phi ptr [ %i.cf, %bb.i ], [ %i.cp, %.loopexit.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.cg, %bb.i ], [ %i.cl, %.loopexit.loopexit.i.i.loopexit.i ]
  %.val.i.i.i10.i.lcssa.i.i = phi ptr [ %.val.i.i.i11.i.i.i, %bb.i ], [ %.val.i.i.i.i.i.le.i, %.loopexit.loopexit.i.i.loopexit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %.val.i609 = load ptr, ptr %.val.i.i.i10.i.lcssa.i.i, align 8, !alias.scope !833, !noalias !834, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i.i, i64 8
  %.val1.i610 = load ptr, ptr %i.cq, align 8, !alias.scope !833, !noalias !834, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1.i610, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !10, !invariant.load !4, !noalias !835
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = and i64 %i.ct, -16
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i609, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !835
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1.i610, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !4, !noalias !835, !nonnull !4
  call void %i.cy(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.cw) #24, !noalias !835, !inline_history !642
  %i.cz = load i128, ptr %i.d, align 16, !noalias !835, !noundef !4
  %.not.i.i611 = icmp eq i128 %i.cz, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !835
  br i1 %.not.i.i611, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit612, label %bb.j, !prof !14

bb.j:                                             ; preds = %.loopexit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !835
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit612: ; preds = %.loopexit.i.i.i
  %i.da = add i64 %i.ce, -1                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.cv, i64 24
  %.val.i.i.i6.i = load ptr, ptr %i.db, align 8, !noalias !836, !nonnull !4, !noundef !4
  %i.dc = getelementptr i8, ptr %i.cv, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !836, !noundef !4
  %i.dd = icmp samesign ult i64 %.sroa.11.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i64, ptr %i.p, align 8, !range !5, !alias.scope !837, !noalias !822, !noundef !4
  %i.df = icmp eq i64 %.sroa.11.0.copyload, %i.de
  br i1 %i.df, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit612
  %i.dg = call i64 @llvm.uadd.sat.i64(i64 %i.da, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.sroa.11.0.copyload, i64 noundef range(i64 1, 0) %i.dg, i64 noundef 8, i64 noundef 16) #22, !noalias !838
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i45, align 8, !alias.scope !837, !noalias !822
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit612
  %i.dh = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ], [ %i.cd, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7ggdWxGWrR_9uu_expand.exit612 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %.sroa.11.0.copyload ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.di, align 8, !noalias !839, !captures !829
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.dj, align 8, !noalias !839
  %i.dk = add nuw nsw i64 %.sroa.11.0.copyload, 1 ; 2 uses
  store i64 %i.dk, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !837, !noalias !822
  br label %bb.i

.loopexit535:                                     ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.0135.0.copyload = load i64, ptr %i.p, align 8, !noalias !840 ; 6 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !840 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !822
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %.idx.i = shl nuw nsw i64 %.sroa.11.0.copyload, 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.idx.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.7.0.copyload, align 8, !alias.scope !841, !nonnull !4, !noundef !4
  %i.dn = getelementptr i8, ptr %.sroa.7.0.copyload, i64 8
  %.val75.i = load i64, ptr %i.dn, align 8, !alias.scope !841, !noundef !4 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx.i, -16
  %i.do = lshr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.dp = add i64 %.val75.i, %i.do                ; 3 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  br i1 %i.dq, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs7ggdWxGWrR_9uu_expand.exit.i, label %.preheader.i.preheader, !prof !13

.preheader.i.preheader:                           ; preds = %.loopexit535
  %i.dr = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.dr, label %.preheader.i._crit_edge, label %.lr.ph983

.preheader.i:                                     ; preds = %.lr.ph983
  %i.ds = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dl
  br i1 %i.dt, label %.preheader.i._crit_edge, label %.lr.ph983

.lr.ph983:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i982 = phi i64 [ %i.dw, %.preheader.i ], [ %i.dp, %.preheader.i.preheader ] ; 2 uses
  %i.du = phi ptr [ %i.ds, %.preheader.i ], [ %i.dm, %.preheader.i.preheader ] ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %.val8.i.i = load i64, ptr %i.dv, align 8, !alias.scope !841, !noalias !842, !noundef !4
  %i.dw = add i64 %.val8.i.i, %.sroa.01.0.i.i982  ; 3 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.01.0.i.i982
  br i1 %i.dx, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs7ggdWxGWrR_9uu_expand.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.dp, %.preheader.i.preheader ], [ %i.dw, %.preheader.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !843
  %.not.i.i.i46 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i46, label %bb.m, label %bb.l, !prof !15

bb.l:                                             ; preds = %.preheader.i._crit_edge
  %i.dy = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.dy, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i48, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47: ; preds = %bb.l
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !844
  %i.dz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #22, !noalias !844 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i48

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i51 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47 ], [ 0, %.preheader.i._crit_edge ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i51, i64 %.sroa.01.0.i.i.lcssa) #25, !noalias !843
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i48: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47, %bb.l
  %.sroa.10.0.i.i.a = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.dz, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i47 ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.o, align 8, !noalias !843
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.a, ptr %i.eb, align 8, !noalias !843
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.ec, align 8, !noalias !843
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.ed = icmp ugt i64 %.val75.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.ed, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, !prof !13

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i48
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0, i64 noundef %.val75.i, i64 noundef 1, i64 noundef 1) #22, !noalias !843
  %i.ee = load i64, ptr %i.ec, align 8, !alias.scope !847, !noalias !843, !noundef !4 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %.pre.i50 = load ptr, ptr %i.eb, align 8, !alias.scope !847, !noalias !843
  br label %bb.n

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i48
  %.not.i.i76.i = icmp samesign eq i64 %.val75.i, 0
  br i1 %.not.i.i76.i, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs7ggdWxGWrR_9uu_expand.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.thread.i.i.i
  %i.eg = phi ptr [ %.pre.i50, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.thread.i.i.i ], [ %.sroa.10.0.i.i.a, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ] ; 2 uses
  %i.eh = phi i64 [ %i.ee, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.thread.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull readonly align 1 %.val.i, i64 %.val75.i, i1 false), !noalias !848
  br label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs7ggdWxGWrR_9uu_expand.exit.i

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.n, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i
  %i.ej = phi ptr [ %i.eg, %bb.n ], [ %.sroa.10.0.i.i.a, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ]
  %i.ek = phi i64 [ %i.eh, %bb.n ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ]
  %i.el = add i64 %i.ek, %.val75.i                ; 3 uses
  %i.em = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.em)
  %i.en = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.el ; 2 uses
  %i.eo = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.eo, label %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs7ggdWxGWrR_9uu_expand.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el
  br label %.lr.ph.i49

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %.lr.ph983, %.loopexit535
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !843
  unreachable

.lr.ph.i49:                                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7ggdWxGWrR_9uu_expand.exit.i, %.lr.ph.preheader.i
  %.sroa.012.113.i = phi ptr [ %i.eq, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.dm, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.212.i = phi ptr [ %i.eu, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.ep, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.211.i = phi i64 [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.en, %.lr.ph.preheader.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.012.113.i, i64 16 ; 2 uses
  %.sroa.012.1.val.i = load ptr, ptr %.sroa.012.113.i, align 8, !alias.scope !841, !nonnull !4, !noundef !4
  %i.er = getelementptr i8, ptr %.sroa.012.113.i, i64 8
  %.sroa.012.1.val74.i = load i64, ptr %i.er, align 8, !alias.scope !841, !noundef !4 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMs_Cs7ggdWxGWrR_9uu_expandNtB4_7Options3new:bb.a
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.bm, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !13

bb.bm:                                            ; preds = %.loopexit321
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.loopexit321
  store i64 8, ptr %i.nv, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82: ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.027.0 = phi i8 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.13.sroa.0.1271, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.13.sroa.0.1271, %bb.bu ]
  %.sroa.028.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.24.1274, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.24.1274, %bb.bu ]
  %.sroa.3.0 = phi ptr [ %i.nv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.31.1273, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.31.1273, %bb.bu ]
  %.sroa.431.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.38.1272, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.38.1272, %bb.bu ]
  %i.nx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 7) #22
  %i.ny = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62
  %.sroa.0.0917.i.i.i59 = phi ptr [ %i.nz, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ %i.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 3 uses
  %.sroa.8.016.i.i.i60 = phi i64 [ %i.oa, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i59, i64 16 ; 2 uses
  %i.oa = add nuw nsw i64 %.sroa.8.016.i.i.i60, 1
  %i.ob = getelementptr i8, ptr %.sroa.0.0917.i.i.i59, i64 8
  %.val7.i.i.i61 = load i64, ptr %i.ob, align 8, !noalias !877, !noundef !4
  %i.oc = icmp eq i64 %.val7.i.i.i61, 5
  br i1 %i.oc, label %.split.i.i.i64, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

.split.i.i.i64:                                   ; preds = %.lr.ph.i.i.i58
  %.val.i.i.i65 = load ptr, ptr %.sroa.0.0917.i.i.i59, align 8, !noalias !877, !nonnull !4, !noundef !4 ; 2 uses
  %i.od = load i32, ptr %.val.i.i.i65, align 1
  %i.oe = xor i32 %i.od, 1162627398
  %i.of = getelementptr i8, ptr %.val.i.i.i65, i64 4
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i32
  %i.oi = xor i32 %i.oh, 83
  %i.oj = or i32 %i.oe, %i.oi
  %i.ok = icmp ne i32 %i.oj, 0
  %i.ol = zext i1 %i.ok to i32
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.bn, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62: ; preds = %.split.i.i.i64, %.lr.ph.i.i.i58
  %i.on = icmp eq ptr %i.nz, %i.z
  br i1 %i.on, label %.loopexit, label %.lr.ph.i.i.i58

bb.bn:                                            ; preds = %.split.i.i.i64
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !878, !noundef !4 ; 2 uses
  %i.oq = icmp ult i64 %.sroa.8.016.i.i.i60, %i.op
  br i1 %i.oq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i60, i64 noundef %i.op, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !877
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !878, !nonnull !4, !noundef !4
  %i.ot = getelementptr inbounds nuw [104 x i8], ptr %i.os, i64 %.sroa.8.016.i.i.i60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !879
  store i128 -49237559333878691962261109163680243548, ptr %i.j, align 16, !noalias !879
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ot, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.j) #22, !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !879
  %.sroa.013.0.copyload.i.i67 = load i128, ptr %i.k, align 16, !noalias !879 ; 3 uses
  %i.ou = icmp eq i128 %.sroa.013.0.copyload.i.i67, -49237559333878691962261109163680243548
  br i1 %i.ou, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ov = lshr i128 %.sroa.013.0.copyload.i.i67, 64
  %i.ow = trunc nuw i128 %i.ov to i64
  %i.ox = trunc i128 %.sroa.013.0.copyload.i.i67 to i64
  %i.oy = inttoptr i64 %i.ox to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @65, ptr %i.i, align 8, !noalias !880
  %i.oz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 5, ptr %i.oz, align 8, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !880
  store i64 0, ptr %i.h, align 8, !noalias !881
  %.sroa.10181.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.oy, ptr %.sroa.10181.8..sroa_idx, align 8, !noalias !881
  %.sroa.13182.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ow, ptr %.sroa.13182.8..sroa_idx, align 8, !noalias !881
  %.sroa.16183.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16183.8..sroa_idx, align 8, !noalias !881
  %.sroa.16183.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16183.8..sroa_idx.sroa_idx, align 8, !noalias !881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !880
  store ptr %i.i, ptr %i.g, align 8, !noalias !880
  %.sroa.42.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.42.0..sroa_idx.i76, align 8, !noalias !880
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.pa, align 8, !noalias !880
  %.sroa.46.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i77, align 8, !noalias !880
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !880
  unreachable

bb.br:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0.copyload, i64 noundef %.sroa.0175.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !882
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit, %bb.br
  %i.pb = icmp eq i64 %.sroa.0135.0.copyload, 0
  br i1 %i.pb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
  %i.pc = shl nuw i64 %.sroa.0135.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.pc, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit

_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread: ; preds = %bb.z, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.24.1274 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.430.i.sroa.3.7.copyload, %bb.z ] ; 2 uses
  %.sroa.31.1273 = phi ptr [ %i.gt, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.it, %bb.z ] ; 2 uses
  %.sroa.38.1272 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.430.i.sroa.6.7.copyload, %bb.z ] ; 2 uses
  %.sroa.13.sroa.0.1271 = phi i8 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.is, %bb.z ] ; 2 uses
  %.sroa.0135.0219226270 = phi i64 [ %.sroa.0135.0219227, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.0135.0.copyload, %bb.z ] ; 2 uses
  %.sroa.7.0217228269 = phi ptr [ %.sroa.7.0217229, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.7.0.copyload, %bb.z ] ; 2 uses
  %.sroa.5176.0230268 = phi ptr [ %.sroa.5176.0231, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.5176.0.copyload, %bb.z ]
  %.sroa.0175.0232267 = phi i64 [ %.sroa.0175.0233, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.0175.0.copyload, %bb.z ] ; 2 uses
  %i.pd = icmp eq i64 %.sroa.0175.0232267, 0
  br i1 %i.pd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81, label %bb.bt

bb.bt:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0230268, i64 noundef %.sroa.0175.0232267, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !883
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81: ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread, %bb.bt
  %i.pe = icmp eq i64 %.sroa.0135.0219226270, 0
  br i1 %i.pe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81
  %i.pf = shl nuw i64 %.sroa.0135.0219226270, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0217228269) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0217228269, i64 noundef %i.pf, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82

bb.bv:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !879
  %i.pg = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ot) #22, !noalias !884
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 56
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !884, !nonnull !4, !noundef !4 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.pk = load i64, ptr %i.pj, align 8, !noalias !884, !noundef !4 ; 2 uses
  %.idx991 = mul nuw nsw i64 %i.pk, 24
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.idx991 ; 4 uses
  %i.pm = xor i1 %i.ny, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !885
  %i.pn = icmp eq i64 %i.pk, 0
  br i1 %i.pn, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph988

select.unfold.i.i.i:                              ; preds = %.lr.ph988
  %i.po = icmp eq ptr %i.pp, %i.pl
  br i1 %i.po, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph988

.lr.ph988:                                        ; preds = %bb.bv, %select.unfold.i.i.i
  %.sroa.5146.0703987 = phi ptr [ %i.pp, %select.unfold.i.i.i ], [ %i.pi, %bb.bv ] ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.5146.0703987, i64 24 ; 5 uses
  %i.pq = getelementptr i8, ptr %.sroa.5146.0703987, i64 16
  %.val4.i.i.i = load i64, ptr %i.pq, align 8, !noalias !886, !noundef !4 ; 3 uses
  %i.pr = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.pr, label %select.unfold.i.i.i, label %.loopexit.i112

.loopexit.i112:                                   ; preds = %.lr.ph988
  %i.ps = getelementptr i8, ptr %.sroa.5146.0703987, i64 8
  %.val.i.i.i116.le = load ptr, ptr %i.ps, align 8, !noalias !886, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.le906 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.pt = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 %.idx.le906
  %i.pu = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %.val.i613 = load ptr, ptr %.val.i.i.i116.le, align 8, !alias.scope !887, !noalias !888, !nonnull !4, !noundef !4
  %i.pv = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 8
  %.val1.i614 = load ptr, ptr %i.pv, align 8, !alias.scope !887, !noalias !888, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.val1.i614, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !range !10, !invariant.load !4, !noalias !889
  %i.py = add nsw i64 %i.px, -1
  %i.pz = and i64 %i.py, -16
  %i.qa = getelementptr inbounds nuw i8, ptr %.val.i613, i64 %i.pz ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !889
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1.i614, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8, !invariant.load !4, !noalias !889, !nonnull !4
  call void %i.qd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.qb) #24, !noalias !889, !inline_history !758
  %i.qe = load i128, ptr %i.c, align 16, !noalias !889, !noundef !4
  %.not.i.i615 = icmp eq i128 %i.qe, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !889
  br i1 %.not.i.i615, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit, label %bb.bw, !prof !14

bb.bw:                                            ; preds = %.loopexit.i112
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !889
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit: ; preds = %.loopexit.i112
  %i.qf = add i64 %i.pg, -1                       ; 3 uses
  %i.qg = getelementptr i8, ptr %i.qa, i64 24
  %.val.i113 = load ptr, ptr %i.qg, align 8, !noalias !890, !nonnull !4, !noundef !4
  %i.qh = getelementptr i8, ptr %i.qa, i64 32
  %.val2.i = load i64, ptr %i.qh, align 8, !noalias !890, !noundef !4 ; 7 uses
  %i.qi = icmp eq i64 %.val2.i, 0
  br i1 %i.qi, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !891
  %i.qj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !891 ; 3 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.bx, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit

bb.bx:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #25, !noalias !892
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qj, ptr nonnull readonly align 1 %.val.i113, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !893
  %.not.i83 = icmp eq i64 %.val2.i, -1
  br i1 %.not.i83, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit
  %.sroa.6194.0308 = phi ptr [ %i.qj, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit ], [ inttoptr (i64 1 to ptr), %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit ]
  %i.ql = call i64 @llvm.uadd.sat.i64(i64 %i.qf, i64 1)
  %..i.i85 = call noundef i64 @llvm.umax.i64(i64 %i.ql, i64 4) ; 3 uses
  %i.qm = mul i64 %..i.i85, 24                    ; 3 uses
  %or.cond.i.i.i86 = icmp ugt i64 %i.qf, 384307168202282324
  br i1 %or.cond.i.i.i86, label %bb.bz, label %bb.by, !prof !15

bb.by:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299
  %i.qn = icmp eq i64 %i.qm, 0
  br i1 %i.qn, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87: ; preds = %bb.by
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !894
  %i.qo = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.qm, i64 noundef range(i64 1, 9) 8) #22, !noalias !894 ; 2 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %bb.bz, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88

bb.bz:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299
  %.sroa.4.0.ph.i.i108 = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i108, i64 %i.qm) #25, !noalias !885
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87, %bb.by
  %.sroa.10.0.i.i89 = phi ptr [ inttoptr (i64 8 to ptr), %bb.by ], [ %i.qo, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ] ; 8 uses
  %.sroa.4.0.i.i.a = phi i64 [ 0, %bb.by ], [ %..i.i85, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ] ; 6 uses
  %i.qq = icmp ule i64 %..i.i85, %.sroa.4.0.i.i.a
  call void @llvm.assume(i1 %i.qq)
  store i64 %.val2.i, ptr %.sroa.10.0.i.i89, align 8, !noalias !885
  %.sroa.6194.0..sroa.10.0.i.i89.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i89, i64 8
  store ptr %.sroa.6194.0308, ptr %.sroa.6194.0..sroa.10.0.i.i89.sroa_idx, align 8, !noalias !885
  %.sroa.7195.0..sroa.10.0.i.i89.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i89, i64 16
  store i64 %.val2.i, ptr %.sroa.7195.0..sroa.10.0.i.i89.sroa_idx, align 8, !noalias !885
  store i64 %.sroa.4.0.i.i.a, ptr %i.f, align 8, !noalias !885
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i89, ptr %.sroa.4.0..sroa_idx.i90, align 8, !noalias !885
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i91, align 8, !noalias !885
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.qr = icmp eq i64 %.val4.i.i.i, 1
  br i1 %i.qr, label %select.unfold.i.i.i19.i.preheader, label %.loopexit.i10.loopexit.i

select.unfold.i.i.i19.i.preheader:                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88
  %i.qs = icmp eq ptr %i.pp, %i.pl
  br i1 %i.qs, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph990

select.unfold.i.i.i19.i:                          ; preds = %.lr.ph990
  %i.qt = icmp eq ptr %i.qu, %i.pl
  br i1 %i.qt, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph990

.lr.ph990:                                        ; preds = %select.unfold.i.i.i19.i.preheader, %select.unfold.i.i.i19.i
  %.sroa.530.2.i392989 = phi ptr [ %i.qu, %select.unfold.i.i.i19.i ], [ %i.pp, %select.unfold.i.i.i19.i.preheader ] ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.530.2.i392989, i64 24 ; 3 uses
  %i.qv = getelementptr i8, ptr %.sroa.530.2.i392989, i64 16
  %.val4.i.i.i23.i = load i64, ptr %i.qv, align 8, !noalias !897, !noundef !4 ; 2 uses
  %i.qw = icmp eq i64 %.val4.i.i.i23.i, 0
  br i1 %i.qw, label %select.unfold.i.i.i19.i, label %.loopexit.i10.loopexit.i.loopexit

.loopexit.i10.loopexit.i.loopexit:                ; preds = %.lr.ph990
  %i.qx = getelementptr i8, ptr %.sroa.530.2.i392989, i64 8
  %.val.i.i.i22.i = load ptr, ptr %i.qx, align 8, !noalias !897, !nonnull !4, !noundef !4 ; 2 uses
  %.idx403 = shl nuw nsw i64 %.val4.i.i.i23.i, 5
  %i.qy = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i, i64 %.idx403
  br label %.loopexit.i10.loopexit.i

.loopexit.i10.loopexit.i:                         ; preds = %.loopexit.i10.loopexit.i.loopexit, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88
  %.sroa.17.2.i94.lcssa = phi ptr [ %i.pt, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %i.qy, %.loopexit.i10.loopexit.i.loopexit ]
  %.sroa.11.5.i.lcssa = phi ptr [ %i.pu, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %.val.i.i.i22.i, %.loopexit.i10.loopexit.i.loopexit ] ; 3 uses
  %.sroa.530.2.i.lcssa = phi ptr [ %i.pp, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %i.qu, %.loopexit.i10.loopexit.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %.val.i616 = load ptr, ptr %.sroa.11.5.i.lcssa, align 8, !alias.scope !898, !noalias !899, !nonnull !4, !noundef !4
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i.lcssa, i64 8
  %.val1.i617 = load ptr, ptr %i.qz, align 8, !alias.scope !898, !noalias !899, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.val1.i617, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !range !10, !invariant.load !4, !noalias !900
  %i.rc = add nsw i64 %i.rb, -1
  %i.rd = and i64 %i.rc, -16
  %i.re = getelementptr inbounds nuw i8, ptr %.val.i616, i64 %i.rd ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !900
  %i.rg = getelementptr inbounds nuw i8, ptr %.val1.i617, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !invariant.load !4, !noalias !900, !nonnull !4
  call void %i.rh(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.rf) #24, !noalias !900, !inline_history !783
  %i.ri = load i128, ptr %i.b, align 16, !noalias !900, !noundef !4
  %.not.i.i618 = icmp eq i128 %i.ri, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !900
  br i1 %.not.i.i618, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619, label %bb.ca, !prof !14

bb.ca:                                            ; preds = %.loopexit.i10.loopexit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !900
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619: ; preds = %.loopexit.i10.loopexit.i
  %i.rj = getelementptr i8, ptr %i.re, i64 24
  %.val.i12.i = load ptr, ptr %i.rj, align 8, !noalias !901, !nonnull !4, !noundef !4
  %i.rk = getelementptr i8, ptr %i.re, i64 32
  %.val2.i13.i = load i64, ptr %i.rk, align 8, !noalias !901, !noundef !4 ; 6 uses
  %i.rl = icmp eq i64 %.val2.i13.i, 0
  br i1 %i.rl, label %.lr.ph.i.i.i95.preheader, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !902
  %i.rm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i13.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !902 ; 3 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %bb.cb, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit27.i

bb.cb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i13.i) #25, !noalias !903
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit27.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i14.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rm, ptr nonnull readonly align 1 %.val.i12.i, i64 range(i64 0, -9223372036854775808) %.val2.i13.i, i1 false), !noalias !904
  %.not1.i.i.i = icmp eq i64 %.val2.i13.i, -1
  br i1 %.not1.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph.i.i.i95.preheader

.lr.ph.i.i.i95.preheader:                         ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit27.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619
  %.sroa.938.0.i.ph = phi ptr [ inttoptr (i64 1 to ptr), %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619 ], [ %i.rm, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit27.i ]
  br label %.lr.ph.i.i.i95

.lr.ph.i.i.i95:                                   ; preds = %.lr.ph.i.i.i95.preheader, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i
  %i.ro = phi ptr [ %i.ru, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.10.0.i.i89, %.lr.ph.i.i.i95.preheader ]
  %.sroa.27.0.in.i = phi i64 [ %.sroa.27.0.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.qf, %.lr.ph.i.i.i95.preheader ]
  %.sroa.17.0.i = phi ptr [ %.sroa.17.1.i96.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.17.2.i94.lcssa, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.11.5.i.lcssa.pn = phi ptr [ %.sroa.11.1.i.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.11.5.i.lcssa, %.lr.ph.i.i.i95.preheader ]
  %.sroa.530.0.i = phi ptr [ %.sroa.530.1.i.lcssa, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.530.2.i.lcssa, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.036.0.i = phi i64 [ %.val2.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.val2.i13.i, %.lr.ph.i.i.i95.preheader ] ; 2 uses
  %.sroa.938.0.i = phi ptr [ %.sroa.938.1.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.938.0.i.ph, %.lr.ph.i.i.i95.preheader ]
  %i.rp = phi i64 [ %i.rv, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.4.0.i.i.a, %.lr.ph.i.i.i95.preheader ] ; 3 uses
  %i.rq = phi i64 [ %i.rx, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.i ], [ 1, %.lr.ph.i.i.i95.preheader ] ; 4 uses
  %.sroa.11.0.i = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i.lcssa.pn, i64 32 ; 2 uses
  %.sroa.27.0.i = add i64 %.sroa.27.0.in.i, -1    ; 2 uses
  %i.rr = icmp samesign ult i64 %i.rq, 384307168202282326
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp eq i64 %i.rq, %i.rp
  br i1 %i.rs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, label %bb.cc

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i: ; preds = %.lr.ph.i.i.i95
  %i.rt = call i64 @llvm.uadd.sat.i64(i64 %.sroa.27.0.i, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.rp, i64 noundef range(i64 1, 0) %i.rt, i64 noundef 8, i64 noundef 24) #22, !noalias !905
  %.pre2.i.i.i = load i64, ptr %i.f, align 8, !range !5, !alias.scope !906, !noalias !885
  %.pre.i107 = load ptr, ptr %.sroa.4.0..sroa_idx.i90, align 8, !alias.scope !906, !noalias !885
  br label %bb.cc

bb.cc:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i, %.lr.ph.i.i.i95
  %i.ru = phi ptr [ %i.ro, %.lr.ph.i.i.i95 ], [ %.pre.i107, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ] ; 2 uses
  %i.rv = phi i64 [ %i.rp, %.lr.ph.i.i.i95 ], [ %.pre2.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE7reserveCs7ggdWxGWrR_9uu_expand.exit.i.i.i ]
  %i.rw = getelementptr inbounds nuw [24 x i8], ptr %i.ru, i64 %i.rq ; 3 uses
  store i64 %.sroa.036.0.i, ptr %i.rw, align 8, !noalias !907
  %.sroa.938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %.sroa.938.0.i, ptr %.sroa.938.0..sroa_idx.i, align 8, !noalias !907
  %.sroa.1139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store i64 %.sroa.036.0.i, ptr %.sroa.1139.0..sroa_idx.i, align 8, !noalias !907
  %i.rx = add nuw nsw i64 %i.rq, 1                ; 3 uses
  store i64 %i.rx, ptr %.sroa.6.0..sroa_idx.i91, align 8, !alias.scope !906, !noalias !885
  %i.ry = icmp eq ptr %.sroa.11.0.i, %.sroa.17.0.i
  br i1 %i.ry, label %select.unfold.i.i.i.i100, label %.loopexit.i.i

select.unfold.i.i.i.i100:                         ; preds = %bb.cc, %bb.cd
  %.sroa.530.1.i398 = phi ptr [ %i.sa, %bb.cd ], [ %.sroa.530.0.i, %bb.cc ] ; 4 uses
  %i.rz = icmp eq ptr %.sroa.530.1.i398, %i.pl
  br i1 %i.rz, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefBR_EEE11spec_extendCs7ggdWxGWrR_9uu_expand.exit.i.loopexit, label %bb.cd

bb.cd:                                            ; preds = %select.unfold.i.i.i.i100
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.530.1.i398, i64 24 ; 2 uses
  %i.sb = getelementptr i8, ptr %.sroa.530.1.i398, i64 16
  %.val4.i.i.i.i104 = load i64, ptr %i.sb, align 8, !noalias !908, !noundef !4 ; 2 uses
  %i.sc = icmp eq i64 %.val4.i.i.i.i104, 0
  br i1 %i.sc, label %select.unfold.i.i.i.i100, label %.loopexit.i.loopexit.i.loopexit

.loopexit.i.loopexit.i.loopexit:                  ; preds = %bb.cd
  %i.sd = getelementptr i8, ptr %.sroa.530.1.i398, i64 8
  %.val.i.i.i.i103 = load ptr, ptr %i.sd, align 8, !noalias !908, !nonnull !4, !noundef !4 ; 2 uses
  %.idx404 = shl nuw nsw i64 %.val4.i.i.i.i104, 5
  %i.se = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i103, i64 %.idx404
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.cc, %.loopexit.i.loopexit.i.loopexit
  %.sroa.17.1.i96.lcssa = phi ptr [ %.sroa.17.0.i, %bb.cc ], [ %i.se, %.loopexit.i.loopexit.i.loopexit ]
  %.sroa.11.1.i.lcssa = phi ptr [ %.sroa.11.0.i, %bb.cc ], [ %.val.i.i.i.i103, %.loopexit.i.loopexit.i.loopexit ] ; 3 uses
  %.sroa.530.1.i.lcssa = phi ptr [ %.sroa.530.0.i, %bb.cc ], [ %i.sa, %.loopexit.i.loopexit.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %.val.i620 = load ptr, ptr %.sroa.11.1.i.lcssa, align 8, !alias.scope !909, !noalias !910, !nonnull !4, !noundef !4
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.lcssa, i64 8
  %.val1.i621 = load ptr, ptr %i.sf, align 8, !alias.scope !909, !noalias !910, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.val1.i621, i64 16
  %i.sh = load i64, ptr %i.sg, align 8, !range !10, !invariant.load !4, !noalias !911
  %i.si = add nsw i64 %i.sh, -1
  %i.sj = and i64 %i.si, -16
  %i.sk = getelementptr inbounds nuw i8, ptr %.val.i620, i64 %i.sj ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !911
  %i.sm = getelementptr inbounds nuw i8, ptr %.val1.i621, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !invariant.load !4, !noalias !911, !nonnull !4
  call void %i.sn(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.sl) #24, !noalias !911, !inline_history !783
  %i.so = load i128, ptr %i.a, align 16, !noalias !911, !noundef !4
  %.not.i.i622 = icmp eq i128 %i.so, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !911
  br i1 %.not.i.i622, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit623, label %bb.ce, !prof !14

bb.ce:                                            ; preds = %.loopexit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !911
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit623: ; preds = %.loopexit.i.i
  %i.sp = getelementptr i8, ptr %i.sk, i64 24
end_hunk_1
