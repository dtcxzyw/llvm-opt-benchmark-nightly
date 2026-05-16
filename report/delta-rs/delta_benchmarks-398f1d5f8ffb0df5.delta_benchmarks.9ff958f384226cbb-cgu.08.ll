inline.NumInlined: 2863
inline.NumDeleted: 638
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading18FileStagingCommandECsdJxlLsGgtXr_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  ret void

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15ExactNumberInfoNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !15, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1225
  store i64 %i.e, ptr %i.d, align 8, !noalias !1225
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1225
  switch i64 %i.e, label %default.unreachable1 [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 0, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1230
  store i64 %i.g, ptr %i.c, align 8, !noalias !1230
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1230
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1233
  store i64 %i.i, ptr %i.b, align 8, !noalias !1233
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1233
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1236
  store i64 %i.k, ptr %i.a, align 8, !noalias !1236
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1236
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1H_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_12BinaryLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1241
  store i64 %.0.val, ptr %i.b, align 8, !noalias !1241
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1241
  %i.c = trunc nuw i64 %.0.val to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1246
  store i64 %.8.val, ptr %i.a, align 8, !noalias !1246
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1246
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1R_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !427, !noundef !16 ; 5 uses
  %i.e = icmp ne i64 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %.inv = icmp samesign ult i64 %i.d, 2
  %i.g = select i1 %.inv, i64 2, i64 %i.f         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1249
  store i64 %i.g, ptr %i.c, align 8, !noalias !1249
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1249
  switch i64 %i.g, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1254
  store i64 %i.d, ptr %i.b, align 8, !noalias !1254
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1254
  %i.l = trunc nuw i64 %i.d to i1
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1259
  store i64 %i.p, ptr %i.a, align 8, !noalias !1259
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1259
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7SetExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.w, %bb.d ]   ; 15 uses
  %i.j = load i8, ptr %.tr, align 8, !range !1153, !noundef !16 ; 2 uses
  %i.k = zext nneg i8 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1262
  store i64 %i.k, ptr %i.i, align 8, !noalias !1262
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1262
  switch i8 %i.j, label %default.unreachable19 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable19:                            ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.m, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %tailrecurse
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %.tr, i64 1
  %.val = load i8, ptr %i.p, align 1, !range !1267, !noundef !16
  %i.r = zext nneg i8 %.val to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1268
  store i64 %i.r, ptr %i.h, align 8, !noalias !1268
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1268
  %.val1 = load i8, ptr %i.q, align 1, !range !1275, !noundef !16
  %i.s = zext nneg i8 %.val1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1276
  store i64 %i.s, ptr %i.g, align 8, !noalias !1276
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1276
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7SetExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.u, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !16, !noundef !16
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.y = load i8, ptr %i.x, align 8, !range !1286, !alias.scope !1283, !noalias !1287, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1289
  store i8 %i.y, ptr %i.f, align 1, !noalias !1289
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #32, !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1289
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1283, !noalias !1287, !nonnull !16, !noundef !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1283, !noalias !1287, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1292
  store i64 %i.ac, ptr %i.e, align 8, !noalias !1292
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #32, !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1292
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1283
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ad, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.g:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.af, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.i:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !16, !noundef !16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.aj = load i64, ptr %i.ai, align 8, !range !17, !alias.scope !1297, !noalias !1300, !noundef !16
  %i.ak = icmp ne i64 %i.aj, -9223372036854775808 ; 2 uses
  %i.al = zext i1 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1302
  store i64 %i.al, ptr %i.d, align 8, !noalias !1302
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32, !noalias !1297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1302
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1297, !noalias !1300, !nonnull !16, !noundef !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1297, !noalias !1300, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap) #32, !noalias !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1307
  store i8 -1, ptr %i.c, align 1, !noalias !1307
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #32, !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1307
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !range !17, !alias.scope !1297, !noalias !1300, !noundef !16
  %i.as = icmp ne i64 %i.ar, -9223372036854775808 ; 2 uses
  %i.at = zext i1 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1315
  store i64 %i.at, ptr %i.b, align 8, !noalias !1315
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32, !noalias !1297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1315
  br i1 %i.as, label %bb.m, label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1297, !noalias !1300, !nonnull !16, !noundef !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !1297, !noalias !1300, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax) #32, !noalias !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1320
  store i8 -1, ptr %i.a, align 1, !noalias !1320
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32, !noalias !1327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1320
  br label %_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXs2r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5TableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1Z_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !323, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1328
  store i64 %i.b, ptr %i.a, align 8, !noalias !1328
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !1286, !noundef !16 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = zext nneg i8 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1333
  store i64 %i.g, ptr %i.d, align 8, !noalias !1333
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1333
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1338
  store i64 %i.i, ptr %i.c, align 8, !noalias !1338
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1338
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !1341, !noundef !16 ; 2 uses
  %i.l = icmp ne i8 %i.k, 2                       ; 2 uses
  %i.m = zext i1 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1342
  store i64 %i.m, ptr %i.b, align 8, !noalias !1342
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1342
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1347
  store i64 %i.n, ptr %i.a, align 8, !noalias !1347
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1347
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !141, !noundef !16 ; 2 uses
  %i.g = icmp ne i64 %i.f, 70                     ; 2 uses
  %i.h = zext i1 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1352
  store i64 %i.h, ptr %i.e, align 8, !noalias !1352
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1352
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.j = load i64, ptr %i.i, align 8, !range !17, !noundef !16
  %i.k = icmp ne i64 %i.j, -9223372036854775808   ; 2 uses
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1357
  store i64 %i.l, ptr %i.d, align 8, !noalias !1357
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1357
  br i1 %i.k, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.d
end_hunk_0
begin_hunk_1_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2017
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fc, i64 noundef %i.fe, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !1999
  br label %tailrecurse.backedge.sink.split

bb.q:                                             ; preds = %tailrecurse
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fg = load i8, ptr %i.ff, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !2022
  store i8 %i.fg, ptr %i.cd, align 1, !noalias !2022
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2022
  %i.fh = getelementptr inbounds nuw i8, ptr %.tr, i64 73
  %i.fi = load i8, ptr %i.fh, align 1, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !2025
  store i8 %i.fi, ptr %i.cc, align 1, !noalias !2025
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !2025
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fk, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fm, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.fn = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !232, !noundef !16
  %i.fp = icmp ne i64 %i.fo, -9223372036854775787 ; 2 uses
  %i.fq = zext i1 %i.fp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !2028
  store i64 %i.fq, ptr %i.cb, align 8, !noalias !2028
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2028
  br i1 %i.fp, label %bb.ce, label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fs = load i8, ptr %i.fr, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !2033
  store i8 %i.fs, ptr %i.ca, align 1, !noalias !2033
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !2033
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr, i64 73
  %i.fu = load i8, ptr %i.ft, align 1, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2036
  store i8 %i.fu, ptr %i.bz, align 1, !noalias !2036
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !2036
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fw, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.fy, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !range !232, !noundef !16
  %i.gb = icmp ne i64 %i.ga, -9223372036854775787 ; 2 uses
  %i.gc = zext i1 %i.gb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2039
  store i64 %i.gc, ptr %i.by, align 8, !noalias !2039
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !2039
  br i1 %i.gb, label %bb.cf, label %common.ret

bb.s:                                             ; preds = %tailrecurse
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ge = load i8, ptr %i.gd, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2044
  store i8 %i.ge, ptr %i.bx, align 1, !noalias !2044
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !2044
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gg, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gi, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !range !232, !noundef !16
  %i.gl = icmp ne i64 %i.gk, -9223372036854775787 ; 2 uses
  %i.gm = zext i1 %i.gl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !2047
  store i64 %i.gm, ptr %i.bw, align 8, !noalias !2047
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !2047
  br i1 %i.gl, label %bb.cg, label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.go = load i8, ptr %i.gn, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2052
  store i8 %i.go, ptr %i.bv, align 1, !noalias !2052
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !2052
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gq, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gs, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr, i64 25
  %i.gu = load i8, ptr %i.gt, align 1, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2055
  store i8 %i.gu, ptr %i.bu, align 1, !noalias !2055
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2055
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.gv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.gx, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  %i.gy = load i64, ptr %i.gv, align 8, !range !340, !alias.scope !2058, !noalias !2061, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2063
  store i64 %i.gy, ptr %i.af, align 8, !noalias !2063
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #32, !noalias !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2063
  switch i64 %i.gy, label %_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit146 [
    i64 23, label %bb.v
    i64 50, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !2058, !noalias !2061, !nonnull !16, !noundef !16
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2058, !noalias !2061, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ha, i64 noundef %i.hc) #32, !noalias !2058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2068
  store i8 -1, ptr %i.ae, align 1, !noalias !2068
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 1) #32, !noalias !2075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2068
  br label %_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit146

bb.w:                                             ; preds = %bb.u
  %i.hd = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !2058, !noalias !2061, !nonnull !16, !noundef !16
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !2058, !noalias !2061, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2076
  store i64 %i.hg, ptr %i.ad, align 8, !noalias !2076
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #32, !noalias !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2076
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.he, i64 noundef %i.hg, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2058
  br label %_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit146

_RINvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB6_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit146: ; preds = %bb.u, %bb.v, %bb.w
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hi, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.hk = load i8, ptr %i.hj, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2081
  store i8 %i.hk, ptr %i.bt, align 1, !noalias !2081
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2081
  br label %common.ret

bb.x:                                             ; preds = %tailrecurse
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hn, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.ho = load i64, ptr %i.hl, align 8, !range !340, !alias.scope !2084, !noalias !2087, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2089
  store i64 %i.ho, ptr %i.ac, align 8, !noalias !2089
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #32, !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2089
  switch i64 %i.ho, label %tailrecurse.backedge.sink.split [
    i64 23, label %bb.y
    i64 50, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !2084, !noalias !2087, !nonnull !16, !noundef !16
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !2084, !noalias !2087, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hs) #32, !noalias !2084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2094
  store i8 -1, ptr %i.ab, align 1, !noalias !2094
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #32, !noalias !2101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2094
  br label %tailrecurse.backedge.sink.split

bb.z:                                             ; preds = %bb.x
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !2084, !noalias !2087, !nonnull !16, !noundef !16
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !2084, !noalias !2087, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2102
  store i64 %i.hw, ptr %i.aa, align 8, !noalias !2102
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #32, !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2102
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hu, i64 noundef %i.hw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !2084
  br label %tailrecurse.backedge.sink.split

