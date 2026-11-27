Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_wc-e07c7bfd28db3287.uu_wc.b87a570b18e6c4e2-cgu.0?download=true
inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtNtCsfPYenFzdTHO_5uu_wc4utf84readINtB2_14BufReadDecoderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockE11next_strictB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not34 = icmp ugt i64 %.sroa.5.0, %i.af
  br i1 %.not34, label %bb.r, label %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete11take_buffer.exit, !prof !30

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.5.0, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #29
  unreachable

_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete11take_buffer.exit: ; preds = %split, %bb.q
  %.sroa.07.2 = phi i8 [ %.sroa.07.0, %bb.q ], [ %.sroa.07.3, %split ]
  %.sroa.012.0 = phi ptr [ %i.v, %bb.q ], [ %i.f, %split ] ; 2 uses
  %.sroa.414.0 = phi i64 [ %.sroa.5.0, %bb.q ], [ %i.al, %split ] ; 2 uses
  %i.ag = trunc nuw i8 %.sroa.07.2 to i1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.v, %bb.w, %bb.e, %bb.i, %bb.p
  ret void

bb.t:                                             ; preds = %bb.h
  %i.ah = call fastcc { i64, i8 } @_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete20try_complete_offsets(ptr noalias nofree noundef dereferenceable(5) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.o) #28 ; 2 uses
  %i.ai = extractvalue { i64, i8 } %i.ah, 0       ; 2 uses
  %i.aj = extractvalue { i64, i8 } %i.ah, 1       ; 2 uses
  store i64 %i.ai, ptr %i.d, align 8
  %.not32 = icmp eq i8 %i.aj, 2
  br i1 %.not32, label %.backedge, label %._crit_edge

