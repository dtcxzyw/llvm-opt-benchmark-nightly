Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvCsdTU8hOCbdCr_8uu_touch27is_first_filename_timestamp:bb.a
  %i.ac = icmp eq i64 %.val.i.i17, 0
  br i1 %i.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit18, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.sink.split.i14

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.sink.split.i14: ; preds = %bb.h
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %.val.i.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !856
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit18

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit18: ; preds = %bb.h, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdTU8hOCbdCr_8uu_touch.exit.sink.split.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %5, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah) #27
  %i.ai = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %cond = icmp eq i64 %i.an, 0
  br i1 %cond, label %bb.m, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ar = phi ptr [ %i.ap, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ar, align 1, !alias.scope !858, !noalias !859, !noundef !4
  %i.as = add i8 %.val.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.as, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.k, label %_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit

._crit_edge:                                      ; preds = %bb.k
  switch i64 %i.an, label %bb.m [
    i64 8, label %_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit
    i64 10, label %bb.l
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !860, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !860, !noundef !4
  %i.ax = mul i8 %i.au, 10
  %i.ay = add i8 %i.aw, -85
  %i.az = add i8 %i.ay, %i.ax
  %spec.select.i.i = icmp ult i8 %i.az, 31
  br label %_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit

bb.m:                                             ; preds = %bb.j, %._crit_edge
  br label %_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit

_RNvCsdTU8hOCbdCr_8uu_touch12is_timestamp.exit:   ; preds = %.lr.ph, %bb.m, %bb.l, %._crit_edge, %bb.i, %bb.a, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsdTU8hOCbdCr_8uu_touch.exit ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.m ], [ true, %._crit_edge ], [ %spec.select.i.i, %bb.l ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 4) #27
  br i1 %i.g, label %bb.b, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !875, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !875, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %i.n, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.8.08.i.i.i = phi i64 [ %i.o, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 16 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.8.08.i.i.i, 1
  %i.p = getelementptr i8, ptr %.sroa.0.019.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.p, align 8, !noalias !876, !noundef !4
  %i.q = icmp eq i64 %.val7.i.i.i, 4
  br i1 %i.q, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.019.i.i.i, align 8, !noalias !876, !nonnull !4, !noundef !4
  %i.r = load i32, ptr %.val.i.i.i, align 1
  %i.s = icmp ne i32 %i.r, 1701669236
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.v = icmp eq ptr %i.n, %i.l
  br i1 %i.v, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.split.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !875, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.sroa.8.08.i.i.i, %i.x
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28, !noalias !876
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !875, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [104 x i8], ptr %i.aa, i64 %.sroa.8.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !877
  store i128 53410479646238849826493945191968316847, ptr %i.e, align 16, !noalias !877
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.e) #27, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !877
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.f, align 16, !noalias !877 ; 3 uses
  %i.ac = icmp eq i128 %.sroa.013.0.copyload.i.i, 53410479646238849826493945191968316847
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !877
  %i.ad = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ab) #27, !noalias !878 ; 3 uses
  %.not8.i = icmp eq ptr %i.ad, null
  br i1 %.not8.i, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !878, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val10.i = load ptr, ptr %i.ae, align 8, !noalias !878, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !10, !invariant.load !4, !noalias !878
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = and i64 %i.ah, -16
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !878
  %i.al = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !4, !noalias !878, !nonnull !4
  call void %i.am(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.ak) #30, !noalias !878, !inline_history !869
  %i.an = load i128, ptr %i.d, align 16, !noalias !878, !noundef !4
  %.not.i = icmp eq i128 %i.an, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !878
  br i1 %.not.i, label %bb.j, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !878
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.ao = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.ap = trunc nuw i128 %i.ao to i64
  %i.aq = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.ar = inttoptr i64 %i.aq to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @99, ptr %i.c, align 8, !noalias !879
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4, ptr %i.as, align 8, !noalias !879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !879
  store i64 0, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ar, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ap, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i128 53410479646238849826493945191968316847, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !879
  store ptr %i.c, ptr %i.a, align 8, !noalias !879
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdTU8hOCbdCr_8uu_touch, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !879
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.at, align 8, !noalias !879
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !879
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28, !noalias !879
  unreachable

_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.b, %bb.f, %bb.l, %bb.k, %bb.j, %bb.a
  %.sroa.05.0 = phi i8 [ 2, %bb.a ], [ 1, %bb.j ], [ %i.ba, %bb.l ], [ 1, %bb.k ], [ 2, %bb.b ], [ 2, %bb.f ], [ 2, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 2 uses
  %1 = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 6) #27 ; 2 uses
  %2 = trunc i8 %.sroa.05.0 to i1                 ; 2 uses
  %.sroa.010.1 = or i1 %1, %2                     ; 2 uses
  %i.au = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 12) #27
  br i1 %i.au, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.aj, i64 24
  %.val = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.aj, i64 32
  %.val26 = load i64, ptr %i.aw, align 8, !noundef !4 ; 3 uses
  %i.ax = call fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val26) #30
  br i1 %i.ax, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = call fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val26) #30
  br i1 %i.ay, label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = call fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val26) #30
  %i.ba = zext i1 %i.az to i8
  br label %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit

bb.m:                                             ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit
  %.not24.not = icmp eq i8 %.sroa.05.0, 2
  br i1 %.not24.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNCNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change0B3_.exit
  br i1 %.sroa.010.1, label %bb.s, label %bb.t