bb.aa:                                            ; preds = %tailrecurse
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val8 = load i8, ptr %i.hx, align 1, !range !2107, !noundef !16
  %i.hy = zext nneg i8 %.val8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2108
  store i64 %i.hy, ptr %i.bs, align 8, !noalias !2108
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2108
  br label %tailrecurse.backedge.sink.split

bb.ab:                                            ; preds = %tailrecurse
  %i.hz = getelementptr inbounds nuw i8, ptr %.tr, i64 120
  %i.ia = load i8, ptr %i.hz, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2115
  store i8 %i.ia, ptr %i.br, align 1, !noalias !2115
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2115
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 112
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ic, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 56 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 8, !range !359, !noundef !16
  %i.if = icmp ne i8 %i.ie, 116                   ; 2 uses
  %i.ig = zext i1 %i.if to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2118
  store i64 %i.ig, ptr %i.bq, align 8, !noalias !2118
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2118
  br i1 %i.if, label %bb.ch, label %bb.ci

bb.ac:                                            ; preds = %tailrecurse
  %i.ih = getelementptr inbounds nuw i8, ptr %.tr, i64 168
  %i.ii = getelementptr inbounds nuw i8, ptr %.tr, i64 104
  %.val9 = load i8, ptr %i.ih, align 1, !range !1267, !noundef !16
  %i.ij = zext nneg i8 %.val9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2123
  store i64 %i.ij, ptr %i.bp, align 8, !noalias !2123
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2123
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr, i64 160
  %i.il = load ptr, ptr %i.ik, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.il, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ii, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.im = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !range !18, !noundef !16
  %i.io = icmp ne i64 %i.in, -9223372036854775786 ; 2 uses
  %i.ip = zext i1 %i.io to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2130
  store i64 %i.ip, ptr %i.bo, align 8, !noalias !2130
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2130
  br i1 %i.io, label %bb.cl, label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  %i.iq = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ir, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %tailrecurse.backedge.sink.split

bb.ae:                                            ; preds = %tailrecurse
  %i.is = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.iu = load i64, ptr %i.is, align 8, !range !1175, !alias.scope !2135, !noalias !2138, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2140
  store i64 %i.iu, ptr %i.z, align 8, !noalias !2140
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #32, !noalias !2135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2140
  switch i64 %i.iu, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit [
    i64 4, label %bb.af
    i64 43, label %bb.ag
  ]

.sink.split.i:                                    ; preds = %bb.ag, %bb.af
  %.sink.i = phi ptr [ %i.iz, %bb.ag ], [ %i.iv, %bb.af ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.af:                                            ; preds = %bb.ae
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !range !17, !alias.scope !2135, !noalias !2138, !noundef !16
  %i.ix = icmp ne i64 %i.iw, -9223372036854775808 ; 2 uses
  %i.iy = zext i1 %i.ix to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2145
  store i64 %i.iy, ptr %i.y, align 8, !noalias !2145
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #32, !noalias !2135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2145
  br i1 %i.ix, label %.sink.split.i, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ag:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i

_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.ae, %.sink.split.i, %bb.af
  %.val10 = load i8, ptr %i.it, align 1, !range !1286, !noundef !16
  %i.ja = zext nneg i8 %.val10 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2150
  store i64 %i.ja, ptr %i.bn, align 8, !noalias !2150
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !2150
  br label %tailrecurse.backedge.sink.split

bb.ah:                                            ; preds = %tailrecurse
  %i.jb = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.jd, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.je = load i64, ptr %i.jb, align 8, !range !224, !alias.scope !2157, !noalias !2160, !noundef !16 ; 3 uses
  %i.jf = icmp eq i64 %i.je, 44                   ; 2 uses
  %i.jg = zext i1 %i.jf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2162
  store i64 %i.jg, ptr %i.x, align 8, !noalias !2162
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #32, !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2162
  br i1 %i.jf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jh = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #32
  br label %common.ret

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2170
  store i64 %i.je, ptr %i.w, align 8, !noalias !2170
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #32, !noalias !2176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2170
  switch i64 %i.je, label %common.ret [
    i64 4, label %bb.ak
    i64 43, label %bb.al
  ]

.sink.split.i.i:                                  ; preds = %bb.al, %bb.ak
  %.sink.i.i = phi ptr [ %i.jm, %bb.al ], [ %i.ji, %bb.ak ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.ak:                                            ; preds = %bb.aj
  %i.ji = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !range !17, !alias.scope !2176, !noalias !2177, !noundef !16
  %i.jk = icmp ne i64 %i.jj, -9223372036854775808 ; 2 uses
  %i.jl = zext i1 %i.jk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2178
  store i64 %i.jl, ptr %i.v, align 8, !noalias !2178
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #32, !noalias !2176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2178
  br i1 %i.jk, label %.sink.split.i.i, label %common.ret

bb.al:                                            ; preds = %bb.aj
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i.i

bb.am:                                            ; preds = %tailrecurse
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.jp = load ptr, ptr %i.jo, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.jp, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2183)
  %i.jq = load i64, ptr %i.jn, align 8, !range !224, !alias.scope !2183, !noalias !2186, !noundef !16 ; 3 uses
  %i.jr = icmp eq i64 %i.jq, 44                   ; 2 uses
  %i.js = zext i1 %i.jr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2188
  store i64 %i.js, ptr %i.u, align 8, !noalias !2188
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #32, !noalias !2183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2188
  br i1 %i.jr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jt = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #32
  br label %common.ret

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2196
  store i64 %i.jq, ptr %i.t, align 8, !noalias !2196
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #32, !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2196
  switch i64 %i.jq, label %common.ret [
    i64 4, label %bb.ap
    i64 43, label %bb.aq
  ]

.sink.split.i.i148:                               ; preds = %bb.aq, %bb.ap
  %.sink.i.i149 = phi ptr [ %i.jy, %bb.aq ], [ %i.ju, %bb.ap ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sink.i.i149, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.ap:                                            ; preds = %bb.ao
  %i.ju = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !range !17, !alias.scope !2202, !noalias !2203, !noundef !16
  %i.jw = icmp ne i64 %i.jv, -9223372036854775808 ; 2 uses
  %i.jx = zext i1 %i.jw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2204
  store i64 %i.jx, ptr %i.s, align 8, !noalias !2204
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #32, !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2204
  br i1 %i.jw, label %.sink.split.i.i148, label %common.ret

bb.aq:                                            ; preds = %bb.ao
  %i.jy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  br label %.sink.split.i.i148

bb.ar:                                            ; preds = %tailrecurse
  %i.jz = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ka, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %tailrecurse.backedge.sink.split

bb.as:                                            ; preds = %tailrecurse
  %i.kb = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.kc, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !align !26, !noundef !16 ; 2 uses
  %i.kf = icmp ne ptr %i.ke, null                 ; 2 uses
  %i.kg = zext i1 %i.kf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2209
  store i64 %i.kg, ptr %i.bm, align 8, !noalias !2209
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2209
  br i1 %i.kf, label %bb.cm, label %bb.cn

bb.at:                                            ; preds = %tailrecurse
  %i.kh = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ki, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kj = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.kk = load i8, ptr %i.kj, align 8, !range !1267, !noundef !16 ; 2 uses
  %i.kl = icmp ne i8 %i.kk, 3                     ; 2 uses
  %i.km = zext i1 %i.kl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2214
  store i64 %i.km, ptr %i.bl, align 8, !noalias !2214
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2214
  br i1 %i.kl, label %bb.cq, label %bb.cr

bb.au:                                            ; preds = %tailrecurse
  %i.kn = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ko, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kp = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.kq, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ks, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kt = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !align !26, !noundef !16 ; 2 uses
  %i.kv = icmp ne ptr %i.ku, null                 ; 2 uses
  %i.kw = zext i1 %i.kv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2219
  store i64 %i.kw, ptr %i.bk, align 8, !noalias !2219
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2219
  br i1 %i.kv, label %tailrecurse.backedge, label %common.ret

bb.av:                                            ; preds = %tailrecurse
  %i.kx = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ky, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  %i.kz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val6 = load ptr, ptr %i.kz, align 8, !nonnull !16, !noundef !16
  %i.la = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val7 = load i64, ptr %i.la, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2224
  store i64 %.val7, ptr %i.r, align 8, !noalias !2224
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2224
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val6, i64 noundef %.val7, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.aw:                                            ; preds = %tailrecurse
  %i.lb = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13ValueWithSpanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.lb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.ax:                                            ; preds = %tailrecurse
  %i.lc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.lc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %tailrecurse.backedge.sink.split

bb.ay:                                            ; preds = %tailrecurse
  %i.ld = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.le = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.le, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #32
  tail call void @_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13ValueWithSpanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ld, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.lf = getelementptr inbounds nuw i8, ptr %.tr, i64 144
  %i.lg = load i8, ptr %i.lf, align 8, !range !1286, !alias.scope !2233, !noalias !2236, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2238
  store i8 %i.lg, ptr %i.q, align 1, !noalias !2238
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2238
end_hunk_1
begin_hunk_2_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #32, !noalias !4604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4621
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4604
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.j, %bb.i, %_RINvXs1i_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ct = load i8, ptr %i.cs, align 8, !range !1267, !noundef !16 ; 3 uses
  %i.cu = icmp ne i8 %i.ct, 3                     ; 2 uses
  %i.cv = zext i1 %i.cu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4626
  store i64 %i.cv, ptr %i.g, align 8, !noalias !4626
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4626
  br i1 %i.cu, label %bb.k, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.k:                                             ; preds = %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4631)
  %i.cw = icmp ne i8 %i.ct, 2                     ; 2 uses
  %i.cx = zext i1 %i.cw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4634
  store i64 %i.cx, ptr %i.f, align 8, !noalias !4634
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4634
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4640
  store i8 %i.ct, ptr %i.e, align 1, !noalias !4640
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4640
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.cz = load i8, ptr %i.cy, align 1, !range !1341, !alias.scope !4631, !noalias !4643, !noundef !16 ; 2 uses
  %i.da = icmp ne i8 %i.cz, 2                     ; 2 uses
  %i.db = zext i1 %i.da to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4644
  store i64 %i.db, ptr %i.d, align 8, !noalias !4644
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4644
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = zext nneg i8 %i.cz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4649
  store i64 %i.dc, ptr %i.c, align 8, !noalias !4649
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4649
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 714
  %i.de = load i8, ptr %i.dd, align 2, !range !1341, !alias.scope !4631, !noalias !4643, !noundef !16 ; 2 uses
  %i.df = icmp ne i8 %i.de, 2                     ; 2 uses
  %i.dg = zext i1 %i.df to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4654
  store i64 %i.dg, ptr %i.b, align 8, !noalias !4654
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4654
  br i1 %i.df, label %bb.p, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4659
  store i8 %i.de, ptr %i.a, align 1, !noalias !4659
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32, !noalias !4631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4659
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.p, %bb.o, %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.f ]  ; 17 uses
  %i.m = load i32, ptr %.tr, align 8, !range !1066, !noundef !16 ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4662
  store i64 %i.n, ptr %i.l, align 8, !noalias !4662
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4662
  switch i32 %i.m, label %default.unreachable14 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

