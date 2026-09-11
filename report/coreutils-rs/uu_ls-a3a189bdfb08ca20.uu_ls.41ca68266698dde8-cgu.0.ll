Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess3_0E0EBV_:bb.a
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %spec.select.i.i25 = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp eq i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %i.ba = icmp slt i64 %spec.select.i.i25, 0
  %i.bb = icmp ult i64 %.sroa.4.0.i.i.i18, %.sroa.4.0.i12.i.i23
  %i.bc = select i1 %i.az, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph36
  %i.bd = add nuw nsw i64 %.sroa.01.1.i35, 1      ; 2 uses
  %exitcond43.not = icmp eq i64 %i.bd, %1
  br i1 %exitcond43.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, label %.lr.ph36

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph36, %.preheader30, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader30 ], [ 2, %.preheader ], [ %.sroa.01.1.i35, %.lr.ph36 ], [ %.sroa.01.0.i32, %.lr.ph ] ; 2 uses
  %i.be = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bf, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit
  br i1 %i.r, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit
  %i.bg = or i64 %1, 1
  %i.bh = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1
  %i.bk = xor i32 %i.bj, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess3_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.bk, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess3_0E0EB14_.exit.thread
  %i.bl = lshr i64 %1, 1                          ; 4 uses
  %i.bm = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.bn = sub nsw i64 0, %i.bl
  %i.bo = getelementptr inbounds [304 x i8], ptr %i.bm, i64 %i.bn
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef %i.bl, i64 noundef %i.bl) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_16sort_unstable_byNCNvBV_12sort_entriess_0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) #40 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %i.e = getelementptr [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %i.f = getelementptr i8, ptr %i.e, i64 -304
  %i.g = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.f) #40
  br i1 %i.g, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.m, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %i.j = getelementptr [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %i.k = getelementptr i8, ptr %i.j, i64 -304
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %i.i, ptr noundef nonnull align 8 %i.k) #40
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.m = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.m, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %.lr.ph12

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.n = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.o, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, label %bb.e

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit
  br i1 %i.c, label %bb.f, label %.thread

bb.e:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit
  %i.p = or i64 %1, 1
  %i.q = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 1
  %i.t = xor i32 %i.s, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_16sort_unstable_byNCNvB19_12sort_entriess_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.t, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %bb.a, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread, %bb.f, %bb.e
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_16sort_unstable_byNCNvB14_12sort_entriess_0E0EB14_.exit.thread
  %i.u = lshr i64 %1, 1                           ; 4 uses
  %i.v = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [304 x i8], ptr %i.v, i64 %i.w
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 %i.x, i64 noundef %i.u, i64 noundef %i.u) #40
  br label %.thread
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable7ipnsortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SBT_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBV_12sort_entries0E0EBV_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val3 = load ptr, ptr %2, align 8, !nonnull !4, !align !16, !noundef !4 ; 6 uses
  %.val1.i = load ptr, ptr %.val3, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %i.d) #37 ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %i.c, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %.not.i.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i.i, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 275
  %i.h = load i8, ptr %i.g, align 1, !range !29, !noundef !4
  %i.i = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b, i8 noundef %i.h) #37 ; 2 uses
  %i.j = extractvalue { i64, i32 } %i.i, 1        ; 2 uses
  %.not8.i.i = icmp eq i32 %i.j, -1               ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.i, 0
  %spec.select.i.i = select i1 %.not8.i.i, i32 0, i32 %i.j
  %spec.select9.i.i = select i1 %.not8.i.i, i64 0, i64 %i.k
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i: ; preds = %bb.d, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  %.sroa.5.0.i.i = phi i32 [ %spec.select.i.i, %bb.d ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i ]
  %.sroa.0.0.i.i = phi i64 [ %spec.select9.i.i, %bb.d ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i ] ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i6.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i6.i, label %bb.e, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i, !prof !7

