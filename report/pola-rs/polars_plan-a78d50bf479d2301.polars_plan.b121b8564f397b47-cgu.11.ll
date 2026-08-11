inline.NumInlined: 6320
inline.NumDeleted: 2547
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format10write_scan:bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @955) #45, !dbg !122915
  unreachable, !dbg !122915

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !122916
  %i.y = icmp ne ptr %11, null, !dbg !122917      ; 2 uses
  %.neg = sext i1 %i.y to i64, !dbg !122922
  %i.z = add i64 %6, %.neg, !dbg !122925
  store i64 %i.z, ptr %i.m, align 8, !dbg !122925
  %i.aa = icmp eq i64 %5, -1, !dbg !122926
  br i1 %i.aa, label %bb.e, label %bb.f, !dbg !122926

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !122928
  store ptr @558, ptr %i.k, align 8, !dbg !122928
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !122928
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !122928
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !122928
  store ptr null, ptr %i.ab, align 8, !dbg !122928
  %.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !122928
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx19, align 8, !dbg !122928
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !122928
  store ptr %i.m, ptr %i.ac, align 8, !dbg !122928
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !122928
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8, !dbg !122928
  %i.ad = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @947, ptr noundef nonnull %i.k) #46, !dbg !122931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !122932
  br i1 %i.ad, label %.sink.split, label %bb.g, !dbg !122933

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !122936
  store ptr @558, ptr %i.l, align 8, !dbg !122936
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !122936
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.448.0..sroa_idx, align 8, !dbg !122936
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !122936
  store ptr null, ptr %i.ae, align 8, !dbg !122936
  %.sroa.8.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !122936
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx21, align 8, !dbg !122936
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !122936
  store ptr %i.p, ptr %i.af, align 8, !dbg !122936
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !122936
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.452.0..sroa_idx, align 8, !dbg !122936
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !122936
  store ptr %i.m, ptr %i.ag, align 8, !dbg !122936
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56, !dbg !122936
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !122936
  %i.ah = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @948, ptr noundef nonnull %i.l) #46, !dbg !122939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !122940
  br i1 %i.ah, label %.sink.split, label %bb.g, !dbg !122941

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = load ptr, ptr %9, align 8, !dbg !122944, !noundef !11
  %.not = icmp eq ptr %i.ai, null, !dbg !122944
  br i1 %.not, label %bb.i, label %bb.h, !dbg !122946

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !122947
  store ptr %9, ptr %i.j, align 8, !dbg !122947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !122948
  store ptr @558, ptr %i.i, align 8, !dbg !122948
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !122948
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.468.0..sroa_idx, align 8, !dbg !122948
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !122948
  store ptr null, ptr %i.aj, align 8, !dbg !122948
  %.sroa.8.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !122948
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx23, align 8, !dbg !122948
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !122948
  store ptr %i.j, ptr %i.ak, align 8, !dbg !122948
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !122948
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format13ExprIRDisplayNtB6_7Display3fmtBE_, ptr %.sroa.472.0..sroa_idx, align 8, !dbg !122948
  %i.al = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @949, ptr noundef nonnull %i.i) #46, !dbg !122951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !122952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !122953
  br i1 %i.al, label %.sink.split, label %bb.i, !dbg !122954

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = load i64, ptr %10, align 8, !dbg !122957, !range !23, !noundef !11
  %.not105 = icmp eq i64 %i.am, 2, !dbg !122957
  br i1 %.not105, label %bb.k, label %bb.j, !dbg !122959

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !122960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !dbg !122960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !122961
  store ptr @558, ptr %i.g, align 8, !dbg !122961
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !122961
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.476.0..sroa_idx, align 8, !dbg !122961
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !122961
  store ptr null, ptr %i.an, align 8, !dbg !122961
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !122961
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx25, align 8, !dbg !122961
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !122961
  store ptr %i.h, ptr %i.ao, align 8, !dbg !122961
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !122961
  store ptr @_RNvXs3_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !122961
  %i.ap = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @950, ptr noundef nonnull %i.g) #46, !dbg !122964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !122965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !122966
  br i1 %i.ap, label %.sink.split, label %bb.k, !dbg !122967

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.y, label %bb.l, label %bb.m, !dbg !122970

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !122972
  store ptr @558, ptr %i.f, align 8, !dbg !122972
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !122972
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.484.0..sroa_idx, align 8, !dbg !122972
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !122972
  store ptr null, ptr %i.aq, align 8, !dbg !122972
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !122972
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx27, align 8, !dbg !122972
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !122972
  store ptr %11, ptr %i.ar, align 8, !dbg !122972
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !122972
  store ptr @_RNvXsq_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.488.0..sroa_idx, align 8, !dbg !122972
  %i.as = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @951, ptr noundef nonnull %i.f) #46, !dbg !122975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !122976
  br i1 %i.as, label %.sink.split, label %bb.n, !dbg !122977

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %.not106 = icmp eq ptr %12, null, !dbg !122980
  br i1 %.not106, label %bb.q, label %bb.p, !dbg !122982

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24, !dbg !122983 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !dbg !122983, !noundef !11
  %i.av = icmp eq i32 %i.au, 0, !dbg !122983
  br i1 %i.av, label %bb.m, label %bb.o, !dbg !122983

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !122984
  store ptr %i.at, ptr %i.e, align 8, !dbg !122984
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !122984
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.492.0..sroa_idx, align 8, !dbg !122984
  %i.aw = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @952, ptr noundef nonnull %i.e) #46, !dbg !122987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !122988
  br i1 %i.aw, label %.sink.split, label %bb.m, !dbg !122989

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !122992
  store ptr %12, ptr %i.d, align 8, !dbg !122992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !122993
  store ptr %i.d, ptr %i.c, align 8, !dbg !122993
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !122993
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan8deletion17DeletionFilesListNtB6_7Display3fmtBE_, ptr %.sroa.496.0..sroa_idx, align 8, !dbg !122993
  %i.ax = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @953, ptr noundef nonnull %i.c) #46, !dbg !122996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !122997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !122998
  br i1 %i.ax, label %.sink.split, label %bb.q, !dbg !122999

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ay = trunc nuw i64 %7 to i1, !dbg !123002
  br i1 %i.ay, label %bb.r, label %bb.s, !dbg !123002

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123004
  store i64 %8, ptr %i.b, align 8, !dbg !123004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123005
  store ptr @558, ptr %i.a, align 8, !dbg !123005
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123005
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.4100.0..sroa_idx, align 8, !dbg !123005
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !123005
  store ptr null, ptr %i.az, align 8, !dbg !123005
  %.sroa.8.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !123005
  store i16 %i.t, ptr %.sroa.8.0..sroa_idx29, align 8, !dbg !123005
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !123005
  store ptr %i.b, ptr %i.ba, align 8, !dbg !123005
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !123005
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4104.0..sroa_idx, align 8, !dbg !123005
  %i.bb = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noundef nonnull @954, ptr noundef nonnull %i.a) #46, !dbg !123008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123010
  br i1 %i.bb, label %.sink.split, label %bb.s, !dbg !123011

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %.sink.split, !dbg !123014

