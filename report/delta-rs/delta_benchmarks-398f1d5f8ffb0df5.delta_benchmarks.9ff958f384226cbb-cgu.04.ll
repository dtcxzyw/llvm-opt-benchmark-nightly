inline.NumInlined: 3425
inline.NumDeleted: 787
begin_hunk_0_@_RINvXsxu_NtCs4lawaffTVVK_9sqlparser3astNtB7_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae, ptr noalias noundef align 8 dereferenceable(72) %1) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !114, !noundef !4
  %i.ak = icmp ne i64 %i.aj, -9223372036854775787 ; 2 uses
  %i.al = zext i1 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10080
  store i64 %i.al, ptr %i.c, align 8, !noalias !10080
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10080
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef align 8 dereferenceable(72) %1) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = load i64, ptr %0, align 8, !range !3, !noundef !4 ; 2 uses
  %i.an = icmp ne i64 %i.am, 2                    ; 2 uses
  %i.ao = zext i1 %i.an to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10085
  store i64 %i.ao, ptr %i.b, align 8, !noalias !10085
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10085
  br i1 %i.an, label %bb.l, label %_RINvXsxE_NtCs4lawaffTVVK_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10090
  store i64 %i.am, ptr %i.a, align 8, !noalias !10090
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #27, !noalias !10097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10090
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #27
  br label %_RINvXsxE_NtCs4lawaffTVVK_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsxE_NtCs4lawaffTVVK_9sqlparser3astNtB7_27ShowStatementFilterPositionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsy8_NtCs4lawaffTVVK_9sqlparser3astNtB7_11ShowCharsetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load i8, ptr %i.g, align 8, !range !1588, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10098
  store i8 %i.h, ptr %i.f, align 1, !noalias !10098
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10098
  %i.i = load i64, ptr %0, align 8, !range !75, !noundef !4 ; 4 uses
  %i.j = icmp ne i64 %i.i, 73                     ; 2 uses
  %i.k = zext i1 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10101
  store i64 %i.k, ptr %i.e, align 8, !noalias !10101
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10101
  br i1 %i.j, label %bb.b, label %_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10106)
  %i.l = icmp ne i64 %i.i, 71
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.i, -69
  %i.n = icmp samesign ugt i64 %i.i, 68
  %i.o = select i1 %i.n, i64 %i.m, i64 2          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10109
  store i64 %i.o, ptr %i.a, align 8, !noalias !10109
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #27, !noalias !10106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10109
  switch i64 %i.o, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10106, !noalias !10114, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10106, !noalias !10114, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s) #27, !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10116
  store i8 -1, ptr %i.b, align 1, !noalias !10116
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #27, !noalias !10123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10116
  br label %_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !10106, !noalias !10114, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10106, !noalias !10114, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w) #27, !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10124
  store i8 -1, ptr %i.c, align 1, !noalias !10124
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #27, !noalias !10131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10124
  br label %_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #27, !inline_history !10132
  br label %_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10106, !noalias !10114, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !10106, !noalias !10114, !noundef !4
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #27, !noalias !10106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10133
  store i8 -1, ptr %i.d, align 1, !noalias !10133
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #27, !noalias !10140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10133
  br label %_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsyi_NtCs4lawaffTVVK_9sqlparser3astNtB7_11ShowObjectsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.c = load i8, ptr %i.b, align 8, !range !1588, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10141
  store i8 %i.c, ptr %i.a, align 1, !noalias !10141
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10141
  tail call fastcc void @_RINvXsxu_NtCs4lawaffTVVK_9sqlparser3astNtB7_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.03, align 8, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10144)
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %.sroa.0.0.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #27
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 328
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 392
  %i.g = load i8, ptr %i.f, align 8, !range !1588, !alias.scope !10144, !noalias !10147, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10151
  store i8 %i.g, ptr %i.a, align 1, !noalias !10151
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10151
  %i.h = icmp eq ptr %i.d, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10154)
  %i.e = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !10154, !noalias !10157, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #27, !noalias !10154, !inline_history !10159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10160)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !10160, !noalias !10163, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #27, !noalias !10160, !inline_history !10159
  %i.g = icmp eq ptr %i.c, %i.a
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 728, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 464, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 288, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 632, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtCsjhHCjzi9uUI_17datafusion_common6config12ExtensionBoxEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 368, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 192, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 328, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2688) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 2688, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2688) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14WindowFunctionE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(288) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 288, i64 noundef range(i64 8, 17) 16) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 288) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(352) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 352, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 112, i64 noundef range(i64 8, 17) 16) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 144, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 64, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 48, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 24, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 64, i64 noundef range(i64 8, 17) 16) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(616) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 616, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 616) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 1152, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1152) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 640, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 400, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 400) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 72, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 1400, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 48, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2432) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 2432, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2432) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(2696) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 2696, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2696) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2697) 56, i64 noundef range(i64 8, 17) 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !3138, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_13UnaryOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.241, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.load)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB5_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs13_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_15ExactNumberInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !3, !noundef !4
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable2 [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.h, %bb.d ], [ false, %bb.a ], [ %i.r, %bb.f ], [ true, %bb.b ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable2:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i64 %i.e, %i.g
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = icmp eq i64 %i.o, %i.q
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10169)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !10166, !noalias !10169, !nonnull !4, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10169, !noalias !10166, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10174)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10171, !noalias !10176, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10174, !noalias !10177, !noundef !4
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !10174, !noalias !10177, !nonnull !4, !noundef !4
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !10171, !noalias !10176, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef %i.l), !noalias !10178
  br i1 %i.v, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x), !noalias !10179
  br i1 %i.y, label %bb.e, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !10166, !noalias !10169, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10169, !noalias !10166, !noundef !4
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10169, !noalias !10166, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !10166, !noalias !10169, !nonnull !4, !noundef !4
  %i.ai = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.af, i64 noundef %i.aa), !noalias !10179
  br i1 %i.ai, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10166, !noalias !10169, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !10169, !noalias !10166, !noundef !4
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !10169, !noalias !10166, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !10166, !noalias !10169, !nonnull !4, !noundef !4
  %i.as = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ap, i64 noundef %i.ak), !noalias !10179
  br i1 %i.as, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.a, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.d, %bb.c, %bb.g, %bb.f, %bb.e, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.h, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.i
  %.sroa.0.0 = phi i1 [ %i.bc, %bb.i ], [ false, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.h ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.au)
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