.backedge:                                        ; preds = %bb.t, %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete3new.exit
  %.be = phi i64 [ %i.ai, %bb.t ], [ %i.o, %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete3new.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %bb.t
  %.pre56 = load i8, ptr %i.g, align 4, !alias.scope !1945
  br label %split

split:                                            ; preds = %bb.h, %._crit_edge
  %i.ak = phi i8 [ %.pre56, %._crit_edge ], [ %i.p, %bb.h ] ; 2 uses
  %.sroa.07.3 = phi i8 [ %i.aj, %._crit_edge ], [ 1, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  store i8 0, ptr %i.g, align 4, !alias.scope !1945
  %i.am = icmp ult i8 %i.ak, 5
  br i1 %i.am, label %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete11take_buffer.exit, label %bb.u, !prof !24

bb.u:                                             ; preds = %split
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.al, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #29, !noalias !1945
  unreachable

bb.v:                                             ; preds = %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete11take_buffer.exit
  store i64 1, ptr %0, align 8
  store ptr %.sroa.012.0, ptr %.sroa.420.0..sroa_idx, align 8
  store i64 %.sroa.414.0, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.s

bb.w:                                             ; preds = %_RNvMNtCsfPYenFzdTHO_5uu_wc4utf8NtB2_10Incomplete11take_buffer.exit
  store i64 0, ptr %0, align 8
  store ptr %.sroa.012.0, ptr %.sroa.420.0..sroa_idx, align 8
  store i64 %.sroa.414.0, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [88 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [88 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 9 uses
  %i.o = alloca [176 x i8], align 8               ; 8 uses
  %i.p = alloca [144 x i8], align 8               ; 6 uses
  %i.q = alloca [88 x i8], align 8                ; 5 uses
  %i.r = alloca [80 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [40 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 16               ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2218, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2218, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.ah, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.ac, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.ai, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.aj = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.aj, align 8, !noalias !2219, !noundef !4
  %i.ak = icmp eq i64 %.val7.i.i.i, 5
  br i1 %i.ak, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !2219, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = load i32, ptr %.val.i.i.i, align 1
  %i.am = xor i32 %i.al, 1701603686
  %i.an = getelementptr i8, ptr %.val.i.i.i, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, 115
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.av = icmp eq ptr %i.ah, %i.af
  br i1 %i.av, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2218, !noundef !4 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.8.016.i.i.i, %i.ax
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #29, !noalias !2219
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2218, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.ba, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2220
  store i128 -49237559333878691962261109163680243548, ptr %i.y, align 16, !noalias !2220
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.y) #28, !noalias !2220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2220
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.z, align 16, !noalias !2220 ; 3 uses
  %i.bc = icmp eq i128 %.sroa.013.0.copyload.i.i, -49237559333878691962261109163680243548
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2220
  %i.bd = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bb) #28, !noalias !2221
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2221, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2221, !noundef !4
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = add i64 %i.bd, -1
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit

bb.f:                                             ; preds = %bb.d
  %i.bk = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.bn = inttoptr i64 %i.bm to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @96, ptr %i.x, align 8, !noalias !2222
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 5, ptr %i.bo, align 8, !noalias !2222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2222
  store i64 0, ptr %i.w, align 8, !noalias !2223
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bn, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !2223
  %.sroa.1388.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.bl, ptr %.sroa.1388.8..sroa_idx, align 8, !noalias !2223
  %.sroa.1689.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 -5815876261132279644, ptr %.sroa.1689.8..sroa_idx, align 8, !noalias !2223
  %.sroa.1689.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -2669173439883760220, ptr %.sroa.1689.8..sroa_idx.sroa_idx, align 8, !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2222
  store ptr %i.x, ptr %i.v, align 8, !noalias !2222
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2222
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.bp, align 8, !noalias !2222
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2222
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29, !noalias !2222
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.e, %bb.a
  %.sroa.1388.0.ph = phi ptr [ undef, %bb.a ], [ %i.bi, %bb.e ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 4 uses
  %.sroa.10.0.ph = phi ptr [ undef, %bb.a ], [ %i.bf, %bb.e ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 2 uses
  %.sroa.23.0.ph = phi i64 [ undef, %bb.a ], [ %i.bj, %bb.e ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 2 uses
  %.not = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ true, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ]
  %.sroa.687.0.ph = phi ptr [ null, %bb.a ], [ @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCsfPYenFzdTHO_5uu_wc, %bb.e ], [ null, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @120, ptr %i.u, align 8, !noalias !2224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 11, ptr %i.bq, align 8, !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2224
  %i.br = load i64, ptr %i.aa, align 8, !range !23, !alias.scope !2224, !noundef !4
  %.not.i = icmp eq i64 %i.br, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsfPYenFzdTHO_5uu_wc.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2224
  store ptr %i.u, ptr %i.s, align 8, !noalias !2224
  %.sroa.42.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.42.0..sroa_idx.i37, align 8, !noalias !2224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.bs, align 8, !noalias !2224
  %.sroa.46.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i38, align 8, !noalias !2224
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29, !noalias !2224
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsfPYenFzdTHO_5uu_wc.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !2224, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not26 = icmp eq ptr %i.bu, null               ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsfPYenFzdTHO_5uu_wc.exit
  br i1 %.not26, label %bb.bi, label %select.unfold.i.i

bb.i:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsfPYenFzdTHO_5uu_wc.exit
  br i1 %.not26, label %bb.be, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val33 = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  %.val34 = load i64, ptr %i.bw, align 8, !noundef !4 ; 4 uses
  %i.bx = icmp eq i64 %.val34, 1
  br i1 %i.bx, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %lhsc.i = load i8, ptr %.val33, align 1, !noalias !2225
  %i.by = icmp eq i8 %lhsc.i, 45
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #28, !noalias !2226 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2227
  %i.ca = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},~{memory}"(ptr nonnull inttoptr (i64 5 to ptr), ptr null, ptr nonnull %i.p) #28, !noalias !2227, !srcloc !26
  %i.cb = extractvalue { ptr, i32, i32 } %i.ca, 0
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.i, label %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.thread.i

_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.thread.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2227
  br label %bb.bg

_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.i: ; preds = %bb.l
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6.8.copyload.i.i = load i32, ptr %.sroa.6.8..sroa_idx.i.i, align 8, !noalias !2226
  %.sroa.74.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.74.8.copyload.i.i = load i64, ptr %.sroa.74.8..sroa_idx.i.i, align 8, !noalias !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2227
  %i.cc = and i32 %.sroa.6.8.copyload.i.i, 61440
  %i.cd = icmp eq i32 %i.cc, 32768
  %i.ce = icmp slt i64 %.sroa.74.8.copyload.i.i, 10485761
  %or.cond.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i.i, label %bb.al, label %bb.bg

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2228
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val33, i64 noundef %.val34) #28, !noalias !2228
  %i.cf = load i64, ptr %i.o, align 8, !range !23, !noalias !2228, !noundef !4
  %i.cg = icmp eq i64 %i.cf, 2
  br i1 %i.cg, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.1283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.1283.0.copyload.i = load i32, ptr %.sroa.1283.0..sroa_idx.i, align 8, !noalias !2229
  %.sroa.1384.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.1384.0.copyload.i = load i64, ptr %.sroa.1384.0..sroa_idx.i, align 8, !noalias !2229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2228
  %i.ch = and i32 %.sroa.1283.0.copyload.i, 61440
  %i.ci = icmp eq i32 %i.ch, 32768
  %i.cj = icmp ult i64 %.sroa.1384.0.copyload.i, 10485761
  %or.cond.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %bb.o, label %bb.bg

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2226
  call fastcc void @_RNvCsfPYenFzdTHO_5uu_wc16files0_iter_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val33, i64 noundef %.val34) #28, !noalias !2226
  %i.ck = load i64, ptr %i.r, align 8, !range !22, !noalias !2226, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !2226 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !2226 ; 2 uses
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2226
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123.thread

bb.q:                                             ; preds = %bb.o
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i41, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.642.0..sroa_idx.i, i64 56, i1 false), !noalias !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2231
  store ptr null, ptr %i.n, align 8, !noalias !2231
  store i64 %i.ck, ptr %i.m, align 8, !alias.scope !2232, !noalias !2233
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.cn, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2232, !noalias !2233
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.cp, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !2232, !noalias !2233
  %.sroa.4.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx9.i.i, align 8, !alias.scope !2232, !noalias !2234
  call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2237
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2239
  call void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.m) #26, !noalias !2240
  %i.cq = load i64, ptr %i.j, align 8, !range !12, !noalias !2239, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cq, -4
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2239 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.610.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2239 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, -3
  br i1 %i.cr, label %bb.s, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !alias.scope !2238, !noalias !2241
  store ptr %.sroa.610.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.cs, align 8, !alias.scope !2238, !noalias !2241
  br label %bb.ab

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2239
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2242
  %i.ct = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, 9) 8) #28, !noalias !2242 ; 6 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.t, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #30, !noalias !2243
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  store i64 %i.cq, ptr %i.ct, align 8, !noalias !2243
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2243
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %.sroa.610.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2243
  store i64 4, ptr %i.l, align 8, !noalias !2237
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2237
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !2243
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !2250, !noalias !2237, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2251
  call void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k) #26, !noalias !2252
  %i.cx = load i64, ptr %i.i, align 8, !range !12, !noalias !2251, !noundef !4 ; 3 uses
  %.not.i.i.i13.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, -4
  br i1 %.not.i.i.i13.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i.i.i4.i.i.i.i.i.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2253 ; 2 uses
  %.sroa.610.0.copyload.i.i.i.i5.i.i.i.i.i.i.i = load ptr, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2253 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, -3
  br i1 %i.cy, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputE7reserveBG_.exit.i.i.i.i.i.i.i.i
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2254 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs0_CsfPYenFzdTHO_5uu_wcNtB5_6Inputs3new:bb.a

