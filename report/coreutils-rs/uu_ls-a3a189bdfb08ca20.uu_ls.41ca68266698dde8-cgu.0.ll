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
begin_hunk_1_@_RNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long:bb.a
  %i.acx = icmp ugt i64 %i.acv, %i.acw
  br label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i

_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i: ; preds = %bb.ec, %bb.eb
  %.sroa.0.0.i113.i = phi i1 [ %i.acx, %bb.ec ], [ false, %bb.eb ]
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors10color_name(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(64) dereferenceable_or_null(64) %i.co, i1 noundef zeroext %.sroa.0.0.i113.i) #37, !noalias !9915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9897
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i: ; preds = %bb.dy, %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i
  %i.acy = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.acz = load i8, ptr %i.acy, align 8, !range !2439, !alias.scope !9892, !noalias !9900, !noundef !4
  %.not72.i = icmp eq i8 %i.acz, 1
  br i1 %.not72.i, label %bb.ed, label %.thread243.i

bb.ed:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.adb = load i32, ptr %i.ada, align 8, !range !129, !noalias !9897, !noundef !4 ; 2 uses
  %.not.i.i117.i = icmp eq i32 %i.adb, 2
  br i1 %.not.i.i117.i, label %bb.ee, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i, !prof !127

bb.ee:                                            ; preds = %bb.ed
  %i.adc = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.ada, ptr noundef nonnull align 8 %0) #37, !noalias !9897 ; 0 uses
  %.pre.i119.i = load i32, ptr %i.ada, align 8, !range !1064, !noalias !9897
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i: ; preds = %bb.ee, %bb.ed
  %i.add = phi i32 [ %i.adb, %bb.ed ], [ %.pre.i119.i, %bb.ee ]
  %i.ade = trunc nuw i32 %i.add to i1
  br i1 %i.ade, label %bb.ef, label %.thread243.i

bb.ef:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.adg = load i32, ptr %i.adf, align 4, !noalias !9897, !noundef !4
  %i.adh = and i32 %i.adg, 61440
  %i.adi = icmp eq i32 %i.adh, 40960
  br i1 %i.adi, label %bb.eg, label %.thread243.i

bb.eg:                                            ; preds = %bb.ef
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.adk = load i8, ptr %i.adj, align 8, !range !134, !noalias !9897, !noundef !4
  %i.adl = trunc nuw i8 %i.adk to i1
  br i1 %i.adl, label %.thread243.i, label %bb.eh

.thread243.i:                                     ; preds = %bb.eg, %bb.ef, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i
  %i.adm = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.adn = load i8, ptr %i.adm, align 1, !range !9916, !alias.scope !9892, !noalias !9900, !noundef !4
  %i.ado = call fastcc noundef i32 @_RNvNtCs5EcwQX7phGK_5uu_ls7display14indicator_char(ptr noundef nonnull align 8 %0, i8 noundef %i.adn) #37, !noalias !9897 ; 2 uses
  %.not75.i = icmp eq i32 %i.ado, -1
  br i1 %.not75.i, label %.thread248.i, label %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i

.thread248.i:                                     ; preds = %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i, %.thread243.i
  %i.adp = load i64, ptr %i.acg, align 8, !noalias !9917 ; 2 uses
  %.sroa.011.0250.i = select i1 %i.dr, i64 %i.adp, i64 0
  br label %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit

_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.thread243.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9918
  store i32 0, ptr %i.al, align 4, !noalias !9918
  %i.adq = trunc nuw nsw i32 %i.ado to i8
  store i8 %i.adq, ptr %i.al, align 4, !alias.scope !9921, !noalias !9918
  %i.adr = call noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 1) #37, !noalias !9897 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9918
  br label %.thread248.i

bb.eh:                                            ; preds = %bb.eg
  %i.ads = load i64, ptr %i.acg, align 8, !noalias !9897
  %.sroa.011.0.i = select i1 %i.dr, i64 %i.ads, i64 0
  br i1 %.not39, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !9924)
  call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  %i.adt = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.adu = load i64, ptr %i.adt, align 8, !alias.scope !9930, !noalias !9915, !noundef !4
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !9931)
  call void @llvm.experimental.noalias.scope.decl(metadata !9934)
  %i.adw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.adx = load i64, ptr %i.adw, align 8, !alias.scope !9937, !noalias !9938, !noundef !4 ; 4 uses
  %i.ady = load ptr, ptr %i.co, align 8, !alias.scope !9937, !noalias !9938, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.em, %bb.ej
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ej ], [ %i.aep, %bb.em ]
  %.pn.i.i.i.i = phi i64 [ -1259354368857373368, %bb.ej ], [ %i.aeq, %bb.em ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.adx ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.adz, align 1, !noalias !9941 ; 2 uses
  %i.aea = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 119)
  %i.aeb = bitcast <16 x i1> %i.aea to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.aeb, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i192

.lr.ph.i.i.i.i192:                                ; preds = %bb.ek, %bb.el
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.aeo, %bb.el ], [ %i.aeb, %bb.ek ] ; 3 uses
  %i.aec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.aed = zext nneg i16 %i.aec to i64
  %i.aee = add i64 %.sroa.01.0.i.i.i.i.i, %i.aed
  %i.aef = and i64 %i.aee, %i.adx
  %i.aeg = sub nsw i64 0, %i.aef
  %i.aeh = getelementptr inbounds [32 x i8], ptr %i.ady, i64 %i.aeg
  %i.aei = getelementptr inbounds i8, ptr %i.aeh, i64 -32
  %.val2.i.i.i.i.i = load i8, ptr %i.aei, align 1, !range !390, !noalias !9944, !noundef !4
  %i.aej = icmp eq i8 %.val2.i.i.i.i.i, 9
  br i1 %i.aej, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %bb.el, !prof !144

._crit_edge.i.i.i.i:                              ; preds = %bb.el, %bb.ek
  %i.aek = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ael = bitcast <16 x i1> %i.aek to i16
  %i.aem = icmp eq i16 %i.ael, 0
  br i1 %i.aem, label %bb.em, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i, !prof !127

bb.el:                                            ; preds = %.lr.ph.i.i.i.i192
  %i.aen = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.aeo = and i16 %i.aen, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aeo, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i192

bb.em:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aep = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.aeq = add i64 %.sroa.01.0.i.i.i.i.i, %i.aep
  br label %bb.ek

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i: ; preds = %._crit_edge.i.i.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aes = load ptr, ptr %i.aer, align 8, !alias.scope !9947, !noalias !9915, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %i.aet = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aes, i8 noundef 9) #37, !noalias !9948
  br i1 %i.aet, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %.preheader560

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i: ; preds = %bb.ei
  %i.aeu = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aev = load ptr, ptr %i.aeu, align 8, !alias.scope !9947, !noalias !9915, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %i.aew = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aev, i8 noundef 9) #37, !noalias !9948
  br i1 %i.aew, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i

bb.en:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i, %bb.eh
  %i.aex = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.aey = load i8, ptr %i.aex, align 1, !range !9916, !alias.scope !9892, !noalias !9900, !noundef !4
  %.off.i = add nsw i8 %i.aey, -1
  %switch.i = icmp ult i8 %.off.i, -2
  br label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i

.preheader560:                                    ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i, %bb.ep
  %.sroa.9.0.i.i.i.i121.i = phi i64 [ %i.afp, %bb.ep ], [ 0, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i ]
  %.pn.i.i.i122.i = phi i64 [ %i.afq, %bb.ep ], [ -8387766902590710086, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i ]
  %.sroa.01.0.i.i.i.i123.i = and i64 %.pn.i.i.i122.i, %i.adx ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.ady, i64 %.sroa.01.0.i.i.i.i123.i
  %.sroa.0.0.copyload.i24.i.i.i124.i = load <16 x i8>, ptr %i.aez, align 1, !noalias !9949 ; 2 uses
  %i.afa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i124.i, splat (i8 69)
  %i.afb = bitcast <16 x i1> %i.afa to i16        ; 2 uses
  %.not.i.not30.i.i.i125.i = icmp eq i16 %i.afb, 0
  br i1 %.not.i.not30.i.i.i125.i, label %._crit_edge.i.i.i130.i, label %.lr.ph.i.i.i126.i

.lr.ph.i.i.i126.i:                                ; preds = %.preheader560, %bb.eo
  %.sroa.06.0.i31.i.i.i127.i = phi i16 [ %i.afo, %bb.eo ], [ %i.afb, %.preheader560 ] ; 3 uses
  %i.afc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i127.i, i1 true)
  %i.afd = zext nneg i16 %i.afc to i64
  %i.afe = add i64 %.sroa.01.0.i.i.i.i123.i, %i.afd
  %i.aff = and i64 %i.afe, %i.adx
  %i.afg = sub nsw i64 0, %i.aff
  %i.afh = getelementptr inbounds [32 x i8], ptr %i.ady, i64 %i.afg
  %i.afi = getelementptr inbounds i8, ptr %i.afh, i64 -32
  %.val2.i.i.i.i128.i = load i8, ptr %i.afi, align 1, !range !390, !noalias !9962, !noundef !4
  %i.afj = icmp eq i8 %.val2.i.i.i.i128.i, 16
  br i1 %i.afj, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %bb.eo, !prof !144