bb.e:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i
  %i.n = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %0) #37 ; 0 uses
  %.pre.i.i14.i = load i64, ptr %i.l, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i: ; preds = %bb.e, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i
  %i.o = phi i64 [ %i.m, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i ], [ %.pre.i.i14.i, %bb.e ]
  %.not.i.i8.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i8.i, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 275
  %i.q = load i8, ptr %i.p, align 1, !range !29, !noundef !4
  %i.r = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.l, i8 noundef %i.q) #37 ; 2 uses
  %i.s = extractvalue { i64, i32 } %i.r, 1        ; 2 uses
  %.not8.i9.i = icmp eq i32 %i.s, -1              ; 2 uses
  %i.t = extractvalue { i64, i32 } %i.r, 0
  %spec.select.i10.i = select i1 %.not8.i9.i, i32 0, i32 %i.s
  %spec.select9.i11.i = select i1 %.not8.i9.i, i64 0, i64 %i.t
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i, %bb.f
  %.sroa.5.0.i12.i = phi i32 [ %spec.select.i10.i, %bb.f ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i ]
  %.sroa.0.0.i13.i = phi i64 [ %spec.select9.i11.i, %bb.f ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.0.0.i13.i, %.sroa.0.0.i.i
  %i.v = icmp ult i32 %.sroa.5.0.i12.i, %.sroa.5.0.i.i
  %i.w = icmp slt i64 %.sroa.0.0.i13.i, %.sroa.0.0.i.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w         ; 2 uses
  %.not60 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit
  br i1 %.not60, label %.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit
  br i1 %.not60, label %.thread77, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader52, %bb.k
  %.sroa.01.0.i54 = phi i64 [ %i.av, %bb.k ], [ 2, %.preheader52 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i54 ; 2 uses
  %3 = add nsw i64 %.sroa.01.0.i54, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3 ; 2 uses
  %.val1.i4 = load ptr, ptr %.val3, align 8       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i.i5 = icmp eq i64 %i.aa, -1
  br i1 %.not.i.i.i.i5, label %bb.g, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6, !prof !7

bb.g:                                             ; preds = %.lr.ph
  %i.ab = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.y) #37 ; 0 uses
  %.pre.i.i.i24 = load i64, ptr %i.z, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6: ; preds = %bb.g, %.lr.ph
  %i.ac = phi i64 [ %i.aa, %.lr.ph ], [ %.pre.i.i.i24, %bb.g ]
  %.not.i.i.i7 = icmp eq i64 %i.ac, 2
  br i1 %.not.i.i.i7, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11, label %bb.h

bb.h:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i4) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i4, i64 275
  %i.ae = load i8, ptr %i.ad, align 1, !range !29, !noundef !4
  %i.af = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.z, i8 noundef %i.ae) #37 ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 1      ; 2 uses
  %.not8.i.i8 = icmp eq i32 %i.ag, -1             ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.af, 0
  %spec.select.i.i9 = select i1 %.not8.i.i8, i32 0, i32 %i.ag
  %spec.select9.i.i10 = select i1 %.not8.i.i8, i64 0, i64 %i.ah
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11: ; preds = %bb.h, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6
  %.sroa.5.0.i.i12 = phi i32 [ %spec.select.i.i9, %bb.h ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6 ]
  %.sroa.0.0.i.i13 = phi i64 [ %spec.select9.i.i10, %bb.h ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i6 ] ; 2 uses
  %.val.i14 = load ptr, ptr %.val3, align 8       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i6.i15 = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i.i6.i15, label %bb.i, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16, !prof !7

bb.i:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11
  %i.ak = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull align 8 %5) #37 ; 0 uses
  %.pre.i.i14.i23 = load i64, ptr %i.ai, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16: ; preds = %bb.i, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11
  %i.al = phi i64 [ %i.aj, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i11 ], [ %.pre.i.i14.i23, %bb.i ]
  %.not.i.i8.i17 = icmp eq i64 %i.al, 2
  br i1 %.not.i.i8.i17, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25, label %bb.j