default.unreachable14:                            ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !19, !noundef !16 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  %i.r = add i64 %i.p, -9223372036854775807
  %i.s = select i1 %i.q, i64 %i.r, i64 0          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4667
  store i64 %i.s, ptr %i.k, align 8, !noalias !4667
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4667
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.m, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %tailrecurse
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !19, !noundef !16 ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  %i.x = add i64 %i.v, -9223372036854775807
  %i.y = select i1 %i.w, i64 %i.x, i64 0          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4672
  store i64 %i.y, ptr %i.j, align 8, !noalias !4672
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4672
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.n, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.d:                                             ; preds = %tailrecurse
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !16, !noundef !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4677
  store i64 %i.ad, ptr %i.i, align 8, !noalias !4677
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4677
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !16, !noundef !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4682
  store i64 %i.ah, ptr %i.h, align 8, !noalias !4682
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4682
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !16, !noundef !16
  br label %tailrecurse

bb.g:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !16, !noundef !16
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4687
  store i64 %i.an, ptr %i.g, align 8, !noalias !4687
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4687
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.al, i64 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %tailrecurse
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aq, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  %i.ar = load i32, ptr %i.ao, align 4, !range !1066, !alias.scope !4692, !noalias !4695, !noundef !16 ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4697
  store i64 %i.as, ptr %i.f, align 8, !noalias !4697
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4697
  switch i32 %i.ar, label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit [
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !4692, !noalias !4695, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4702
  store i32 %i.au, ptr %i.e, align 4, !noalias !4702
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4702
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !4692, !noalias !4695, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4705
  store i32 %i.aw, ptr %i.d, align 4, !noalias !4705
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 4) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4705
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !4692, !noalias !4695, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4708
  store i32 %i.ay, ptr %i.c, align 4, !noalias !4708
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4708
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !4692, !noalias !4695, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4711
  store i32 %i.ba, ptr %i.b, align 4, !noalias !4711
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4711
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !4692, !noalias !4695, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4714
  store i32 %i.bc, ptr %i.a, align 4, !noalias !4714
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #32, !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4714
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.b
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.n, %bb.b, %bb.m, %bb.g, %bb.e, %bb.d
  ret void

bb.n:                                             ; preds = %bb.c
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsa1_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_20RepetitionQuantifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11DropTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !1286, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4717
  store i8 %i.h, ptr %i.f, align 1, !noalias !4717
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4717
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.j, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4720
  store i64 %.val3, ptr %i.e, align 8, !noalias !4720
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4720
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !range !17, !noundef !16
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4729
  store i64 %i.n, ptr %i.d, align 8, !noalias !4729
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4729
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i64, ptr %i.p, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4734
  store i64 %.val1, ptr %i.c, align 8, !noalias !4734
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4734
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.r = load i8, ptr %i.q, align 1, !range !1275, !noundef !16 ; 2 uses
  %i.s = icmp ne i8 %i.r, 5                       ; 2 uses
  %i.t = zext i1 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4743
  store i64 %i.t, ptr %i.b, align 8, !noalias !4743
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4743
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = zext nneg i8 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4748
  store i64 %i.u, ptr %i.a, align 8, !noalias !4748
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4748
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !121, !noundef !16
  %i.g = icmp ne i64 %i.f, 69                     ; 2 uses
  %i.h = zext i1 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4755
  store i64 %i.h, ptr %i.e, align 8, !noalias !4755
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4755
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.j = load i8, ptr %i.i, align 8, !range !203, !noundef !16
  %i.k = icmp ne i8 %i.j, 103
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4760
  store i64 %i.l, ptr %i.d, align 8, !noalias !4760
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4760
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  %i.n = load i64, ptr %i.m, align 8, !range !17, !alias.scope !4765, !noalias !4768, !noundef !16
  %i.o = icmp ne i64 %i.n, -9223372036854775808   ; 2 uses
  %i.p = zext i1 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4770
  store i64 %i.p, ptr %i.c, align 8, !noalias !4770
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32, !noalias !4765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4770
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !4765, !noalias !4768, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !4765, !noalias !4768, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4775
  store i64 %.val1.i, ptr %i.b, align 8, !noalias !4775
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32, !noalias !4765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4775
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4765
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !4765, !noalias !4768, !nonnull !16, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !4765, !noalias !4768, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4782
  store i64 %i.v, ptr %i.a, align 8, !noalias !4782
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32, !noalias !4765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4782
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef %i.v, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4765
  br label %_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsa5_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !range !17, !noundef !16
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4787
  store i64 %i.n, ptr %i.j, align 8, !noalias !4787
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4787
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4792
  store i8 -1, ptr %i.i, align 1, !noalias !4792
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #32, !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4792
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4800)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.ck:                                            ; preds = %bb.ai
  %i.lq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7842
  store i64 %i.lr, ptr %i.v, align 8, !noalias !7842
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7842
  br label %.loopexit

bb.cl:                                            ; preds = %bb.aj
  %i.ls = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7845
  store i64 %i.lt, ptr %i.u, align 8, !noalias !7845
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7845
  br label %.loopexit

bb.cm:                                            ; preds = %bb.ak
  %i.lu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7848
  store i64 %i.lv, ptr %i.t, align 8, !noalias !7848
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7848
  br label %.loopexit

bb.cn:                                            ; preds = %bb.al
  %i.lw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7851
  store i64 %i.lx, ptr %i.s, align 8, !noalias !7851
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7851
  br label %.loopexit

bb.co:                                            ; preds = %bb.am
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7854
  store i64 %i.lz, ptr %i.r, align 8, !noalias !7854
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7854
  br label %.loopexit

bb.cp:                                            ; preds = %bb.an
  %i.ma = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mb = load i64, ptr %i.ma, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7857
  store i64 %i.mb, ptr %i.q, align 8, !noalias !7857
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7857
  br label %.loopexit

bb.cq:                                            ; preds = %bb.ao
  %i.mc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7860
  store i64 %i.md, ptr %i.p, align 8, !noalias !7860
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7860
  br label %.loopexit

bb.cr:                                            ; preds = %bb.ap
  %i.me = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7863
  store i64 %i.mf, ptr %i.o, align 8, !noalias !7863
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7863
  br label %.loopexit

bb.cs:                                            ; preds = %bb.aq
  %i.mg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7866
  store i64 %i.mh, ptr %i.n, align 8, !noalias !7866
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7866
  br label %.loopexit

bb.ct:                                            ; preds = %bb.at
  %i.mi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7869
  store i64 %i.mj, ptr %i.m, align 8, !noalias !7869
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7869
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.at
  %.val9 = load i8, ptr %i.hi, align 1, !range !1267, !noundef !16
  %i.mk = zext nneg i8 %.val9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7872
  store i64 %i.mk, ptr %i.l, align 8, !noalias !7872
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7872
  br label %.loopexit

bb.cv:                                            ; preds = %bb.au
  %i.ml = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7879
  store i64 %i.mm, ptr %i.k, align 8, !noalias !7879
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7879
  br label %.loopexit

bb.cw:                                            ; preds = %bb.av
  %i.mn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !nonnull !16, !noundef !16
  %i.mp = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !noundef !16
  tail call fastcc void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mo, i64 noundef %i.mq) #32
  br label %.loopexit

bb.cx:                                            ; preds = %bb.aw
  %i.mr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7882
  store i64 %i.ms, ptr %i.j, align 8, !noalias !7882
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7882
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.aw
  %.val8 = load i8, ptr %i.hv, align 1, !range !1267, !noundef !16
  %i.mt = zext nneg i8 %.val8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7885
  store i64 %i.mt, ptr %i.i, align 8, !noalias !7885
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7885
  br label %.loopexit

bb.cz:                                            ; preds = %bb.ax
  %i.mu = zext nneg i8 %i.ia to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7892
  store i64 %i.mu, ptr %i.h, align 8, !noalias !7892
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7892
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ax
  %i.mv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !range !323, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7899
  store i64 %i.mw, ptr %i.g, align 8, !noalias !7899
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7899
  %i.mx = trunc nuw i64 %i.mw to i1
  br i1 %i.mx, label %bb.db, label %.loopexit

bb.db:                                            ; preds = %bb.da
  %i.my = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7904
  store i64 %i.mz, ptr %i.f, align 8, !noalias !7904
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7904
  br label %.loopexit

bb.dc:                                            ; preds = %bb.ay
  %i.na = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7907
  store i64 %i.nb, ptr %i.e, align 8, !noalias !7907
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7907
  br label %.loopexit

bb.dd:                                            ; preds = %bb.ba
  %i.nc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nd = load i64, ptr %i.nc, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7910
  store i64 %i.nd, ptr %i.d, align 8, !noalias !7910
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7910
  br label %.loopexit

bb.de:                                            ; preds = %bb.bb
  %i.ne = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7913
  store i64 %i.nf, ptr %i.c, align 8, !noalias !7913
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7913
  br label %.loopexit

bb.df:                                            ; preds = %bb.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7916
  store i64 %i.nh, ptr %i.b, align 8, !noalias !7916
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7916
  br label %.loopexit