._crit_edge.i.i.i130.i:                           ; preds = %bb.eo, %.preheader560
  %i.afk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i124.i, splat (i8 -1)
  %i.afl = bitcast <16 x i1> %i.afk to i16
  %i.afm = icmp eq i16 %i.afl, 0
  br i1 %i.afm, label %bb.ep, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i, !prof !127

bb.eo:                                            ; preds = %.lr.ph.i.i.i126.i
  %i.afn = add i16 %.sroa.06.0.i31.i.i.i127.i, -1
  %i.afo = and i16 %i.afn, %.sroa.06.0.i31.i.i.i127.i ; 2 uses
  %.not.i.not.i.i.i129.i = icmp eq i16 %i.afo, 0
  br i1 %.not.i.not.i.i.i129.i, label %._crit_edge.i.i.i130.i, label %.lr.ph.i.i.i126.i

bb.ep:                                            ; preds = %._crit_edge.i.i.i130.i
  %i.afp = add i64 %.sroa.9.0.i.i.i.i121.i, 16    ; 2 uses
  %i.afq = add i64 %.sroa.01.0.i.i.i.i123.i, %i.afp
  br label %.preheader560

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i: ; preds = %._crit_edge.i.i.i130.i, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i
  %i.afr = phi ptr [ %i.aev, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i ], [ %i.aes, %._crit_edge.i.i.i130.i ]
  %i.afs = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.afr, i8 noundef 16) #37, !noalias !9965
  br i1 %i.afs, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %bb.en

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i: ; preds = %.lr.ph.i.i.i.i192, %.lr.ph.i.i.i126.i, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i, %bb.en, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i
  %.sroa.014.0.i = phi i1 [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i ], [ %switch.i, %bb.en ], [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i ], [ true, %.lr.ph.i.i.i126.i ], [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i ], [ true, %.lr.ph.i.i.i.i192 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !9897
  %.sroa.015.0.i = load ptr, ptr %i.ei, align 8, !noalias !9897, !nonnull !4, !noundef !4
  %.sroa.3.0.i = load i64, ptr %i.ej, align 8, !noalias !9897, !noundef !4
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs9read_link(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.i, i64 noundef %.sroa.3.0.i) #37, !noalias !9897
  %i.aft = load i64, ptr %i.bb, align 8, !range !192, !noalias !9897, !noundef !4 ; 3 uses
  %i.afu = icmp eq i64 %i.aft, -1
  %i.afv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  br i1 %i.afu, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i
  %6 = load ptr, ptr %i.afv, align 8, !noalias !9897, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !9897
  %.sroa.035.0.i = load ptr, ptr %i.ei, align 8, !noalias !9897, !nonnull !4, !noundef !4
  %.sroa.336.0.i = load i64, ptr %i.ej, align 8, !noalias !9897, !noundef !4
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.035.0.i, i64 noundef %.sroa.336.0.i) #37, !noalias !9897
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %6, ptr %i.afw, align 8, !noalias !9897
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i8 0, ptr %i.afx, align 8, !noalias !9897
  %i.afy = load i64, ptr %i.aq, align 8, !range !191, !noalias !9897, !noundef !4 ; 3 uses
  %i.afz = icmp ne i64 %i.afy, -9223372036854775805
  call void @llvm.assume(i1 %i.afz)
  %i.aga = icmp sgt i64 %i.afy, -1
  %i.agb = add i64 %i.afy, 9223372036854775807
  %switch264265.i = icmp ult i64 %i.agb, 3
  %switch264.i = or i1 %i.aga, %switch264265.i
  %spec.select.i = select i1 %switch264.i, i32 1, i32 2
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %spec.select.i) #37, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9897
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.ao, align 8, !noalias !9897
  %i.agc = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao) #37, !noalias !9897
  store ptr %i.agc, ptr %i.ap, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9897
  %i.agd = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #37, !noalias !9897 ; 2 uses
  %i.age = extractvalue { ptr, i64 } %i.agd, 0
  %i.agf = extractvalue { ptr, i64 } %i.agd, 1
  store ptr %i.age, ptr %i.an, align 8, !noalias !9897
  %i.agg = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.agf, ptr %i.agg, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9897
  store ptr %i.an, ptr %i.am, align 8, !noalias !9897
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs5EcwQX7phGK_5uu_ls, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !9897
  %i.agh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.aq, ptr %i.agh, align 8, !noalias !9897
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs4_Cs5EcwQX7phGK_5uu_lsNtB5_7LsErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9966
  store ptr %i.ap, ptr %i.ag, align 8, !noalias !9966
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr null, ptr %i.agi, align 8, !noalias !9966
  %i.agj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @47, ptr noundef nonnull @0, ptr noundef nonnull %i.am) #37, !noalias !9897
  %i.agk = load ptr, ptr %i.agi, align 8, !noalias !9966, !noundef !4 ; 7 uses
  %.not.i5.i.i = icmp eq ptr %i.agk, null         ; 2 uses
  br i1 %i.agj, label %bb.gr, label %bb.gs

bb.er:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i
  %.sroa.4210.0.copyload.i = load i64, ptr %i.afv, align 8, !noalias !9897
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !9897 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9971)
  call void @llvm.experimental.noalias.scope.decl(metadata !9974)
  call void @llvm.experimental.noalias.scope.decl(metadata !9977)
  %i.agl = load i64, ptr %i.acg, align 8, !alias.scope !9980, !noalias !9983, !noundef !4 ; 3 uses
  %i.agm = load i64, ptr %i.be, align 8, !range !40, !alias.scope !9980, !noalias !9983, !noundef !4
  %i.agn = sub i64 %i.agm, %i.agl
  %i.ago = icmp ult i64 %i.agn, 4
  %7 = inttoptr i64 %.sroa.4210.0.copyload.i to ptr ; 8 uses
  br i1 %i.ago, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i: ; preds = %bb.er
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.agl, i64 noundef 4, i64 noundef 1, i64 noundef 1) #37, !noalias !9983
  %i.agp = load i64, ptr %i.acg, align 8, !alias.scope !9985, !noalias !9983, !noundef !4
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i, %bb.er
  %.sink297.i = phi i64 [ %i.agp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i ], [ %i.agl, %bb.er ] ; 3 uses
  %i.agq = icmp sgt i64 %.sink297.i, -1
  call void @llvm.assume(i1 %i.agq)
  %i.agr = load ptr, ptr %i.ace, align 8, !alias.scope !9985, !noalias !9983, !nonnull !4, !noundef !4
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 %.sink297.i
  store i32 540945696, ptr %i.ags, align 1, !noalias !9986
  %i.agt = add nuw i64 %.sink297.i, 4
  store i64 %i.agt, ptr %i.acg, align 8, !alias.scope !9985, !noalias !9983
  br i1 %.not.i.i.i188, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i
  %i.agu = trunc nuw i8 %.val98.i to i1
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display12locale_quote(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %.sroa.11.0.copyload.i, i1 noundef zeroext %i.agu) #37, !noalias !9897
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i

bb.et:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %.sroa.11.0.copyload.i, i24 %.val99.i) #37, !noalias !9897
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i

_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i: ; preds = %bb.et, %bb.es
  br i1 %.sroa.014.0.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9987)
  call void @llvm.experimental.noalias.scope.decl(metadata !9990)
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i.i.i138.i = load ptr, ptr %i.agv, align 8, !noalias !9897, !nonnull !4, !noundef !4 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val1.i.i.i139.i = load i64, ptr %i.agw, align 8, !noalias !9897, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9993)
  %i.agx = load i64, ptr %i.acg, align 8, !alias.scope !9996, !noalias !9999, !noundef !4 ; 5 uses
  %i.agy = load i64, ptr %i.be, align 8, !range !40, !alias.scope !9996, !noalias !9999, !noundef !4
  %i.agz = sub i64 %i.agy, %i.agx
  %i.aha = icmp ugt i64 %.val1.i.i.i139.i, %i.agz
  br i1 %i.aha, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i: ; preds = %bb.eu
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.agx, i64 noundef %.val1.i.i.i139.i, i64 noundef 1, i64 noundef 1) #37, !noalias !9999
  %i.ahb = load i64, ptr %i.acg, align 8, !alias.scope !10001, !noalias !9999, !noundef !4 ; 2 uses
  %i.ahc = icmp sgt i64 %i.ahb, -1
  call void @llvm.assume(i1 %i.ahc)
  br label %bb.ev

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i: ; preds = %bb.eu
  %i.ahd = icmp sgt i64 %i.agx, -1
  call void @llvm.assume(i1 %i.ahd)
  %.not.i.i.i141.i = icmp eq i64 %.val1.i.i.i139.i, 0
  br i1 %.not.i.i.i141.i, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i, label %bb.ev

