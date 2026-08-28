Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB16_12sort_entries0E0EB16_:bb.a
  %.sroa.5.0.i.i22 = phi i32 [ %spec.select.i.i19, %bb.i ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i16 ]
  %.sroa.0.0.i.i23 = phi i64 [ %spec.select9.i.i20, %bb.i ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i16 ] ; 2 uses
  %.val.i24 = load ptr, ptr %.val12, align 8      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 48 ; 8 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !126, !noundef !4 ; 2 uses
  %.not.i.i.i6.i25 = icmp eq i64 %i.as, -1
  br i1 %.not.i.i.i6.i25, label %bb.j, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26, !prof !127

bb.j:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i21
  %i.at = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 8 %.sroa.08.0) #37 ; 0 uses
  %.pre.i.i14.i33 = load i64, ptr %i.ar, align 8, !range !128
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26: ; preds = %bb.j, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i21
  %i.au = phi i64 [ %i.as, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i21 ], [ %.pre.i.i14.i33, %bb.j ]
  %.not.i.i8.i27 = icmp eq i64 %i.au, 2
  br i1 %.not.i.i8.i27, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35, label %bb.k

bb.k:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i24) ]
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i24, i64 275
  %i.aw = load i8, ptr %i.av, align 1, !range !1030, !noundef !4
  %i.ax = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ar, i8 noundef %i.aw) #37 ; 2 uses
  %i.ay = extractvalue { i64, i32 } %i.ax, 1      ; 2 uses
  %.not8.i9.i28 = icmp eq i32 %i.ay, -1           ; 2 uses
  %i.az = extractvalue { i64, i32 } %i.ax, 0
  %spec.select.i10.i29 = select i1 %.not8.i9.i28, i32 0, i32 %i.ay
  %spec.select9.i11.i30 = select i1 %.not8.i9.i28, i64 0, i64 %i.az
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26, %bb.k
  %.sroa.5.0.i12.i31 = phi i32 [ %spec.select.i10.i29, %bb.k ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26 ]
  %.sroa.0.0.i13.i32 = phi i64 [ %spec.select9.i11.i30, %bb.k ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i26 ] ; 2 uses
  %i.ba = icmp eq i64 %.sroa.0.0.i13.i32, %.sroa.0.0.i.i23
  %i.bb = icmp ult i32 %.sroa.5.0.i12.i31, %.sroa.5.0.i.i22
  %i.bc = icmp slt i64 %.sroa.0.0.i13.i32, %.sroa.0.0.i.i23
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  %i.be = xor i1 %i.ai, %i.bd
  br i1 %i.be, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB11_12sort_entries0E0EB11_.exit, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %.val1.i36 = load ptr, ptr %.val, align 8       ; 2 uses
  %i.bf = load i64, ptr %i.w, align 8, !range !126, !noundef !4 ; 2 uses
  %.not.i.i.i.i37 = icmp eq i64 %i.bf, -1
  br i1 %.not.i.i.i.i37, label %bb.m, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38, !prof !127

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.w, ptr noundef nonnull align 8 %.sroa.04.0) #37 ; 0 uses
  %.pre.i.i.i56 = load i64, ptr %i.w, align 8, !range !128
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38: ; preds = %bb.m, %bb.l
  %i.bh = phi i64 [ %i.bf, %bb.l ], [ %.pre.i.i.i56, %bb.m ]
  %.not.i.i.i39 = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i39, label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43, label %bb.n

bb.n:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i36) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i36, i64 275
  %i.bj = load i8, ptr %i.bi, align 1, !range !1030, !noundef !4
  %i.bk = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.w, i8 noundef %i.bj) #37 ; 2 uses
  %i.bl = extractvalue { i64, i32 } %i.bk, 1      ; 2 uses
  %.not8.i.i40 = icmp eq i32 %i.bl, -1            ; 2 uses
  %i.bm = extractvalue { i64, i32 } %i.bk, 0
  %spec.select.i.i41 = select i1 %.not8.i.i40, i32 0, i32 %i.bl
  %spec.select9.i.i42 = select i1 %.not8.i.i40, i64 0, i64 %i.bm
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43: ; preds = %bb.n, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38
  %.sroa.5.0.i.i44 = phi i32 [ %spec.select.i.i41, %bb.n ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38 ]
  %.sroa.0.0.i.i45 = phi i64 [ %spec.select9.i.i42, %bb.n ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i38 ] ; 2 uses
  %.val.i46 = load ptr, ptr %.val, align 8        ; 2 uses
  %i.bn = load i64, ptr %i.ar, align 8, !range !126, !noundef !4 ; 2 uses
  %.not.i.i.i6.i47 = icmp eq i64 %i.bn, -1
  br i1 %.not.i.i.i6.i47, label %bb.o, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48, !prof !127