bb.dg:                                            ; preds = %bb.bi
  %i.ni = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7919
  store i8 %i.nj, ptr %i.a, align 1, !noalias !7919
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7919
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsoU_NtCs4lawaffTVVK_9sqlparser3astNtB7_19ShowStatementFilterNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !270, !noundef !16 ; 3 uses
  %i.f = icmp ne i64 %i.e, 71
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -69
  %i.h = icmp samesign ugt i64 %i.e, 68
  %i.i = select i1 %i.h, i64 %i.g, i64 2          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7922
  store i64 %i.i, ptr %i.d, align 8, !noalias !7922
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7922
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7927
  store i8 -1, ptr %i.c, align 1, !noalias !7927
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #32, !noalias !7934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7927
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !16, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7935
  store i8 -1, ptr %i.b, align 1, !noalias !7935
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #32, !noalias !7942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7935
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7943
  store i8 -1, ptr %i.a, align 1, !noalias !7943
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32, !noalias !7950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7943
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXspC_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CopySourceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !17, !noundef !16
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 2 uses
  %i.f = zext i1 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7951
  store i64 %i.f, ptr %i.c, align 8, !noalias !7951
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7951
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.h, ptr noalias noundef align 8 dereferenceable(72) %1) #32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.i, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7956
  store i64 %.val1, ptr %i.b, align 8, !noalias !7956
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7956
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7965
  store i64 %i.m, ptr %i.a, align 8, !noalias !7965
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7965
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvXspM_NtCs4lawaffTVVK_9sqlparser3astNtB7_10CopyTargetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !20, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7970
  store i64 %i.d, ptr %i.c, align 8, !noalias !7970
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7970
  switch i64 %i.d, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7975
  store i8 -1, ptr %i.b, align 1, !noalias !7975
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #32, !noalias !7982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7975
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7983
  store i8 -1, ptr %i.a, align 1, !noalias !7983
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32, !noalias !7990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7983
  br label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvXsqW_NtCs4lawaffTVVK_9sqlparser3astNtB7_11IamRoleKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !17, !noundef !16
  %i.d = icmp ne i64 %i.c, -9223372036854775808   ; 2 uses
  %i.e = zext i1 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7991
  store i64 %i.e, ptr %i.b, align 8, !noalias !7991
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7991
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7996
  store i8 -1, ptr %i.a, align 1, !noalias !7996
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #32, !noalias !8003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7996
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
end_hunk_3
begin_hunk_4_@_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
bb.df:                                            ; preds = %bb.de
  switch i64 %i.rs, label %tailrecurse.backedge.sink.split [
    i64 23, label %bb.dg
    i64 50, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.rv = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !8680, !noalias !8683, !noundef !16 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !8683, !noalias !8680, !noundef !16
  %i.rz = icmp eq i64 %i.rw, %i.ry
  br i1 %i.rz, label %_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit501, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.df
  %i.sa = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.sb = load i64, ptr %i.sa, align 8, !alias.scope !8680, !noalias !8683, !noundef !16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.sd = load i64, ptr %i.sc, align 8, !alias.scope !8683, !noalias !8680, !noundef !16
  %i.se = icmp eq i64 %i.sb, %i.sd
  br i1 %i.se, label %bb.di, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  %i.sf = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8, !alias.scope !8683, !noalias !8680, !nonnull !16, !noundef !16
  %i.sh = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !alias.scope !8680, !noalias !8683, !nonnull !16, !noundef !16
  %i.sj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.si, ptr noundef nonnull %i.sg, i64 noundef %i.sb), !noalias !8685
  br i1 %i.sj, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit501: ; preds = %bb.dg
  %i.sk = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !alias.scope !8683, !noalias !8680, !nonnull !16, !noundef !16
  %i.sm = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !8680, !noalias !8683, !nonnull !16, !noundef !16
  %bcmp.i500 = tail call i32 @bcmp(ptr nonnull %i.sn, ptr nonnull %i.sl, i64 %i.rw), !noalias !8685
  %i.so = icmp eq i32 %bcmp.i500, 0
  br i1 %i.so, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %bb.t
  %i.sp = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8689)
  %i.sr = load i64, ptr %i.sq, align 8, !range !340, !alias.scope !8686, !noalias !8689, !noundef !16 ; 2 uses
  %i.ss = load i64, ptr %i.sp, align 8, !range !340, !alias.scope !8689, !noalias !8686, !noundef !16
  %i.st = icmp eq i64 %i.sr, %i.ss
  br i1 %i.st, label %bb.dk, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dk:                                            ; preds = %bb.dj
  switch i64 %i.sr, label %tailrecurse.backedge.sink.split [
    i64 23, label %bb.dl
    i64 50, label %bb.dm
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.su = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !8686, !noalias !8689, !noundef !16 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.sx = load i64, ptr %i.sw, align 8, !alias.scope !8689, !noalias !8686, !noundef !16
  %i.sy = icmp eq i64 %i.sv, %i.sx
  br i1 %i.sy, label %_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit504, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %bb.dk
  %i.sz = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.ta = load i64, ptr %i.sz, align 8, !alias.scope !8686, !noalias !8689, !noundef !16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.tc = load i64, ptr %i.tb, align 8, !alias.scope !8689, !noalias !8686, !noundef !16
  %i.td = icmp eq i64 %i.ta, %i.tc
  br i1 %i.td, label %bb.dn, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %bb.dm
  %i.te = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.tf = load ptr, ptr %i.te, align 8, !alias.scope !8689, !noalias !8686, !nonnull !16, !noundef !16
  %i.tg = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !8686, !noalias !8689, !nonnull !16, !noundef !16
  %i.ti = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.th, ptr noundef nonnull %i.tf, i64 noundef %i.ta), !noalias !8691
  br i1 %i.ti, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsf_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit504: ; preds = %bb.dl
  %i.tj = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8, !alias.scope !8689, !noalias !8686, !nonnull !16, !noundef !16
  %i.tl = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !8686, !noalias !8689, !nonnull !16, !noundef !16
  %bcmp.i503 = tail call i32 @bcmp(ptr nonnull %i.tm, ptr nonnull %i.tk, i64 %i.sv), !noalias !8691
  %i.tn = icmp eq i32 %bcmp.i503, 0
  br i1 %i.tn, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.v
  %i.to = getelementptr inbounds nuw i8, ptr %.tr215, i64 121
  %i.tp = load i8, ptr %i.to, align 1, !range !1286, !noundef !16
  %i.tq = getelementptr inbounds nuw i8, ptr %.tr94216, i64 121
  %i.tr = load i8, ptr %i.tq, align 1, !range !1286, !noundef !16
  %i.ts = icmp eq i8 %i.tp, %i.tr
  br i1 %i.ts, label %bb.dp, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.tt = getelementptr inbounds nuw i8, ptr %.tr215, i64 112
  %i.tu = load ptr, ptr %i.tt, align 8, !nonnull !16, !noundef !16
  %i.tv = getelementptr inbounds nuw i8, ptr %.tr94216, i64 112
  %i.tw = load ptr, ptr %i.tv, align 8, !nonnull !16, !noundef !16
  %i.tx = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.tu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.tw) #32
  br i1 %i.tx, label %bb.dq, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %bb.dp
  %i.ty = getelementptr inbounds nuw i8, ptr %.tr215, i64 56 ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 8, !range !359, !noundef !16
  %.not41 = icmp eq i8 %i.tz, 116
  %i.ua = getelementptr inbounds nuw i8, ptr %.tr94216, i64 56 ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 8, !range !359, !noundef !16
  %i.uc = icmp eq i8 %i.ub, 116                   ; 2 uses
  br i1 %.not41, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.uc, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  br i1 %i.uc, label %bb.du, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.dr
  %i.ud = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ty, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ua) #32
  br i1 %i.ud, label %bb.du, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ue = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.uf = load i64, ptr %i.ue, align 8, !range !17, !noundef !16
  %.not43 = icmp eq i64 %i.uf, -9223372036854775808
  %i.ug = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.uh = load i64, ptr %i.ug, align 8, !range !17, !noundef !16
  %i.ui = icmp eq i64 %i.uh, -9223372036854775808 ; 2 uses
  br i1 %.not43, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  br i1 %i.ui, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  br i1 %i.ui, label %bb.dy, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dv
  %i.uj = getelementptr inbounds nuw i8, ptr %.tr215, i64 48
  %.val61 = load i64, ptr %i.uj, align 8, !noundef !16 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.tr94216, i64 48
  %.val63 = load i64, ptr %i.uk, align 8, !noundef !16
  %i.ul = icmp eq i64 %.val61, %.val63
  br i1 %i.ul, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87: ; preds = %bb.dx
  %i.um = getelementptr inbounds nuw i8, ptr %.tr94216, i64 40
  %.val62 = load ptr, ptr %i.um, align 8, !nonnull !16, !noundef !16
  %i.un = getelementptr inbounds nuw i8, ptr %.tr215, i64 40
  %.val60 = load ptr, ptr %i.un, align 8, !nonnull !16, !noundef !16
  %i.uo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val60, ptr noundef nonnull %.val62, i64 noundef %.val61)
  br i1 %i.uo, label %bb.dy, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit87, %bb.dw
  %i.up = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.uq = load i64, ptr %i.up, align 8, !noundef !16 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.us = load i64, ptr %i.ur, align 8, !noundef !16
  %i.ut = icmp eq i64 %i.uq, %i.us
  br i1 %i.ut, label %bb.dz, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dz:                                            ; preds = %bb.dy
  %i.uu = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !nonnull !16, !noundef !16
  %i.uw = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8, !nonnull !16, !noundef !16
  %i.uy = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.ux, ptr noundef nonnull %i.uv, i64 noundef %i.uq)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ea:                                            ; preds = %bb.w
  %i.uz = getelementptr inbounds nuw i8, ptr %.tr215, i64 160
  %i.va = load ptr, ptr %i.uz, align 8, !nonnull !16, !noundef !16
  %i.vb = getelementptr inbounds nuw i8, ptr %.tr94216, i64 160
  %i.vc = load ptr, ptr %i.vb, align 8, !nonnull !16, !noundef !16
  %i.vd = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.va, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.vc) #32
  br i1 %i.vd, label %bb.eb, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eb:                                            ; preds = %bb.ea
  %i.ve = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dy) #32
  br i1 %i.ve, label %bb.ec, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %bb.eb
  %i.vf = getelementptr inbounds nuw i8, ptr %.tr215, i64 8 ; 2 uses
  %i.vg = load i64, ptr %i.vf, align 8, !range !18, !noundef !16
  %.not39 = icmp eq i64 %i.vg, -9223372036854775786 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !range !18, !noundef !16
  %i.vj = icmp eq i64 %i.vi, -9223372036854775786 ; 2 uses
  %brmerge490 = or i1 %.not39, %i.vj
  %.mux491 = and i1 %.not39, %i.vj
  br i1 %brmerge490, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vk = tail call fastcc noundef zeroext i1 @_RNvXs5B_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CastFormatNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.vf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.vh) #32
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread506: ; preds = %bb.z, %bb.af, %bb.ag, %bb.aj, %bb.ak, %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.vl = getelementptr inbounds nuw i8, ptr %.tr94216, i64 88
  %i.vm = getelementptr inbounds nuw i8, ptr %.tr215, i64 88
  %.val78 = load i8, ptr %i.vm, align 1, !range !1286, !noundef !16
  %.val79 = load i8, ptr %i.vl, align 1, !range !1286, !noundef !16
  %i.vn = icmp eq i8 %.val78, %.val79
  br i1 %i.vn, label %tailrecurse.backedge.sink.split, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ee:                                            ; preds = %bb.al
  %i.vo = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.vq = tail call fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.vp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.vo) #32
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.am
  %i.vr = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.vt = tail call fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.vs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.vr) #32
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eg:                                            ; preds = %bb.ao
  %i.vu = getelementptr inbounds nuw i8, ptr %.tr215, i64 33
  %i.vv = load i8, ptr %i.vu, align 1, !range !1286, !noundef !16
  %i.vw = getelementptr inbounds nuw i8, ptr %.tr94216, i64 33
  %i.vx = load i8, ptr %i.vw, align 1, !range !1286, !noundef !16
  %i.vy = icmp eq i8 %i.vv, %i.vx
  br i1 %i.vy, label %bb.eh, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eh:                                            ; preds = %bb.eg
  %i.vz = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !nonnull !16, !noundef !16
  %i.wb = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8, !nonnull !16, !noundef !16
  %i.wd = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wc) #32
  br i1 %i.wd, label %bb.ei, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ei:                                            ; preds = %bb.eh
  %i.we = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.wf = load ptr, ptr %i.we, align 8, !align !26, !noundef !16 ; 2 uses
  %.not35 = icmp eq ptr %i.wf, null
  %i.wg = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !align !26, !noundef !16 ; 2 uses
  %i.wi = icmp eq ptr %i.wh, null                 ; 2 uses
  br i1 %.not35, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.wi, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.el