bb.ev:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i
  %i.ahe = phi i64 [ %i.ahb, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i ], [ %i.agx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i ] ; 2 uses
  %i.ahf = load ptr, ptr %i.ace, align 8, !alias.scope !10001, !noalias !9999, !nonnull !4, !noundef !4
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ahg, ptr nonnull readonly align 1 %.val.i.i.i138.i, i64 %.val1.i.i.i139.i, i1 false), !noalias !10002
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i: ; preds = %bb.ev, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i
  %i.ahh = phi i64 [ %i.ahe, %bb.ev ], [ %i.agx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i ]
  %i.ahi = add i64 %i.ahh, %.val1.i.i.i139.i
  store i64 %i.ahi, ptr %i.acg, align 8, !alias.scope !10001, !noalias !9999
  %.val.i144.i = load i64, ptr %i.ar, align 8, !range !40, !noalias !9897, !noundef !4 ; 2 uses
  %i.ahj = icmp eq i64 %.val.i144.i, 0
  br i1 %i.ahj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i, label %bb.ew

bb.ew:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i138.i, i64 noundef %.val.i144.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10003
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i

bb.ex:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i
  %i.ahk = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %.sroa.11.0.copyload.i) #37, !noalias !9897
  br i1 %i.ahk, label %bb.ez, label %bb.fa

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i, %bb.ew, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i
  %i.ahl = icmp eq i64 %i.aft, 0
  br i1 %i.ahl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %i.aft, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10008
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i

bb.ez:                                            ; preds = %bb.fb, %bb.fa, %bb.ex
  %.val1.i.i191.i = phi ptr [ undef, %bb.ex ], [ undef, %bb.fa ], [ %.val.i.i147.pre.i, %bb.fb ]
  %.val1.i.i148.i = phi i64 [ %.sroa.11.0.copyload.i, %bb.ex ], [ %.sroa.11.0.copyload.i, %bb.fa ], [ %.val1.i.i148.pre.i, %bb.fb ]
  %.val.i.i147.i = phi ptr [ %7, %bb.ex ], [ %7, %bb.fa ], [ %.val.i.i147.pre.i, %bb.fb ]
  %.sroa.042.0.i = phi i1 [ false, %bb.ex ], [ false, %bb.fa ], [ true, %bb.fb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !9897
  call void @llvm.experimental.noalias.scope.decl(metadata !10015)
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i147.i, i64 noundef %.val1.i.i148.i) #37, !noalias !10018
  %i.ahm = load i64, ptr %i.az, align 8, !range !192, !noalias !9897, !noundef !4 ; 3 uses
  %i.ahn = icmp eq i64 %i.ahm, -1
  br i1 %i.ahn, label %bb.fc, label %bb.fd

bb.fa:                                            ; preds = %bb.ex
  %.sroa.019.0.i = load ptr, ptr %i.ei, align 8, !noalias !9897, !nonnull !4, !noundef !4
  %.sroa.320.0.i = load i64, ptr %i.ej, align 8, !noalias !9897, !noundef !4
  %i.aho = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i, i64 noundef %.sroa.320.0.i) #37, !noalias !9897 ; 2 uses
  %i.ahp = extractvalue { ptr, i64 } %i.aho, 0    ; 2 uses
  %.not79.not.i = icmp eq ptr %i.ahp, null
  br i1 %.not79.not.i, label %bb.ez, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ahq = extractvalue { ptr, i64 } %i.aho, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !9897
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ahp, i64 noundef %i.ahq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %.sroa.11.0.copyload.i) #37, !noalias !10019
  %.val.i.i147.pre.i = load ptr, ptr %.sroa.021.0.sroa.gep203.i, align 8, !alias.scope !10015, !noalias !10022 ; 2 uses
  %.val1.i.i148.pre.i = load i64, ptr %.sroa.021.0.sroa.gep207.i, align 8, !alias.scope !10015, !noalias !10022
  br label %bb.ez

bb.fc:                                            ; preds = %bb.ez
  br i1 %.not39, label %bb.gk, label %bb.fz

bb.fd:                                            ; preds = %bb.ez
  %.sroa.4216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4216.0.copyload.i = load ptr, ptr %.sroa.4216.0..sroa_idx.i, align 8, !noalias !9897, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.6217.0.copyload.i = load i64, ptr %.sroa.6217.0..sroa_idx.i, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !9897
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.4216.0.copyload.i, ptr %i.ahr, align 8, !noalias !9897
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.6217.0.copyload.i, ptr %i.ahs, align 8, !noalias !9897
  store i64 -1, ptr %i.ax, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !9897
  store ptr null, ptr %i.aw, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !9897
  %i.aht = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %.sroa.11.0.copyload.i) #37, !noalias !9897 ; 2 uses
  %i.ahu = extractvalue { ptr, i64 } %i.aht, 0    ; 2 uses
  %.not80.i = icmp eq ptr %i.ahu, null
  br i1 %.not80.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ahv = extractvalue { ptr, i64 } %i.aht, 1
  %.sroa.4228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ahu, ptr %.sroa.4228.0..sroa_idx.i, align 8, !noalias !9897
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ahv, ptr %.sroa.5229.0..sroa_idx.i, align 8, !noalias !9897
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.sink.i = phi i64 [ -1, %bb.fe ], [ -2, %bb.fd ]
  store i64 %.sink.i, ptr %i.av, align 8, !noalias !9897
  call void @_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData3new(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %2, i1 noundef zeroext false, i1 noundef zeroext false) #37, !noalias !9900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !9897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !9897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !9897
  br i1 %.not39, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !9897
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 5 uses
  %i.ahx = load i64, ptr %i.ahw, align 8, !range !126, !noalias !9897, !noundef !4 ; 2 uses
  %.not.i.i151.i = icmp eq i64 %i.ahx, -1
  br i1 %.not.i.i151.i, label %bb.fh, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i, !prof !127

bb.fh:                                            ; preds = %bb.fg
  %i.ahy = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ahw, ptr noundef nonnull align 8 %i.ay) #37, !noalias !9897 ; 0 uses
  %.pre.i152.i = load i64, ptr %i.ahw, align 8, !range !128, !noalias !9897
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i: ; preds = %bb.fh, %bb.fg
  %i.ahz = phi i64 [ %i.ahx, %bb.fg ], [ %.pre.i152.i, %bb.fh ]
  %.not.i.i193 = icmp eq i64 %i.ahz, 2
  br i1 %.not.i.i193, label %bb.fj, label %bb.fl

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !9897
  br label %bb.fu

bb.fj:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !noalias !9897, !nonnull !4
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.aid = load i64, ptr %i.aic, align 8, !noalias !9897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10024
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aib, i64 noundef %i.aid) #37, !noalias !10028
  %i.aie = load i64, ptr %i.ak, align 8, !range !128, !noalias !10024, !noundef !4 ; 2 uses
  %i.aif = icmp eq i64 %i.aie, 2
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aih = load ptr, ptr %i.aig, align 8, !noalias !10029 ; 2 uses
  br i1 %i.aif, label %.thread261.i, label %bb.fm

.thread261.i:                                     ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10024
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls(i64 2, ptr nonnull %i.aih) #37, !noalias !9897
  store i64 -1, ptr %i.at, align 8, !noalias !9897
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fm, %bb.fl, %.thread261.i
  %.sroa.032.0.i = phi ptr [ null, %.thread261.i ], [ %i.ahw, %bb.fl ], [ %i.at, %bb.fm ]
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aii = load ptr, ptr %.in.i, align 8, !alias.scope !9895, !noalias !9915, !nonnull !4, !align !212, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !10030)
  %.val1.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.val1.pn.i.i.i.i = load i64, ptr %.val1.pn.in.i.i.i.i, align 8, !alias.scope !10033, !noalias !10036, !noundef !4
  %.val.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.val.pn.i.i.i.i = load ptr, ptr %.val.pn.in.i.i.i.i, align 8, !alias.scope !10033, !noalias !10036, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10039
  store ptr %.val.pn.i.i.i.i, ptr %i.aj, align 8, !noalias !10039
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.val1.pn.i.i.i.i, ptr %i.aij, align 8, !noalias !10039
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.032.0.i, ptr %i.aik, align 8, !noalias !10039
  %i.ail = call fastcc noundef ptr @_RINvMs4_Cs3VOLFQjs6jb_8lscolorsNtB6_8LsColors9style_forNtNvB2_28style_for_path_with_metadata16PathWithMetadataECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aii, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #37, !noalias !10040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10039
  %.not85.i = icmp eq ptr %i.ail, null
  br i1 %.not85.i, label %bb.fn, label %bb.fo