bb.o:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43
  %i.bo = tail call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ar, ptr noundef nonnull align 8 %.sroa.08.0) #37 ; 0 uses
  %.pre.i.i14.i55 = load i64, ptr %i.ar, align 8, !range !128
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48: ; preds = %bb.o, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43
  %i.bp = phi i64 [ %i.bn, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entries0B3_.exit.i43 ], [ %.pre.i.i14.i55, %bb.o ]
  %.not.i.i8.i49 = icmp eq i64 %i.bp, 2
  br i1 %.not.i.i8.i49, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit57, label %bb.p

bb.p:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i46) ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i46, i64 275
  %i.br = load i8, ptr %i.bq, align 1, !range !1030, !noundef !4
  %i.bs = tail call { i64, i32 } @_RNvNtNtCsh036I4OHgIr_6uucore8features5fsext17metadata_get_time(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ar, i8 noundef %i.br) #37 ; 2 uses
  %i.bt = extractvalue { i64, i32 } %i.bs, 1      ; 2 uses
  %.not8.i9.i50 = icmp eq i32 %i.bt, -1           ; 2 uses
  %i.bu = extractvalue { i64, i32 } %i.bs, 0
  %spec.select.i10.i51 = select i1 %.not8.i9.i50, i32 0, i32 %i.bt
  %spec.select9.i11.i52 = select i1 %.not8.i9.i50, i64 0, i64 %i.bu
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit57

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit57: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48, %bb.p
  %.sroa.5.0.i12.i53 = phi i32 [ %spec.select.i10.i51, %bb.p ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48 ]
  %.sroa.0.0.i13.i54 = phi i64 [ %spec.select9.i11.i52, %bb.p ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i7.i48 ] ; 2 uses
  %i.bv = icmp eq i64 %.sroa.0.0.i13.i54, %.sroa.0.0.i.i45
  %i.bw = icmp ult i32 %.sroa.5.0.i12.i53, %.sroa.5.0.i.i44
  %i.bx = icmp slt i64 %.sroa.0.0.i13.i54, %.sroa.0.0.i.i45
  %i.by = select i1 %i.bv, i1 %i.bw, i1 %i.bx
  %i.bz = xor i1 %i.ai, %i.by
  %..i = select i1 %i.bz, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB11_12sort_entries0E0EB11_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SBZ_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB11_12sort_entries0E0EB11_.exit: ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit57
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit35 ], [ %..i, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData20sort_unstable_by_keyINtNtB7_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvBz_12sort_entries0E0Bz_.exit57 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB14_11sort_by_keybNCNvB16_12sort_entriess4_0E0EB16_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 3792504949364629) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB14_11sort_by_keybNCNvB16_12sort_entriess4_0E0EB16_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #37
  %i.h = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [304 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB14_11sort_by_keybNCNvB16_12sort_entriess4_0E0EB16_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #37
  %i.k = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [304 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot11median3_recNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB14_11sort_by_keybNCNvB16_12sort_entriess4_0E0EB16_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.04.0) #40 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %.sroa.0.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBZ_11sort_by_keybNCNvB11_12sort_entriess4_0E0EB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %.sroa.04.0, ptr noundef nonnull align 8 %.sroa.08.0) #40
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBZ_11sort_by_keybNCNvB11_12sort_entriess4_0E0EB11_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared5pivot7median3NtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBZ_11sort_by_keybNCNvB11_12sort_entriess4_0E0EB11_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_16sort_unstable_byNCNvB1o_12sort_entriess0_0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.9.i = alloca [256 x i8], align 8         ; 4 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 6 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit ], [ %0, %.lr.ph.preheader ] ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.pn3, i64 328
  %i.c = load i64, ptr %i.b, align 8, !range !886, !noundef !4 ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.c, -2            ; 4 uses
  %spec.select.i.i.i.i = select i1 %cond.i.i.i.i, i64 8, i64 32
  %spec.select5.i.i.i.i = select i1 %cond.i.i.i.i, i64 16, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 %spec.select.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 %spec.select5.i.i.i.i
  %.sroa.0.0.i.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i.i = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn3, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !886, !noundef !4
  %cond.i5.i.i.i = icmp eq i64 %i.g, -2           ; 2 uses
  %spec.select.i6.i.i.i = select i1 %cond.i5.i.i.i, i64 8, i64 32
  %spec.select5.i7.i.i.i = select i1 %cond.i5.i.i.i, i64 16, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.pn3, i64 %spec.select.i6.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 %spec.select5.i7.i.i.i
  %.sroa.0.0.i8.i.i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i9.i.i.i = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i, i64 %.sroa.4.0.i9.i.i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.0.0.i8.i.i.i, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %.sroa.4.0.i.i.i.i, %.sroa.4.0.i9.i.i.i
  %spec.select.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k
  %i.n = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.n, label %bb.a, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 312
  %.sroa.424.0.copyload.i = load i64, ptr %.sroa.424.0..sroa_idx.i, align 8
  %2 = load <2 x i64>, ptr %.sroa.0.04, align 8
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 320
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 336
  %.sroa.727.0.copyload.i = load i64, ptr %.sroa.727.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.828.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 344
  %.sroa.828.0.copyload.i = load i64, ptr %.sroa.828.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.929.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.929.0..sroa_idx.i, i64 256, i1 false)
  %.sroa.0.0.i.i.i10.sroa.speculated.v.i = select i1 %cond.i.i.i.i, i64 %.sroa.424.0.copyload.i, i64 %.sroa.727.0.copyload.i
  %.sroa.0.0.i.i.i10.sroa.speculated.i = inttoptr i64 %.sroa.0.0.i.i.i10.sroa.speculated.v.i to ptr
  %.sroa.4.0.i.i.i11.sroa.speculated.i = select i1 %cond.i.i.i.i, i64 %.sroa.525.0.copyload.i, i64 %.sroa.828.0.copyload.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(304) %.pn3, i64 304, i1 false)
  %i.o = icmp eq ptr %.pn3, %0
  br i1 %i.o, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(304) %i.q, i64 304, i1 false)
  %i.p = icmp eq ptr %i.q, %0
  br i1 %i.p, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.q, %bb.b ], [ %.pn3, %bb.a ] ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -304 ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -280
  %i.s = load i64, ptr %i.r, align 8, !range !886, !noundef !4
  %cond.i5.i.i12.i = icmp eq i64 %i.s, -2         ; 2 uses
  %spec.select.i6.i.i13.i = select i1 %cond.i5.i.i12.i, i64 8, i64 32
  %spec.select5.i7.i.i14.i = select i1 %cond.i5.i.i12.i, i64 16, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i6.i.i13.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select5.i7.i.i14.i
  %.sroa.0.0.i8.i.i15.i = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i9.i.i16.i = load i64, ptr %i.u, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, i64 %.sroa.4.0.i9.i.i16.i)
  %i.v = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i10.sroa.speculated.i, ptr nonnull %.sroa.0.0.i8.i.i15.i, i64 %spec.store.select.i.i17.i) ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, %.sroa.4.0.i9.i.i16.i
  %spec.select.i.i18.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.z, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ] ; 6 uses
  store <2 x i64> %2, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1031
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.525.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1031
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  store i64 %i.c, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1031
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32
  store i64 %.sroa.727.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1031
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 40
  store i64 %.sroa.828.0.copyload.i, ptr %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1031
  %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.i, i64 256, i1 false), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess0_0E0EB1a_.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_16sort_unstable_byNCNvB1o_12sort_entriess1_0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.15 = alloca [256 x i8], align 8          ; 4 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.09 = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit
  %.sroa.0.012 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit ], [ %.sroa.0.09, %.lr.ph.preheader ] ; 5 uses
  %.pn11 = phi ptr [ %.sroa.0.012, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit ], [ %0, %.lr.ph.preheader ] ; 10 uses
  %i.d = call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.012, ptr noundef nonnull align 8 %.pn11) #40
  br i1 %i.d, label %bb.a, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0.012, align 8
  %.sroa.4.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 312
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa.0.0.sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 320
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa.0.0.sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 328
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa.0.0.sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 336
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa.0.0.sroa_idx, align 8 ; 5 uses
  %.sroa.13.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 344
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.15.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn11, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.15.0..sroa.0.0.sroa_idx, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.012, ptr noundef nonnull align 8 dereferenceable(304) %.pn11, i64 304, i1 false)
  %i.e = icmp eq ptr %.pn11, %0
  br i1 %i.e, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(304) %i.g, i64 304, i1 false)
  %i.f = icmp eq ptr %i.g, %0
  br i1 %i.f, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %.pn11, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -304 ; 3 uses
  switch i64 %.sroa.10.0.copyload, label %bb.d [
    i64 -2, label %bb.c
    i64 -1, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.h = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.7.0.copyload) #37 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %.not10.i.i.i = icmp eq ptr %i.i, null          ; 2 uses
  %.sroa.5.0.i.i.i = select i1 %.not10.i.i.i, i64 %.sroa.7.0.copyload, i64 %i.j
  %.sroa.0.0.i.i.i = select i1 %.not10.i.i.i, ptr %.sroa.4.0.copyload, ptr %i.i
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