bb.ek:                                            ; preds = %bb.ei
  br i1 %i.wi, label %bb.em, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.el:                                            ; preds = %bb.ej
  %i.wj = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wh) #32
  br i1 %i.wj, label %bb.em, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.wk = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8, !align !26, !noundef !16 ; 2 uses
  %.not37 = icmp eq ptr %i.wl, null               ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !align !26, !noundef !16 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, null                 ; 2 uses
  %brmerge876 = or i1 %.not37, %i.wo
  br i1 %brmerge876, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit.split.loop.exit1150, label %tailrecurse.backedge

bb.en:                                            ; preds = %bb.ap
  %i.wp = getelementptr inbounds nuw i8, ptr %.tr215, i64 48
  %i.wq = load i8, ptr %i.wp, align 8, !range !1267, !noundef !16 ; 2 uses
  %.not29 = icmp eq i8 %i.wq, 3
  %i.wr = getelementptr inbounds nuw i8, ptr %.tr94216, i64 48
  %i.ws = load i8, ptr %i.wr, align 8, !range !1267, !noundef !16 ; 2 uses
  br i1 %.not29, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wt = icmp eq i8 %i.wq, %i.ws
  br i1 %i.wt, label %bb.eq, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ep:                                            ; preds = %bb.en
  %i.wu = icmp eq i8 %i.ws, 3
  br i1 %i.wu, label %bb.eq, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.wv = getelementptr inbounds nuw i8, ptr %.tr215, i64 40
  %i.ww = load ptr, ptr %i.wv, align 8, !align !26, !noundef !16 ; 2 uses
  %.not31 = icmp eq ptr %i.ww, null
  %i.wx = getelementptr inbounds nuw i8, ptr %.tr94216, i64 40
  %i.wy = load ptr, ptr %i.wx, align 8, !align !26, !noundef !16 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, null                 ; 2 uses
  br i1 %.not31, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  br i1 %i.wz, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.et

bb.es:                                            ; preds = %bb.eq
  br i1 %i.wz, label %bb.eu, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.et:                                            ; preds = %bb.er
  %i.xa = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ww, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.wy) #32
  br i1 %i.xa, label %bb.eu, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.xb = getelementptr inbounds nuw i8, ptr %.tr215, i64 8
  %i.xc = load i64, ptr %i.xb, align 8, !range !17, !noundef !16
  %.not33 = icmp eq i64 %i.xc, -9223372036854775808 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.tr94216, i64 8
  %i.xe = load i64, ptr %i.xd, align 8, !range !17, !noundef !16
  %i.xf = icmp eq i64 %i.xe, -9223372036854775808 ; 2 uses
  %brmerge492 = or i1 %.not33, %i.xf
  %.mux493 = and i1 %.not33, %i.xf
  br i1 %brmerge492, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xg = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.xh = load i64, ptr %i.xg, align 8, !noundef !16 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.xj = load i64, ptr %i.xi, align 8, !noundef !16
  %i.xk = icmp eq i64 %i.xh, %i.xj
  br i1 %i.xk, label %bb.ew, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ew:                                            ; preds = %bb.ev
  %i.xl = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8, !nonnull !16, !noundef !16
  %i.xn = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8, !nonnull !16, !noundef !16
  %i.xp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.xo, ptr noundef nonnull %i.xm, i64 noundef %i.xh)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ex:                                            ; preds = %bb.aq
  %i.xq = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8, !nonnull !16, !noundef !16
  %i.xs = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8, !nonnull !16, !noundef !16
  %i.xu = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xt) #32
  br i1 %i.xu, label %bb.ey, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ey:                                            ; preds = %bb.ex
  %i.xv = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8, !nonnull !16, !noundef !16
  %i.xx = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8, !nonnull !16, !noundef !16
  %i.xz = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.xy) #32
  br i1 %i.xz, label %bb.ez, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ez:                                            ; preds = %bb.ey
  %i.ya = getelementptr inbounds nuw i8, ptr %.tr215, i64 32
  %i.yb = load ptr, ptr %i.ya, align 8, !align !26, !noundef !16 ; 2 uses
  %.not27 = icmp eq ptr %i.yb, null               ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.tr94216, i64 32
  %i.yd = load ptr, ptr %i.yc, align 8, !align !26, !noundef !16 ; 2 uses
  %i.ye = icmp eq ptr %i.yd, null                 ; 2 uses
  %brmerge878 = or i1 %.not27, %i.ye
  br i1 %brmerge878, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit.split.loop.exit1152, label %tailrecurse.backedge

bb.fa:                                            ; preds = %bb.ar
  %i.yf = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %.val57 = load i64, ptr %i.yf, align 8, !noundef !16 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %.val59 = load i64, ptr %i.yg, align 8, !noundef !16
  %i.yh = icmp eq i64 %.val57, %.val59
  br i1 %i.yh, label %bb.fb, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fb:                                            ; preds = %bb.fa
  %i.yi = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %.val58 = load ptr, ptr %i.yi, align 8, !nonnull !16, !noundef !16
  %i.yj = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %.val56 = load ptr, ptr %i.yj, align 8, !nonnull !16, !noundef !16
  %i.yk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val56, ptr noundef nonnull %.val58, i64 noundef %.val57)
  br label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fc:                                            ; preds = %bb.az
  br i1 %i.if, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.fe

bb.fd:                                            ; preds = %bb.az
  br i1 %i.if, label %bb.ff, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fe:                                            ; preds = %bb.fc
  %i.yl = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ic, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ie) #32
  br i1 %i.yl, label %bb.ff, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.ym = getelementptr inbounds nuw i8, ptr %.tr215, i64 24
  %i.yn = load i64, ptr %i.ym, align 8, !noundef !16 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.tr94216, i64 24
  %i.yp = load i64, ptr %i.yo, align 8, !noundef !16
  %i.yq = icmp eq i64 %i.yn, %i.yp
  br i1 %i.yq, label %bb.fg, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fg:                                            ; preds = %bb.ff
  %i.yr = getelementptr inbounds nuw i8, ptr %.tr94216, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !nonnull !16, !noundef !16
  %i.yt = getelementptr inbounds nuw i8, ptr %.tr215, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !nonnull !16, !noundef !16
  %i.yv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.yu, ptr noundef nonnull %i.ys, i64 noundef %i.yn)
  br i1 %i.yv, label %bb.fh, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.fh:                                            ; preds = %bb.fg
  %i.yw = getelementptr inbounds nuw i8, ptr %.tr215, i64 216
  %i.yx = load ptr, ptr %i.yw, align 8, !align !26, !noundef !16 ; 2 uses
  %.not25 = icmp eq ptr %i.yx, null               ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.tr94216, i64 216
  %i.yz = load ptr, ptr %i.yy, align 8, !align !26, !noundef !16 ; 2 uses
  %i.za = icmp eq ptr %i.yz, null                 ; 2 uses
  %brmerge880 = or i1 %.not25, %i.za
  br i1 %brmerge880, label %_RNvXs5h_NtCs4lawaffTVVK_9sqlparser3astNtB6_3MapNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.loopexit.split.loop.exit1154, label %tailrecurse.backedge