bb.ax:                                            ; preds = %bb.aw
  store atomic i8 1, ptr %i.gt monotonic, align 4, !noalias !2339
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = atomicrmw xchg ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0 release, align 4, !noalias !2339
  %i.ha = icmp eq i32 %i.gz, 2
  br i1 %i.ha, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !9

bb.ay:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #28, !noalias !2339
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hb = icmp eq i64 %i.gm, 0
  br i1 %i.hb, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtNtBS_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1N_EE9from_iterINtNtNtB31_8adapters3map3MapINtNtNtB31_7sources7from_fn6FromFnNCINvB1m_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1m_17files0_iter_stdin0EE0B1m_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i81.i = load ptr, ptr %i.hc, align 8, !alias.scope !2341, !noalias !2296, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i81.i, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2342
  br label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtNtBS_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1N_EE9from_iterINtNtNtB31_8adapters3map3MapINtNtNtB31_7sources7from_fn6FromFnNCINvB1m_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1m_17files0_iter_stdin0EE0B1m_.exit.i.i

_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtNtBS_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1N_EE9from_iterINtNtNtB31_8adapters3map3MapINtNtNtB31_7sources7from_fn6FromFnNCINvB1m_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1m_17files0_iter_stdin0EE0B1m_.exit.i.i: ; preds = %bb.az, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.at, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB1I_3map3MapINtNtNtB1K_7sources7from_fn6FromFnNCINvBT_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvBT_17files0_iter_stdin0EINtNtB1M_6result6ResultNtNtB1M_7convert10InfallibleINtNtB6_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE11spec_extendBT_.exit.i.i.i.i.i.i
  %.sroa.8.0.i68.i = phi i64 [ 0, %bb.at ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.az ], [ %.sroa.8.0.copyload7.i65.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB1I_3map3MapINtNtNtB1K_7sources7from_fn6FromFnNCINvBT_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvBT_17files0_iter_stdin0EINtNtB1M_6result6ResultNtNtB1M_7convert10InfallibleINtNtB6_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE11spec_extendBT_.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.6.0.i69.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.at ], [ inttoptr (i64 8 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.az ], [ %.sroa.6.0.copyload5.i67.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB1I_3map3MapINtNtNtB1K_7sources7from_fn6FromFnNCINvBT_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvBT_17files0_iter_stdin0EINtNtB1M_6result6ResultNtNtB1M_7convert10InfallibleINtNtB6_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE11spec_extendBT_.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i70.i = phi i64 [ 0, %bb.at ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtBG_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEEECsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.az ], [ %.sroa.0.0.copyload3.i66.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB1I_3map3MapINtNtNtB1K_7sources7from_fn6FromFnNCINvBT_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvBT_17files0_iter_stdin0EINtNtB1M_6result6ResultNtNtB1M_7convert10InfallibleINtNtB6_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE11spec_extendBT_.exit.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2296
  %i.hd = load ptr, ptr %i.g, align 8, !noalias !2295, !noundef !4 ; 2 uses
  %.not.i71.i = icmp eq ptr %i.hd, null
  br i1 %.not.i71.i, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtNtBS_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1N_EE9from_iterINtNtNtB31_8adapters3map3MapINtNtNtB31_7sources7from_fn6FromFnNCINvB1m_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1m_17files0_iter_stdin0EE0B1m_.exit.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !2295, !nonnull !4, !align !6, !noundef !4
  %i.hg = ptrtoint ptr %i.hf to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %i.hh = icmp eq i64 %.sroa.8.0.i68.i, 0
  br i1 %i.hh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsfPYenFzdTHO_5uu_wc5InputENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i76.i, label %.lr.ph.i.i.i.i72.i

.lr.ph.i.i.i.i72.i:                               ; preds = %bb.ba, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i
  %.sroa.0.04.i.i.i.i73.i = phi i64 [ %i.hj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i ], [ 0, %bb.ba ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.i69.i, i64 %.sroa.0.04.i.i.i.i73.i ; 2 uses
  %i.hj = add nuw nsw i64 %.sroa.0.04.i.i.i.i73.i, 1 ; 2 uses
  %.val.i.i.i.i74.i = load i64, ptr %i.hi, align 8, !range !22, !alias.scope !2343, !noalias !2344, !noundef !4 ; 2 uses
  %i.hk = icmp sgt i64 %.val.i.i.i.i74.i, 0
  br i1 %i.hk, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i72.i
  %i.hl = getelementptr i8, ptr %i.hi, i64 8
  %.val3.i.i.i.i77.i = load ptr, ptr %i.hl, align 8, !alias.scope !2343, !noalias !2344, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i77.i, i64 noundef %.val.i.i.i.i74.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2345
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i72.i
  %i.hm = icmp eq i64 %i.hj, %.sroa.8.0.i68.i
  br i1 %i.hm, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsfPYenFzdTHO_5uu_wc5InputENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i76.i, label %.lr.ph.i.i.i.i72.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsfPYenFzdTHO_5uu_wc5InputENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i76.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit.i.i.i.i75.i, %bb.ba
  %i.hn = icmp eq i64 %.sroa.0.0.i70.i, 0
  br i1 %i.hn, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsfPYenFzdTHO_5uu_wc5InputENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i76.i
  %i.ho = mul nuw i64 %.sroa.0.0.i70.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i69.i, i64 noundef %i.ho, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !2344
  br label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i

_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i: ; preds = %bb.bc, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsfPYenFzdTHO_5uu_wc5InputENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBH_.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2226
  br label %bb.bd

_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i: ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtNtBS_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B1N_EE9from_iterINtNtNtB31_8adapters3map3MapINtNtNtB31_7sources7from_fn6FromFnNCINvB1m_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1m_17files0_iter_stdin0EE0B1m_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2226
  %i.hp = icmp eq i64 %.sroa.0.0.i70.i, -1
  br i1 %i.hp, label %bb.bd, label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit

bb.bd:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i
  %.sroa.1088.0109.i = phi i64 [ %i.hg, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i ], [ %.sroa.8.0.i68.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i ]
  %.sroa.6.0108.i = phi ptr [ %i.hd, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.thread.i ], [ %.sroa.6.0.i69.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0108.i) ]
  %i.hq = inttoptr i64 %.sroa.1088.0109.i to ptr
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123.thread

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtB1s_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B2N_IB2L_INtNtB3C_3vec3VecB2y_EB3x_EINtNtNtB4_6traits7collect12FromIteratorIB2L_B2y_B3x_EE9from_iterBQ_E0B5d_EB1s_.exit.i
  %.sroa.17.0.in = phi i64 [ %.sroa.8.0.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtB1s_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B2N_IB2L_INtNtB3C_3vec3VecB2y_EB3x_EINtNtNtB4_6traits7collect12FromIteratorIB2L_B2y_B3x_EE9from_iterBQ_E0B5d_EB1s_.exit.i ], [ %.sroa.8.0.i68.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i ] ; 2 uses
  %.sroa.1174.0 = phi ptr [ %.sroa.6.0.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtB1s_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B2N_IB2L_INtNtB3C_3vec3VecB2y_EB3x_EINtNtNtB4_6traits7collect12FromIteratorIB2L_B2y_B3x_EE9from_iterBQ_E0B5d_EB1s_.exit.i ], [ %.sroa.6.0.i69.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i ] ; 2 uses
  %.sroa.073.0 = phi i64 [ %.sroa.0.0.i52.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtB1s_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B2N_IB2L_INtNtB3C_3vec3VecB2y_EB3x_EINtNtNtB4_6traits7collect12FromIteratorIB2L_B2y_B3x_EE9from_iterBQ_E0B5d_EB1s_.exit.i ], [ %.sroa.0.0.i70.i, %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB4_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1I_17files0_iter_stdin0ENtB1I_5InputINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EENCINvXso_B3J_IB3H_INtNtB4y_3vec3VecB3u_EB4t_EINtNtNtB4_6traits7collect12FromIteratorIB3H_B3u_B4t_EE9from_iterBQ_E0B69_EB1I_.exit.i ] ; 2 uses
  %.sroa.17.0 = inttoptr i64 %.sroa.17.0.in to ptr ; 2 uses
  %i.hr = icmp eq i64 %.sroa.073.0, -2
  br i1 %i.hr, label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123, label %bb.bf

bb.be:                                            ; preds = %bb.i
  store i64 0, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123.thread: ; preds = %bb.ah, %bb.p, %bb.bd
  %.sroa.1174.0132.ph = phi ptr [ %.sroa.6.0108.i, %bb.bd ], [ %.sroa.7.0100.i, %bb.ah ], [ %i.cn, %bb.p ]
  %.sroa.17.0131.ph = phi ptr [ %i.hq, %bb.bd ], [ %i.ex, %bb.ah ], [ %i.cp, %bb.p ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0131.ph) ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1174.0132.ph, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.17.0131.ph, ptr %i.ht, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123: ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit
  %i.hu = icmp ne i64 %.sroa.17.0.in, 0
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.1174.0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.17.0, ptr %i.hw, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

bb.bf:                                            ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit
  store i64 1, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.073.0, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1174.0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.17.0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit57.i, %bb.n, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.i, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.thread.i
  %.sroa.072.0108.ph = phi i64 [ -2, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.thread.i ], [ -2, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.i ], [ -1, %bb.n ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit57.i ]
  %.sroa.9.0106.ph = phi ptr [ null, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.thread.i ], [ null, %_RNvCsfPYenFzdTHO_5uu_wc19is_stdin_small_file.exit.i ], [ %.val33, %bb.n ], [ %.val33, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit57.i ]
  store i64 2, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.072.0108.ph, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0106.ph, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val34, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit: ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123, %bb.bf, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input13try_as_files0.exit.thread123.thread, %bb.bg, %bb.be, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3Z_INtNtB27_7convert4IntoB11_E4intoEE9from_iterB13_.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void

select.unfold.i.i:                                ; preds = %bb.h, %bb.bh
  %i.hx = phi ptr [ %i.hz, %bb.bh ], [ %.sroa.10.0.ph, %bb.h ] ; 5 uses
  %.not.i5.i.i = icmp eq ptr %i.hx, null
  %i.hy = icmp eq ptr %i.hx, %.sroa.1388.0.ph
  %or.cond.i.i.i = select i1 %.not.i5.i.i, i1 true, i1 %i.hy
  br i1 %or.cond.i.i.i, label %bb.bu, label %bb.bh

bb.bh:                                            ; preds = %select.unfold.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ia = getelementptr i8, ptr %i.hx, i64 16
  %.val4.i.i = load i64, ptr %i.ia, align 8, !noalias !2346, !noundef !4
  %i.ib = icmp eq i64 %.val4.i.i, 0
  br i1 %i.ib, label %select.unfold.i.i, label %bb.bq

bb.bi:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2347
  br label %select.unfold.i.i.i.i

select.unfold.i.i.i.i:                            ; preds = %bb.bi, %bb.bj
  %.sroa.412.0.copyload.i166 = phi ptr [ %.sroa.10.0.ph, %bb.bi ], [ %i.id, %bb.bj ] ; 5 uses
  %.not.i5.i.i.i.i = icmp eq ptr %.sroa.412.0.copyload.i166, null
  %i.ic = icmp eq ptr %.sroa.412.0.copyload.i166, %.sroa.1388.0.ph
  %or.cond.i.i.i.i.i = select i1 %.not.i5.i.i.i.i, i1 true, i1 %i.ic
  br i1 %or.cond.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3Z_INtNtB27_7convert4IntoB11_E4intoEE9from_iterB13_.exit, label %bb.bj

bb.bj:                                            ; preds = %select.unfold.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload.i166, i64 24 ; 2 uses
  %i.ie = getelementptr i8, ptr %.sroa.412.0.copyload.i166, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.ie, align 8, !noalias !2348, !noundef !4 ; 2 uses
  %i.if = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.if, label %select.unfold.i.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bj
  %i.ig = getelementptr i8, ptr %.sroa.412.0.copyload.i166, i64 8
  %.val.i.i.i.i.le = load ptr, ptr %i.ig, align 8, !noalias !2348, !nonnull !4, !noundef !4 ; 3 uses
  %.idx.le = shl nuw nsw i64 %.val4.i.i.i.i, 5
  %i.ih = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.le, i64 %.idx.le
  %i.ii = call noundef nonnull align 8 ptr %.sroa.687.0.ph(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i.i.le) #28, !noalias !2349, !inline_history !2174 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  %.val.i.i47 = load ptr, ptr %i.ij, align 8, !noalias !2350, !nonnull !4, !noundef !4 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ii, i64 16
  %.val2.i.i = load i64, ptr %i.ik, align 8, !noalias !2350, !noundef !4 ; 2 uses
  %i.il = icmp eq i64 %.val2.i.i, 1
  br i1 %i.il, label %bb.bk, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i

bb.bk:                                            ; preds = %.loopexit.i.i
  %lhsc.i.i.i.i.i = load i8, ptr %.val.i.i47, align 1, !noalias !2351
  %i.im = icmp eq i8 %lhsc.i.i.i.i.i, 45          ; 2 uses
  %spec.select.i.i = select i1 %i.im, ptr null, ptr %.val.i.i47
  %spec.select5.i.i = select i1 %i.im, i64 -2, i64 -1
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i: ; preds = %bb.bk, %.loopexit.i.i
  %.sroa.7.0.i = phi ptr [ %.val.i.i47, %.loopexit.i.i ], [ %spec.select.i.i, %bb.bk ]
  %.sroa.0.0.i48 = phi i64 [ -1, %.loopexit.i.i ], [ %spec.select5.i.i, %bb.bk ]
  %i.in = call i64 @llvm.uadd.sat.i64(i64 %.sroa.23.0.ph, i64 1) ; 2 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.in, i64 4) ; 3 uses
  %i.io = mul i64 %..i.i, 24                      ; 3 uses
  %or.cond.i.i.i49 = icmp ugt i64 %i.in, 384307168202282325
  br i1 %or.cond.i.i.i49, label %bb.bm, label %bb.bl, !prof !16

bb.bl:                                            ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.bl
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2352
  %i.iq = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.io, i64 noundef range(i64 1, 9) 8) #28, !noalias !2352 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bm, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i

bb.bm:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.io) #30, !noalias !2347
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.bl
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bl ], [ %i.iq, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.bl ], [ %..i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.is = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.is)
  store i64 %.sroa.0.0.i48, ptr %.sroa.10.0.i.i, align 8, !noalias !2347
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2347
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.val2.i.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !2347
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8, !noalias !2347
  %.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i50, align 8, !noalias !2347
  %.sroa.6.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i51, align 8, !noalias !2347
  call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i
  %i.it = phi ptr [ %i.jq, %bb.bp ], [ %.sroa.10.0.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ]
  %.sroa.6.0.copyload61 = phi i64 [ %i.js, %bb.bp ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ] ; 6 uses
  %i.iu = phi i64 [ %i.jh, %bb.bp ], [ %.sroa.23.0.ph, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ]
  %i.iv = phi ptr [ %.lcssa3.i.i, %bb.bp ], [ %i.ih, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ] ; 2 uses
  %i.iw = phi ptr [ %.lcssa.i.i, %bb.bp ], [ %i.id, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ] ; 3 uses
  %.val.i.i.i15.i.lcssa.i.i.pn = phi ptr [ %.val.i.i.i15.i.lcssa.i.i, %bb.bp ], [ %.val.i.i.i.i.le, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i ]
  %.val.i.i.i16.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i15.i.lcssa.i.i.pn, i64 32 ; 2 uses
  %i.ix = icmp eq ptr %.val.i.i.i16.i.i.i, %i.iv
  br i1 %i.ix, label %select.unfold.i.i.i.i.i.preheader.i, label %.loopexit.i.i.i.i