bb.fl:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i
  store i64 2, ptr %i.at, align 8, !noalias !9897
  %.sroa.4.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ahw, ptr %.sroa.4.0..sroa_idx.i194, align 8, !noalias !9897
  br label %bb.fk

bb.fm:                                            ; preds = %bb.fj
  %.sroa.13.0..sroa_idx223.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5241.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.13.0..sroa_idx223.i, i64 160, i1 false), !noalias !9897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10024
  store i64 %i.aie, ptr %i.at, align 8, !noalias !9897
  %.sroa.4240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aih, ptr %.sroa.4240.0..sroa_idx.i, align 8, !noalias !9897
  br label %bb.fk

bb.fn:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !9897
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fk
  %i.aim = load i64, ptr %i.acg, align 8, !noalias !9897, !noundef !4
  %i.ain = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.aio = load i16, ptr %i.ain, align 4, !alias.scope !9892, !noalias !9900, !noundef !4 ; 2 uses
  %i.aip = icmp eq i16 %i.aio, 0
  br i1 %i.aip, label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit157.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aiq = load i64, ptr %i.bf, align 8, !range !128, !noalias !9897, !noundef !4
  switch i64 %i.aiq, label %default.unreachable [
    i64 0, label %bb.fq
    i64 1, label %bb.fs
    i64 2, label %bb.fr
  ], !prof !10041

bb.fq:                                            ; preds = %bb.fp
  %i.air = call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs6JMX4GRUq9U_4core4cell4lazyINtB2_8LazyCelljNCNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long0E11really_initBV_(ptr noundef nonnull align 8 %i.bf) #37, !noalias !9897
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call void @_RNvNtNtCs6JMX4GRUq9U_4core4cell4lazy14panic_poisoned() #38, !noalias !9897
  unreachable

bb.fs:                                            ; preds = %bb.fq, %bb.fp
  %.sroa.01.0.i153.i = phi ptr [ %i.air, %bb.fq ], [ %i.abw, %bb.fp ]
  %i.ais = load i64, ptr %.sroa.01.0.i153.i, align 8, !noundef !4
  %i.ait = add i64 %i.ais, %i.aim
  %i.aiu = zext i16 %i.aio to i64
  %i.aiv = icmp ugt i64 %i.ait, %i.aiu
  br label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit157.i

_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit157.i: ; preds = %bb.fs, %bb.fo
  %.sroa.0.0.i154.i = phi i1 [ %i.aiv, %bb.fs ], [ false, %bb.fo ]
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors10color_name(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar, ptr noundef nonnull align 8 %i.ay, ptr noalias nofree noundef align 8 dereferenceable(64) dereferenceable_or_null(64) %i.co, i1 noundef zeroext %.sroa.0.0.i154.i) #37, !noalias !9915
  br label %bb.ft

bb.ft:                                            ; preds = %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit157.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !9897
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !10042)
  call void @llvm.experimental.noalias.scope.decl(metadata !10045)
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val.i158.i = load ptr, ptr %i.aiw, align 8, !alias.scope !10045, !noalias !10047, !nonnull !4, !noundef !4 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val1.i159.i = load i64, ptr %i.aix, align 8, !alias.scope !10045, !noalias !10047, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10048)
  call void @llvm.experimental.noalias.scope.decl(metadata !10051)
  %i.aiy = load i64, ptr %i.acg, align 8, !alias.scope !10054, !noalias !10057, !noundef !4 ; 5 uses
  %i.aiz = load i64, ptr %i.be, align 8, !range !40, !alias.scope !10054, !noalias !10057, !noundef !4
  %i.aja = sub i64 %i.aiz, %i.aiy
  %i.ajb = icmp ugt i64 %.val1.i159.i, %i.aja
  br i1 %i.ajb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i: ; preds = %bb.fu
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.aiy, i64 noundef %.val1.i159.i, i64 noundef 1, i64 noundef 1) #37, !noalias !10057
  %i.ajc = load i64, ptr %i.acg, align 8, !alias.scope !10058, !noalias !10057, !noundef !4 ; 2 uses
  %i.ajd = icmp sgt i64 %i.ajc, -1
  call void @llvm.assume(i1 %i.ajd)
  br label %bb.fv

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i: ; preds = %bb.fu
  %i.aje = icmp sgt i64 %i.aiy, -1
  call void @llvm.assume(i1 %i.aje)
  %.not.i.i.i161.i = icmp eq i64 %.val1.i159.i, 0
  br i1 %.not.i.i.i161.i, label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i, label %bb.fv

bb.fv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i
  %i.ajf = phi i64 [ %i.ajc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i ], [ %i.aiy, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i ] ; 2 uses
  %i.ajg = load ptr, ptr %i.ace, align 8, !alias.scope !10058, !noalias !10057, !nonnull !4, !noundef !4
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.ajf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ajh, ptr nonnull readonly align 1 %.val.i158.i, i64 %.val1.i159.i, i1 false), !noalias !10059
  br label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i

_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %bb.fv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i
  %i.aji = phi i64 [ %i.ajf, %bb.fv ], [ %i.aiy, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i ]
  %i.ajj = add i64 %i.aji, %.val1.i159.i
  store i64 %i.ajj, ptr %i.acg, align 8, !alias.scope !10058, !noalias !10057
  call void @llvm.experimental.noalias.scope.decl(metadata !10060)
  %.val.i.i162.i = load i64, ptr %i.au, align 8, !range !40, !alias.scope !10063, !noalias !10047, !noundef !4 ; 2 uses
  %i.ajk = icmp eq i64 %.val.i.i162.i, 0
  br i1 %i.ajk, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.fw

bb.fw:                                            ; preds = %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i158.i, i64 noundef %.val.i.i162.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10066
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.fw, %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.ajm = load i8, ptr %i.ajl, align 1, !range !9916, !alias.scope !9892, !noalias !9900, !noundef !4
  %i.ajn = call fastcc noundef i32 @_RNvNtCs5EcwQX7phGK_5uu_ls7display14indicator_char(ptr noundef nonnull align 8 %i.ay, i8 noundef %i.ajm) #37, !noalias !9897 ; 2 uses
  %.not86.i = icmp eq i32 %i.ajn, -1
  br i1 %.not86.i, label %bb.fx, label %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit165.i

_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit165.i: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10069
  store i32 0, ptr %i.ai, align 4, !noalias !10069
  %i.ajo = trunc nuw nsw i32 %i.ajn to i8
end_hunk_1
begin_hunk_2_@_RNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long:bb.a
  %i.axr = icmp ugt i64 %i.axp, %i.axq
  br label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit.i

_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit.i: ; preds = %bb.io, %bb.in
  %.sroa.0.0.i113.i289 = phi i1 [ %i.axr, %bb.io ], [ false, %bb.in ]
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors10color_name(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(64) dereferenceable_or_null(64) %i.co, i1 noundef zeroext %.sroa.0.0.i113.i289) #37, !noalias !10424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10411
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i299

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i299: ; preds = %bb.ik, %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit.i
  %i.axs = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.axt = load i8, ptr %i.axs, align 8, !range !2439, !alias.scope !10406, !noalias !10414, !noundef !4
  %.not72.i290 = icmp eq i8 %i.axt, 1
  br i1 %.not72.i290, label %bb.ip, label %.thread243.i300

bb.ip:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i299
  %i.axu = load i32, ptr %i.fw, align 8, !range !129, !noalias !10411, !noundef !4 ; 2 uses
  %.not.i.i117.i308 = icmp eq i32 %i.axu, 2
  br i1 %.not.i.i117.i308, label %bb.iq, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i309, !prof !127

bb.iq:                                            ; preds = %bb.ip
  %i.axv = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.fw, ptr noundef nonnull align 8 %0) #37, !noalias !10411 ; 0 uses
  %.pre.i119.i457 = load i32, ptr %i.fw, align 8, !range !1064, !noalias !10411
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i309

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i309: ; preds = %bb.iq, %bb.ip
  %i.axw = phi i32 [ %i.axu, %bb.ip ], [ %.pre.i119.i457, %bb.iq ]
  %i.axx = trunc nuw i32 %i.axw to i1
  br i1 %i.axx, label %bb.ir, label %.thread243.i300

bb.ir:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i309
  %i.axy = load i32, ptr %i.gb, align 4, !noalias !10411, !noundef !4
  %i.axz = and i32 %i.axy, 61440
  %i.aya = icmp eq i32 %i.axz, 40960
  br i1 %i.aya, label %bb.is, label %.thread243.i300