end_hunk_4
begin_hunk_5_@_RNvXs9N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %bb.a, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.s, %bb.r, %bb.q, %bb.p, %bb.v, %bb.u, %bb.t
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.s ], [ false, %bb.d ], [ %i.cn, %bb.t ], [ true, %bb.x ], [ %i.cs, %bb.u ], [ false, %bb.p ], [ false, %bb.ab ], [ %i.cx, %bb.v ], [ false, %bb.q ], [ false, %bb.k ], [ false, %bb.r ], [ %i.ae, %bb.g ], [ false, %bb.e ], [ %i.af, %bb.h ], [ true, %bb.c ], [ false, %bb.b ], [ %i.bg, %bb.n ], [ false, %bb.l ], [ %i.bh, %bb.o ], [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.w ], [ %i.dh, %bb.y ], [ %i.dm, %bb.z ], [ %i.dr, %bb.aa ], [ %i.eb, %bb.ac ], [ false, %bb.a ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable66:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8826)
  %i.g = load i64, ptr %i.e, align 8, !range !19, !alias.scope !8823, !noalias !8826, !noundef !16 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0          ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !range !19, !alias.scope !8826, !noalias !8823, !noundef !16 ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  %i.m = add i64 %i.k, -9223372036854775807
  %i.n = select i1 %i.l, i64 %i.m, i64 0
  %i.o = icmp eq i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.j, 0
  br i1 %i.p, label %bb.d, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8823, !noalias !8826, !noundef !16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !8826, !noalias !8823, !noundef !16
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !8826, !noalias !8823, !nonnull !16, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !8823, !noalias !8826, !nonnull !16, !noundef !16
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.w, i64 %i.r), !noalias !8828
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %bb.f, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr32, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !range !8513, !alias.scope !8823, !noalias !8826, !noundef !16 ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 1114112
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1033, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !range !8513, !alias.scope !8826, !noalias !8823, !noundef !16 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.ad, 1114112
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8832)
  %i.ai = load i64, ptr %i.ag, align 8, !range !19, !alias.scope !8829, !noalias !8832, !noundef !16 ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  %i.ak = add i64 %i.ai, -9223372036854775807
  %i.al = select i1 %i.aj, i64 %i.ak, i64 0       ; 2 uses
  %i.am = load i64, ptr %i.ah, align 8, !range !19, !alias.scope !8832, !noalias !8829, !noundef !16 ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = add i64 %i.am, -9223372036854775807
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0
  %i.aq = icmp eq i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.j, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i64 %i.al, 0
  br i1 %i.ar, label %bb.k, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !8829, !noalias !8832, !noundef !16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !8832, !noalias !8829, !noundef !16
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.l, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !8832, !noalias !8829, !nonnull !16, !noundef !16
  %i.az = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !8829, !noalias !8832, !nonnull !16, !noundef !16
  %bcmp.i6 = tail call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %i.ay, i64 %i.at), !noalias !8834
  %i.bb = icmp eq i32 %bcmp.i6, 0
  br i1 %i.bb, label %bb.m, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr32, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !range !8513, !alias.scope !8829, !noalias !8832, !noundef !16 ; 2 uses
  %.not.i7 = icmp eq i32 %i.bd, 1114112
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1033, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !range !8513, !alias.scope !8832, !noalias !8829, !noundef !16 ; 2 uses
  br i1 %.not.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp eq i32 %i.bf, 1114112
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !16
  %i.bm = icmp eq i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !16
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.u, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 8, !range !1066, !noundef !16 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !range !1066, !noundef !16
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr32, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr1033, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !16
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.v, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !16, !noundef !16
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !16, !noundef !16
  %i.ci = tail call fastcc noundef zeroext i1 @_RNvXs9N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ch) #32
  br i1 %i.ci, label %bb.w, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !16, !noundef !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !16, !noundef !16
  %i.cn = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20MatchRecognizeSymbolINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.ck, i64 noundef %i.bj)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !16, !noundef !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !16, !noundef !16
  %i.cs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, i64 noundef %i.bo)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr1033, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !16, !noundef !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr32, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !16, !noundef !16
  %i.cx = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21MatchRecognizePatternINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cu, i64 noundef %i.ca)
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr1033, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr32, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  %i.da = load i32, ptr %i.cz, align 4, !range !1066, !alias.scope !8835, !noalias !8838, !noundef !16 ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !range !1066, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.x, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  switch i32 %i.da, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %bb.aa
    i32 6, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !alias.scope !8835, !noalias !8838, !noundef !16
  %i.df = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.dh = icmp eq i32 %i.de, %i.dg
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !alias.scope !8835, !noalias !8838, !noundef !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !8835, !noalias !8838, !noundef !16
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.dr = icmp eq i32 %i.do, %i.dq
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !8835, !noalias !8838, !noundef !16
  %i.du = getelementptr inbounds nuw i8, ptr %.tr1033, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ac, label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr32, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !8835, !noalias !8838, !noundef !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr1033, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !alias.scope !8838, !noalias !8835, !noundef !16
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br label %_RNvXs9D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_20MatchRecognizeSymbolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !1286, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !1286, !noundef !16
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.f, align 8, !noundef !16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.g, align 8, !noundef !16
  %i.h = icmp eq i64 %.val9, %.val11
  br i1 %i.h, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val8, ptr noundef nonnull %.val10, i64 noundef %.val9)
  br i1 %i.k, label %bb.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !17, !noundef !16
  %.not = icmp eq i64 %i.m, -9223372036854775808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !17, !noundef !16
  %i.p = icmp eq i64 %i.o, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.g, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5 = load i64, ptr %i.q, align 8, !noundef !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val7 = load i64, ptr %i.r, align 8, !noundef !16
  %i.s = icmp eq i64 %.val5, %.val7
  br i1 %i.s, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val6 = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.u, align 8, !nonnull !16, !noundef !16
  %i.v = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val, ptr noundef nonnull %.val6, i64 noundef %.val5)
  br i1 %i.v, label %bb.g, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.x = load i8, ptr %i.w, align 1, !range !1275, !noundef !16 ; 2 uses
  %.not3 = icmp eq i8 %i.x, 5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.z = load i8, ptr %i.y, align 1, !range !1275, !noundef !16 ; 2 uses
  br i1 %.not3, label %bb.i, label %bb.h

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.h, %bb.f, %bb.b, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15, %bb.e, %bb.a, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.d, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %i.ab, %bb.i ], [ false, %bb.d ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ %i.aa, %bb.h ], [ false, %bb.b ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit15 ]
  ret i1 %.sroa.0.0.shrunk

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i8 %i.x, %i.z
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i8 %i.z, 5
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !121, !noundef !16
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !121, !noundef !16
  %i.c = icmp eq i64 %i.b, 69                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #32
  br i1 %i.d, label %bb.e, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.f = load i8, ptr %i.e, align 8, !range !203, !noundef !16
  %.not4 = icmp eq i8 %i.f, 103
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.h = load i8, ptr %i.g, align 8, !range !203, !noundef !16
  %i.i = icmp eq i8 %i.h, 103                     ; 2 uses
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.critedge

bb.g:                                             ; preds = %bb.e
  br i1 %i.i, label %.critedge, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8843)
  %i.l = load i64, ptr %i.j, align 8, !range !17, !alias.scope !8840, !noalias !8843, !noundef !16
  %i.m = icmp ne i64 %i.l, -9223372036854775808   ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !range !17, !alias.scope !8843, !noalias !8840, !noundef !16
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 3 uses
  %not..i = xor i1 %i.o, true
  %i.p = xor i1 %i.m, %i.o
  br i1 %i.p, label %bb.h, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.critedge
  br i1 %i.m, label %bb.i, label %bb.j

_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i: ; preds = %bb.j, %bb.i
  %.sink7.i = phi i64 [ 8, %bb.i ], [ 16, %bb.j ] ; 2 uses
  %.val3.sink.i = phi i64 [ %.val3.i, %bb.i ], [ %i.x, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink7.i
  %.val4.i = load ptr, ptr %i.q, align 8, !alias.scope !8843, !noalias !8840, !nonnull !16, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink7.i
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !8840, !noalias !8843, !nonnull !16, !noundef !16
  %i.s = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9StatementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val4.i, i64 noundef %.val3.sink.i), !noalias !8845
  br label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.assume(i1 %not..i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val3.i = load i64, ptr %i.t, align 8, !alias.scope !8840, !noalias !8843, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val5.i = load i64, ptr %i.u, align 8, !alias.scope !8843, !noalias !8840, !noundef !16
  %i.v = icmp eq i64 %.val3.i, %.val5.i
  br i1 %i.v, label %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.o)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !8840, !noalias !8843, !noundef !16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !8843, !noalias !8840, !noundef !16
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, label %_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsa1_NtCs4lawaffTVVK_9sqlparser3astNtB6_21ConditionalStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j, %bb.i, %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i, %.critedge, %bb.d, %bb.c, %bb.g, %bb.b, %bb.f
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.i ], [ false, %.critedge ], [ %i.s, %_RNvXsab_NtCs4lawaffTVVK_9sqlparser3astNtB6_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.sink.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs9n_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1232) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !121, !noundef !16
  %.not = icmp eq i64 %i.a, 69
  %i.b = load i64, ptr %1, align 8, !range !121, !noundef !16
  %i.c = icmp eq i64 %i.b, 69                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #32
  br i1 %i.d, label %bb.e, label %_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !noundef !16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.h = load i64, ptr %i.g, align 8, !noundef !16
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.f, label %_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