.sink.split:                                      ; preds = %bb.e, %bb.f, %bb.h, %bb.j, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s
  %.sroa.06.1.ph = phi i1 [ false, %bb.s ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !123015
  br label %bb.t, !dbg !123014

bb.t:                                             ; preds = %.sink.split, %bb.b
  %.sroa.06.1 = phi i1 [ true, %bb.b ], [ %.sroa.06.1.ph, %.sink.split ], !dbg !123016
  ret i1 %.sroa.06.1, !dbg !123014
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format14write_group_by(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noundef nonnull align 16 %4, i64 noundef range(i64 0, 82351536043346213) %5, ptr noundef nonnull align 16 %6, i64 noundef range(i64 0, 82351536043346213) %7, ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(16) %8, i1 noundef zeroext %9) unnamed_addr #0 !dbg !123017 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 2 uses
  %i.h = zext i1 %9 to i8
  store i8 %i.h, ptr %i.g, align 1
  %i.i = add i64 %2, 2, !dbg !123018              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !123019
  store ptr %4, ptr %i.f, align 8, !dbg !123021
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !123021
  store i64 %5, ptr %i.j, align 8, !dbg !123021
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !123021
  store ptr %3, ptr %i.k, align 8, !dbg !123021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !123022
  %i.l = icmp ugt i64 %2, 65535, !dbg !123026
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !123026, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.m = trunc nuw i64 %2 to i16, !dbg !123030
  store ptr @558, ptr %i.e, align 8, !dbg !123022
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !123022
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !123022
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !123022
  store ptr null, ptr %i.n, align 8, !dbg !123022
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !123022
  store i16 %i.m, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !123022
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !123022
  store ptr %i.g, ptr %i.o, align 8, !dbg !123022
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !123022
  store ptr @_RNvXsg_NtCscgRAwXFJnXP_4core3fmtbNtB5_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !123022
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !123031
  %i.q = load ptr, ptr %i.p, align 8, !dbg !123031, !invariant.load !11, !nonnull !11 ; 4 uses
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull %0, ptr noundef nonnull @956, ptr noundef nonnull %i.e) #46, !dbg !123031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !123032
  br i1 %i.r, label %bb.m, label %bb.d, !dbg !123033

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @961) #45, !dbg !123037
  unreachable, !dbg !123037

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %8, null, !dbg !123038
  br i1 %.not, label %bb.f, label %bb.e, !dbg !123043

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !123044
  %i.s = icmp samesign ugt i64 %i.i, 65535, !dbg !123047
  br i1 %i.s, label %bb.h, label %bb.g, !dbg !123047, !prof !32

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !123050
  store ptr %6, ptr %i.b, align 8, !dbg !123051
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !123051
  store i64 %7, ptr %i.t, align 8, !dbg !123051
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !123051
  store ptr %3, ptr %i.u, align 8, !dbg !123051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !123052
  %i.v = icmp samesign ugt i64 %i.i, 65535, !dbg !123056
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !123056, !prof !32