bb.is:                                            ; preds = %bb.ir
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ayc = load i8, ptr %i.ayb, align 8, !range !134, !noalias !10411, !noundef !4
  %i.ayd = trunc nuw i8 %i.ayc to i1
  br i1 %i.ayd, label %.thread243.i300, label %bb.it

.thread243.i300:                                  ; preds = %bb.is, %bb.ir, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i309, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i299
  %i.aye = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.ayf = load i8, ptr %i.aye, align 1, !range !9916, !alias.scope !10406, !noalias !10414, !noundef !4
  %i.ayg = call fastcc noundef i32 @_RNvNtCs5EcwQX7phGK_5uu_ls7display14indicator_char(ptr noundef nonnull align 8 %0, i8 noundef %i.ayf) #37, !noalias !10411 ; 2 uses
  %.not75.i301 = icmp eq i32 %i.ayg, -1
  br i1 %.not75.i301, label %.thread248.i303, label %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i302

.thread248.i303:                                  ; preds = %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i302, %.thread243.i300
  %i.ayh = load i64, ptr %i.axa, align 8, !noalias !10425 ; 2 uses
  %.sroa.011.0250.i304 = select i1 %i.dr, i64 %i.ayh, i64 0
  br label %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_longs_0EB4_.exit

_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i302: ; preds = %.thread243.i300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10426
  store i32 0, ptr %i.i, align 4, !noalias !10426
  %i.ayi = trunc nuw nsw i32 %i.ayg to i8
  store i8 %i.ayi, ptr %i.i, align 4, !alias.scope !10429, !noalias !10426
  %i.ayj = call noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #37, !noalias !10411 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10426
  br label %.thread248.i303

bb.it:                                            ; preds = %bb.is
  %i.ayk = load i64, ptr %i.axa, align 8, !noalias !10411
  %.sroa.011.0.i310 = select i1 %i.dr, i64 %i.ayk, i64 0
  br i1 %.not36, label %bb.iz, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @llvm.experimental.noalias.scope.decl(metadata !10432)
  call void @llvm.experimental.noalias.scope.decl(metadata !10435)
  %i.ayl = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.aym = load i64, ptr %i.ayl, align 8, !alias.scope !10438, !noalias !10424, !noundef !4
  %i.ayn = icmp eq i64 %i.aym, 0
  br i1 %i.ayn, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.experimental.noalias.scope.decl(metadata !10439)
  call void @llvm.experimental.noalias.scope.decl(metadata !10442)
  %i.ayo = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ayp = load i64, ptr %i.ayo, align 8, !alias.scope !10445, !noalias !10446, !noundef !4 ; 4 uses
  %i.ayq = load ptr, ptr %i.co, align 8, !alias.scope !10445, !noalias !10446, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iy, %bb.iv
  %.sroa.9.0.i.i.i.i.i311 = phi i64 [ 0, %bb.iv ], [ %i.azh, %bb.iy ]
  %.pn.i.i.i.i312 = phi i64 [ -1259354368857373368, %bb.iv ], [ %i.azi, %bb.iy ]
  %.sroa.01.0.i.i.i.i.i313 = and i64 %.pn.i.i.i.i312, %i.ayp ; 3 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %.sroa.01.0.i.i.i.i.i313
  %.sroa.0.0.copyload.i24.i.i.i.i314 = load <16 x i8>, ptr %i.ayr, align 1, !noalias !10449 ; 2 uses
  %i.ays = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i314, splat (i8 119)
  %i.ayt = bitcast <16 x i1> %i.ays to i16        ; 2 uses
  %.not.i.not30.i.i.i.i315 = icmp eq i16 %i.ayt, 0
  br i1 %.not.i.not30.i.i.i.i315, label %._crit_edge.i.i.i.i320, label %.lr.ph.i.i.i.i316

.lr.ph.i.i.i.i316:                                ; preds = %bb.iw, %bb.ix
  %.sroa.06.0.i31.i.i.i.i317 = phi i16 [ %i.azg, %bb.ix ], [ %i.ayt, %bb.iw ] ; 3 uses
  %i.ayu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i317, i1 true)
  %i.ayv = zext nneg i16 %i.ayu to i64
  %i.ayw = add i64 %.sroa.01.0.i.i.i.i.i313, %i.ayv
  %i.ayx = and i64 %i.ayw, %i.ayp
  %i.ayy = sub nsw i64 0, %i.ayx
  %i.ayz = getelementptr inbounds [32 x i8], ptr %i.ayq, i64 %i.ayy
  %i.aza = getelementptr inbounds i8, ptr %i.ayz, i64 -32
  %.val2.i.i.i.i.i318 = load i8, ptr %i.aza, align 1, !range !390, !noalias !10452, !noundef !4
  %i.azb = icmp eq i8 %.val2.i.i.i.i.i318, 9
  br i1 %i.azb, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335, label %bb.ix, !prof !144

._crit_edge.i.i.i.i320:                           ; preds = %bb.ix, %bb.iw
  %i.azc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i314, splat (i8 -1)
  %i.azd = bitcast <16 x i1> %i.azc to i16
  %i.aze = icmp eq i16 %i.azd, 0
  br i1 %i.aze, label %bb.iy, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321, !prof !127

bb.ix:                                            ; preds = %.lr.ph.i.i.i.i316
  %i.azf = add i16 %.sroa.06.0.i31.i.i.i.i317, -1
  %i.azg = and i16 %i.azf, %.sroa.06.0.i31.i.i.i.i317 ; 2 uses
  %.not.i.not.i.i.i.i319 = icmp eq i16 %i.azg, 0
  br i1 %.not.i.not.i.i.i.i319, label %._crit_edge.i.i.i.i320, label %.lr.ph.i.i.i.i316

bb.iy:                                            ; preds = %._crit_edge.i.i.i.i320
  %i.azh = add i64 %.sroa.9.0.i.i.i.i.i311, 16    ; 2 uses
  %i.azi = add i64 %.sroa.01.0.i.i.i.i.i313, %i.azh
  br label %bb.iw

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321: ; preds = %._crit_edge.i.i.i.i320
  %i.azj = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.azk = load ptr, ptr %i.azj, align 8, !alias.scope !10455, !noalias !10424, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %i.azl = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.azk, i8 noundef 9) #37, !noalias !10456
  br i1 %i.azl, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335, label %.preheader

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456: ; preds = %bb.iu
  %i.azm = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.azn = load ptr, ptr %i.azm, align 8, !alias.scope !10455, !noalias !10424, !nonnull !4, !align !212, !noundef !4 ; 2 uses
  %i.azo = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.azn, i8 noundef 9) #37, !noalias !10456
  br i1 %i.azo, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332

bb.iz:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332, %bb.it
  %i.azp = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.azq = load i8, ptr %i.azp, align 1, !range !9916, !alias.scope !10406, !noalias !10414, !noundef !4
  %.off.i333 = add nsw i8 %i.azq, -1
  %switch.i334 = icmp ult i8 %.off.i333, -2
  br label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335

.preheader:                                       ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321, %bb.jb
  %.sroa.9.0.i.i.i.i121.i322 = phi i64 [ %i.bah, %bb.jb ], [ 0, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321 ]
  %.pn.i.i.i122.i323 = phi i64 [ %i.bai, %bb.jb ], [ -8387766902590710086, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321 ]
  %.sroa.01.0.i.i.i.i123.i324 = and i64 %.pn.i.i.i122.i323, %i.ayp ; 3 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %.sroa.01.0.i.i.i.i123.i324
  %.sroa.0.0.copyload.i24.i.i.i124.i325 = load <16 x i8>, ptr %i.azr, align 1, !noalias !10457 ; 2 uses
  %i.azs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i124.i325, splat (i8 69)
  %i.azt = bitcast <16 x i1> %i.azs to i16        ; 2 uses
  %.not.i.not30.i.i.i125.i326 = icmp eq i16 %i.azt, 0
  br i1 %.not.i.not30.i.i.i125.i326, label %._crit_edge.i.i.i130.i331, label %.lr.ph.i.i.i126.i327

.lr.ph.i.i.i126.i327:                             ; preds = %.preheader, %bb.ja
  %.sroa.06.0.i31.i.i.i127.i328 = phi i16 [ %i.bag, %bb.ja ], [ %i.azt, %.preheader ] ; 3 uses
  %i.azu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i127.i328, i1 true)
  %i.azv = zext nneg i16 %i.azu to i64
  %i.azw = add i64 %.sroa.01.0.i.i.i.i123.i324, %i.azv
  %i.azx = and i64 %i.azw, %i.ayp
  %i.azy = sub nsw i64 0, %i.azx
  %i.azz = getelementptr inbounds [32 x i8], ptr %i.ayq, i64 %i.azy
  %i.baa = getelementptr inbounds i8, ptr %i.azz, i64 -32
  %.val2.i.i.i.i128.i329 = load i8, ptr %i.baa, align 1, !range !390, !noalias !10470, !noundef !4
  %i.bab = icmp eq i8 %.val2.i.i.i.i128.i329, 16
  br i1 %i.bab, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335, label %bb.ja, !prof !144