end_hunk_5
begin_hunk_6_@_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit699: ; preds = %bb.xl
  %i.caz = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 88
  %.val485 = load ptr, ptr %i.caz, align 8, !nonnull !16, !noundef !16
  %i.cba = getelementptr inbounds nuw i8, ptr %.tr1012, i64 88
  %.val483 = load ptr, ptr %i.cba, align 8, !nonnull !16, !noundef !16
  %i.cbb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val483, ptr noundef nonnull %.val485, i64 noundef %.val484)
  br i1 %i.cbb, label %bb.xm, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xm:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit699, %bb.xk
  %i.cbc = getelementptr inbounds nuw i8, ptr %.tr1012, i64 24
  %i.cbd = load i64, ptr %i.cbc, align 8, !noundef !16 ; 2 uses
  %i.cbe = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 24
  %i.cbf = load i64, ptr %i.cbe, align 8, !noundef !16
  %i.cbg = icmp eq i64 %i.cbd, %i.cbf
  br i1 %i.cbg, label %bb.xn, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xn:                                            ; preds = %bb.xm
  %i.cbh = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 16
  %i.cbi = load ptr, ptr %i.cbh, align 8, !nonnull !16, !noundef !16
  %i.cbj = getelementptr inbounds nuw i8, ptr %.tr1012, i64 16
  %i.cbk = load ptr, ptr %i.cbj, align 8, !nonnull !16, !noundef !16
  %i.cbl = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cbk, ptr noundef nonnull %i.cbi, i64 noundef %i.cbd)
  br i1 %i.cbl, label %bb.xo, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xo:                                            ; preds = %bb.xn
  %i.cbm = getelementptr inbounds nuw i8, ptr %.tr1012, i64 48
  %i.cbn = load i64, ptr %i.cbm, align 8, !noundef !16 ; 2 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 48
  %i.cbp = load i64, ptr %i.cbo, align 8, !noundef !16
  %i.cbq = icmp eq i64 %i.cbn, %i.cbp
  br i1 %i.cbq, label %bb.xp, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xp:                                            ; preds = %bb.xo
  %i.cbr = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 40
  %i.cbs = load ptr, ptr %i.cbr, align 8, !nonnull !16, !noundef !16
  %i.cbt = getelementptr inbounds nuw i8, ptr %.tr1012, i64 40
  %i.cbu = load ptr, ptr %i.cbt, align 8, !nonnull !16, !noundef !16
  %i.cbv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cbu, ptr noundef nonnull %i.cbs, i64 noundef %i.cbn)
  br i1 %i.cbv, label %bb.xq, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xq:                                            ; preds = %bb.xp
  %i.cbw = getelementptr inbounds nuw i8, ptr %.tr1012, i64 72
  %i.cbx = load i64, ptr %i.cbw, align 8, !noundef !16 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 72
  %i.cbz = load i64, ptr %i.cby, align 8, !noundef !16
  %i.cca = icmp eq i64 %i.cbx, %i.cbz
  br i1 %i.cca, label %bb.xr, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xr:                                            ; preds = %bb.xq
  %i.ccb = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 64
  %i.ccc = load ptr, ptr %i.ccb, align 8, !nonnull !16, !noundef !16
  %i.ccd = getelementptr inbounds nuw i8, ptr %.tr1012, i64 64
  %i.cce = load ptr, ptr %i.ccd, align 8, !nonnull !16, !noundef !16
  %i.ccf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cce, ptr noundef nonnull %i.ccc, i64 noundef %i.cbx)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xs:                                            ; preds = %bb.f, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ccg = getelementptr inbounds nuw i8, ptr %.tr1012, i64 88
  %i.cch = load i64, ptr %i.ccg, align 8, !noundef !16 ; 2 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 88
  %i.ccj = load i64, ptr %i.cci, align 8, !noundef !16
  %i.cck = icmp eq i64 %i.cch, %i.ccj
  br i1 %i.cck, label %bb.xt, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xt:                                            ; preds = %bb.xs
  %i.ccl = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 80
  %i.ccm = load ptr, ptr %i.ccl, align 8, !nonnull !16, !noundef !16
  %i.ccn = getelementptr inbounds nuw i8, ptr %.tr1012, i64 80
  %i.cco = load ptr, ptr %i.ccn, align 8, !nonnull !16, !noundef !16
  %i.ccp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cco, ptr noundef nonnull %i.ccm, i64 noundef %i.cch)
  br i1 %i.ccp, label %tailrecurse, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

tailrecurse:                                      ; preds = %bb.xt
  %i.ccq = getelementptr inbounds nuw i8, ptr %.tr1012, i64 96
  %i.ccr = load ptr, ptr %i.ccq, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 96
  %i.cct = load ptr, ptr %i.ccs, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ccu = load i64, ptr %i.ccr, align 8, !range !468, !noundef !16 ; 3 uses
  %i.ccv = icmp ne i64 %i.ccu, 78
  tail call void @llvm.assume(i1 %i.ccv)
  %i.ccw = add nsw i64 %i.ccu, -4
  %i.ccx = icmp samesign ugt i64 %i.ccu, 3
  %i.ccy = select i1 %i.ccx, i64 %i.ccw, i64 74   ; 2 uses
  %i.ccz = load i64, ptr %i.cct, align 8, !range !468, !noundef !16 ; 3 uses
  %i.cda = icmp ne i64 %i.ccz, 78
  tail call void @llvm.assume(i1 %i.cda)
  %i.cdb = add nsw i64 %i.ccz, -4
  %i.cdc = icmp samesign ugt i64 %i.ccz, 3
  %i.cdd = select i1 %i.cdc, i64 %i.cdb, i64 74
  %i.cde = icmp eq i64 %i.ccy, %i.cdd
  br i1 %i.cde, label %.lr.ph, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xu:                                            ; preds = %.lr.ph
  %i.cdf = getelementptr inbounds nuw i8, ptr %.tr1012, i64 8
  %i.cdg = load i64, ptr %i.cdf, align 8, !noundef !16
  %i.cdh = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 8
  %i.cdi = load i64, ptr %i.cdh, align 8, !noundef !16
  %i.cdj = icmp eq i64 %i.cdg, %i.cdi
  br i1 %i.cdj, label %bb.xv, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xv:                                            ; preds = %bb.xu
  %i.cdk = getelementptr inbounds nuw i8, ptr %.tr1012, i64 16
  %i.cdl = load i8, ptr %i.cdk, align 8, !range !1267, !noundef !16 ; 2 uses
  %.not222 = icmp eq i8 %i.cdl, 3
  %i.cdm = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 16
  %i.cdn = load i8, ptr %i.cdm, align 8, !range !1267, !noundef !16 ; 2 uses
  br i1 %.not222, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cdo = icmp eq i8 %i.cdl, %i.cdn
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xx:                                            ; preds = %bb.xv
  %i.cdp = icmp eq i8 %i.cdn, 3
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xy:                                            ; preds = %.lr.ph
  %i.cdq = getelementptr inbounds nuw i8, ptr %.tr1012, i64 32
  %i.cdr = load i8, ptr %i.cdq, align 8, !range !1286, !noundef !16
  %i.cds = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 32
  %i.cdt = load i8, ptr %i.cds, align 8, !range !1286, !noundef !16
  %i.cdu = icmp eq i8 %i.cdr, %i.cdt
  br i1 %i.cdu, label %bb.xz, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.xz:                                            ; preds = %bb.xy
  %i.cdv = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 33
  %i.cdw = getelementptr inbounds nuw i8, ptr %.tr1012, i64 33
  %.val643 = load i8, ptr %i.cdw, align 1, !range !1341, !noundef !16
  %.val644 = load i8, ptr %i.cdv, align 1, !range !1341, !noundef !16
  %i.cdx = icmp eq i8 %.val643, %.val644
  br i1 %i.cdx, label %bb.ya, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.ya:                                            ; preds = %bb.xz
  %i.cdy = getelementptr inbounds nuw i8, ptr %.tr1012, i64 34
  %i.cdz = load i8, ptr %i.cdy, align 2, !range !1341, !noundef !16 ; 2 uses
  %.not220 = icmp eq i8 %i.cdz, 2
  %i.cea = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 34
  %i.ceb = load i8, ptr %i.cea, align 2, !range !1341, !noundef !16 ; 2 uses
  br i1 %.not220, label %bb.yc, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.cec = icmp eq i8 %i.cdz, %i.ceb
  br i1 %i.cec, label %bb.yd, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yc:                                            ; preds = %bb.ya
  %i.ced = icmp eq i8 %i.ceb, 2
  br i1 %i.ced, label %bb.yd, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yd:                                            ; preds = %bb.yb, %bb.yc
  %i.cee = getelementptr inbounds nuw i8, ptr %.tr1012, i64 24
  %.val480 = load i64, ptr %i.cee, align 8, !noundef !16 ; 2 uses
  %i.cef = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 24
  %.val482 = load i64, ptr %i.cef, align 8, !noundef !16
  %i.ceg = icmp eq i64 %.val480, %.val482
  br i1 %i.ceg, label %bb.ye, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.ye:                                            ; preds = %bb.yd
  %i.ceh = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 16
  %.val481 = load ptr, ptr %i.ceh, align 8, !nonnull !16, !noundef !16
  %i.cei = getelementptr inbounds nuw i8, ptr %.tr1012, i64 16
  %.val479 = load ptr, ptr %i.cei, align 8, !nonnull !16, !noundef !16
  %i.cej = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val479, ptr noundef nonnull %.val481, i64 noundef %.val480)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yf:                                            ; preds = %.lr.ph
  %i.cek = getelementptr inbounds nuw i8, ptr %.tr1012, i64 46
  %i.cel = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 46
  %i.cem = getelementptr inbounds nuw i8, ptr %.tr1012, i64 42
  %i.cen = load i8, ptr %i.cem, align 2, !range !1286, !noundef !16
  %i.ceo = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 42
  %i.cep = load i8, ptr %i.ceo, align 2, !range !1286, !noundef !16
  %i.ceq = icmp eq i8 %i.cen, %i.cep
  br i1 %i.ceq, label %bb.yg, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yg:                                            ; preds = %bb.yf
  %i.cer = getelementptr inbounds nuw i8, ptr %.tr1012, i64 43
  %i.ces = load i8, ptr %i.cer, align 1, !range !1286, !noundef !16
  %i.cet = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 43
  %i.ceu = load i8, ptr %i.cet, align 1, !range !1286, !noundef !16
  %i.cev = icmp eq i8 %i.ces, %i.ceu
  br i1 %i.cev, label %bb.yh, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yh:                                            ; preds = %bb.yg
  %i.cew = getelementptr inbounds nuw i8, ptr %.tr1012, i64 44
  %i.cex = load i8, ptr %i.cew, align 4, !range !1286, !noundef !16
  %i.cey = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 44
  %i.cez = load i8, ptr %i.cey, align 4, !range !1286, !noundef !16
  %i.cfa = icmp eq i8 %i.cex, %i.cez
  br i1 %i.cfa, label %bb.yi, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yi:                                            ; preds = %bb.yh
  %i.cfb = getelementptr inbounds nuw i8, ptr %.tr1012, i64 45
  %i.cfc = load i8, ptr %i.cfb, align 1, !range !1286, !noundef !16
  %i.cfd = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 45
  %i.cfe = load i8, ptr %i.cfd, align 1, !range !1286, !noundef !16
  %i.cff = icmp eq i8 %i.cfc, %i.cfe
  br i1 %i.cff, label %bb.yj, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yj:                                            ; preds = %bb.yi
  %.val641 = load i8, ptr %i.cek, align 1, !range !1341, !noundef !16
  %.val642 = load i8, ptr %i.cel, align 1, !range !1341, !noundef !16
  %i.cfg = icmp eq i8 %.val641, %.val642
  br i1 %i.cfg, label %bb.yk, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yk:                                            ; preds = %bb.yj
  %i.cfh = getelementptr inbounds nuw i8, ptr %.tr1012, i64 32
  %i.cfi = load ptr, ptr %i.cfh, align 8, !nonnull !16, !noundef !16
  %i.cfj = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 32
  %i.cfk = load ptr, ptr %i.cfj, align 8, !nonnull !16, !noundef !16
  %i.cfl = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.cfi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.cfk) #32
  br i1 %i.cfl, label %bb.yl, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yl:                                            ; preds = %bb.yk
  %i.cfm = getelementptr inbounds nuw i8, ptr %.tr1012, i64 40
  %i.cfn = load i8, ptr %i.cfm, align 8, !range !1341, !noundef !16 ; 2 uses
  %.not216 = icmp eq i8 %i.cfn, 2
  %i.cfo = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 40
  %i.cfp = load i8, ptr %i.cfo, align 8, !range !1341, !noundef !16 ; 2 uses
  %i.cfq = icmp eq i8 %i.cfp, 2                   ; 2 uses
  br i1 %.not216, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  br i1 %i.cfq, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664, label %bb.yo