bb.d:                                             ; preds = %.lr.ph3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

bb.e:                                             ; preds = %.lr.ph3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.5.1.i.i.i = phi i64 [ %.sroa.13.0.copyload, %bb.d ], [ %.sroa.13.0.copyload, %bb.e ], [ %.sroa.5.0.i.i.i, %bb.c ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.11.0.copyload, %bb.d ], [ %.sroa.11.0.copyload, %bb.e ], [ %.sroa.0.0.i.i.i, %bb.c ]
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -280
  %i.l = load i64, ptr %i.k, align 8, !range !886, !noundef !4
  switch i64 %i.l, label %bb.g [
    i64 -2, label %bb.f
    i64 -1, label %bb.h
  ]

bb.f:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %.sroa.05.0.in.i15.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296 ; 2 uses
  %.sroa.05.0.i16.i.i = load ptr, ptr %.sroa.05.0.in.i15.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i17.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288 ; 2 uses
  %.sroa.3.0.i18.i.i = load i64, ptr %.sroa.3.0.in.i17.i.i, align 8, !noundef !4
  %i.m = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i16.i.i, i64 noundef %.sroa.3.0.i18.i.i) #37 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %.sroa.06.0.i19.i.i = load ptr, ptr %.sroa.05.0.in.i15.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.37.0.i20.i.i = load i64, ptr %.sroa.3.0.in.i17.i.i, align 8, !noundef !4
  %.not10.i21.i.i = icmp eq ptr %i.n, null        ; 2 uses
  %.sroa.5.0.i22.i.i = select i1 %.not10.i21.i.i, i64 %.sroa.37.0.i20.i.i, i64 %i.o
  %.sroa.0.0.i23.i.i = select i1 %.not10.i21.i.i, ptr %.sroa.06.0.i19.i.i, ptr %i.n
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit

bb.g:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -272
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -264
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit

bb.h:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -272
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -264
  %i.w = load i64, ptr %i.v, align 8, !noundef !4
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.5.1.i13.i.i = phi i64 [ %i.s, %bb.g ], [ %i.w, %bb.h ], [ %.sroa.5.0.i22.i.i, %bb.f ]
  %.sroa.0.1.i14.i.i = phi ptr [ %i.q, %bb.g ], [ %i.u, %bb.h ], [ %.sroa.0.0.i23.i.i, %bb.f ]
  %i.x = call noundef i8 @_RNvNtNtCsh036I4OHgIr_6uucore8features11version_cmp11version_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.5.1.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i14.i.i, i64 noundef %.sroa.5.1.i13.i.i) #37 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %.sroa.07.0.in.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296
  %.sroa.07.0.i.i = load ptr, ptr %.sroa.07.0.in.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.38.0.in.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288
  %.sroa.38.0.i.i = load i64, ptr %.sroa.38.0.in.i.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.7.0.copyload) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0.i.i, i64 noundef %.sroa.38.0.i.i) #37
  %i.y = call noundef i8 @_RNvNtCs2vKOLqTMYjT_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = icmp eq i8 %i.x, 0
  %spec.store.select.i.i = select i1 %i.z, i8 %i.y, i8 %i.x
  %i.aa = icmp eq i8 %spec.store.select.i.i, -1
  br i1 %i.aa, label %bb.b, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit._crit_edge

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit._crit_edge: ; preds = %bb.b, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit ] ; 7 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1036
  %.sroa.4.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1036
  %.sroa.7.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1036
  %.sroa.10.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1036
  %.sroa.11.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32
  store ptr %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1036
  %.sroa.13.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 40
  store i64 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1036
  %.sroa.15.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.15.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.15, i64 256, i1 false), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess1_0E0EB1a_.exit: ; preds = %.lr.ph, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess1_0E0Bz_.exit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_16sort_unstable_byNCNvB1o_12sort_entriess2_0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.8 = alloca [280 x i8], align 8           ; 4 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.04 = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit
  %.sroa.0.07 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit ], [ %.sroa.0.04, %.lr.ph.preheader ] ; 5 uses
  %.pn6 = phi ptr [ %.sroa.0.07, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %i.b = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.07, ptr noundef nonnull align 8 %.pn6) #40
  br i1 %i.b, label %bb.a, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0.07, align 8
  %.sroa.4.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn6, i64 312
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa.0.0.sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn6, i64 320
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn6, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8.0..sroa.0.0.sroa_idx, i64 280, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(304) %.pn6, i64 304, i1 false)
  %i.c = icmp eq ptr %.pn6, %0
  br i1 %i.c, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit._crit_edge, label %.lr.ph3.preheader