._crit_edge.i.i.i130.i331:                        ; preds = %bb.ja, %.preheader
  %i.bac = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i124.i325, splat (i8 -1)
  %i.bad = bitcast <16 x i1> %i.bac to i16
  %i.bae = icmp eq i16 %i.bad, 0
  br i1 %i.bae, label %bb.jb, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332, !prof !127

bb.ja:                                            ; preds = %.lr.ph.i.i.i126.i327
  %i.baf = add i16 %.sroa.06.0.i31.i.i.i127.i328, -1
  %i.bag = and i16 %i.baf, %.sroa.06.0.i31.i.i.i127.i328 ; 2 uses
  %.not.i.not.i.i.i129.i330 = icmp eq i16 %i.bag, 0
  br i1 %.not.i.not.i.i.i129.i330, label %._crit_edge.i.i.i130.i331, label %.lr.ph.i.i.i126.i327

bb.jb:                                            ; preds = %._crit_edge.i.i.i130.i331
  %i.bah = add i64 %.sroa.9.0.i.i.i.i121.i322, 16 ; 2 uses
  %i.bai = add i64 %.sroa.01.0.i.i.i.i123.i324, %i.bah
  br label %.preheader

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332: ; preds = %._crit_edge.i.i.i130.i331, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456
  %i.baj = phi ptr [ %i.azn, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456 ], [ %i.azk, %._crit_edge.i.i.i130.i331 ]
  %i.bak = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.baj, i8 noundef 16) #37, !noalias !10473
  br i1 %i.bak, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335, label %bb.iz

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335: ; preds = %.lr.ph.i.i.i.i316, %.lr.ph.i.i.i126.i327, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332, %bb.iz, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321
  %.sroa.014.0.i336 = phi i1 [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i332 ], [ %switch.i334, %bb.iz ], [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i321 ], [ true, %.lr.ph.i.i.i126.i327 ], [ true, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i456 ], [ true, %.lr.ph.i.i.i.i316 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10411
  %.sroa.015.0.in.i337 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.015.0.i338 = load ptr, ptr %.sroa.015.0.in.i337, align 8, !noalias !10411, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i339 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.3.0.i340 = load i64, ptr %.sroa.3.0.in.i339, align 8, !noalias !10411, !noundef !4
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs9read_link(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.i338, i64 noundef %.sroa.3.0.i340) #37, !noalias !10411
  %i.bal = load i64, ptr %i.y, align 8, !range !192, !noalias !10411, !noundef !4 ; 3 uses
  %i.bam = icmp eq i64 %i.bal, -1
  %i.ban = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.bam, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335
  %8 = load ptr, ptr %i.ban, align 8, !noalias !10411, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10411
  %.sroa.035.0.i442 = load ptr, ptr %.sroa.015.0.in.i337, align 8, !noalias !10411, !nonnull !4, !noundef !4
  %.sroa.336.0.i443 = load i64, ptr %.sroa.3.0.in.i339, align 8, !noalias !10411, !noundef !4
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.035.0.i442, i64 noundef %.sroa.336.0.i443) #37, !noalias !10411
  %i.bao = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %8, ptr %i.bao, align 8, !noalias !10411
  %i.bap = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i8 0, ptr %i.bap, align 8, !noalias !10411
  %i.baq = load i64, ptr %i.n, align 8, !range !191, !noalias !10411, !noundef !4 ; 3 uses
  %i.bar = icmp ne i64 %i.baq, -9223372036854775805
  call void @llvm.assume(i1 %i.bar)
  %i.bas = icmp sgt i64 %i.baq, -1
  %i.bat = add i64 %i.baq, 9223372036854775807
  %switch264265.i444 = icmp ult i64 %i.bat, 3
  %switch264.i445 = or i1 %i.bas, %switch264265.i444
  %spec.select.i446 = select i1 %switch264.i445, i32 1, i32 2
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %spec.select.i446) #37, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10411
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.l, align 8, !noalias !10411
  %i.bau = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l) #37, !noalias !10411
  store ptr %i.bau, ptr %i.m, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10411
  %i.bav = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #37, !noalias !10411 ; 2 uses
  %i.baw = extractvalue { ptr, i64 } %i.bav, 0
  %i.bax = extractvalue { ptr, i64 } %i.bav, 1
  store ptr %i.baw, ptr %i.k, align 8, !noalias !10411
  %i.bay = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bax, ptr %i.bay, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10411
  store ptr %i.k, ptr %i.j, align 8, !noalias !10411
  %.sroa.450.0..sroa_idx.i447 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs5EcwQX7phGK_5uu_ls, ptr %.sroa.450.0..sroa_idx.i447, align 8, !noalias !10411
  %i.baz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.n, ptr %i.baz, align 8, !noalias !10411
  %.sroa.454.0..sroa_idx.i448 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs4_Cs5EcwQX7phGK_5uu_lsNtB5_7LsErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx.i448, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10474
  store ptr %i.m, ptr %i.d, align 8, !noalias !10474
  %i.bba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr null, ptr %i.bba, align 8, !noalias !10474
  %i.bbb = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @47, ptr noundef nonnull @0, ptr noundef nonnull %i.j) #37, !noalias !10411
  %i.bbc = load ptr, ptr %i.bba, align 8, !noalias !10474, !noundef !4 ; 7 uses
  %.not.i5.i.i449 = icmp eq ptr %i.bbc, null      ; 2 uses
  br i1 %i.bbb, label %bb.ld, label %bb.le

bb.jd:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i335
  %.sroa.4210.0.copyload.i341 = load i64, ptr %i.ban, align 8, !noalias !10411
  %.sroa.11.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.11.0.copyload.i343 = load i64, ptr %.sroa.11.0..sroa_idx.i342, align 8, !noalias !10411 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10479)
  call void @llvm.experimental.noalias.scope.decl(metadata !10482)
  call void @llvm.experimental.noalias.scope.decl(metadata !10485)
  %i.bbd = load i64, ptr %i.axa, align 8, !alias.scope !10488, !noalias !10491, !noundef !4 ; 3 uses
  %i.bbe = load i64, ptr %i.ab, align 8, !range !40, !alias.scope !10488, !noalias !10491, !noundef !4
  %i.bbf = sub i64 %i.bbe, %i.bbd
  %i.bbg = icmp ult i64 %i.bbf, 4
  %9 = inttoptr i64 %.sroa.4210.0.copyload.i341 to ptr ; 8 uses
  br i1 %i.bbg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i441, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i344, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i441: ; preds = %bb.jd
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.bbd, i64 noundef 4, i64 noundef 1, i64 noundef 1) #37, !noalias !10491
  %i.bbh = load i64, ptr %i.axa, align 8, !alias.scope !10493, !noalias !10491, !noundef !4
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i344

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i344: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i441, %bb.jd
  %.sink297.i345 = phi i64 [ %i.bbh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i135.i441 ], [ %i.bbd, %bb.jd ] ; 3 uses
  %i.bbi = icmp sgt i64 %.sink297.i345, -1
  call void @llvm.assume(i1 %i.bbi)
  %i.bbj = load ptr, ptr %i.awz, align 8, !alias.scope !10493, !noalias !10491, !nonnull !4, !noundef !4
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 %.sink297.i345
  store i32 540945696, ptr %i.bbk, align 1, !noalias !10494
  %i.bbl = add nuw i64 %.sink297.i345, 4
  store i64 %i.bbl, ptr %i.axa, align 8, !alias.scope !10493, !noalias !10491
  br i1 %.not.i.i.i279, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i344
  %i.bbm = trunc nuw i8 %.val98.i277 to i1
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display12locale_quote(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %.sroa.11.0.copyload.i343, i1 noundef zeroext %i.bbm) #37, !noalias !10411
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i346

bb.jf:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushReECs5EcwQX7phGK_5uu_ls.exit.i344
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %.sroa.11.0.copyload.i343, i24 %.val99.i278) #37, !noalias !10411
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i346

_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i346: ; preds = %bb.jf, %bb.je
  br i1 %.sroa.014.0.i336, label %bb.jj, label %bb.jg