bb.yn:                                            ; preds = %bb.yl
  br i1 %i.cfq, label %bb.yp, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yo:                                            ; preds = %bb.ym
  %i.cfr = getelementptr inbounds nuw i8, ptr %.tr1012, i64 41
  %.val648 = load i8, ptr %i.cfr, align 1
  %i.cfs = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 41
  %.val650 = load i8, ptr %i.cfs, align 1
  %i.cft = icmp eq i8 %i.cfn, %i.cfp
  %i.cfu = icmp eq i8 %.val648, %.val650
  %spec.select.i = select i1 %i.cft, i1 %i.cfu, i1 false
  br i1 %spec.select.i, label %bb.yp, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  %i.cfv = getelementptr inbounds nuw i8, ptr %.tr1012, i64 8
  %i.cfw = load i64, ptr %i.cfv, align 8, !range !17, !noundef !16
  %.not218 = icmp eq i64 %i.cfw, -9223372036854775808 ; 2 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 8
  %i.cfy = load i64, ptr %i.cfx, align 8, !range !17, !noundef !16
  %i.cfz = icmp eq i64 %i.cfy, -9223372036854775808 ; 2 uses
  %brmerge1649 = or i1 %.not218, %i.cfz
  %.mux1650 = and i1 %.not218, %i.cfz
  br i1 %brmerge1649, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.cga = getelementptr inbounds nuw i8, ptr %.tr1012, i64 24
  %i.cgb = load i64, ptr %i.cga, align 8, !noundef !16 ; 2 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 24
  %i.cgd = load i64, ptr %i.cgc, align 8, !noundef !16
  %i.cge = icmp eq i64 %i.cgb, %i.cgd
  br i1 %i.cge, label %bb.yr, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yr:                                            ; preds = %bb.yq
  %i.cgf = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 16
  %i.cgg = load ptr, ptr %i.cgf, align 8, !nonnull !16, !noundef !16
  %i.cgh = getelementptr inbounds nuw i8, ptr %.tr1012, i64 16
  %i.cgi = load ptr, ptr %i.cgh, align 8, !nonnull !16, !noundef !16
  %i.cgj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cgi, ptr noundef nonnull %i.cgg, i64 noundef %i.cgb)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.ys:                                            ; preds = %.lr.ph
  %i.cgk = getelementptr inbounds nuw i8, ptr %.tr1012, i64 8
  %i.cgl = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 8
  %i.cgm = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgl)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yt:                                            ; preds = %.lr.ph
  %i.cgn = getelementptr inbounds nuw i8, ptr %.tr1012, i64 8
  %i.cgo = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 8
  %i.cgp = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cgo)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yu:                                            ; preds = %.lr.ph
  %i.cgq = getelementptr inbounds nuw i8, ptr %.tr1012, i64 624
  %i.cgr = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 624
  %i.cgs = getelementptr inbounds nuw i8, ptr %.tr1012, i64 1328
  %i.cgt = load i8, ptr %i.cgs, align 8, !range !1286, !noundef !16
  %i.cgu = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 1328
  %i.cgv = load i8, ptr %i.cgu, align 8, !range !1286, !noundef !16
  %i.cgw = icmp eq i8 %i.cgt, %i.cgv
  br i1 %i.cgw, label %bb.yv, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yv:                                            ; preds = %bb.yu
  %i.cgx = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 8
  %i.cgy = getelementptr inbounds nuw i8, ptr %.tr1012, i64 8
  %i.cgz = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgx) #32
  br i1 %i.cgz, label %bb.yw, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yw:                                            ; preds = %bb.yv
  %i.cha = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.cgr) #32
  br i1 %i.cha, label %bb.yx, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yx:                                            ; preds = %bb.yw
  %i.chb = getelementptr inbounds nuw i8, ptr %.tr1012, i64 1320
  %i.chc = load ptr, ptr %i.chb, align 8, !nonnull !16, !noundef !16
  %i.chd = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 1320
  %i.che = load ptr, ptr %i.chd, align 8, !nonnull !16, !noundef !16
  %i.chf = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.chc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.che) #32
  br i1 %i.chf, label %bb.yy, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yy:                                            ; preds = %bb.yx
  %i.chg = getelementptr inbounds nuw i8, ptr %.tr1012, i64 1256
  %i.chh = load i64, ptr %i.chg, align 8, !noundef !16 ; 2 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 1256
  %i.chj = load i64, ptr %i.chi, align 8, !noundef !16
  %i.chk = icmp eq i64 %i.chh, %i.chj
  br i1 %i.chk, label %bb.yz, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.yz:                                            ; preds = %bb.yy
  %i.chl = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 1248
  %i.chm = load ptr, ptr %i.chl, align 8, !nonnull !16, !noundef !16
  %i.chn = getelementptr inbounds nuw i8, ptr %.tr1012, i64 1248
  %i.cho = load ptr, ptr %i.chn, align 8, !nonnull !16, !noundef !16
  %i.chp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.cho, ptr noundef nonnull %i.chm, i64 noundef %i.chh)
  br i1 %i.chp, label %bb.za, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.za:                                            ; preds = %bb.yz
  %i.chq = getelementptr inbounds nuw i8, ptr %.tr1012, i64 1264 ; 2 uses
  %i.chr = load i64, ptr %i.chq, align 8, !range !19, !noundef !16
  %.not214 = icmp eq i64 %i.chr, -9223372036854775807 ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 1264 ; 2 uses
  %i.cht = load i64, ptr %i.chs, align 8, !range !19, !noundef !16
  %i.chu = icmp eq i64 %i.cht, -9223372036854775807 ; 2 uses
  %brmerge1651 = or i1 %.not214, %i.chu
  %.mux1652 = and i1 %.not214, %i.chu
  br i1 %brmerge1651, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.chv = tail call fastcc noundef zeroext i1 @_RNvXss0_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.chq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.chs) #32
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zc:                                            ; preds = %.lr.ph
  %i.chw = getelementptr inbounds nuw i8, ptr %.tr1012, i64 88
  %i.chx = load i8, ptr %i.chw, align 8, !range !1286, !noundef !16
  %i.chy = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 88
  %i.chz = load i8, ptr %i.chy, align 8, !range !1286, !noundef !16
  %i.cia = icmp eq i8 %i.chx, %i.chz
  br i1 %i.cia, label %bb.zd, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zd:                                            ; preds = %bb.zc
  %i.cib = getelementptr inbounds nuw i8, ptr %.tr1012, i64 56
  %i.cic = load i64, ptr %i.cib, align 8, !range !17, !noundef !16
  %.not210 = icmp eq i64 %i.cic, -9223372036854775808
  %i.cid = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 56
  %i.cie = load i64, ptr %i.cid, align 8, !range !17, !noundef !16
  %i.cif = icmp eq i64 %i.cie, -9223372036854775808 ; 2 uses
  br i1 %.not210, label %bb.zf, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  br i1 %i.cif, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664, label %bb.zg

bb.zf:                                            ; preds = %bb.zd
  br i1 %i.cif, label %bb.zh, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zg:                                            ; preds = %bb.ze
  %i.cig = getelementptr inbounds nuw i8, ptr %.tr1012, i64 72
  %.val476 = load i64, ptr %i.cig, align 8, !noundef !16 ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 72
  %.val478 = load i64, ptr %i.cih, align 8, !noundef !16
  %i.cii = icmp eq i64 %.val476, %.val478
  br i1 %i.cii, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit703, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit703: ; preds = %bb.zg
  %i.cij = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 64
  %.val477 = load ptr, ptr %i.cij, align 8, !nonnull !16, !noundef !16
  %i.cik = getelementptr inbounds nuw i8, ptr %.tr1012, i64 64
  %.val475 = load ptr, ptr %i.cik, align 8, !nonnull !16, !noundef !16
  %i.cil = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val475, ptr noundef nonnull %.val477, i64 noundef %.val476)
  br i1 %i.cil, label %bb.zh, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zh:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit703, %bb.zf
  %i.cim = getelementptr inbounds nuw i8, ptr %.tr1012, i64 24
  %.val472 = load i64, ptr %i.cim, align 8, !noundef !16 ; 2 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 24
  %.val474 = load i64, ptr %i.cin, align 8, !noundef !16
  %i.cio = icmp eq i64 %.val472, %.val474
  br i1 %i.cio, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit705, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit705: ; preds = %bb.zh
  %i.cip = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 16
  %.val473 = load ptr, ptr %i.cip, align 8, !nonnull !16, !noundef !16
  %i.ciq = getelementptr inbounds nuw i8, ptr %.tr1012, i64 16
  %.val471 = load ptr, ptr %i.ciq, align 8, !nonnull !16, !noundef !16
  %i.cir = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %.val471, ptr noundef nonnull %.val473, i64 noundef %.val472)
  br i1 %i.cir, label %bb.zi, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zi:                                            ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit705
  %i.cis = getelementptr inbounds nuw i8, ptr %.tr1012, i64 48
  %i.cit = load i64, ptr %i.cis, align 8, !noundef !16 ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 48
  %i.civ = load i64, ptr %i.ciu, align 8, !noundef !16
  %i.ciw = icmp eq i64 %i.cit, %i.civ
  br i1 %i.ciw, label %bb.zj, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit664

bb.zj:                                            ; preds = %bb.zi
  %i.cix = getelementptr inbounds nuw i8, ptr %.tr7811013, i64 40
  %i.ciy = load ptr, ptr %i.cix, align 8, !nonnull !16, !noundef !16
end_hunk_6