.lr.ph3.preheader:                                ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %.lr.ph3

bb.b:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(304) %i.e, i64 304, i1 false)
  %i.d = icmp eq ptr %i.e, %0
  br i1 %i.d, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.e, %bb.b ], [ %.pn6, %.lr.ph3.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -304 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.6.0.copyload) #37 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %.sroa.012.0.in.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296 ; 2 uses
  %.sroa.012.0.i.i = load ptr, ptr %.sroa.012.0.in.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.313.0.in.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288 ; 2 uses
  %.sroa.313.0.i.i = load i64, ptr %.sroa.313.0.in.i.i, align 8, !noundef !4
  %i.i = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.012.0.i.i, i64 noundef %.sroa.313.0.i.i) #37 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.not41.i.i = icmp eq ptr %i.g, null
  br i1 %.not41.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %.not43.i.i = icmp eq ptr %i.j, null
  br i1 %.not43.i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.lr.ph3
  %.not42.i.i = icmp ne ptr %i.j, null
  %..i.i = sext i1 %.not42.i.i to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %i.v, %bb.f ], [ %..i.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.l = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.6.0.copyload) #37 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %.sroa.027.0.i.i = load ptr, ptr %.sroa.012.0.in.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.328.0.i.i = load i64, ptr %.sroa.313.0.in.i.i, align 8, !noundef !4
  %i.o = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.027.0.i.i, i64 noundef %.sroa.328.0.i.i) #37 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %.not46.i.i = icmp eq ptr %i.m, null
  br i1 %.not46.i.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k)
  %i.r = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.j, i64 %spec.store.select.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.h, %i.k
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %.not48.i.i = icmp eq ptr %i.p, null
  br i1 %.not48.i.i, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %.not47.i.i = icmp ne ptr %i.p, null
  %.49.i.i = sext i1 %.not47.i.i to i8
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit

bb.i:                                             ; preds = %bb.g
  %spec.store.select1.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q)
  %i.w = tail call i32 @memcmp(ptr nonnull %i.m, ptr nonnull %i.p, i64 %spec.store.select1.i.i) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %i.n, %i.q
  %spec.select51.i.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select51.i.i, i64 0)
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.014.0.i.i = phi i8 [ %i.aa, %bb.i ], [ %.49.i.i, %bb.h ], [ 1, %bb.g ]
  %i.ab = icmp eq i8 %.sroa.0.0.i.i, 0
  %spec.select50.i.i = select i1 %i.ab, i8 %.sroa.014.0.i.i, i8 %.sroa.0.0.i.i
  %i.ac = icmp eq i8 %spec.select50.i.i, -1
  br i1 %i.ac, label %bb.b, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit._crit_edge

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit._crit_edge: ; preds = %bb.b, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit ] ; 4 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1041
  %.sroa.4.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1041
  %.sroa.6.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.i.sroa_idx, align 8, !noalias !1041
  %.sroa.8.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8, i64 280, i1 false), !noalias !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess2_0E0EB1a_.exit: ; preds = %.lr.ph, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess2_0E0Bz_.exit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_16sort_unstable_byNCNvB1o_12sort_entriess3_0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.9.i = alloca [256 x i8], align 8         ; 4 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 6 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit ], [ %0, %.lr.ph.preheader ] ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.pn3, i64 328
  %i.c = load i64, ptr %i.b, align 8, !range !886, !noundef !4 ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.c, -2            ; 4 uses
  %spec.select.i.i.i.i = select i1 %cond.i.i.i.i, i64 8, i64 32
  %spec.select5.i.i.i.i = select i1 %cond.i.i.i.i, i64 16, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 %spec.select.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 %spec.select5.i.i.i.i
  %.sroa.0.0.i.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i.i.i.i = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn3, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !886, !noundef !4
  %cond.i8.i.i.i = icmp eq i64 %i.g, -2           ; 2 uses
  %spec.select.i9.i.i.i = select i1 %cond.i8.i.i.i, i64 8, i64 32
  %spec.select5.i10.i.i.i = select i1 %cond.i8.i.i.i, i64 16, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.pn3, i64 %spec.select.i9.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 %spec.select5.i10.i.i.i
  %.sroa.0.0.i11.i.i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i12.i.i.i = load i64, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i, i64 %.sroa.4.0.i12.i.i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.0.0.i11.i.i.i, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %.sroa.4.0.i.i.i.i, %.sroa.4.0.i12.i.i.i
  %spec.select.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k
  %i.n = icmp eq i64 %.sroa.4.0.i.i.i.i, %.sroa.4.0.i12.i.i.i
  %i.o = icmp slt i64 %spec.select.i.i.i, 0
  %i.p = icmp ult i64 %.sroa.4.0.i.i.i.i, %.sroa.4.0.i12.i.i.i
  %i.q = select i1 %i.n, i1 %i.o, i1 %i.p
  br i1 %i.q, label %bb.a, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 312
  %.sroa.424.0.copyload.i = load i64, ptr %.sroa.424.0..sroa_idx.i, align 8
  %2 = load <2 x i64>, ptr %.sroa.0.04, align 8
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 320
  %.sroa.525.0.copyload.i = load i64, ptr %.sroa.525.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 336
  %.sroa.727.0.copyload.i = load i64, ptr %.sroa.727.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.828.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 344
  %.sroa.828.0.copyload.i = load i64, ptr %.sroa.828.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.929.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.929.0..sroa_idx.i, i64 256, i1 false)
  %.sroa.0.0.i.i.i10.sroa.speculated.v.i = select i1 %cond.i.i.i.i, i64 %.sroa.424.0.copyload.i, i64 %.sroa.727.0.copyload.i
  %.sroa.0.0.i.i.i10.sroa.speculated.i = inttoptr i64 %.sroa.0.0.i.i.i10.sroa.speculated.v.i to ptr
  %.sroa.4.0.i.i.i11.sroa.speculated.i = select i1 %cond.i.i.i.i, i64 %.sroa.525.0.copyload.i, i64 %.sroa.828.0.copyload.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(304) %.pn3, i64 304, i1 false)
  %i.r = icmp eq ptr %.pn3, %0
  br i1 %i.r, label %._crit_edge4, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(304) %i.t, i64 304, i1 false)
  %i.s = icmp eq ptr %i.t, %0
  br i1 %i.s, label %._crit_edge4, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.t, %bb.b ], [ %.pn3, %bb.a ] ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -304 ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -280
  %i.v = load i64, ptr %i.u, align 8, !range !886, !noundef !4
  %cond.i8.i.i12.i = icmp eq i64 %i.v, -2         ; 2 uses
  %spec.select.i9.i.i13.i = select i1 %cond.i8.i.i12.i, i64 8, i64 32
  %spec.select5.i10.i.i14.i = select i1 %cond.i8.i.i12.i, i64 16, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i9.i.i13.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select5.i10.i.i14.i
  %.sroa.0.0.i11.i.i15.i = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0.i12.i.i16.i = load i64, ptr %i.x, align 8, !noundef !4 ; 4 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, i64 %.sroa.4.0.i12.i.i16.i)
  %i.y = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i10.sroa.speculated.i, ptr nonnull %.sroa.0.0.i11.i.i15.i, i64 %spec.store.select.i.i17.i) ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, %.sroa.4.0.i12.i.i16.i
  %spec.select.i.i18.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp eq i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, %.sroa.4.0.i12.i.i16.i
  %i.ad = icmp slt i64 %spec.select.i.i18.i, 0
  %i.ae = icmp ult i64 %.sroa.4.0.i.i.i11.sroa.speculated.i, %.sroa.4.0.i12.i.i16.i
  %i.af = select i1 %i.ac, i1 %i.ad, i1 %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge4