bb.jg:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i346
  call void @llvm.experimental.noalias.scope.decl(metadata !10495)
  call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i.i138.i347 = load ptr, ptr %i.bbn, align 8, !noalias !10411, !nonnull !4, !noundef !4 ; 2 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val1.i.i.i139.i348 = load i64, ptr %i.bbo, align 8, !noalias !10411, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10501)
  %i.bbp = load i64, ptr %i.axa, align 8, !alias.scope !10504, !noalias !10507, !noundef !4 ; 5 uses
  %i.bbq = load i64, ptr %i.ab, align 8, !range !40, !alias.scope !10504, !noalias !10507, !noundef !4
  %i.bbr = sub i64 %i.bbq, %i.bbp
  %i.bbs = icmp ugt i64 %.val1.i.i.i139.i348, %i.bbr
  br i1 %i.bbs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i355, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i355: ; preds = %bb.jg
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.bbp, i64 noundef %.val1.i.i.i139.i348, i64 noundef 1, i64 noundef 1) #37, !noalias !10507
  %i.bbt = load i64, ptr %i.axa, align 8, !alias.scope !10509, !noalias !10507, !noundef !4 ; 2 uses
  %i.bbu = icmp sgt i64 %i.bbt, -1
  call void @llvm.assume(i1 %i.bbu)
  br label %bb.jh

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349: ; preds = %bb.jg
  %i.bbv = icmp sgt i64 %i.bbp, -1
  call void @llvm.assume(i1 %i.bbv)
  %.not.i.i.i141.i350 = icmp eq i64 %.val1.i.i.i139.i348, 0
  br i1 %.not.i.i.i141.i350, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i351, label %bb.jh

bb.jh:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i355
  %i.bbw = phi i64 [ %i.bbt, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i142.i355 ], [ %i.bbp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349 ] ; 2 uses
  %i.bbx = load ptr, ptr %i.awz, align 8, !alias.scope !10509, !noalias !10507, !nonnull !4, !noundef !4
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 %i.bbw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bby, ptr nonnull readonly align 1 %.val.i.i.i138.i347, i64 %.val1.i.i.i139.i348, i1 false), !noalias !10510
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i351

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i351: ; preds = %bb.jh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349
  %i.bbz = phi i64 [ %i.bbw, %bb.jh ], [ %i.bbp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i140.i349 ]
  %i.bca = add i64 %i.bbz, %.val1.i.i.i139.i348
  store i64 %i.bca, ptr %i.axa, align 8, !alias.scope !10509, !noalias !10507
  %.val.i144.i352 = load i64, ptr %i.o, align 8, !range !40, !noalias !10411, !noundef !4 ; 2 uses
  %i.bcb = icmp eq i64 %.val.i144.i352, 0
  br i1 %i.bcb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i353, label %bb.ji

bb.ji:                                            ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i351
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i138.i347, i64 noundef %.val.i144.i352, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10511
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i353

bb.jj:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit137.i346
  %i.bcc = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %.sroa.11.0.copyload.i343) #37, !noalias !10411
  br i1 %i.bcc, label %bb.jl, label %bb.jm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i353: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i396, %bb.ji, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit143.i351
  %i.bcd = icmp eq i64 %i.bal, 0
  br i1 %i.bcd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i354, label %bb.jk

bb.jk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i353
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %9, i64 noundef %i.bal, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10516
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i354

bb.jl:                                            ; preds = %bb.jn, %bb.jm, %bb.jj
  %.val1.i.i191.i361 = phi ptr [ undef, %bb.jj ], [ undef, %bb.jm ], [ %.val.i.i147.pre.i359, %bb.jn ]
  %.val1.i.i148.i362 = phi i64 [ %.sroa.11.0.copyload.i343, %bb.jj ], [ %.sroa.11.0.copyload.i343, %bb.jm ], [ %.val1.i.i148.pre.i360, %bb.jn ]
  %.val.i.i147.i363 = phi ptr [ %9, %bb.jj ], [ %9, %bb.jm ], [ %.val.i.i147.pre.i359, %bb.jn ]
  %.sroa.042.0.i364 = phi i1 [ false, %bb.jj ], [ false, %bb.jm ], [ true, %bb.jn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10411
  call void @llvm.experimental.noalias.scope.decl(metadata !10523)
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs12canonicalize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i147.i363, i64 noundef %.val1.i.i148.i362) #37, !noalias !10526
  %i.bce = load i64, ptr %i.w, align 8, !range !192, !noalias !10411, !noundef !4 ; 3 uses
  %i.bcf = icmp eq i64 %i.bce, -1
  br i1 %i.bcf, label %bb.jo, label %bb.jp

bb.jm:                                            ; preds = %bb.jj
  %.sroa.019.0.i356 = load ptr, ptr %.sroa.015.0.in.i337, align 8, !noalias !10411, !nonnull !4, !noundef !4
  %.sroa.320.0.i357 = load i64, ptr %.sroa.3.0.in.i339, align 8, !noalias !10411, !noundef !4
  %i.bcg = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0.i356, i64 noundef %.sroa.320.0.i357) #37, !noalias !10411 ; 2 uses
  %i.bch = extractvalue { ptr, i64 } %i.bcg, 0    ; 2 uses
  %.not79.not.i358 = icmp eq ptr %i.bch, null
  br i1 %.not79.not.i358, label %bb.jl, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.bci = extractvalue { ptr, i64 } %i.bcg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10411
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bch, i64 noundef %i.bci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %.sroa.11.0.copyload.i343) #37, !noalias !10527
  %.val.i.i147.pre.i359 = load ptr, ptr %.sroa.021.0.sroa.gep203.i280, align 8, !alias.scope !10523, !noalias !10530 ; 2 uses
  %.val1.i.i148.pre.i360 = load i64, ptr %.sroa.021.0.sroa.gep207.i281, align 8, !alias.scope !10523, !noalias !10530
  br label %bb.jl

bb.jo:                                            ; preds = %bb.jl
  br i1 %.not36, label %bb.kw, label %bb.kl

bb.jp:                                            ; preds = %bb.jl
  %.sroa.4216.0..sroa_idx.i365 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4216.0.copyload.i366 = load ptr, ptr %.sroa.4216.0..sroa_idx.i365, align 8, !noalias !10411, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6217.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6217.0.copyload.i368 = load i64, ptr %.sroa.6217.0..sroa_idx.i367, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10411
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.4216.0.copyload.i366, ptr %i.bcj, align 8, !noalias !10411
  %i.bck = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.6217.0.copyload.i368, ptr %i.bck, align 8, !noalias !10411
  store i64 -1, ptr %i.u, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10411
  store ptr null, ptr %i.t, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10411
  %i.bcl = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %.sroa.11.0.copyload.i343) #37, !noalias !10411 ; 2 uses
  %i.bcm = extractvalue { ptr, i64 } %i.bcl, 0    ; 2 uses
  %.not80.i369 = icmp eq ptr %i.bcm, null
  br i1 %.not80.i369, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bcn = extractvalue { ptr, i64 } %i.bcl, 1
  %.sroa.4228.0..sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bcm, ptr %.sroa.4228.0..sroa_idx.i370, align 8, !noalias !10411
  %.sroa.5229.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.bcn, ptr %.sroa.5229.0..sroa_idx.i371, align 8, !noalias !10411
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sink.i372 = phi i64 [ -1, %bb.jq ], [ -2, %bb.jp ]
  store i64 %.sink.i372, ptr %i.s, align 8, !noalias !10411
  call void @_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData3new(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %2, i1 noundef zeroext false, i1 noundef zeroext false) #37, !noalias !10414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10411
  br i1 %.not36, label %bb.ju, label %bb.js

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10411
  %i.bco = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 5 uses
  %i.bcp = load i64, ptr %i.bco, align 8, !range !126, !noalias !10411, !noundef !4 ; 2 uses
  %.not.i.i151.i373 = icmp eq i64 %i.bcp, -1
  br i1 %.not.i.i151.i373, label %bb.jt, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i374, !prof !127

bb.jt:                                            ; preds = %bb.js
  %i.bcq = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.bco, ptr noundef nonnull align 8 %i.v) #37, !noalias !10411 ; 0 uses
  %.pre.i152.i404 = load i64, ptr %i.bco, align 8, !range !128, !noalias !10411
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i374

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i374: ; preds = %bb.jt, %bb.js
  %i.bcr = phi i64 [ %i.bcp, %bb.js ], [ %.pre.i152.i404, %bb.jt ]
  %.not.i.i375 = icmp eq i64 %i.bcr, 2
  br i1 %.not.i.i375, label %bb.jv, label %bb.jx

bb.ju:                                            ; preds = %bb.jr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !10411
  br label %bb.kg

bb.jv:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i374
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bct = load ptr, ptr %i.bcs, align 8, !noalias !10411, !nonnull !4
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bcv = load i64, ptr %i.bcu, align 8, !noalias !10411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10532
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bct, i64 noundef %i.bcv) #37, !noalias !10536
  %i.bcw = load i64, ptr %i.h, align 8, !range !128, !noalias !10532, !noundef !4 ; 2 uses
  %i.bcx = icmp eq i64 %i.bcw, 2
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !noalias !10537 ; 2 uses
  br i1 %i.bcx, label %.thread261.i403, label %bb.jy