bb.g:                                             ; preds = %bb.e
  %i.w = trunc nuw i64 %i.i to i16, !dbg !123059  ; 2 uses
  store ptr @558, ptr %i.d, align 8, !dbg !123044
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !123044
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !123044
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !123044
  store ptr null, ptr %i.x, align 8, !dbg !123044
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !123044
  store i16 %i.w, ptr %.sroa.320.0..sroa_idx, align 8, !dbg !123044
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !123044
  store ptr %i.f, ptr %i.y, align 8, !dbg !123044
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !123044
  store ptr @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatINtB5_18ExprIRSliceDisplayNtNtB9_7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtBb_, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !123044
  %i.z = call noundef zeroext i1 %i.q(ptr noundef nonnull %0, ptr noundef nonnull @957, ptr noundef nonnull %i.d) #46, !dbg !123060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !123061
  br i1 %i.z, label %bb.m, label %bb.i, !dbg !123062

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @958) #45, !dbg !123064
  unreachable, !dbg !123064

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !123065
  store ptr @558, ptr %i.c, align 8, !dbg !123065
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !123065
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !123065
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !123065
  store ptr null, ptr %i.aa, align 8, !dbg !123065
  %.sroa.320.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !123065
  store i16 %i.w, ptr %.sroa.320.0..sroa_idx21, align 8, !dbg !123065
  %i.ab = call noundef zeroext i1 %i.q(ptr noundef nonnull %0, ptr noundef nonnull @559, ptr noundef nonnull %i.c) #46, !dbg !123068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !123069
  br i1 %i.ab, label %bb.m, label %bb.j, !dbg !123070

bb.j:                                             ; preds = %bb.k, %bb.i
  br label %bb.m, !dbg !123073

bb.k:                                             ; preds = %bb.f
  %i.ac = trunc nuw i64 %i.i to i16, !dbg !123074
  store ptr @558, ptr %i.a, align 8, !dbg !123052
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !123052
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.436.0..sroa_idx, align 8, !dbg !123052
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !123052
  store ptr null, ptr %i.ad, align 8, !dbg !123052
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !123052
  store i16 %i.ac, ptr %.sroa.441.0..sroa_idx, align 8, !dbg !123052
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !123052
  store ptr %i.b, ptr %i.ae, align 8, !dbg !123052
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !123052
  store ptr @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatINtB5_18ExprIRSliceDisplayNtNtB9_7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtBb_, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !123052
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !123052
  store ptr %i.f, ptr %i.af, align 8, !dbg !123052
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !123052
  store ptr @_RNvXs5_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatINtB5_18ExprIRSliceDisplayNtNtB9_7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtBb_, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !123052
  %i.ag = call noundef zeroext i1 %i.q(ptr noundef nonnull %0, ptr noundef nonnull @959, ptr noundef nonnull %i.a) #46, !dbg !123075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !123076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !123077
  br i1 %i.ag, label %bb.m, label %bb.j, !dbg !123078

bb.l:                                             ; preds = %bb.f
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @560, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @960) #45, !dbg !123081
  unreachable, !dbg !123081

bb.m:                                             ; preds = %bb.b, %bb.g, %bb.i, %bb.k, %bb.j
  %.sroa.0.0 = phi i1 [ false, %bb.j ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.g ], [ true, %bb.b ], !dbg !123082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !123083
  ret i1 %.sroa.0.0, !dbg !123073
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6format22write_ir_non_recursive(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 16 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !123084 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [80 x i8], align 8                ; 13 uses
  %i.z = alloca [48 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 9 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [48 x i8], align 8               ; 9 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [80 x i8], align 8               ; 13 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [96 x i8], align 8               ; 15 uses
  %i.bh = alloca [48 x i8], align 8               ; 21 uses
  %i.bi = alloca [8 x i8], align 8                ; 16 uses
  %i.bj = alloca [24 x i8], align 8               ; 18 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [48 x i8], align 8               ; 21 uses
  %i.bn = alloca [8 x i8], align 8                ; 16 uses
  %i.bo = alloca [24 x i8], align 8               ; 18 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 10 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [48 x i8], align 8               ; 9 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [64 x i8], align 8               ; 11 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [32 x i8], align 8               ; 7 uses
  %i.cf = alloca [24 x i8], align 8               ; 8 uses
  %i.cg = load i64, ptr %2, align 16, !dbg !123085, !range !19130, !noundef !11 ; 5 uses
  %i.ch = icmp ne i64 %i.cg, -9223372036854775786, !dbg !123085
  tail call void @llvm.assume(i1 %i.ch), !dbg !123085
  %i.ci = add nsw i64 %i.cg, 9223372036854775804, !dbg !123085
  %i.cj = icmp ugt i64 %i.cg, -9223372036854775805, !dbg !123085
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 18, !dbg !123085
  switch i64 %i.ck, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %switch.lookup
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
  ], !dbg !123086

default.unreachable:                              ; preds = %bb.z
  unreachable

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !123087

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !123089
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 176, !dbg !123089
  %i.cn = load ptr, ptr %i.cm, align 16, !dbg !123089, !nonnull !11, !noundef !11
end_hunk_0