._crit_edge4:                                     ; preds = %bb.b, %.lr.ph3, %bb.a
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i1, %.lr.ph3 ] ; 6 uses
  store <2 x i64> %2, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1046
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.sroa.525.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1046
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  store i64 %i.c, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1046
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32
  store i64 %.sroa.727.0.copyload.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1046
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 40
  store i64 %.sroa.828.0.copyload.i, ptr %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1046
  %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.9.i, i64 256, i1 false), !noalias !1046
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess3_0E0EB1a_.exit: ; preds = %.lr.ph, %._crit_edge4
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_16sort_unstable_byNCNvB1o_12sort_entriess_0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [304 x i8], align 8               ; 12 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.05.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.01, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit ] ; 5 uses
  %.pn3 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit ] ; 4 uses
  %i.h = call fastcc noundef zeroext i1 @_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_(ptr noundef nonnull align 8 %.sroa.0.04, ptr noundef nonnull align 8 %.pn3) #40
  br i1 %i.h, label %bb.b, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.04, i64 304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(304) %.pn3, i64 304, i1 false)
  %i.i = icmp eq ptr %.pn3, %0
  br i1 %i.i, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit._crit_edge, label %.lr.ph3

bb.c:                                             ; preds = %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(304) %i.k, i64 304, i1 false)
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i1 = phi ptr [ %i.k, %bb.c ], [ %.pn3, %bb.b ] ; 12 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -304 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -256 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !range !126, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i, !prof !127

bb.d:                                             ; preds = %.lr.ph3
  %i.n = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %i.k) #37 ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !range !128
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i: ; preds = %bb.d, %.lr.ph3
  %i.o = phi i64 [ %i.m, %.lr.ph3 ], [ %.pre.i.i.i, %bb.d ]
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  %i.p = getelementptr i8, ptr %.sroa.0.0.i1, i64 -176
  %.val.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1051, !noundef !4
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %bb.e, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.e ], [ 0, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i.i ] ; 2 uses
  %i.q = load i64, ptr %i.c, align 8, !range !126, !noundef !4 ; 2 uses
  %.not.i.i9.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i9.i.i, label %bb.f, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i, !prof !127

bb.f:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i
  %i.r = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.c, ptr noundef nonnull align 8 %i.a) #37 ; 0 uses
  %.pre.i12.i.i = load i64, ptr %i.c, align 8, !range !128
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i: ; preds = %bb.f, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i
  %i.s = phi i64 [ %i.q, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs2vKOLqTMYjT_3std2fs8MetadataE6map_oryNvMsm_BL_BJ_3lenECs5EcwQX7phGK_5uu_ls.exit.i.i ], [ %.pre.i12.i.i, %bb.f ]
  %.not.i10.i.i = icmp eq i64 %i.s, 2
  %.val.i15.i.i = load i64, ptr %i.d, align 8
  %.sroa.02.0.i16.i.i = select i1 %.not.i10.i.i, i64 0, i64 %.val.i15.i.i ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !range !886, !noundef !4
  switch i64 %i.t, label %bb.h [
    i64 -2, label %bb.g
    i64 -1, label %bb.i
  ]

bb.g:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i
  %.sroa.05.0.i.i.i = load ptr, ptr %.sroa.05.0.in.i.i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.3.0.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i, align 8, !noundef !4 ; 2 uses
  %i.u = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i) #37 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %.not10.i.i.i = icmp eq ptr %i.v, null          ; 2 uses
  %.sroa.5.0.i.i.i = select i1 %.not10.i.i.i, i64 %.sroa.3.0.i.i.i, i64 %i.w
  %.sroa.0.0.i.i.i = select i1 %.not10.i.i.i, ptr %.sroa.05.0.i.i.i, ptr %i.v
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

