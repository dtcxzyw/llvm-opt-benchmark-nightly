inline.NumInlined: 191
inline.NumDeleted: 116
begin_hunk_0_@_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url19from_directory_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  %.sroa.1544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.1544.0..sroa_idx, align 4
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
end_hunk_0
begin_hunk_1_@_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url19from_directory_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ah)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit unwind label %bb.s
end_hunk_1
begin_hunk_2_@_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url19from_directory_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test:bb.a
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 47, ptr %i.al, align 1
  %i.am = add nuw i64 %i.af, 1
  store i64 %i.am, ptr %i.ae, align 8, !alias.scope !15
  br label %bb.w

end_hunk_2
begin_hunk_3_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 4 uses
end_hunk_3
begin_hunk_4_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.dx = load i32, ptr %i.dw, align 4, !alias.scope !45, !noalias !42, !noundef !4 ; 3 uses
  %i.dy = icmp ugt i32 %i.dx, 999999999           ; 2 uses
  %i.dz = add i32 %i.dx, -1000000000
  %storemerge.i = select i1 %i.dy, i32 %i.dz, i32 %i.dx ; 6 uses
  store i32 %storemerge.i, ptr %i.h, align 4, !noalias !48
  %i.ea = trunc i32 %i.dv to i8                   ; 3 uses
  %i.eb = icmp ugt i8 %i.ea, 99
end_hunk_4
begin_hunk_5_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test:bb.a
  store i8 %i.gd, ptr %i.gh, align 1, !noalias !45
  %i.gi = add nuw i64 %i.ad, 15
  store i64 %i.gi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !153, !noalias !45
  %i.gj = icmp eq i32 %storemerge.i, 0
  br i1 %i.gj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc27, %.noexc26, %.noexc25, %.noexc23
end_hunk_5
begin_hunk_6_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test:bb.a
  br label %.thread

bb.l:                                             ; preds = %.noexc23
  %i.gl = urem i32 %storemerge.i, 1000000
  %i.gm = udiv i32 %storemerge.i, 1000000
  %i.gn = icmp eq i32 %i.gl, 0
  br i1 %i.gn, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit50.i, label %bb.m

end_hunk_6
begin_hunk_7_@_RNvMNtCshmPyUV8PP35_6chrono8datetimeINtB2_8DateTimeNtNtNtCs1N9T06jgEdt_11arrow_array8timezone7private2TzE10to_rfc3339CsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.go, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit41.thread.i, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.gp = urem i32 %storemerge.i, 1000
  %i.gq = udiv i32 %storemerge.i, 1000
  %i.gr = icmp eq i32 %i.gp, 0
  br i1 %i.gr, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit54.i, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCsfY7SmN0bPrO_14deltalake_test.exit58.i

end_hunk_7