select.unfold.i.i.i.i.i.preheader.i:              ; preds = %bb.bn
  %i.iy = icmp eq ptr %i.iw, %.sroa.1388.0.ph
  br i1 %i.iy, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i, label %.lr.ph.i

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph.i
  %i.iz = icmp eq ptr %i.jb, %.sroa.1388.0.ph
  br i1 %i.iz, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %i.ja = phi ptr [ %i.jb, %select.unfold.i.i.i.i.i.i ], [ %i.iw, %select.unfold.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 3 uses
  %i.jc = getelementptr i8, ptr %i.ja, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.jc, align 8, !noalias !2355, !noundef !4 ; 2 uses
  %i.jd = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.jd, label %select.unfold.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit.i

.loopexit.i.loopexit.i.i.loopexit.i:              ; preds = %.lr.ph.i
  %i.je = getelementptr i8, ptr %i.ja, i64 8
  %.val.i.i.i.i.i.le.i = load ptr, ptr %i.je, align 8, !noalias !2355, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.le.i = shl nuw nsw i64 %.val4.i.i.i.i.i.i, 5
  %i.jf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le.i, i64 %.idx.i.le.i
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bn, %.loopexit.i.loopexit.i.i.loopexit.i
  %.lcssa3.i.i = phi ptr [ %i.iv, %bb.bn ], [ %i.jf, %.loopexit.i.loopexit.i.i.loopexit.i ]
  %.lcssa.i.i = phi ptr [ %i.iw, %bb.bn ], [ %i.jb, %.loopexit.i.loopexit.i.i.loopexit.i ]
  %.val.i.i.i15.i.lcssa.i.i = phi ptr [ %.val.i.i.i16.i.i.i, %bb.bn ], [ %.val.i.i.i.i.i.le.i, %.loopexit.i.loopexit.i.i.loopexit.i ] ; 2 uses
  %i.jg = call noundef nonnull align 8 ptr %.sroa.687.0.ph(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i.i15.i.lcssa.i.i) #28, !noalias !2356, !inline_history !2196 ; 2 uses
  %i.jh = add i64 %i.iu, -1                       ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jg, i64 8
  %.val.i.i.i2.i = load ptr, ptr %i.ji, align 8, !noalias !2357, !nonnull !4, !noundef !4 ; 3 uses
  %i.jj = getelementptr i8, ptr %i.jg, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.jj, align 8, !noalias !2357, !noundef !4 ; 2 uses
  %i.jk = icmp eq i64 %.val2.i.i.i.i, 1
  br i1 %i.jk, label %bb.bo, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i

bb.bo:                                            ; preds = %.loopexit.i.i.i.i
  %lhsc.i.i.i.i.i.i.i = load i8, ptr %.val.i.i.i2.i, align 1, !noalias !2358
  %i.jl = icmp eq i8 %lhsc.i.i.i.i.i.i.i, 45      ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.jl, ptr null, ptr %.val.i.i.i2.i
  %spec.select5.i.i.i.i = select i1 %i.jl, i64 -2, i64 -1
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i: ; preds = %bb.bo, %.loopexit.i.i.i.i
  %.sroa.7.0.i.i.i = phi ptr [ %.val.i.i.i2.i, %.loopexit.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.bo ]
  %.sroa.0.0.i.i.i = phi i64 [ -1, %.loopexit.i.i.i.i ], [ %spec.select5.i.i.i.i, %bb.bo ]
  %i.jm = icmp samesign ult i64 %.sroa.6.0.copyload61, 384307168202282326
  call void @llvm.assume(i1 %i.jm)
  %i.jn = load i64, ptr %i.a, align 8, !range !5, !alias.scope !2359, !noalias !2347, !noundef !4
  %i.jo = icmp eq i64 %.sroa.6.0.copyload61, %i.jn
  br i1 %i.jo, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputE7reserveBG_.exit.i.i.i, label %bb.bp

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputE7reserveBG_.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i
  %i.jp = call i64 @llvm.uadd.sat.i64(i64 %i.jh, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.6.0.copyload61, i64 noundef range(i64 1, 0) %i.jp, i64 noundef 8, i64 noundef 24) #28, !noalias !2360
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i50, align 8, !alias.scope !2359, !noalias !2347
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputE7reserveBG_.exit.i.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i
  %i.jq = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputE7reserveBG_.exit.i.i.i ], [ %i.it, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB29_INtNtBb_7convert4IntoNtCsfPYenFzdTHO_5uu_wc5InputE4intoENtNtNtB9_6traits8iterator8Iterator4nextB3n_.exit.i.i.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %.sroa.6.0.copyload61 ; 3 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.jr, align 8, !noalias !2361
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %.sroa.7.0.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !2361
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 %.val2.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !2361
  %i.js = add nuw nsw i64 %.sroa.6.0.copyload61, 1 ; 2 uses
  store i64 %i.js, ptr %.sroa.6.0..sroa_idx.i51, align 8, !alias.scope !2359, !noalias !2347
  br label %bb.bn

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i: ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.057.0.copyload58 = load i64, ptr %i.a, align 8, !noalias !2362
  %.sroa.5.0.copyload59 = load ptr, ptr %.sroa.4.0..sroa_idx.i50, align 8, !noalias !2362
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3Z_INtNtB27_7convert4IntoB11_E4intoEE9from_iterB13_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3Z_INtNtB27_7convert4IntoB11_E4intoEE9from_iterB13_.exit: ; preds = %select.unfold.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload61, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i ], [ 0, %select.unfold.i.i.i.i ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload59, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i ], [ inttoptr (i64 8 to ptr), %select.unfold.i.i.i.i ]
  %.sroa.057.0 = phi i64 [ %.sroa.057.0.copyload58, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtCsfPYenFzdTHO_5uu_wc5InputEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYRB3G_INtNtB1O_7convert4IntoBR_E4intoEE11spec_extendBT_.exit.i ], [ 0, %select.unfold.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2347
  store i64 1, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.057.0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.0, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

bb.bq:                                            ; preds = %bb.bh
  %i.jt = getelementptr i8, ptr %i.hx, i64 8
  %.val.i.i = load ptr, ptr %i.jt, align 8, !noalias !2346, !nonnull !4, !noundef !4
  %i.ju = call noundef nonnull align 8 ptr %.sroa.687.0.ph(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i.i) #28, !noalias !2363, !inline_history !2203 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  %.val35 = load ptr, ptr %i.jv, align 8, !nonnull !4, !noundef !4
  %i.jw = getelementptr i8, ptr %i.ju, i64 16
  %.val36 = load i64, ptr %i.jw, align 8, !noundef !4 ; 6 uses
  %i.jx = icmp eq i64 %.val36, 0
  br i1 %i.jx, label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError14files_disabled.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.bq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2364
  %i.jy = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val36, i64 noundef range(i64 1, 9) 1) #28, !noalias !2364 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val36) #30, !noalias !2365
  unreachable

bb.bs:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr nonnull readonly align 1 %.val35, i64 range(i64 0, -9223372036854775808) %.val36, i1 false), !noalias !2366
  br label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError14files_disabled.exit

_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError14files_disabled.exit: ; preds = %bb.bq, %bb.bs
  %.sroa.5.0.i = phi ptr [ %i.jy, %bb.bs ], [ inttoptr (i64 1 to ptr), %bb.bq ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2367
  %i.ka = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !2367 ; 6 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.bt, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.bt:                                            ; preds = %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError14files_disabled.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !2367
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError14files_disabled.exit
  store i64 -9223372036854775808, ptr %i.ka, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %.val36, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %.sroa.5.0.i, ptr %.sroa.584.0..sroa_idx, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store i64 %.val36, ptr %.sroa.685.0..sroa_idx, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ka, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @46, ptr %i.kd, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit

bb.bu:                                            ; preds = %select.unfold.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #29
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input12path_display(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = load i64, ptr %1, align 8, !range !22, !noundef !4
  %cond = icmp eq i64 %i.d, -2
end_hunk_1