bb.o:                                             ; preds = %bb.m
  br i1 %2, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.m
  br i1 %.sroa.010.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.p
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  br i1 %1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.p, %bb.t, %bb.q
  %.sroa.0.0 = phi i8 [ 0, %bb.q ], [ 1, %bb.t ], [ 2, %bb.p ], [ 2, %bb.n ], [ 2, %bb.r ]
  ret i8 %.sroa.0.0

bb.t:                                             ; preds = %bb.r, %bb.n
  br label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsdTU8hOCbdCr_8uu_touch4shr2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = add i64 %2, -2                           ; 7 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %.thread23, label %bb.b

.thread23:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt i64 %2, 1
  br i1 %.not.i, label %bb.c, label %_RNvMNtCs6JMX4GRUq9U_4core3stre16split_at_checked.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !888, !noundef !4
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %bb.d, label %_RNvMNtCs6JMX4GRUq9U_4core3stre16split_at_checked.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i1 = icmp slt i64 %2, 0
  br i1 %.not.i1, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !889

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.d, %.thread23
  %.sroa.7.0.ph2226 = phi ptr [ %1, %.thread23 ], [ %i.d, %bb.d ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !890
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #27, !noalias !890 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit

_RNvMNtCs6JMX4GRUq9U_4core3stre16split_at_checked.exit: ; preds = %bb.b, %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28
  unreachable

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #29
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.i = load i16, ptr %.sroa.7.0.ph2226, align 1, !noalias !891
  store i16 %i.i, ptr %i.g, align 1, !noalias !891
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.j = add nsw i64 %2, -2
  %i.k = icmp samesign ugt i64 %i.b, %i.j
  br i1 %i.k, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.thread.i5, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3, !prof !6

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.thread.i5: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdTU8hOCbdCr_8uu_touch(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 2, i64 noundef %i.b, i64 noundef 1, i64 noundef 1) #27
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !892, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %.pre36 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !892
  br label %bb.f

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit
  br i1 %i.c, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.thread.i5
  %i.n = phi ptr [ %.pre36, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.thread.i5 ], [ %i.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3 ]
  %i.o = phi i64 [ %i.l, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.thread.i5 ], [ 2, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %1, i64 %i.b, i1 false), !noalias !892
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit6

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsdTU8hOCbdCr_8uu_touch.exit6: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3, %bb.f
  %i.q = phi i64 [ %i.o, %bb.f ], [ 2, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsdTU8hOCbdCr_8uu_touch.exit.i3 ]
  %i.r = add nuw i64 %i.q, %i.b
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsdTU8hOCbdCr_8uu_touch4stat(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 10 uses
  %i.d = alloca [176 x i8], align 8               ; 10 uses
  %i.e = alloca [176 x i8], align 8               ; 10 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !907
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #27, !noalias !908
  %i.f = load i64, ptr %i.e, align 8, !range !16, !noalias !907, !noundef !4
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !909
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #27, !noalias !910
  %i.h = load i64, ptr %i.d, align 8, !range !16, !noalias !909, !noundef !4
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !907, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !907
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 1, ptr %0, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.8111.0.copyload = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !noalias !911
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.9112.0.copyload = load i64, ptr %.sroa.9112.0..sroa_idx, align 8, !noalias !911
  %.sroa.10113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.10113.0.copyload = load i64, ptr %.sroa.10113.0..sroa_idx, align 8, !noalias !911
  %.sroa.11114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.11114.0.copyload = load i64, ptr %.sroa.11114.0..sroa_idx, align 8, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !907
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit, %bb.l, %bb.e
  %.sroa.089.0 = phi i64 [ %.sroa.8111.0.copyload, %bb.e ], [ %.sroa.8107.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %.sroa.13104.0.copyload, %bb.l ]
  %.sroa.090.0 = phi i64 [ %.sroa.9112.0.copyload, %bb.e ], [ %.sroa.9.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %.sroa.14.0.copyload, %bb.l ]
  %.sroa.091.0 = phi i64 [ %.sroa.10113.0.copyload, %bb.e ], [ %.sroa.10.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %.sroa.15.0.copyload, %bb.l ]
  %.sroa.092.0 = phi i64 [ %.sroa.11114.0.copyload, %bb.e ], [ %.sroa.11.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsdTU8hOCbdCr_8uu_touch.exit ], [ %.sroa.16.0.copyload, %bb.l ]
  %i.m = trunc i64 %.sroa.090.0 to i32
  %i.n = trunc i64 %.sroa.092.0 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.089.0, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.091.0, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.n, ptr %.sroa.633.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !909, !nonnull !4, !noundef !4 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !909
  %i.r = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.s = and i64 %i.r, 3                          ; 3 uses
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !8

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i64 %i.r, 32
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.y = call noundef i8 %i.x(i32 noundef %i.u) #27, !inline_history !899
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.g
  %i.z = lshr i64 %i.r, 32
  %i.aa = icmp ult ptr %i.q, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8   ; 2 uses
  %i.ab = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.assume(i1 %i.ab)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !22, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.q, i64 31
  %i.af = load i8, ptr %i.ae, align 8, !range !22, !noundef !4
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i8 [ %i.y, %bb.h ], [ %switch.idx.cast.i.i.i, %bb.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ag, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.c
end_hunk_0