bb.j:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i14, i64 275
  %i.an = load i8, ptr %i.am, align 1, !range !29, !noundef !4
  %i.ao = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ai, i8 noundef %i.an) #37 ; 2 uses
  %i.ap = extractvalue { i64, i32 } %i.ao, 1      ; 2 uses
  %.not8.i9.i18 = icmp eq i32 %i.ap, -1           ; 2 uses
  %i.aq = extractvalue { i64, i32 } %i.ao, 0
  %spec.select.i10.i19 = select i1 %.not8.i9.i18, i32 0, i32 %i.ap
  %spec.select9.i11.i20 = select i1 %.not8.i9.i18, i64 0, i64 %i.aq
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16, %bb.j
  %.sroa.5.0.i12.i21 = phi i32 [ %spec.select.i10.i19, %bb.j ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16 ]
  %.sroa.0.0.i13.i22 = phi i64 [ %spec.select9.i11.i20, %bb.j ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i16 ] ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.i13.i22, %.sroa.0.0.i.i13
  %i.as = icmp ult i32 %.sroa.5.0.i12.i21, %.sroa.5.0.i.i12
  %i.at = icmp slt i64 %.sroa.0.0.i13.i22, %.sroa.0.0.i.i13
  %i.au = select i1 %i.ar, i1 %i.as, i1 %i.at
  br i1 %i.au, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25
  %i.av = add nuw nsw i64 %.sroa.01.0.i54, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.p
  %.sroa.01.1.i56 = phi i64 [ %i.bt, %bb.p ], [ 2, %.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i56 ; 2 uses
  %6 = add nsw i64 %.sroa.01.1.i56, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6 ; 2 uses
  %.val1.i26 = load ptr, ptr %.val3, align 8      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i.i27 = icmp eq i64 %i.ay, -1
  br i1 %.not.i.i.i.i27, label %bb.l, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28, !prof !7

bb.l:                                             ; preds = %.lr.ph57
  %i.az = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ax, ptr noundef nonnull align 8 %i.aw) #37 ; 0 uses
  %.pre.i.i.i46 = load i64, ptr %i.ax, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28: ; preds = %bb.l, %.lr.ph57
  %i.ba = phi i64 [ %i.ay, %.lr.ph57 ], [ %.pre.i.i.i46, %bb.l ]
  %.not.i.i.i29 = icmp eq i64 %i.ba, 2
  br i1 %.not.i.i.i29, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33, label %bb.m

bb.m:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i26) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i26, i64 275
  %i.bc = load i8, ptr %i.bb, align 1, !range !29, !noundef !4
  %i.bd = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ax, i8 noundef %i.bc) #37 ; 2 uses
  %i.be = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %.not8.i.i30 = icmp eq i32 %i.be, -1            ; 2 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 0
  %spec.select.i.i31 = select i1 %.not8.i.i30, i32 0, i32 %i.be
  %spec.select9.i.i32 = select i1 %.not8.i.i30, i64 0, i64 %i.bf
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33: ; preds = %bb.m, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28
  %.sroa.5.0.i.i34 = phi i32 [ %spec.select.i.i31, %bb.m ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28 ]
  %.sroa.0.0.i.i35 = phi i64 [ %spec.select9.i.i32, %bb.m ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i28 ] ; 2 uses
  %.val.i36 = load ptr, ptr %.val3, align 8       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i.i6.i37 = icmp eq i64 %i.bh, -1
  br i1 %.not.i.i.i6.i37, label %bb.n, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38, !prof !7

bb.n:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33
  %i.bi = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.bg, ptr noundef nonnull align 8 %8) #37 ; 0 uses
  %.pre.i.i14.i45 = load i64, ptr %i.bg, align 8, !range !8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38: ; preds = %bb.n, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33
  %i.bj = phi i64 [ %i.bh, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i33 ], [ %.pre.i.i14.i45, %bb.n ]
  %.not.i.i8.i39 = icmp eq i64 %i.bj, 2
  br i1 %.not.i.i8.i39, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47, label %bb.o

bb.o:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i36) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i36, i64 275
  %i.bl = load i8, ptr %i.bk, align 1, !range !29, !noundef !4
  %i.bm = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bg, i8 noundef %i.bl) #37 ; 2 uses
  %i.bn = extractvalue { i64, i32 } %i.bm, 1      ; 2 uses
  %.not8.i9.i40 = icmp eq i32 %i.bn, -1           ; 2 uses
  %i.bo = extractvalue { i64, i32 } %i.bm, 0
  %spec.select.i10.i41 = select i1 %.not8.i9.i40, i32 0, i32 %i.bn
  %spec.select9.i11.i42 = select i1 %.not8.i9.i40, i64 0, i64 %i.bo
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38, %bb.o
  %.sroa.5.0.i12.i43 = phi i32 [ %spec.select.i10.i41, %bb.o ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38 ]
  %.sroa.0.0.i13.i44 = phi i64 [ %spec.select9.i11.i42, %bb.o ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i38 ] ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0.0.i13.i44, %.sroa.0.0.i.i35
  %i.bq = icmp ult i32 %.sroa.5.0.i12.i43, %.sroa.5.0.i.i34
  %i.br = icmp slt i64 %.sroa.0.0.i13.i44, %.sroa.0.0.i.i35
  %i.bs = select i1 %i.bp, i1 %i.bq, i1 %i.br
  br i1 %i.bs, label %bb.p, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit

bb.p:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47
  %i.bt = add nuw nsw i64 %.sroa.01.1.i56, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond64.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit, label %.lr.ph57

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit: ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25, %bb.k, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47, %bb.p
  %.sroa.0.0.i = phi i64 [ %1, %bb.p ], [ %.sroa.01.1.i56, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit47 ], [ %1, %bb.k ], [ %.sroa.01.0.i54, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit25 ] ; 2 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit
  br i1 %i.x, label %.thread77, label %.thread