.thread261.i403:                                  ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10532
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls(i64 2, ptr nonnull %i.bcz) #37, !noalias !10411
  store i64 -1, ptr %i.q, align 8, !noalias !10411
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jy, %bb.jx, %.thread261.i403
  %.sroa.032.0.i377 = phi ptr [ null, %.thread261.i403 ], [ %i.bco, %bb.jx ], [ %i.q, %bb.jy ]
  %.in.i378 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bda = load ptr, ptr %.in.i378, align 8, !alias.scope !10409, !noalias !10424, !nonnull !4, !align !212, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !10538)
  %.val1.pn.in.i.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.pn.i.i.i.i380 = load i64, ptr %.val1.pn.in.i.i.i.i379, align 8, !alias.scope !10541, !noalias !10544, !noundef !4
  %.val.pn.in.i.i.i.i381 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.pn.i.i.i.i382 = load ptr, ptr %.val.pn.in.i.i.i.i381, align 8, !alias.scope !10541, !noalias !10544, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10547
  store ptr %.val.pn.i.i.i.i382, ptr %i.g, align 8, !noalias !10547
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.val1.pn.i.i.i.i380, ptr %i.bdb, align 8, !noalias !10547
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.032.0.i377, ptr %i.bdc, align 8, !noalias !10547
  %i.bdd = call fastcc noundef ptr @_RINvMs4_Cs3VOLFQjs6jb_8lscolorsNtB6_8LsColors9style_forNtNvB2_28style_for_path_with_metadata16PathWithMetadataECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.bda, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37, !noalias !10548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10547
  %.not85.i383 = icmp eq ptr %i.bdd, null
  br i1 %.not85.i383, label %bb.jz, label %bb.ka

bb.jx:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData8metadata.exit.i374
  store i64 2, ptr %i.q, align 8, !noalias !10411
  %.sroa.4.0..sroa_idx.i376 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.bco, ptr %.sroa.4.0..sroa_idx.i376, align 8, !noalias !10411
  br label %bb.jw

bb.jy:                                            ; preds = %bb.jv
  %.sroa.13.0..sroa_idx223.i400 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5241.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5241.0..sroa_idx.i401, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.13.0..sroa_idx223.i400, i64 160, i1 false), !noalias !10411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10532
  store i64 %i.bcw, ptr %i.q, align 8, !noalias !10411
  %.sroa.4240.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.bcz, ptr %.sroa.4240.0..sroa_idx.i402, align 8, !noalias !10411
  br label %bb.jw

bb.jz:                                            ; preds = %bb.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !10411
  br label %bb.kf

bb.ka:                                            ; preds = %bb.jw
  %i.bde = load i64, ptr %i.axa, align 8, !noalias !10411, !noundef !4
  %i.bdf = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.bdg = load i16, ptr %i.bdf, align 4, !alias.scope !10406, !noalias !10414, !noundef !4 ; 2 uses
  %i.bdh = icmp eq i16 %i.bdg, 0
  br i1 %i.bdh, label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit157.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bdi = load i64, ptr %i.ac, align 8, !range !128, !noalias !10411, !noundef !4
  switch i64 %i.bdi, label %default.unreachable [
    i64 0, label %bb.kc
    i64 1, label %bb.ke
    i64 2, label %bb.kd
  ], !prof !10041

bb.kc:                                            ; preds = %bb.kb
  %i.bdj = call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs6JMX4GRUq9U_4core4cell4lazyINtB2_8LazyCelljNCNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_longs_0E11really_initBV_(ptr noundef nonnull align 8 %i.ac) #37, !noalias !10411
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  call void @_RNvNtNtCs6JMX4GRUq9U_4core4cell4lazy14panic_poisoned() #38, !noalias !10411
  unreachable

bb.ke:                                            ; preds = %bb.kc, %bb.kb
  %.sroa.01.0.i153.i384 = phi ptr [ %i.bdj, %bb.kc ], [ %i.awr, %bb.kb ]
  %i.bdk = load i64, ptr %.sroa.01.0.i153.i384, align 8, !noundef !4
  %i.bdl = add i64 %i.bdk, %i.bde
  %i.bdm = zext i16 %i.bdg to i64
  %i.bdn = icmp ugt i64 %i.bdl, %i.bdm
  br label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit157.i

_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit157.i: ; preds = %bb.ke, %bb.ka
  %.sroa.0.0.i154.i385 = phi i1 [ %i.bdn, %bb.ke ], [ false, %bb.ka ]
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors10color_name(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.v, ptr noalias nofree noundef align 8 dereferenceable(64) dereferenceable_or_null(64) %i.co, i1 noundef zeroext %.sroa.0.0.i154.i385) #37, !noalias !10424
  br label %bb.kf

bb.kf:                                            ; preds = %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_longs_0E0B6_.exit157.i, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10411
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ju
  call void @llvm.experimental.noalias.scope.decl(metadata !10549)
  call void @llvm.experimental.noalias.scope.decl(metadata !10552)
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i158.i386 = load ptr, ptr %i.bdo, align 8, !alias.scope !10552, !noalias !10554, !nonnull !4, !noundef !4 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i159.i387 = load i64, ptr %i.bdp, align 8, !alias.scope !10552, !noalias !10554, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10555)
  call void @llvm.experimental.noalias.scope.decl(metadata !10558)
  %i.bdq = load i64, ptr %i.axa, align 8, !alias.scope !10561, !noalias !10564, !noundef !4 ; 5 uses
  %i.bdr = load i64, ptr %i.ab, align 8, !range !40, !alias.scope !10561, !noalias !10564, !noundef !4
  %i.bds = sub i64 %i.bdr, %i.bdq
  %i.bdt = icmp ugt i64 %.val1.i159.i387, %i.bds
  br i1 %i.bdt, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i398, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388, !prof !127

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i398: ; preds = %bb.kg
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.bdq, i64 noundef %.val1.i159.i387, i64 noundef 1, i64 noundef 1) #37, !noalias !10564
  %i.bdu = load i64, ptr %i.axa, align 8, !alias.scope !10565, !noalias !10564, !noundef !4 ; 2 uses
  %i.bdv = icmp sgt i64 %i.bdu, -1
  call void @llvm.assume(i1 %i.bdv)
  br label %bb.kh

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388: ; preds = %bb.kg
  %i.bdw = icmp sgt i64 %i.bdq, -1
  call void @llvm.assume(i1 %i.bdw)
  %.not.i.i.i161.i389 = icmp eq i64 %.val1.i159.i387, 0
  br i1 %.not.i.i.i161.i389, label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i390, label %bb.kh

bb.kh:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i398
  %i.bdx = phi i64 [ %i.bdu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i163.i398 ], [ %i.bdq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388 ] ; 2 uses
  %i.bdy = load ptr, ptr %i.awz, align 8, !alias.scope !10565, !noalias !10564, !nonnull !4, !noundef !4
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 %i.bdx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdz, ptr nonnull readonly align 1 %.val.i158.i386, i64 %.val1.i159.i387, i1 false), !noalias !10566
  br label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i390

_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i390: ; preds = %bb.kh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388
  %i.bea = phi i64 [ %i.bdx, %bb.kh ], [ %i.bdq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i160.i388 ]
  %i.beb = add i64 %i.bea, %.val1.i159.i387
  store i64 %i.beb, ptr %i.axa, align 8, !alias.scope !10565, !noalias !10564
  call void @llvm.experimental.noalias.scope.decl(metadata !10567)
  %.val.i.i162.i391 = load i64, ptr %i.r, align 8, !range !40, !alias.scope !10570, !noalias !10554, !noundef !4 ; 2 uses
  %i.bec = icmp eq i64 %.val.i.i162.i391, 0
  br i1 %i.bec, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i392, label %bb.ki

bb.ki:                                            ; preds = %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i390
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i158.i386, i64 noundef %.val.i.i162.i391, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !10573
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i392

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i392: ; preds = %bb.ki, %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i.i390
  %i.bed = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.bee = load i8, ptr %i.bed, align 1, !range !9916, !alias.scope !10406, !noalias !10414, !noundef !4
  %i.bef = call fastcc noundef i32 @_RNvNtCs5EcwQX7phGK_5uu_ls7display14indicator_char(ptr noundef nonnull align 8 %i.v, i8 noundef %i.bee) #37, !noalias !10411 ; 2 uses
  %.not86.i393 = icmp eq i32 %i.bef, -1
  br i1 %.not86.i393, label %bb.kj, label %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit165.i394

_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit165.i394: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushBA_ECs5EcwQX7phGK_5uu_ls.exit.i392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10576
  store i32 0, ptr %i.f, align 4, !noalias !10576
  %i.beg = trunc nuw nsw i32 %i.bef to i8
end_hunk_2