bb.h:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i
  %i.x = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.y = load i64, ptr %i.g, align 8, !noundef !4
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

bb.i:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit13.i.i
  %i.z = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.aa = load i64, ptr %i.g, align 8, !noundef !4
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.5.1.i.i.i = phi i64 [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %.sroa.5.0.i.i.i, %bb.g ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i.i.i, %bb.g ]
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -280
  %i.ac = load i64, ptr %i.ab, align 8, !range !886, !noundef !4
  switch i64 %i.ac, label %bb.k [
    i64 -2, label %bb.j
    i64 -1, label %bb.l
  ]

bb.j:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %.sroa.05.0.in.i20.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296 ; 2 uses
  %.sroa.05.0.i21.i.i = load ptr, ptr %.sroa.05.0.in.i20.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i22.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288 ; 2 uses
  %.sroa.3.0.i23.i.i = load i64, ptr %.sroa.3.0.in.i22.i.i, align 8, !noundef !4
  %i.ad = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i21.i.i, i64 noundef %.sroa.3.0.i23.i.i) #37 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %.sroa.06.0.i24.i.i = load ptr, ptr %.sroa.05.0.in.i20.i.i, align 8, !nonnull !4, !noundef !4
  %.sroa.37.0.i25.i.i = load i64, ptr %.sroa.3.0.in.i22.i.i, align 8, !noundef !4
  %.not10.i26.i.i = icmp eq ptr %i.ae, null       ; 2 uses
  %.sroa.5.0.i27.i.i = select i1 %.not10.i26.i.i, i64 %.sroa.37.0.i25.i.i, i64 %i.af
  %.sroa.0.0.i28.i.i = select i1 %.not10.i26.i.i, ptr %.sroa.06.0.i24.i.i, ptr %i.ae
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit

bb.k:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -272
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -264
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit

bb.l:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_name.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -272
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -264
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  br label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.5.1.i18.i.i = phi i64 [ %i.aj, %bb.k ], [ %i.an, %bb.l ], [ %.sroa.5.0.i27.i.i, %bb.j ] ; 2 uses
  %.sroa.0.1.i19.i.i = phi ptr [ %i.ah, %bb.k ], [ %i.al, %bb.l ], [ %.sroa.0.0.i28.i.i, %bb.j ]
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.5.1.i.i.i, i64 %.sroa.5.1.i18.i.i)
  %i.ao = call i32 @memcmp(ptr %.sroa.0.1.i.i.i, ptr %.sroa.0.1.i19.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = sub i64 %.sroa.5.1.i.i.i, %.sroa.5.1.i18.i.i
  %spec.select.i.i = select i1 %i.aq, i64 %i.ar, i64 %i.ap
  %i.as = icmp eq i64 %.sroa.02.0.i.i.i, %.sroa.02.0.i16.i.i
  %i.at = icmp slt i64 %spec.select.i.i, 0
  %i.au = icmp ult i64 %.sroa.02.0.i.i.i, %.sroa.02.0.i16.i.i
  %i.av = select i1 %i.as, i1 %i.at, i1 %i.au
  br i1 %i.av, label %bb.c, label %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit._crit_edge

_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit._crit_edge: ; preds = %bb.c, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i1, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(304) %i.a, i64 304, i1 false), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_16sort_unstable_byNCNvB1a_12sort_entriess_0E0EB1a_.exit: ; preds = %bb.a, %_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData16sort_unstable_byNCNvBz_12sort_entriess_0E0Bz_.exit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1o_12sort_entries0E0EB1o_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [304 x i8], align 8               ; 6 uses
  %.idx = mul nuw nsw i64 %1, 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1a_12sort_entries0E0EB1a_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1a_12sort_entries0E0EB1a_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.01, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1a_12sort_entries0E0EB1a_.exit ] ; 5 uses
  %.pn3 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.04, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMB8_SB18_20sort_unstable_by_keyINtNtBa_3cmp7ReverseNtNtCs2vKOLqTMYjT_3std4time10SystemTimeENCNvB1a_12sort_entries0E0EB1a_.exit ] ; 6 uses
  %.val1.i.i = load ptr, ptr %.0.val, align 8     ; 2 uses
end_hunk_0