bb.r:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB6_SB12_20sort_unstable_by_keyINtNtB8_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB14_12sort_entries0E0EB14_.exit
  %i.bw = or i64 %1, 1
  %i.bx = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort8unstable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB19_12sort_entries0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.ca, ptr noalias nofree noundef align 8 dereferenceable(8) %2) #37
  br label %.thread

.thread:                                          ; preds = %.preheader52, %bb.a, %bb.q, %.thread77, %bb.r
  ret void

.thread77:                                        ; preds = %.preheader, %bb.q
  %i.cb = lshr i64 %1, 1                          ; 4 uses
  %i.cc = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  %i.cd = sub nsw i64 0, %i.cb
  %i.ce = getelementptr inbounds [304 x i8], ptr %i.cc, i64 %i.cd
  tail call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 %i.ce, i64 noundef %i.cb, i64 noundef %i.cb) #40
  br label %.thread
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess0_0E0EB16_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 3792504949364629) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess0_0E0EB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #37
  %i.h = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess0_0E0EB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #37
  %i.k = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess0_0E0EB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !27, !noundef !4
  %cond.i.i.i = icmp eq i64 %i.o, -2              ; 2 uses
  %spec.select.i.i.i = select i1 %cond.i.i.i, i64 8, i64 32
  %spec.select5.i.i.i = select i1 %cond.i.i.i, i64 16, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %spec.select.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %spec.select5.i.i.i
  %.sroa.0.0.i.i.i = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i.i.i = load i64, ptr %i.q, align 8, !noundef !4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !range !27, !noundef !4
  %cond.i5.i.i = icmp eq i64 %i.s, -2             ; 2 uses
  %spec.select.i6.i.i = select i1 %cond.i5.i.i, i64 8, i64 32
  %spec.select5.i7.i.i = select i1 %cond.i5.i.i, i64 16, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 %spec.select.i6.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 %spec.select5.i7.i.i
  %.sroa.0.0.i8.i.i = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i9.i.i = load i64, ptr %i.u, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i9.i.i)
  %i.v = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i8.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i9.i.i
  %spec.select.i.i = select i1 %i.x, i64 %i.y, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !27, !noundef !4
  %cond.i5.i.i17 = icmp eq i64 %i.aa, -2          ; 2 uses
  %spec.select.i6.i.i18 = select i1 %cond.i5.i.i17, i64 8, i64 32
  %spec.select5.i7.i.i19 = select i1 %cond.i5.i.i17, i64 16, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 %spec.select.i6.i.i18
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 %spec.select5.i7.i.i19
  %.sroa.0.0.i8.i.i20 = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i9.i.i21 = load i64, ptr %i.ac, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i9.i.i21)
  %i.ad = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i8.i.i20, i64 %spec.store.select.i.i22) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i9.i.i21
  %spec.select.i.i23 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i23, %spec.select.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess0_0E0EB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i34 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i9.i.i, i64 %.sroa.4.0.i9.i.i21)
  %i.aj = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i8.i.i, ptr nonnull %.sroa.0.0.i8.i.i20, i64 %spec.store.select.i.i34) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %.sroa.4.0.i9.i.i, %.sroa.4.0.i9.i.i21
  %spec.select.i.i35 = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = xor i64 %spec.select.i.i35, %spec.select.i.i
  %i.ao = icmp slt i64 %i.an, 0
  %..i = select i1 %i.ao, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess0_0E0EB11_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess0_0E0EB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess1_0E0EB16_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 3792504949364629) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess1_0E0EB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #37
  %i.h = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess1_0E0EB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #37
  %i.k = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess1_0E0EB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #40 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess1_0E0EB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess1_0E0EB11_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess1_0E0EB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess2_0E0EB16_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 3792504949364629) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess2_0E0EB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #37
  %i.h = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess2_0E0EB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #37
  %i.k = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess2_0E0EB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #40 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess2_0E0EB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess2_0E0EB11_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_16sort_unstable_byNCNvB11_12sort_entriess2_0E0EB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess3_0E0EB16_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 3792504949364629) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess3_0E0EB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #37
  %i.h = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess3_0E0EB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #37
  %i.k = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_16sort_unstable_byNCNvB16_12sort_entriess3_0E0EB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
end_hunk_0
