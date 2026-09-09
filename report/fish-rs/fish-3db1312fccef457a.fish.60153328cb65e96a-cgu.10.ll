Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.10?download=true
inline.NumInlined: 1780
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB19_5sliceSB14_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB32_:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB19_5sliceSB14_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB32_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB19_5sliceSB14_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB32_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB19_5sliceSB14_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB32_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB19_5sliceSB14_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB32_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val18 = load ptr, ptr %4, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val19 = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %.sroa.0.0.val20 = load i64, ptr %i.o, align 8, !noundef !11
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val21 = load ptr, ptr %i.p, align 8 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %.sroa.04.0.val22 = load i64, ptr %i.q, align 8
  %.val.i = load ptr, ptr %.val18, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.val18, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8          ; 2 uses
  %i.s = load ptr, ptr %.val.i, align 8, !noalias !228, !nonnull !11, !noundef !11
  %i.t = tail call { ptr, i64 } %i.s(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val19, i64 noundef %.sroa.0.0.val20), !noalias !228, !inline_history !5 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  %i.w = load ptr, ptr %.val.i, align 8, !noalias !228, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.val21) ]
  %i.x = tail call { ptr, i64 } %i.w(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.04.0.val21, i64 noundef %.sroa.04.0.val22), !noalias !228, !inline_history !5 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %i.aa = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.u, i64 noundef %i.v, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.z), !noalias !228 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ab = load i8, ptr %.val1.i, align 1, !range !21, !noalias !228, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  %switch.offset.i.i = sub nsw i8 0, %i.aa
  %.sroa.0.0.i.i = select i1 %i.ac, i8 %switch.offset.i.i, i8 %i.aa
  %i.ad = icmp eq i8 %.sroa.0.0.i.i, -1           ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %.sroa.0.0.val15 = load i64, ptr %i.o, align 8, !noundef !11
  %i.ae = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val16 = load ptr, ptr %i.ae, align 8 ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.08.0, i64 16 ; 2 uses
  %.sroa.08.0.val17 = load i64, ptr %i.af, align 8
  %.val.i23 = load ptr, ptr %.val14, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.ag = getelementptr i8, ptr %.val14, i64 8
  %.val1.i24 = load ptr, ptr %i.ag, align 8       ; 2 uses
  %i.ah = load ptr, ptr %.val.i23, align 8, !noalias !229, !nonnull !11, !noundef !11
  %i.ai = tail call { ptr, i64 } %i.ah(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val15), !noalias !229, !inline_history !5 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = load ptr, ptr %.val.i23, align 8, !noalias !229, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val16) ]
  %i.am = tail call { ptr, i64 } %i.al(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.08.0.val16, i64 noundef %.sroa.08.0.val17), !noalias !229, !inline_history !5 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  %i.ap = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aj, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.an, i64 noundef %i.ao), !noalias !229 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i24) ]
  %i.aq = load i8, ptr %.val1.i24, align 1, !range !21, !noalias !229, !noundef !11
  %i.ar = trunc nuw i8 %i.aq to i1
  %switch.offset.i.i25 = sub nsw i8 0, %i.ap
  %.sroa.0.0.i.i26 = select i1 %i.ar, i8 %switch.offset.i.i25, i8 %i.ap
  %i.as = icmp eq i8 %.sroa.0.0.i.i26, -1
  %i.at = xor i1 %i.ad, %i.as
  br i1 %i.at, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3INtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB14_5sliceSBZ_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2W_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.sroa.04.0.val = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11
  %.sroa.04.0.val12 = load i64, ptr %i.q, align 8, !noundef !11
  %.sroa.08.0.val = load ptr, ptr %i.ae, align 8  ; 2 uses
  %.sroa.08.0.val13 = load i64, ptr %i.af, align 8
  %.val.i27 = load ptr, ptr %.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 8
  %.val1.i28 = load ptr, ptr %i.au, align 8       ; 2 uses
  %i.av = load ptr, ptr %.val.i27, align 8, !noalias !230, !nonnull !11, !noundef !11
  %i.aw = tail call { ptr, i64 } %i.av(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12), !noalias !230, !inline_history !5 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  %i.az = load ptr, ptr %.val.i27, align 8, !noalias !230, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val) ]
  %i.ba = tail call { ptr, i64 } %i.az(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13), !noalias !230, !inline_history !5 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  %i.bd = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ax, i64 noundef %i.ay, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bb, i64 noundef %i.bc), !noalias !230 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i28) ]
  %i.be = load i8, ptr %.val1.i28, align 1, !range !21, !noalias !230, !noundef !11
  %i.bf = trunc nuw i8 %i.be to i1
  %switch.offset.i.i29 = sub nsw i8 0, %i.bd
  %.sroa.0.0.i.i30 = select i1 %i.bf, i8 %switch.offset.i.i29, i8 %i.bd
  %i.bg = icmp eq i8 %.sroa.0.0.i.i30, -1
  %i.bh = xor i1 %i.ad, %i.bg
  %..i = select i1 %i.bh, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3INtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB14_5sliceSBZ_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2W_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3INtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB14_5sliceSBZ_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2W_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYB14_NtNtBa_3cmp10PartialOrd2ltEB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB13_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i64, ptr %.sroa.0.0, align 8, !noundef !11 ; 2 uses
  %.sroa.04.0.val14 = load i64, ptr %.sroa.04.0, align 8, !noundef !11 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i64, ptr %.sroa.08.0, align 8, !noundef !11 ; 2 uses
  %i.o = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvB16_19sort_and_prioritizes_0E0EB18_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvB16_19sort_and_prioritizes_0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvB16_19sort_and_prioritizes_0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvB16_19sort_and_prioritizes_0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 8 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 51 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !22, !alias.scope !262, !noalias !263, !noundef !11 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 51 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !22, !alias.scope !263, !noalias !262, !noundef !11 ; 2 uses
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !262, !noalias !263, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 48
  %i.v = load i16, ptr %i.u, align 8, !alias.scope !263, !noalias !262, !noundef !11
  %i.w = trunc i16 %i.t to i8
  %i.x = lshr i8 %i.w, 6
  %i.y = and i8 %i.x, 1
  %i.z = trunc i16 %i.v to i8
  %4 = shl i8 %i.z, 1
  %5 = ashr i8 %4, 7
  %6 = add nsw i8 %5, %i.y
  switch i8 %6, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
    i8 0, label %bb.g
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i8 %i.o, %i.q
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

default.unreachable:                              ; preds = %bb.n, %bb.i, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !266, !noalias !267, !noundef !11 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !267, !noalias !266, !noundef !11 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, label %switch.lookup.i.i

switch.lookup.i.i:                                ; preds = %bb.h
  %i.aj = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0, i32 noundef 126), !noalias !267
  %i.ak = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.0, i32 noundef 126)
  %i.al = xor i1 %i.aj, true
  %i.am = and i1 %i.ak, %i.al
  %.pre = load i8, ptr %i.n, align 1, !range !22, !alias.scope !268, !noalias !269
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %switch.lookup.i.i
  %i.an = phi i8 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %.pre, %switch.lookup.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i1 [ %i.aa, %bb.e ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ %i.am, %switch.lookup.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 51 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !range !22, !alias.scope !269, !noalias !268, !noundef !11 ; 2 uses
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48
  %i.as = load i16, ptr %i.ar, align 8, !alias.scope !268, !noalias !269, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 48
  %i.au = load i16, ptr %i.at, align 8, !alias.scope !269, !noalias !268, !noundef !11
  %i.av = trunc i16 %i.as to i8
  %i.aw = lshr i8 %i.av, 6
  %i.ax = and i8 %i.aw, 1
  %i.ay = trunc i16 %i.au to i8
  %7 = shl i8 %i.ay, 1
  %8 = ashr i8 %7, 7
  %9 = add nsw i8 %8, %i.ax
  switch i8 %9, label %default.unreachable [
    i8 -1, label %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge
    i8 0, label %bb.k
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm
  ]

._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge: ; preds = %bb.i
  br i1 %.sroa.0.0.i.i, label %bb.m, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvB11_19sort_and_prioritizes_0E0EB13_.exit

bb.j:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.az = icmp samesign ult i8 %i.an, %i.ap
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !276, !noalias !277, !noundef !11 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !277, !noalias !276, !noundef !11 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm, label %switch.lookup.i.i13

switch.lookup.i.i13:                              ; preds = %bb.l
  %i.bi = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0, i32 noundef 126), !noalias !277
  %i.bj = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.08.0, i32 noundef 126)
  %i.bk = xor i1 %i.bi, true
  %i.bl = and i1 %i.bj, %i.bk
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm: ; preds = %bb.i, %bb.k, %bb.l
  br i1 %.sroa.0.0.i.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvB11_19sort_and_prioritizes_0E0EB13_.exit, label %bb.m

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15: ; preds = %bb.j, %switch.lookup.i.i13
  %.sroa.0.0.i.i12 = phi i1 [ %i.az, %bb.j ], [ %i.bl, %switch.lookup.i.i13 ]
  %i.bm = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i12
  br i1 %i.bm, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvB11_19sort_and_prioritizes_0E0EB13_.exit, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15._crit_edge

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15._crit_edge: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15
  %.pre1 = load i8, ptr %i.ao, align 1, !range !22, !alias.scope !278, !noalias !279
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15._crit_edge, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm
  %i.bn = phi i8 [ %.pre1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15._crit_edge ], [ %i.an, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge ], [ %i.an, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.bo = load i8, ptr %i.p, align 1, !range !22, !alias.scope !279, !noalias !278, !noundef !11 ; 2 uses
  %i.bp = icmp eq i8 %i.bo, %i.bn
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 48
  %i.br = load i16, ptr %i.bq, align 8, !alias.scope !279, !noalias !278, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 48
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !278, !noalias !279, !noundef !11
  %i.bu = trunc i16 %i.br to i8
  %i.bv = lshr i8 %i.bu, 6
  %i.bw = and i8 %i.bv, 1
  %i.bx = trunc i16 %i.bt to i8
  %10 = shl i8 %i.bx, 1
  %11 = ashr i8 %10, 7
  %12 = add nsw i8 %11, %i.bw
  switch i8 %12, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.m
  %i.by = icmp samesign ult i8 %i.bo, %i.bn
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19

bb.p:                                             ; preds = %bb.n
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !286, !noalias !287, !noundef !11 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !287, !noalias !286, !noundef !11 ; 2 uses
  %i.cf = icmp ult i64 %i.ce, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19, label %switch.lookup.i.i17

switch.lookup.i.i17:                              ; preds = %bb.r
  %i.ch = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.0, i32 noundef 126), !noalias !287
  %i.ci = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.08.0, i32 noundef 126)
  %i.cj = xor i1 %i.ch, true
  %i.ck = and i1 %i.ci, %i.cj
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19: ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %switch.lookup.i.i17
  %.sroa.0.0.i.i16 = phi i1 [ %i.by, %bb.o ], [ true, %bb.n ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.q ], [ %i.ck, %switch.lookup.i.i17 ]
  %i.cl = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i16
  %..i = select i1 %i.cl, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvB11_19sort_and_prioritizes_0E0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvB11_19sort_and_prioritizes_0E0EB13_.exit: ; preds = %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15 ], [ %..i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit19 ], [ %.sroa.0.0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15.thr_comm ], [ %.sroa.0.0, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit15_crit_edge ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvMs0_NtB18_6expandNtB2F_8Expander15stage_wildcardss_0E0EB18_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvMs0_NtB18_6expandNtB2F_8Expander15stage_wildcardss_0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvMs0_NtB18_6expandNtB2F_8Expander15stage_wildcardss_0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvMs0_NtB18_6expandNtB2F_8Expander15stage_wildcardss_0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %.sroa.0.0.val18 = load i64, ptr %i.o, align 8, !noundef !11
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 16 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.q, align 8, !noundef !11
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val17, i64 noundef %.sroa.0.0.val18, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.04.0.val19, i64 noundef %.sroa.04.0.val20)
  %i.s = icmp eq i8 %i.r, -1                      ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %.sroa.0.0.val14 = load i64, ptr %i.o, align 8, !noundef !11
  %i.t = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %i.u = getelementptr i8, ptr %.sroa.08.0, i64 16 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.u, align 8, !noundef !11
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16)
  %i.w = icmp eq i8 %i.v, -1
  %i.x = xor i1 %i.s, %i.w
  br i1 %i.x, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvMs0_NtB13_6expandNtB2z_8Expander15stage_wildcardss_0E0EB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11
  %.sroa.04.0.val12 = load i64, ptr %i.q, align 8, !noundef !11
  %.sroa.08.0.val = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %.sroa.08.0.val13 = load i64, ptr %i.u, align 8, !noundef !11
  %i.y = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13)
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = xor i1 %i.s, %i.z
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvMs0_NtB13_6expandNtB2z_8Expander15stage_wildcardss_0E0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCNvMs0_NtB13_6expandNtB2z_8Expander15stage_wildcardss_0E0EB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNvB16_27natural_compare_completionsE0EB18_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 20587884010836554) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNvB16_27natural_compare_completionsE0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNvB16_27natural_compare_completionsE0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNvB16_27natural_compare_completionsE0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !alias.scope !321, !noalias !322, !noundef !11 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 48 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !322, !noalias !321, !noundef !11 ; 2 uses
  %i.r = and i16 %i.o, 32                         ; 2 uses
  %i.s = and i16 %i.r, %i.q
  %.not.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i.i, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.d:                                             ; preds = %bb.c
  %.not1.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not1.i.i.i, label %bb.e, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.e:                                             ; preds = %bb.d
  %i.t = and i16 %i.q, 32
  %.not2.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not2.i.i.i, label %bb.f, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !321, !noalias !322, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !321, !noalias !322, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !322, !noalias !321, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !322, !noalias !321, !noundef !11
  %i.ac = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.v, i64 noundef %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.z, i64 noundef %i.ab), !noalias !323
  %i.ad = icmp eq i8 %i.ac, -1
  %.pre = load i16, ptr %i.n, align 8, !alias.scope !324, !noalias !325
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.ae = phi i16 [ %.pre, %bb.f ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.0.0.i.i.i = phi i1 [ %i.ad, %bb.f ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 48 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8, !alias.scope !325, !noalias !324, !noundef !11 ; 4 uses
  %i.ah = and i16 %i.ae, 32                       ; 2 uses
  %i.ai = and i16 %i.ah, %i.ag
  %.not.i.i.i12 = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i12, label %bb.g, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit16.thr_comm

bb.g:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit
  %.not1.i.i.i14 = icmp eq i16 %i.ah, 0
  br i1 %.not1.i.i.i14, label %bb.h, label %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit16_crit_edge

._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit16_crit_edge: ; preds = %bb.g
  br i1 %.sroa.0.0.i.i.i, label %bb.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNvB11_27natural_compare_completionsE0EB13_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = and i16 %i.ag, 32
  %.not2.i.i.i15 = icmp eq i16 %i.aj, 0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1d_5sliceSB18_7sort_byNCNvB1I_5print0E0EB1K_:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %.val9, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val9, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val9, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val9, i64 44 ; 3 uses
  br label %bb.l

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread: ; preds = %bb.b, %bb.g, %._crit_edge.i18.i.i.i, %._crit_edge.i.i.i.i, %.split11, %.loopexit.i15.i.i.i, %.split10, %.loopexit.i.i.i.i, %.split9, %.split8, %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread
  ret void

bb.l:                                             ; preds = %.lr.ph, %.critedge.backedge
  %.sroa.0.027 = phi ptr [ %i.a, %.lr.ph ], [ %i.bp, %.critedge.backedge ] ; 14 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.027, i64 -8 ; 4 uses
  %.val8 = load ptr, ptr %i.bp, align 8, !nonnull !11, !noundef !11 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val8, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.br = load i32, ptr %i.b, align 8, !range !18, !alias.scope !437, !noalias !438, !noundef !11 ; 3 uses
  %i.bs = load i32, ptr %i.bq, align 8, !range !18, !alias.scope !438, !noalias !437, !noundef !11 ; 2 uses
  %i.bt = icmp eq i32 %i.br, %i.bs
  %i.bu = icmp samesign ult i32 %i.br, %i.bs
  %i.bv = ptrtoint ptr %.val8 to i64
  br i1 %i.bt, label %bb.m, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35

bb.m:                                             ; preds = %bb.l
  switch i32 %i.br, label %default.unreachable [
    i32 1, label %.split13
    i32 2, label %bb.n
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %.split14
    i32 6, label %bb.u
    i32 0, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread
  ]

.split13:                                         ; preds = %bb.m
  %i.bw = load i32, ptr %i.bo, align 4, !range !19, !alias.scope !437, !noalias !438, !noundef !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.val8, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !range !19, !alias.scope !438, !noalias !437, !noundef !11
  %i.bz = icmp slt i32 %i.bw, %i.by
  br i1 %i.bz, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bl, align 8, !alias.scope !437, !noalias !438, !nonnull !11, !noundef !11
  %i.cb = load i64, ptr %i.bm, align 8, !alias.scope !437, !noalias !438, !noundef !11 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !438, !noalias !437, !nonnull !11, !noundef !11
  %i.ce = getelementptr inbounds nuw i8, ptr %.val8, i64 64
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !438, !noalias !437, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %..i.i.i.i.i25 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.cf, i64 range(i64 0, 2305843009213693952) %i.cb) ; 2 uses
  %.not.i.i.i.i26 = icmp eq i64 %..i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i26, label %._crit_edge.i.i.i.i33, label %.lr.ph.i.i.i.i27

bb.o:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cg = add nuw nsw i64 %.sroa.01.019.i.i.i.i28, 1 ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.cg, %..i.i.i.i.i25
  br i1 %exitcond.not.i.i.i.i32, label %._crit_edge.i.i.i.i33, label %.lr.ph.i.i.i.i27

._crit_edge.i.i.i.i33:                            ; preds = %bb.o, %bb.n
  %i.ch = icmp ult i64 %i.cb, %i.cf
  br i1 %i.ch, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.loopexit.i.i.i.i31:                              ; preds = %.lr.ph.i.i.i.i27
  %i.ci = icmp ult i32 %.val15.i.i.i.i29, %.val16.i.i.i.i30
  br i1 %i.ci, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.lr.ph.i.i.i.i27:                                 ; preds = %bb.n, %bb.o
  %.sroa.01.019.i.i.i.i28 = phi i64 [ %i.cg, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.01.019.i.i.i.i28
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.sroa.01.019.i.i.i.i28
  %.val15.i.i.i.i29 = load i32, ptr %i.cj, align 4, !alias.scope !439, !noalias !441, !noundef !11 ; 2 uses
  %.val16.i.i.i.i30 = load i32, ptr %i.ck, align 4, !alias.scope !440, !noalias !442, !noundef !11 ; 2 uses
  %i.cl = icmp eq i32 %.val15.i.i.i.i29, %.val16.i.i.i.i30
  br i1 %i.cl, label %bb.o, label %.loopexit.i.i.i.i31

bb.p:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %i.bo, align 4, !alias.scope !437, !noalias !438, !noundef !11 ; 2 uses
  %.not6.i.i.i23 = icmp eq i32 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !438, !noalias !437, !noundef !11 ; 2 uses
  br i1 %.not6.i.i.i23, label %.split17, label %.split15

.split15:                                         ; preds = %bb.p
  %i.cp = icmp ult i32 %i.cm, %i.co
  br i1 %i.cp, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.split17:                                         ; preds = %bb.p
  %.not7.i.i.i24.not = icmp eq i32 %i.co, 0
  br i1 %.not7.i.i.i24.not, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread, label %.critedge.backedge

bb.q:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.bo, align 4, !alias.scope !437, !noalias !438, !noundef !11 ; 3 uses
  %.not.i.i.i21 = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.val8, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !alias.scope !438, !noalias !437, !noundef !11 ; 3 uses
  %.not4.i.i.i22 = icmp eq i32 %i.cs, 0           ; 2 uses
  br i1 %.not.i.i.i21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not4.i.i.i22, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %.not4.i.i.i22, label %.split16, label %.critedge.backedge

.split16:                                         ; preds = %bb.t, %bb.s
  %i.ct = load i64, ptr %i.bn, align 8, !alias.scope !437, !noalias !438, !noundef !11
  %i.cu = getelementptr inbounds nuw i8, ptr %.val8, i64 48
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !438, !noalias !437, !noundef !11
  %i.cw = icmp ult i64 %i.ct, %i.cv
  br i1 %i.cw, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

bb.t:                                             ; preds = %bb.r
  %i.cx = icmp eq i32 %i.cq, %i.cs
  %i.cy = icmp ult i32 %i.cq, %i.cs
  br i1 %i.cx, label %.split16, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35

.split14:                                         ; preds = %bb.m
  %i.cz = load i64, ptr %i.bn, align 8, !alias.scope !437, !noalias !438, !noundef !11
  %i.da = getelementptr inbounds nuw i8, ptr %.val8, i64 48
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !438, !noalias !437, !noundef !11
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

bb.u:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.bl, align 8, !alias.scope !437, !noalias !438, !nonnull !11, !noundef !11
  %i.de = load i64, ptr %i.bm, align 8, !alias.scope !437, !noalias !438, !noundef !11 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val8, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !438, !noalias !437, !nonnull !11, !noundef !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.val8, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !438, !noalias !437, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %..i.i9.i.i.i12 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.di, i64 range(i64 0, 2305843009213693952) %i.de) ; 2 uses
  %.not.i10.i.i.i13 = icmp eq i64 %..i.i9.i.i.i12, 0
  br i1 %.not.i10.i.i.i13, label %._crit_edge.i18.i.i.i20, label %.lr.ph.i11.i.i.i14

bb.v:                                             ; preds = %.lr.ph.i11.i.i.i14
  %i.dj = add nuw nsw i64 %.sroa.01.019.i12.i.i.i15, 1 ; 2 uses
  %exitcond.not.i17.i.i.i19 = icmp eq i64 %i.dj, %..i.i9.i.i.i12
  br i1 %exitcond.not.i17.i.i.i19, label %._crit_edge.i18.i.i.i20, label %.lr.ph.i11.i.i.i14

._crit_edge.i18.i.i.i20:                          ; preds = %bb.v, %bb.u
  %i.dk = icmp ult i64 %i.de, %i.di
  br i1 %i.dk, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.loopexit.i15.i.i.i18:                            ; preds = %.lr.ph.i11.i.i.i14
  %i.dl = icmp ult i32 %.val15.i13.i.i.i16, %.val16.i14.i.i.i17
  br i1 %i.dl, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.lr.ph.i11.i.i.i14:                               ; preds = %bb.u, %bb.v
  %.sroa.01.019.i12.i.i.i15 = phi i64 [ %i.dj, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.sroa.01.019.i12.i.i.i15
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.sroa.01.019.i12.i.i.i15
  %.val15.i13.i.i.i16 = load i32, ptr %i.dm, align 4, !alias.scope !443, !noalias !445, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i17 = load i32, ptr %i.dn, align 4, !alias.scope !444, !noalias !446, !noundef !11 ; 2 uses
  %i.do = icmp eq i32 %.val15.i13.i.i.i16, %.val16.i14.i.i.i17
  br i1 %i.do, label %bb.v, label %.loopexit.i15.i.i.i18

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35: ; preds = %bb.t, %bb.l
  %.sroa.0.0.i.i.i11 = phi i1 [ %i.cy, %bb.t ], [ %i.bu, %bb.l ]
  br i1 %.sroa.0.0.i.i.i11, label %.critedge.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread

.critedge.backedge:                               ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35, %.split13, %.split14, %.split15, %.loopexit.i.i.i.i31, %._crit_edge.i18.i.i.i20, %.split16, %.loopexit.i15.i.i.i18, %.split17, %._crit_edge.i.i.i.i33, %bb.s
  store i64 %i.bv, ptr %.sroa.0.027, align 8
  %i.dp = icmp eq ptr %i.bp, %0
  br i1 %i.dp, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread, label %bb.l

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35.thread: ; preds = %.critedge.backedge, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35, %.split13, %.split14, %.split15, %.loopexit.i.i.i.i31, %._crit_edge.i18.i.i.i20, %.split16, %.loopexit.i15.i.i.i18, %.split17, %._crit_edge.i.i.i.i33, %bb.r, %bb.m, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread6
  %.sroa.0.0.lcssa = phi ptr [ %i.a, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread6 ], [ %.sroa.0.027, %bb.m ], [ %.sroa.0.027, %bb.r ], [ %.sroa.0.027, %._crit_edge.i.i.i.i33 ], [ %.sroa.0.027, %.split17 ], [ %.sroa.0.027, %.loopexit.i15.i.i.i18 ], [ %.sroa.0.027, %.split16 ], [ %.sroa.0.027, %._crit_edge.i18.i.i.i20 ], [ %.sroa.0.027, %.loopexit.i.i.i.i31 ], [ %.sroa.0.027, %.split15 ], [ %.sroa.0.027, %.split14 ], [ %.sroa.0.027, %.split13 ], [ %.sroa.0.027, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit35 ], [ %i.bp, %.critedge.backedge ]
  %i.dq = ptrtoint ptr %.val9 to i64
  store i64 %i.dq, ptr %.sroa.0.0.lcssa, align 8, !noalias !447
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvB1a_19sort_and_prioritizes_0E0EB1c_(ptr nofree noundef nonnull readnone captures(address) %0, ptr noundef nonnull captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -56 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.d = load i8, ptr %i.c, align 1, !range !22, !alias.scope !478, !noalias !479, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !range !22, !alias.scope !479, !noalias !478, !noundef !11 ; 2 uses
  %i.g = icmp eq i8 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !478, !noalias !479, !noundef !11
  %i.j = getelementptr inbounds i8, ptr %1, i64 -8
  %i.k = load i16, ptr %i.j, align 8, !alias.scope !479, !noalias !478, !noundef !11
  %i.l = trunc i16 %i.i to i8
  %i.m = lshr i8 %i.l, 6
  %i.n = and i8 %i.m, 1
  %i.o = trunc i16 %i.k to i8
  %2 = shl i8 %i.o, 1
  %3 = ashr i8 %2, 7
  %4 = add nsw i8 %3, %i.n
  switch i8 %4, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6
    i8 0, label %bb.c
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.p = icmp samesign ult i8 %i.d, %i.f
  br i1 %i.p, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread

default.unreachable:                              ; preds = %bb.f, %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !482, !noalias !483, !noundef !11 ; 2 uses
  %i.s = icmp ult i64 %i.r, 2305843009213693952
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %1, i64 -40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !483, !noalias !482, !noundef !11 ; 2 uses
  %i.w = icmp ult i64 %i.v, 2305843009213693952
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.d
  %i.y = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i32 noundef 126), !noalias !483
  %i.z = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, i32 noundef 126)
  %i.aa = xor i1 %i.y, true
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6: ; preds = %bb.b, %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ac = icmp eq ptr %i.b, %0
  br i1 %i.ac, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 51
  %i.ae = load i8, ptr %i.ad, align 1, !range !22, !alias.scope !484, !noalias !485, !noundef !11 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = lshr i8 %i.ah, 6
  %i.aj = and i8 %i.ai, 1                         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %.fr27 = freeze i64 %i.al                       ; 2 uses
  %i.am = icmp ult i64 %.fr27, 2305843009213693952 ; 2 uses
  %i.an = icmp eq i64 %.fr27, 0
  br i1 %i.an, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us
  %.sroa.0.012.us = phi ptr [ %i.ao, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us ], [ %i.b, %.lr.ph ] ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.012.us, i64 -56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.012.us, i64 -5
  %i.aq = load i8, ptr %i.ap, align 1, !range !22, !alias.scope !485, !noalias !484, !noundef !11 ; 2 uses
  %i.ar = icmp eq i8 %i.ae, %i.aq
  br i1 %i.ar, label %bb.e, label %.split9.us

.split9.us:                                       ; preds = %.lr.ph.split.us
  %i.as = icmp samesign ult i8 %i.ae, %i.aq
  br i1 %i.as, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.012.us, i64 -8
  %i.au = load i16, ptr %i.at, align 8, !alias.scope !485, !noalias !484, !noundef !11
  %i.av = trunc i16 %i.au to i8
  %5 = shl i8 %i.av, 1
  %6 = ashr i8 %5, 7
  %7 = add nsw i8 %6, %i.aj
  switch i8 %7, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us
    i8 0, label %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread_crit_edge13.split.us
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread
  ]

._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread_crit_edge13.split.us: ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.am)
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us: ; preds = %bb.e, %.split9.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012.us, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false)
  %i.aw = icmp eq ptr %i.ao, %0
  br i1 %i.aw, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread, label %.lr.ph.split.us

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge
  %.sroa.0.012 = phi ptr [ %i.ax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge ], [ %i.b, %.lr.ph ] ; 10 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -56 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -5
  %i.az = load i8, ptr %i.ay, align 1, !range !22, !alias.scope !485, !noalias !484, !noundef !11 ; 2 uses
  %i.ba = icmp eq i8 %i.ae, %i.az
  br i1 %i.ba, label %bb.f, label %.split9

bb.f:                                             ; preds = %.lr.ph.split
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -8
  %i.bc = load i16, ptr %i.bb, align 8, !alias.scope !485, !noalias !484, !noundef !11
  %i.bd = trunc i16 %i.bc to i8
  %8 = shl i8 %i.bd, 1
  %9 = ashr i8 %8, 7
  %10 = add nsw i8 %9, %i.aj
  switch i8 %10, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge
    i8 0, label %bb.g
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread
  ]

.split9:                                          ; preds = %.lr.ph.split
  %i.be = icmp samesign ult i8 %i.ae, %i.az
  br i1 %i.be, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge: ; preds = %.split9, %.noexc11, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 56, i1 false)
  %i.bf = icmp eq ptr %i.ax, %0
  br i1 %i.bf, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread, label %.lr.ph.split

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 %i.am)
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.012, i64 -40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !490, !noalias !491, !noundef !11 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 2305843009213693952
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread, label %switch.lookup.i.i9

switch.lookup.i.i9:                               ; preds = %bb.g
  %i.bk = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef 126)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %switch.lookup.i.i9
  %i.bl = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i32 noundef 126)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %.noexc
  %i.bm = xor i1 %i.bk, true
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge, %.split9, %.noexc11, %bb.g, %bb.f, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us, %.split9.us, %bb.e, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread_crit_edge13.split.us, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6
  %.sroa.0.0.lcssa = phi ptr [ %i.b, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread6 ], [ %.sroa.0.012.us, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.thread_crit_edge13.split.us ], [ %.sroa.0.012.us, %bb.e ], [ %.sroa.0.012.us, %.split9.us ], [ %i.ao, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge.us ], [ %.sroa.0.012, %.split9 ], [ %i.ax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12.backedge ], [ %.sroa.0.012, %bb.f ], [ %.sroa.0.012, %bb.g ], [ %.sroa.0.012, %.noexc11 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.lcssa, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread

bb.h:                                             ; preds = %switch.lookup.i.i9, %.noexc
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.012, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !493
  resume { ptr, i32 } %i.bo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENCINvMB8_SB19_20sort_unstable_by_keyNtNtB1I_9job_group10MaybeJobIdNCNvNtNtB1I_8builtins6disown6disowns_0E0EB1I_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %.val9 = load ptr, ptr %0, align 8              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.c = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.e = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.d)
  %.sroa.0.0.i.i.i.i = icmp ult i32 %i.c, %i.e    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %.val7 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.i = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.k = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.j)
  %.sroa.0.0.i.i.i.i10 = icmp ult i32 %i.i, %i.k  ; 2 uses
  %i.l = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %.sroa.0.0.i.i.i.i10, i64 3, i64 2
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %.sroa.0.0.i.i.i.i10, i64 2, i64 3
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 3 uses
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %.val5 = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.v = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.x = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.w)
  %.sroa.0.0.i.i.i.i11 = icmp ult i32 %i.v, %i.x  ; 3 uses
  %.val2 = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11
  %.val3 = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.z = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.y)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ab = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.aa)
  %.sroa.0.0.i.i.i.i12 = icmp ult i32 %i.z, %i.ab ; 3 uses
  %i.ac = select i1 %.sroa.0.0.i.i.i.i11, ptr %i.r, ptr %i.m, !unpredictable !11
  %i.ad = select i1 %.sroa.0.0.i.i.i.i12, ptr %i.p, ptr %i.t, !unpredictable !11
  %i.ae = select i1 %.sroa.0.0.i.i.i.i12, ptr %i.r, ptr %i.p, !unpredictable !11
  %i.af = select i1 %.sroa.0.0.i.i.i.i11, ptr %i.m, ptr %i.ae, !unpredictable !11 ; 3 uses
  %i.ag = select i1 %.sroa.0.0.i.i.i.i11, ptr %i.p, ptr %i.r, !unpredictable !11
  %i.ah = select i1 %.sroa.0.0.i.i.i.i12, ptr %i.t, ptr %i.ag, !unpredictable !11 ; 3 uses
  %.val = load ptr, ptr %i.ah, align 8, !nonnull !11, !noundef !11
  %.val1 = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aj = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.ai)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.al = tail call noundef i32 @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job6job_id(ptr noundef nonnull align 8 %i.ak)
  %.sroa.0.0.i.i.i.i13 = icmp ult i32 %i.aj, %i.al ; 2 uses
  %i.am = select i1 %.sroa.0.0.i.i.i.i13, ptr %i.ah, ptr %i.af, !unpredictable !11
  %i.an = select i1 %.sroa.0.0.i.i.i.i13, ptr %i.af, ptr %i.ah, !unpredictable !11
  %i.ao = load i64, ptr %i.ac, align 8
  store i64 %i.ao, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.am, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.an, align 8
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i64, ptr %i.ad, align 8
  store i64 %i.au, ptr %i.at, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 10 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.d = load i32, ptr %i.b, align 8, !range !18, !alias.scope !539, !noalias !540, !noundef !11 ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !range !18, !alias.scope !540, !noalias !539, !noundef !11 ; 2 uses
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = icmp samesign ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %i.d, label %default.unreachable [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.i
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 0, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit
  ]

default.unreachable:                              ; preds = %bb.ba, %bb.ap, %bb.aa, %bb.q, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val8, i64 44
  %i.i = load i32, ptr %i.h, align 4, !range !19, !alias.scope !539, !noalias !540, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %.val9, i64 44
  %i.k = load i32, ptr %i.j, align 4, !range !19, !alias.scope !540, !noalias !539, !noundef !11
  %i.l = icmp slt i32 %i.i, %i.k
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val8, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !539, !noalias !540, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %.val8, i64 64
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !539, !noalias !540, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val9, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !540, !noalias !539, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val9, i64 64
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !540, !noalias !539, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.t, i64 range(i64 0, 2305843009213693952) %i.p) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.u, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.v = icmp ult i64 %i.p, %i.t
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.w = icmp ult i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.01.019.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !541, !noalias !543, !noundef !11 ; 2 uses
  %.val16.i.i.i.i = load i32, ptr %i.y, align 4, !alias.scope !542, !noalias !544, !noundef !11 ; 2 uses
  %i.z = icmp eq i32 %.val15.i.i.i.i, %.val16.i.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1e_5sliceSB19_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB37_:bb.a
  %.sroa.0.0.i.i36 = select i1 %i.bb, i8 %switch.offset.i.i35, i8 %i.az
  %i.bc = icmp eq i8 %.sroa.0.0.i.i36, -1         ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.au, ptr %i.as, !unpredictable !11
  %i.be = select i1 %i.bc, ptr %i.as, ptr %i.au, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1e_5sliceSB19_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB37_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 96)) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val22 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val23 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.d, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 8     ; 5 uses
  %.val1.i = load ptr, ptr %i.e, align 8          ; 2 uses
  %i.f = load ptr, ptr %.val.i, align 8, !noalias !614, !nonnull !11, !noundef !11
  %i.g = tail call { ptr, i64 } %i.f(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val21, i64 noundef %.val22), !noalias !614, !inline_history !5 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = load ptr, ptr %.val.i, align 8, !noalias !614, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val23) ]
  %i.k = tail call { ptr, i64 } %i.j(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val23, i64 noundef %.val24), !noalias !614, !inline_history !5 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.l, i64 noundef %i.m), !noalias !614 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.o = load i8, ptr %.val1.i, align 1, !range !21, !noalias !614, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  %switch.offset.i.i = sub nsw i8 0, %i.n
  %.sroa.0.0.i.i = select i1 %i.p, i8 %switch.offset.i.i, i8 %i.n
  %i.q = icmp eq i8 %.sroa.0.0.i.i, -1            ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 80
  %.val16 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %0, i64 88
  %.val17 = load i64, ptr %i.s, align 8, !noundef !11
  %i.t = getelementptr i8, ptr %0, i64 56
  %.val18 = load ptr, ptr %i.t, align 8           ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 64
  %.val19 = load i64, ptr %i.u, align 8
  %.val.i25 = load ptr, ptr %.0.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i26 = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.v = load ptr, ptr %.val.i25, align 8, !noalias !615, !nonnull !11, !noundef !11
  %i.w = tail call { ptr, i64 } %i.v(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16, i64 noundef %.val17), !noalias !615, !inline_history !5 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %.val.i25, align 8, !noalias !615, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.aa = tail call { ptr, i64 } %i.z(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val18, i64 noundef %.val19), !noalias !615, !inline_history !5 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %i.ad = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ac), !noalias !615 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i26) ]
  %i.ae = load i8, ptr %.val1.i26, align 1, !range !21, !noalias !615, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  %switch.offset.i.i27 = sub nsw i8 0, %i.ad
  %.sroa.0.0.i.i28 = select i1 %i.af, i8 %switch.offset.i.i27, i8 %i.ad
  %i.ag = icmp eq i8 %.sroa.0.0.i.i28, -1         ; 2 uses
  %i.ah = zext i1 %i.q to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ah ; 4 uses
  %i.aj = xor i1 %i.q, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ak ; 5 uses
  %i.am = select i1 %i.ag, i64 3, i64 2
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.am ; 5 uses
  %i.ao = select i1 %i.ag, i64 2, i64 3
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ao ; 4 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val11 = load ptr, ptr %i.aq, align 8, !nonnull !11, !noundef !11
  %i.ar = getelementptr i8, ptr %i.an, i64 16
  %.val12 = load i64, ptr %i.ar, align 8, !noundef !11
  %i.as = getelementptr i8, ptr %i.ai, i64 8
  %.val13 = load ptr, ptr %i.as, align 8          ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 16
  %.val14 = load i64, ptr %i.at, align 8
  %.val.i29 = load ptr, ptr %.0.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i30 = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.au = load ptr, ptr %.val.i29, align 8, !noalias !616, !nonnull !11, !noundef !11
  %i.av = tail call { ptr, i64 } %i.au(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val11, i64 noundef %.val12), !noalias !616, !inline_history !5 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = load ptr, ptr %.val.i29, align 8, !noalias !616, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.az = tail call { ptr, i64 } %i.ay(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13, i64 noundef %.val14), !noalias !616, !inline_history !5 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  %i.bc = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aw, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ba, i64 noundef %i.bb), !noalias !616 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i30) ]
  %i.bd = load i8, ptr %.val1.i30, align 1, !range !21, !noalias !616, !noundef !11
  %i.be = trunc nuw i8 %i.bd to i1
  %switch.offset.i.i31 = sub nsw i8 0, %i.bc
  %.sroa.0.0.i.i32 = select i1 %i.be, i8 %switch.offset.i.i31, i8 %i.bc
  %i.bf = icmp eq i8 %.sroa.0.0.i.i32, -1         ; 3 uses
  %i.bg = getelementptr i8, ptr %i.ap, i64 8
  %.val6 = load ptr, ptr %i.bg, align 8, !nonnull !11, !noundef !11
  %i.bh = getelementptr i8, ptr %i.ap, i64 16
  %.val7 = load i64, ptr %i.bh, align 8, !noundef !11
  %i.bi = getelementptr i8, ptr %i.al, i64 8
  %.val8 = load ptr, ptr %i.bi, align 8           ; 2 uses
  %i.bj = getelementptr i8, ptr %i.al, i64 16
  %.val9 = load i64, ptr %i.bj, align 8
  %.val.i33 = load ptr, ptr %.0.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i34 = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.bk = load ptr, ptr %.val.i33, align 8, !noalias !617, !nonnull !11, !noundef !11
  %i.bl = tail call { ptr, i64 } %i.bk(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val6, i64 noundef %.val7), !noalias !617, !inline_history !5 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = load ptr, ptr %.val.i33, align 8, !noalias !617, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  %i.bp = tail call { ptr, i64 } %i.bo(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8, i64 noundef %.val9), !noalias !617, !inline_history !5 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bm, i64 noundef %i.bn, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bq, i64 noundef %i.br), !noalias !617 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i34) ]
  %i.bt = load i8, ptr %.val1.i34, align 1, !range !21, !noalias !617, !noundef !11
  %i.bu = trunc nuw i8 %i.bt to i1
  %switch.offset.i.i35 = sub nsw i8 0, %i.bs
  %.sroa.0.0.i.i36 = select i1 %i.bu, i8 %switch.offset.i.i35, i8 %i.bs
  %i.bv = icmp eq i8 %.sroa.0.0.i.i36, -1         ; 3 uses
  %i.bw = select i1 %i.bf, ptr %i.an, ptr %i.ai, !unpredictable !11
  %i.bx = select i1 %i.bv, ptr %i.al, ptr %i.ap, !unpredictable !11
  %i.by = select i1 %i.bv, ptr %i.an, ptr %i.al, !unpredictable !11
  %i.bz = select i1 %i.bf, ptr %i.ai, ptr %i.by, !unpredictable !11 ; 4 uses
  %i.ca = select i1 %i.bf, ptr %i.al, ptr %i.an, !unpredictable !11
  %i.cb = select i1 %i.bv, ptr %i.ap, ptr %i.ca, !unpredictable !11 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val1 = load ptr, ptr %i.cc, align 8, !nonnull !11, !noundef !11
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  %.val2 = load i64, ptr %i.cd, align 8, !noundef !11
  %i.ce = getelementptr i8, ptr %i.bz, i64 8
  %.val3 = load ptr, ptr %i.ce, align 8           ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  %.val4 = load i64, ptr %i.cf, align 8
  %.val.i37 = load ptr, ptr %.0.val, align 8, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i38 = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.cg = load ptr, ptr %.val.i37, align 8, !noalias !618, !nonnull !11, !noundef !11
  %i.ch = tail call { ptr, i64 } %i.cg(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val1, i64 noundef %.val2), !noalias !618, !inline_history !5 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = load ptr, ptr %.val.i37, align 8, !noalias !618, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.cl = tail call { ptr, i64 } %i.ck(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val3, i64 noundef %.val4), !noalias !618, !inline_history !5 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  %i.co = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ci, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cm, i64 noundef %i.cn), !noalias !618 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i38) ]
  %i.cp = load i8, ptr %.val1.i38, align 1, !range !21, !noalias !618, !noundef !11
  %i.cq = trunc nuw i8 %i.cp to i1
  %switch.offset.i.i39 = sub nsw i8 0, %i.co
  %.sroa.0.0.i.i40 = select i1 %i.cq, i8 %switch.offset.i.i39, i8 %i.co
  %i.cr = icmp eq i8 %.sroa.0.0.i.i40, -1         ; 2 uses
  %i.cs = select i1 %i.cr, ptr %i.cb, ptr %i.bz, !unpredictable !11
  %i.ct = select i1 %i.cr, ptr %i.bz, ptr %i.cb, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvB1b_19sort_and_prioritizes_0E0EB1d_(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.c = load i8, ptr %i.b, align 1, !range !22, !alias.scope !668, !noalias !669, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.e = load i8, ptr %i.d, align 1, !range !22, !alias.scope !669, !noalias !668, !noundef !11 ; 2 uses
  %i.f = icmp eq i8 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i16, ptr %i.g, align 8, !alias.scope !668, !noalias !669, !noundef !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !669, !noalias !668, !noundef !11
  %i.k = trunc i16 %i.h to i8
  %i.l = lshr i8 %i.k, 6
  %i.m = and i8 %i.l, 1
  %i.n = trunc i16 %i.j to i8
  %2 = shl i8 %i.n, 1
  %3 = ashr i8 %2, 7
  %4 = add nsw i8 %3, %i.m
  switch i8 %4, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
    i8 0, label %bb.e
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i8 %i.c, %i.e
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

default.unreachable:                              ; preds = %bb.u, %bb.p, %bb.k, %bb.g, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !672, !noalias !673, !noundef !11 ; 2 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693952
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !673, !noalias !672, !noundef !11 ; 2 uses
  %i.v = icmp ult i64 %i.u, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, label %switch.lookup.i.i

switch.lookup.i.i:                                ; preds = %bb.f
  %i.x = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef 126), !noalias !673
  %i.y = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i32 noundef 126)
  %i.z = xor i1 %i.x, true
  %i.aa = and i1 %i.y, %i.z
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i1 [ %i.o, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ %i.aa, %switch.lookup.i.i ] ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 219
  %i.ae = load i8, ptr %i.ad, align 1, !range !22, !alias.scope !678, !noalias !679, !noundef !11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.ag = load i8, ptr %i.af, align 1, !range !22, !alias.scope !679, !noalias !678, !noundef !11 ; 2 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %.split

bb.g:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !678, !noalias !679, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.al = load i16, ptr %i.ak, align 8, !alias.scope !679, !noalias !678, !noundef !11
  %i.am = trunc i16 %i.aj to i8
  %i.an = lshr i8 %i.am, 6
  %i.ao = and i8 %i.an, 1
  %i.ap = trunc i16 %i.al to i8
  %5 = shl i8 %i.ap, 1
  %6 = ashr i8 %5, 7
  %7 = add nsw i8 %6, %i.ao
  switch i8 %7, label %default.unreachable [
    i8 -1, label %.split12.thread
    i8 0, label %bb.h
    i8 1, label %.thread
  ]

.split12.thread:                                  ; preds = %bb.g
  %i.aq = zext i1 %.sroa.0.0.i.i to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.aq
  %i.as = xor i1 %.sroa.0.0.i.i, true
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.at
  br label %.split12

.split:                                           ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.av = icmp samesign ult i8 %i.ae, %i.ag
  %i.aw = zext i1 %.sroa.0.0.i.i to i64
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.ay = xor i1 %.sroa.0.0.i.i, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.az ; 2 uses
  br i1 %i.av, label %.split12, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !682, !noalias !683, !noundef !11 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !683, !noalias !682, !noundef !11 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %.thread, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i
  %i.bj = zext i1 %.sroa.0.0.i.i to i64
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bj
  %i.bl = xor i1 %.sroa.0.0.i.i, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bm
  br label %.split12

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4: ; preds = %bb.i
  %i.bo = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab, i32 noundef 126), !noalias !683
  %i.bp = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, i32 noundef 126)
  %i.bq = xor i1 %i.bo, true
  %i.br = and i1 %i.bp, %i.bq
  %i.bs = zext i1 %.sroa.0.0.i.i to i64
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = xor i1 %.sroa.0.0.i.i, true
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bv ; 2 uses
  br i1 %i.br, label %.split12, label %bb.j

bb.j:                                             ; preds = %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4
  %i.bx = phi ptr [ %i.ba, %.split ], [ %i.bw, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ]
  %i.by = phi ptr [ %i.ax, %.split ], [ %i.bt, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ]
  br label %.split12

.split12:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4, %.split, %.split12.thread, %bb.j, %.thread
  %i.bz = phi ptr [ %i.ac, %.thread ], [ %i.ac, %bb.j ], [ %i.ab, %.split12.thread ], [ %i.ab, %.split ], [ %i.ab, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ] ; 12 uses
  %i.ca = phi ptr [ %i.bk, %.thread ], [ %i.by, %bb.j ], [ %i.ar, %.split12.thread ], [ %i.ax, %.split ], [ %i.bt, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ] ; 12 uses
  %i.cb = phi ptr [ %i.bn, %.thread ], [ %i.bx, %bb.j ], [ %i.au, %.split12.thread ], [ %i.ba, %.split ], [ %i.bw, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ] ; 10 uses
  %i.cc = phi i64 [ 3, %.thread ], [ 3, %bb.j ], [ 2, %.split12.thread ], [ 2, %.split ], [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit4 ]
  %i.cd = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.cc ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 51
  %i.cf = load i8, ptr %i.ce, align 1, !range !22, !alias.scope !688, !noalias !689, !noundef !11 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 51
  %i.ch = load i8, ptr %i.cg, align 1, !range !22, !alias.scope !689, !noalias !688, !noundef !11 ; 2 uses
  %i.ci = icmp eq i8 %i.cf, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ck = load i16, ptr %i.cj, align 8, !alias.scope !688, !noalias !689, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cm = load i16, ptr %i.cl, align 8, !alias.scope !689, !noalias !688, !noundef !11
  %i.cn = trunc i16 %i.ck to i8
  %i.co = lshr i8 %i.cn, 6
  %i.cp = and i8 %i.co, 1
  %i.cq = trunc i16 %i.cm to i8
  %8 = shl i8 %i.cq, 1
  %9 = ashr i8 %8, 7
  %10 = add nsw i8 %9, %i.cp
  switch i8 %10, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8
    i8 0, label %bb.n
    i8 1, label %bb.m
  ]

bb.l:                                             ; preds = %.split12
  %i.cr = icmp samesign ult i8 %i.cf, %i.ch
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8

bb.m:                                             ; preds = %bb.k
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !692, !noalias !693, !noundef !11 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !693, !noalias !692, !noundef !11 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8, label %switch.lookup.i.i6

switch.lookup.i.i6:                               ; preds = %bb.o
  %i.da = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bz, i32 noundef 126), !noalias !693
  %i.db = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, i32 noundef 126)
  %i.dc = xor i1 %i.da, true
  %i.dd = and i1 %i.db, %i.dc
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8: ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %switch.lookup.i.i6
  %.sroa.0.0.i.i5 = phi i1 [ %i.cr, %bb.l ], [ true, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ], [ %i.dd, %switch.lookup.i.i6 ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 51
  %i.df = load i8, ptr %i.de, align 1, !range !22, !alias.scope !698, !noalias !699, !noundef !11 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cb, i64 51
  %i.dh = load i8, ptr %i.dg, align 1, !range !22, !alias.scope !699, !noalias !698, !noundef !11 ; 2 uses
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.p, label %.split24

bb.p:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.dk = load i16, ptr %i.dj, align 8, !alias.scope !698, !noalias !699, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.dm = load i16, ptr %i.dl, align 8, !alias.scope !699, !noalias !698, !noundef !11
  %i.dn = trunc i16 %i.dk to i8
  %i.do = lshr i8 %i.dn, 6
  %i.dp = and i8 %i.do, 1
  %i.dq = trunc i16 %i.dm to i8
  %11 = shl i8 %i.dq, 1
  %12 = ashr i8 %11, 7
  %13 = add nsw i8 %12, %i.dp
  switch i8 %13, label %default.unreachable [
    i8 -1, label %.split39.thread
    i8 0, label %bb.q
    i8 1, label %.thread36
  ]

.split39.thread:                                  ; preds = %bb.p
  %i.dr = select i1 %.sroa.0.0.i.i5, ptr %i.bz, ptr %i.ca, !unpredictable !11
  %i.ds = select i1 %.sroa.0.0.i.i5, ptr %i.ca, ptr %i.bz, !unpredictable !11
  br label %bb.t

.split24:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit8
  %i.dt = icmp samesign ult i8 %i.df, %i.dh
  %i.du = select i1 %.sroa.0.0.i.i5, ptr %i.bz, ptr %i.ca, !unpredictable !11 ; 2 uses
  br i1 %i.dt, label %.split39, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !702, !noalias !703, !noundef !11 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %.thread36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !703, !noalias !702, !noundef !11 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i64 %i.ea, 0
  br i1 %i.ec, label %.thread36, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12

.thread36:                                        ; preds = %bb.r, %bb.q, %bb.p
  %i.ed = select i1 %.sroa.0.0.i.i5, ptr %i.bz, ptr %i.ca, !unpredictable !11
  %i.ee = select i1 %.sroa.0.0.i.i5, ptr %i.ca, ptr %i.cb, !unpredictable !11
  %i.ef = select i1 %.sroa.0.0.i.i5, ptr %i.cb, ptr %i.bz, !unpredictable !11
  br label %bb.t

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12: ; preds = %bb.r
  %i.eg = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cd, i32 noundef 126), !noalias !703
  %i.eh = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cb, i32 noundef 126)
  %i.ei = xor i1 %i.eg, true
  %i.ej = and i1 %i.eh, %i.ei
  %i.ek = select i1 %.sroa.0.0.i.i5, ptr %i.bz, ptr %i.ca, !unpredictable !11 ; 2 uses
  br i1 %i.ej, label %.split39, label %bb.s

.split39:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12, %.split24
  %i.el = phi ptr [ %i.du, %.split24 ], [ %i.ek, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12 ]
  %i.em = select i1 %.sroa.0.0.i.i5, ptr %i.ca, ptr %i.bz, !unpredictable !11
  br label %bb.t

bb.s:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12, %.split24
  %i.en = phi ptr [ %i.du, %.split24 ], [ %i.ek, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit12 ]
  %i.eo = select i1 %.sroa.0.0.i.i5, ptr %i.ca, ptr %i.cb, !unpredictable !11
  %i.ep = select i1 %.sroa.0.0.i.i5, ptr %i.cb, ptr %i.bz, !unpredictable !11
  br label %bb.t

bb.t:                                             ; preds = %.split39.thread, %.split39, %bb.s, %.thread36
  %i.eq = phi ptr [ %i.ee, %.thread36 ], [ %i.eo, %bb.s ], [ %i.em, %.split39 ], [ %i.ds, %.split39.thread ] ; 10 uses
  %i.er = phi ptr [ %i.ed, %.thread36 ], [ %i.en, %bb.s ], [ %i.el, %.split39 ], [ %i.dr, %.split39.thread ]
  %i.es = phi ptr [ %i.cd, %.thread36 ], [ %i.cd, %bb.s ], [ %i.cb, %.split39 ], [ %i.cb, %.split39.thread ]
  %i.et = phi ptr [ %i.ef, %.thread36 ], [ %i.ep, %bb.s ], [ %i.cd, %.split39 ], [ %i.cd, %.split39.thread ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 51
  %i.ev = load i8, ptr %i.eu, align 1, !range !22, !alias.scope !708, !noalias !709, !noundef !11 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 51
  %i.ex = load i8, ptr %i.ew, align 1, !range !22, !alias.scope !709, !noalias !708, !noundef !11 ; 2 uses
  %i.ey = icmp eq i8 %i.ev, %i.ex
  br i1 %i.ey, label %bb.u, label %.split51

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.fa = load i16, ptr %i.ez, align 8, !alias.scope !708, !noalias !709, !noundef !11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.fc = load i16, ptr %i.fb, align 8, !alias.scope !709, !noalias !708, !noundef !11
  %i.fd = trunc i16 %i.fa to i8
  %i.fe = lshr i8 %i.fd, 6
  %i.ff = and i8 %i.fe, 1
  %i.fg = trunc i16 %i.fc to i8
  %14 = shl i8 %i.fg, 1
  %15 = ashr i8 %14, 7
  %16 = add nsw i8 %15, %i.ff
  switch i8 %16, label %default.unreachable [
    i8 -1, label %.split57.thread
    i8 0, label %bb.v
    i8 1, label %.thread54
  ]

.split51:                                         ; preds = %bb.t
  %i.fh = icmp samesign ult i8 %i.ev, %i.ex
  br i1 %i.fh, label %.split57.thread, label %.thread54

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !712, !noalias !713, !noundef !11 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp eq i64 %i.fj, 0
  br i1 %i.fl, label %.thread54, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !713, !noalias !712, !noundef !11 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = icmp eq i64 %i.fn, 0
  br i1 %i.fp, label %.thread54, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16: ; preds = %bb.w
  %i.fq = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et, i32 noundef 126), !noalias !713
  %i.fr = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq, i32 noundef 126)
  %i.fs = xor i1 %i.fq, true
  %i.ft = and i1 %i.fr, %i.fs
  br i1 %i.ft, label %.split57.thread, label %.thread54

.split57.thread:                                  ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16, %.split51, %bb.u
  br label %.thread54

.thread54:                                        ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16, %.split51, %bb.w, %bb.v, %bb.u, %.split57.thread
  %i.fu = phi ptr [ %i.et, %.split57.thread ], [ %i.eq, %bb.v ], [ %i.eq, %bb.w ], [ %i.eq, %bb.u ], [ %i.eq, %.split51 ], [ %i.eq, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16 ]
  %i.fv = phi ptr [ %i.eq, %.split57.thread ], [ %i.et, %bb.v ], [ %i.et, %bb.w ], [ %i.et, %bb.u ], [ %i.et, %.split51 ], [ %i.et, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit16 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.er, i64 56, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull align 8 dereferenceable(56) %i.fu, i64 56, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %i.fv, i64 56, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %i.es, i64 56, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvMs0_NtB1d_6expandNtB2K_8Expander15stage_wildcardss_0E0EB1d_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 224)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr i8, ptr %0, i64 72
  %.val17 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.d, align 8, !noundef !11
  %i.e = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16, i64 noundef %.val17, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val18, i64 noundef %.val19)
  %i.f = icmp eq i8 %i.e, -1                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 176
  %.val12 = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr i8, ptr %0, i64 184
  %.val13 = load i64, ptr %i.h, align 8, !noundef !11
  %i.i = getelementptr i8, ptr %0, i64 120
  %.val14 = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.j = getelementptr i8, ptr %0, i64 128
  %.val15 = load i64, ptr %i.j, align 8, !noundef !11
  %i.k = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12, i64 noundef %.val13, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14, i64 noundef %.val15)
  %i.l = icmp eq i8 %i.k, -1                      ; 2 uses
  %i.m = zext i1 %i.f to i64
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.m ; 4 uses
  %i.o = xor i1 %i.f, true
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.p ; 5 uses
  %i.r = select i1 %i.l, i64 3, i64 2
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.r ; 5 uses
  %i.t = select i1 %i.l, i64 2, i64 3
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val8 = load ptr, ptr %i.v, align 8, !nonnull !11, !noundef !11
  %i.w = getelementptr i8, ptr %i.s, i64 16
  %.val9 = load i64, ptr %i.w, align 8, !noundef !11
  %i.x = getelementptr i8, ptr %i.n, i64 8
  %.val10 = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11
  %i.y = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.y, align 8, !noundef !11
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8, i64 noundef %.val9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10, i64 noundef %.val11)
  %i.aa = icmp eq i8 %i.z, -1                     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 8
  %.val4 = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11
  %i.ac = getelementptr i8, ptr %i.u, i64 16
  %.val5 = load i64, ptr %i.ac, align 8, !noundef !11
  %i.ad = getelementptr i8, ptr %i.q, i64 8
  %.val6 = load ptr, ptr %i.ad, align 8, !nonnull !11, !noundef !11
  %i.ae = getelementptr i8, ptr %i.q, i64 16
  %.val7 = load i64, ptr %i.ae, align 8, !noundef !11
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val4, i64 noundef %.val5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val6, i64 noundef %.val7)
  %i.ag = icmp eq i8 %i.af, -1                    ; 3 uses
  %i.ah = select i1 %i.aa, ptr %i.s, ptr %i.n, !unpredictable !11
  %i.ai = select i1 %i.ag, ptr %i.q, ptr %i.u, !unpredictable !11
  %i.aj = select i1 %i.ag, ptr %i.s, ptr %i.q, !unpredictable !11
  %i.ak = select i1 %i.aa, ptr %i.n, ptr %i.aj, !unpredictable !11 ; 4 uses
  %i.al = select i1 %i.aa, ptr %i.q, ptr %i.s, !unpredictable !11
  %i.am = select i1 %i.ag, ptr %i.u, ptr %i.al, !unpredictable !11 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val = load ptr, ptr %i.an, align 8, !nonnull !11, !noundef !11
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val1 = load i64, ptr %i.ao, align 8, !noundef !11
  %i.ap = getelementptr i8, ptr %i.ak, i64 8
  %.val2 = load ptr, ptr %i.ap, align 8, !nonnull !11, !noundef !11
  %i.aq = getelementptr i8, ptr %i.ak, i64 16
  %.val3 = load i64, ptr %i.aq, align 8, !noundef !11
  %i.ar = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2, i64 noundef %.val3)
  %i.as = icmp eq i8 %i.ar, -1                    ; 2 uses
  %i.at = select i1 %i.as, ptr %i.am, ptr %i.ak, !unpredictable !11
  %i.au = select i1 %i.as, ptr %i.ak, ptr %i.am, !unpredictable !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i64 56, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.au, i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i64 56, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNvB1b_27natural_compare_completionsE0EB1d_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 224)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i16, ptr %i.a, align 8, !alias.scope !765, !noalias !766, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i16, ptr %i.c, align 8, !alias.scope !766, !noalias !765, !noundef !11 ; 2 uses
  %i.e = and i16 %i.b, 32                         ; 2 uses
  %i.f = and i16 %i.e, %i.d
  %.not.i.i.i = icmp eq i16 %i.f, 0
  br i1 %.not.i.i.i, label %bb.b, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.b:                                             ; preds = %bb.a
  %.not1.i.i.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i.i.i, label %bb.c, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i16 %i.d, 32
  %.not2.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not2.i.i.i, label %bb.d, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !765, !noalias !766, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !765, !noalias !766, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !766, !noalias !765, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !766, !noalias !765, !noundef !11
  %i.p = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.m, i64 noundef %i.o), !noalias !767
  %i.q = icmp eq i8 %i.p, -1
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi i1 [ %i.q, %bb.d ], [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load i16, ptr %i.r, align 8, !alias.scope !774, !noalias !775, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load i16, ptr %i.t, align 8, !alias.scope !775, !noalias !774, !noundef !11 ; 2 uses
  %i.v = and i16 %i.s, 32                         ; 2 uses
  %i.w = and i16 %i.v, %i.u
  %.not.i.i.i1 = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i1, label %bb.e, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit5.thread

bb.e:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit
  %.not1.i.i.i3 = icmp eq i16 %i.v, 0
  br i1 %.not1.i.i.i3, label %bb.f, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit5.thread3

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit5.thread3: ; preds = %bb.e
  %i.x = zext i1 %.sroa.0.0.i.i.i to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.x
  %i.z = xor i1 %.sroa.0.0.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.aa
  br label %bb.g

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB11_5sliceSBW_7sort_byNCNvB1w_5print0E0EB1y_:bb.a
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.017.i.i, align 8, !alias.scope !1372, !noalias !1389, !nonnull !11, !noundef !11 ; 11 uses
  %.val.i18.i = load ptr, ptr %i.mh, align 8, !alias.scope !1373, !noalias !1390, !nonnull !11, !noundef !11 ; 22 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 40
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.mk = load i32, ptr %i.mi, align 8, !range !18, !alias.scope !1391, !noalias !1393, !noundef !11 ; 3 uses
  %i.ml = load i32, ptr %i.mj, align 8, !range !18, !alias.scope !1392, !noalias !1394, !noundef !11 ; 2 uses
  %i.mm = icmp eq i32 %i.mk, %i.ml
  %i.mn = icmp samesign ult i32 %i.mk, %i.ml
  br i1 %i.mm, label %bb.bm, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i

bb.bm:                                            ; preds = %.lr.ph.i.i
  switch i32 %i.mk, label %default.unreachable [
    i32 1, label %.split.i53.i
    i32 2, label %bb.bn
    i32 3, label %bb.bp
    i32 4, label %bb.bq
    i32 5, label %.split9.i36.i
    i32 6, label %bb.bu
    i32 0, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i
  ]

.split.i53.i:                                     ; preds = %bb.bm
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 44
  %i.mp = load i32, ptr %i.mo, align 4, !range !19, !alias.scope !1391, !noalias !1393, !noundef !11
  %i.mq = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 44
  %i.mr = load i32, ptr %i.mq, align 4, !range !19, !alias.scope !1392, !noalias !1394, !noundef !11
  %i.ms = icmp slt i32 %i.mp, %i.mr
  br i1 %i.ms, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

bb.bn:                                            ; preds = %bb.bm
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !alias.scope !1391, !noalias !1393, !nonnull !11, !noundef !11
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 64
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !1391, !noalias !1393, !noundef !11 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 56
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !1392, !noalias !1394, !nonnull !11, !noundef !11
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 64
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !1392, !noalias !1394, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %..i.i.i.i.i.i44.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.na, i64 range(i64 0, 2305843009213693952) %i.mw) ; 2 uses
  %.not.i.i.i.i.i45.i = icmp eq i64 %..i.i.i.i.i.i44.i, 0
  br i1 %.not.i.i.i.i.i45.i, label %._crit_edge.i.i.i.i.i52.i, label %.lr.ph.i.i.i.i.i46.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i46.i
  %i.nb = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i47.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i51.i = icmp eq i64 %i.nb, %..i.i.i.i.i.i44.i
  br i1 %exitcond.not.i.i.i.i.i51.i, label %._crit_edge.i.i.i.i.i52.i, label %.lr.ph.i.i.i.i.i46.i

._crit_edge.i.i.i.i.i52.i:                        ; preds = %bb.bo, %bb.bn
  %i.nc = icmp ult i64 %i.mw, %i.na
  br i1 %i.nc, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.loopexit.i.i.i.i.i50.i:                          ; preds = %.lr.ph.i.i.i.i.i46.i
  %i.nd = icmp ult i32 %.val15.i.i.i.i.i48.i, %.val16.i.i.i.i.i49.i
  br i1 %i.nd, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.lr.ph.i.i.i.i.i46.i:                             ; preds = %bb.bn, %bb.bo
  %.sroa.01.019.i.i.i.i.i47.i = phi i64 [ %i.nb, %bb.bo ], [ 0, %bb.bn ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %.sroa.01.019.i.i.i.i.i47.i
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %.sroa.01.019.i.i.i.i.i47.i
  %.val15.i.i.i.i.i48.i = load i32, ptr %i.ne, align 4, !alias.scope !1395, !noalias !1397, !noundef !11 ; 2 uses
  %.val16.i.i.i.i.i49.i = load i32, ptr %i.nf, align 4, !alias.scope !1396, !noalias !1398, !noundef !11 ; 2 uses
  %i.ng = icmp eq i32 %.val15.i.i.i.i.i48.i, %.val16.i.i.i.i.i49.i
  br i1 %i.ng, label %bb.bo, label %.loopexit.i.i.i.i.i50.i

bb.bp:                                            ; preds = %bb.bm
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 44
  %i.ni = load i32, ptr %i.nh, align 4, !alias.scope !1391, !noalias !1393, !noundef !11 ; 2 uses
  %.not6.i.i.i.i40.i = icmp eq i32 %i.ni, 0
  %i.nj = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 44
  %i.nk = load i32, ptr %i.nj, align 4, !alias.scope !1392, !noalias !1394, !noundef !11 ; 2 uses
  br i1 %.not6.i.i.i.i40.i, label %.split11.i42.i, label %.split8.i41.i

.split8.i41.i:                                    ; preds = %bb.bp
  %i.nl = icmp ult i32 %i.ni, %i.nk
  br i1 %i.nl, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.split11.i42.i:                                   ; preds = %bb.bp
  %.not7.i.i.i.not.i43.i = icmp eq i32 %i.nk, 0
  br i1 %.not7.i.i.i.not.i43.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i

bb.bq:                                            ; preds = %bb.bm
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 44
  %i.nn = load i32, ptr %i.nm, align 4, !alias.scope !1391, !noalias !1393, !noundef !11 ; 3 uses
  %.not.i.i.i.i37.i = icmp eq i32 %i.nn, 0
  %i.no = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 44
  %i.np = load i32, ptr %i.no, align 4, !alias.scope !1392, !noalias !1394, !noundef !11 ; 3 uses
  %.not4.i.i.i.i38.i = icmp eq i32 %i.np, 0       ; 2 uses
  br i1 %.not.i.i.i.i37.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %.not4.i.i.i.i38.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i, label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  br i1 %.not4.i.i.i.i38.i, label %.split10.i39.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i

.split10.i39.i:                                   ; preds = %bb.bt, %bb.bs
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 48
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !1391, !noalias !1393, !noundef !11
  %i.ns = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 48
  %i.nt = load i64, ptr %i.ns, align 8, !alias.scope !1392, !noalias !1394, !noundef !11
  %i.nu = icmp ult i64 %i.nr, %i.nt
  br i1 %i.nu, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

bb.bt:                                            ; preds = %bb.br
  %i.nv = icmp eq i32 %i.nn, %i.np
  %i.nw = icmp ult i32 %i.nn, %i.np
  br i1 %i.nv, label %.split10.i39.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i

.split9.i36.i:                                    ; preds = %bb.bm
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 48
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !1391, !noalias !1393, !noundef !11
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 48
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !1392, !noalias !1394, !noundef !11
  %i.ob = icmp ult i64 %i.ny, %i.oa
  br i1 %i.ob, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

bb.bu:                                            ; preds = %bb.bm
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 56
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !1391, !noalias !1393, !nonnull !11, !noundef !11
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 64
  %i.of = load i64, ptr %i.oe, align 8, !alias.scope !1391, !noalias !1393, !noundef !11 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 56
  %i.oh = load ptr, ptr %i.og, align 8, !alias.scope !1392, !noalias !1394, !nonnull !11, !noundef !11
  %i.oi = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 64
  %i.oj = load i64, ptr %i.oi, align 8, !alias.scope !1392, !noalias !1394, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %..i.i9.i.i.i.i27.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.oj, i64 range(i64 0, 2305843009213693952) %i.of) ; 2 uses
  %.not.i10.i.i.i.i28.i = icmp eq i64 %..i.i9.i.i.i.i27.i, 0
  br i1 %.not.i10.i.i.i.i28.i, label %._crit_edge.i18.i.i.i.i35.i, label %.lr.ph.i11.i.i.i.i29.i

bb.bv:                                            ; preds = %.lr.ph.i11.i.i.i.i29.i
  %i.ok = add nuw nsw i64 %.sroa.01.019.i12.i.i.i.i30.i, 1 ; 2 uses
  %exitcond.not.i17.i.i.i.i34.i = icmp eq i64 %i.ok, %..i.i9.i.i.i.i27.i
  br i1 %exitcond.not.i17.i.i.i.i34.i, label %._crit_edge.i18.i.i.i.i35.i, label %.lr.ph.i11.i.i.i.i29.i

._crit_edge.i18.i.i.i.i35.i:                      ; preds = %bb.bv, %bb.bu
  %i.ol = icmp ult i64 %i.of, %i.oj
  br i1 %i.ol, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.loopexit.i15.i.i.i.i33.i:                        ; preds = %.lr.ph.i11.i.i.i.i29.i
  %i.om = icmp ult i32 %.val15.i13.i.i.i.i31.i, %.val16.i14.i.i.i.i32.i
  br i1 %i.om, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.lr.ph.i11.i.i.i.i29.i:                           ; preds = %bb.bu, %bb.bv
  %.sroa.01.019.i12.i.i.i.i30.i = phi i64 [ %i.ok, %bb.bv ], [ 0, %bb.bu ] ; 3 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sroa.01.019.i12.i.i.i.i30.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %.sroa.01.019.i12.i.i.i.i30.i
  %.val15.i13.i.i.i.i31.i = load i32, ptr %i.on, align 4, !alias.scope !1399, !noalias !1401, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i.i32.i = load i32, ptr %i.oo, align 4, !alias.scope !1400, !noalias !1402, !noundef !11 ; 2 uses
  %i.op = icmp eq i32 %.val15.i13.i.i.i.i31.i, %.val16.i14.i.i.i.i32.i
  br i1 %i.op, label %bb.bv, label %.loopexit.i15.i.i.i.i33.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i: ; preds = %bb.bt, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i20.i = phi i1 [ %i.nw, %bb.bt ], [ %i.mn, %.lr.ph.i.i ]
  %cond.fr.i21.i = freeze i1 %.sroa.0.0.i.i.i.i20.i
  br i1 %cond.fr.i21.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i, %.loopexit.i15.i.i.i.i33.i, %._crit_edge.i18.i.i.i.i35.i, %.split9.i36.i, %.split10.i39.i, %bb.bs, %.split11.i42.i, %.split8.i41.i, %.loopexit.i.i.i.i.i50.i, %._crit_edge.i.i.i.i.i52.i, %.split.i53.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i, %.loopexit.i15.i.i.i.i33.i, %._crit_edge.i18.i.i.i.i35.i, %.split9.i36.i, %.split10.i39.i, %bb.br, %.split11.i42.i, %.split8.i41.i, %.loopexit.i.i.i.i.i50.i, %._crit_edge.i.i.i.i.i52.i, %.split.i53.i, %bb.bm
  %.in.i23.i = phi ptr [ %.sroa.0.0.val.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ %.val.i18.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ %.val.i18.i, %._crit_edge.i18.i.i.i.i35.i ], [ %.val.i18.i, %.split.i53.i ], [ %.val.i18.i, %.split8.i41.i ], [ %.val.i18.i, %.split9.i36.i ], [ %.val.i18.i, %.loopexit.i.i.i.i.i50.i ], [ %.val.i18.i, %.split10.i39.i ], [ %.val.i18.i, %.loopexit.i15.i.i.i.i33.i ], [ %.val.i18.i, %.split11.i42.i ], [ %.val.i18.i, %._crit_edge.i.i.i.i.i52.i ], [ %.val.i18.i, %bb.br ], [ %.val.i18.i, %bb.bm ]
  %i.oq = phi i64 [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ 1, %._crit_edge.i18.i.i.i.i35.i ], [ 1, %.split.i53.i ], [ 1, %.split8.i41.i ], [ 1, %.split9.i36.i ], [ 1, %.loopexit.i.i.i.i.i50.i ], [ 1, %.split10.i39.i ], [ 1, %.loopexit.i15.i.i.i.i33.i ], [ 1, %.split11.i42.i ], [ 1, %._crit_edge.i.i.i.i.i52.i ], [ 1, %bb.br ], [ 1, %bb.bm ]
  %.sroa.0.0.i.i.i3.i24.i = phi i64 [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ 0, %._crit_edge.i18.i.i.i.i35.i ], [ 0, %.split.i53.i ], [ 0, %.split8.i41.i ], [ 0, %.split9.i36.i ], [ 0, %.loopexit.i.i.i.i.i50.i ], [ 0, %.split10.i39.i ], [ 0, %.loopexit.i15.i.i.i.i33.i ], [ 0, %.split11.i42.i ], [ 0, %._crit_edge.i.i.i.i.i52.i ], [ 0, %bb.br ], [ 0, %bb.bm ]
  %i.or = ptrtoint ptr %.in.i23.i to i64
  store i64 %i.or, ptr %i.mg, align 8, !alias.scope !1372, !noalias !1389
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.oq ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.017.i.i, i64 %.sroa.0.0.i.i.i3.i24.i ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.ov = icmp ne ptr %i.os, %i.jk
  %i.ow = icmp ne ptr %i.ot, %i.m
  %or.cond.i25.i = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i25.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i
  %.sroa.13.1.i = phi ptr [ %i.mb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.ou, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ]
  %.sroa.7.0.i = phi ptr [ %i.md, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.jk, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.os, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ] ; 2 uses
  %i.ox = ptrtoint ptr %.sroa.7.0.i to i64
  %i.oy = ptrtoint ptr %.sroa.0.1.i to i64
  %i.oz = sub nuw i64 %i.ox, %i.oy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.oz, i1 false), !alias.scope !1374, !noalias !1403
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit: ; preds = %bb.ba, %bb.bb, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i
  %i.pa = shl nuw nsw i64 %i.il, 1
  %i.pb = or disjoint i64 %i.pa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit: ; preds = %bb.aw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit
  %.sroa.0.0.i = phi i64 [ %i.pb, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit ], [ %i.it, %bb.aw ] ; 2 uses
  %i.pc = icmp ugt i64 %i.ic, 1
  br i1 %i.pc, label %bb.at, label %._crit_edge

bb.bw:                                            ; preds = %._crit_edge
  %i.pd = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.pe = lshr i64 %.sroa.018.0, 1
  %i.pf = add nuw i64 %i.pe, %.sroa.09.0
  br label %bb.f

bb.bx:                                            ; preds = %._crit_edge
  %i.pg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pg, 0
  br i1 %.not30, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ph = or i64 %1, 1
  %i.pi = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ph, i1 true)
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 1
  %i.pl = xor i32 %i.pk, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.pl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1297
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.a, %bb.bz
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !alias.scope !1442, !noalias !1443, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val19.i = load ptr, ptr %i.s, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val20.i = load i64, ptr %i.t, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i44 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.u = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17.i, i64 noundef %.val18.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val19.i, i64 noundef %.val20.i), !noalias !1447 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i44) ], !noalias !1446
  %i.v = load i8, ptr %.val.i44, align 1, !range !21, !noalias !1447, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  %switch.offset.i.i45 = sub nsw i8 0, %i.u
  %.sroa.0.0.i.i46 = select i1 %i.w, i8 %switch.offset.i.i45, i8 %i.u
  %i.x = icmp ne i8 %.sroa.0.0.i.i46, -1          ; 2 uses
  %.not89 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader57, label %.preheader56

.preheader57:                                     ; preds = %bb.k
  br i1 %.not89, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread, label %.lr.ph

.preheader56:                                     ; preds = %bb.k
  br i1 %.not89, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121, label %.lr.ph76

.lr.ph:                                           ; preds = %.preheader57, %bb.l
  %.sroa.01.0.i.i72 = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader57 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val12.i = load ptr, ptr %i.aa, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val13.i = load i64, ptr %i.ab, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.ac = getelementptr i8, ptr %i.z, i64 -16
  %.val14.i = load ptr, ptr %i.ac, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.ad = getelementptr i8, ptr %i.z, i64 -8
  %.val15.i = load i64, ptr %i.ad, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i41 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.ae = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i), !noalias !1448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i41) ], !noalias !1446
  %i.af = load i8, ptr %.val.i41, align 1, !range !21, !noalias !1448, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  %switch.offset.i.i42 = sub nsw i8 0, %i.ae
  %.sroa.0.0.i.i43 = select i1 %i.ag, i8 %switch.offset.i.i42, i8 %i.ae
  %i.ah = icmp eq i8 %.sroa.0.0.i.i43, -1
  br i1 %i.ah, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ai = add nuw i64 %.sroa.01.0.i.i72, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %.lr.ph

.lr.ph76:                                         ; preds = %.preheader56, %bb.m
  %.sroa.01.1.i.i75 = phi i64 [ %i.at, %bb.m ], [ 2, %.preheader56 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75 ; 2 uses
  %i.ak = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val7.i = load ptr, ptr %i.al, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  %.val8.i = load i64, ptr %i.am, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.an = getelementptr i8, ptr %i.ak, i64 -16
  %.val9.i = load ptr, ptr %i.an, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.ao = getelementptr i8, ptr %i.ak, i64 -8
  %.val10.i = load i64, ptr %i.ao, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i39 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.ap = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i), !noalias !1449 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i39) ], !noalias !1446
  %i.aq = load i8, ptr %.val.i39, align 1, !range !21, !noalias !1449, !noundef !11
  %i.ar = trunc nuw i8 %i.aq to i1
  %switch.offset.i.i = sub nsw i8 0, %i.ap
  %.sroa.0.0.i.i40 = select i1 %i.ar, i8 %switch.offset.i.i, i8 %i.ap
  %i.as = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.as, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i

bb.m:                                             ; preds = %.lr.ph76
  %i.at = add nuw i64 %.sroa.01.1.i.i75, 1        ; 2 uses
  %exitcond102.not = icmp eq i64 %i.at, %i.n
  br i1 %exitcond102.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %.lr.ph76

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i: ; preds = %bb.m, %.lr.ph76, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i72, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i75, %.lr.ph76 ], [ %i.n, %bb.m ] ; 5 uses
  %i.au = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.au)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121: ; preds = %.preheader56
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread: ; preds = %.preheader57
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.aw = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit

bb.p:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2T_:bb.a
  %i.br = add i64 %.sroa.02.181, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.180, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.181, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !11 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.180, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.180 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.180
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 384307168202282326) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !1452
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.cz, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.df, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.da = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val12.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1451, !noalias !1453, !nonnull !11, !noundef !11
  %i.db = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val13.i.i = load i64, ptr %i.db, align 8, !alias.scope !1451, !noalias !1453, !noundef !11
  %i.dc = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val14.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !1454, !noalias !1455, !nonnull !11, !noundef !11
  %i.dd = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val15.i.i = load i64, ptr %i.dd, align 8, !alias.scope !1454, !noalias !1455, !noundef !11
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !1456 ; 2 uses
  %i.de = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i.i, i64 noundef %.val15.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1452 ; 2 uses

.noexc.i:                                         ; preds = %.preheader
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.di = load i8, ptr %.val.i.i.i, align 1, !range !21, !noalias !1457, !noundef !11
  %i.dj = trunc nuw i8 %i.di to i1
  %switch.offset.i.i.i.i = sub nsw i8 0, %i.de
  %.sroa.0.0.i.i.i.i = select i1 %i.dj, i8 %switch.offset.i.i.i.i, i8 %i.de
  %i.dk = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i18.i = select i1 %i.dk, ptr %i.dh, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %..i18.i, i64 24, i1 false), !alias.scope !1452, !noalias !1458
  %i.dl = xor i1 %i.dk, true
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.dm ; 3 uses
  %i.do = zext i1 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.do ; 3 uses
  %i.dq = icmp eq ptr %i.dn, %i.cc
  %i.dr = icmp eq ptr %i.dp, %2
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB3l_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc24.i
  %.sroa.13.1.i = phi ptr [ %i.ef, %.noexc24.i ], [ %i.cc, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.ec, %.noexc24.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ee, %.noexc24.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !1450, !noalias !1459, !nonnull !11, !noundef !11
  %i.dt = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dt, align 8, !alias.scope !1450, !noalias !1459, !noundef !11
  %i.du = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val7.i.i = load ptr, ptr %i.du, align 8, !alias.scope !1460, !noalias !1461, !nonnull !11, !noundef !11
  %i.dv = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val8.i.i = load i64, ptr %i.dv, align 8, !alias.scope !1460, !noalias !1461, !noundef !11
  %.val.i.i20.i = load ptr, ptr %.val, align 8, !noalias !1462 ; 2 uses
  %i.dw = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i.i, i64 noundef %.val8.i.i)
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !1452 ; 2 uses

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i20.i) ]
  %i.dx = load i8, ptr %.val.i.i20.i, align 1, !range !21, !noalias !1463, !noundef !11
  %i.dy = trunc nuw i8 %i.dx to i1
  %switch.offset.i.i.i21.i = sub nsw i8 0, %i.dw
  %.sroa.0.0.i.i.i22.i = select i1 %i.dy, i8 %switch.offset.i.i.i21.i, i8 %i.dw
  %i.dz = icmp eq i8 %.sroa.0.0.i.i.i22.i, -1     ; 3 uses
  %i.ea = xor i1 %i.dz, true
  %.sroa.05.0.i.i = select i1 %i.dz, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1452, !noalias !1464
  %i.eb = zext i1 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.eb ; 3 uses
  %i.ed = zext i1 %i.dz to i64
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.eg = icmp ne ptr %i.ec, %i.cz
  %i.eh = icmp ne ptr %i.ee, %i.m
  %or.cond.i23.i = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB3l_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB3l_.exit.i: ; preds = %.noexc24.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.ef, %.noexc24.i ]
  %.sroa.7.2.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.cz, %.noexc24.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.ec, %.noexc24.i ] ; 2 uses
  %i.ei = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ek, i1 false), !alias.scope !1452, !noalias !1465
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit

.loopexit.i:                                      ; preds = %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cz, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.el = ptrtoint ptr %.sroa.7.1.i to i64
  %i.em = ptrtoint ptr %.sroa.0.2.i to i64
  %i.en = sub nuw i64 %i.el, %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.en, i1 false), !alias.scope !1452, !noalias !1466
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB3l_.exit.i
  %i.eo = shl nuw nsw i64 %i.ca, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit
  %.sroa.0.0.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eq = icmp ugt i64 %i.br, 1
  br i1 %i.eq, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.er = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.es = lshr i64 %.sroa.018.0, 1
  %i.et = add nuw i64 %i.es, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eu, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = or i64 %1, 1
  %i.ew = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i134 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gd, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !alias.scope !1502, !noalias !1503, !nonnull !11, !align !14, !noundef !11 ; 4 uses
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val19.i = load ptr, ptr %i.s, align 8, !alias.scope !1501, !noalias !1504 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val20.i = load i64, ptr %i.t, align 8, !alias.scope !1501, !noalias !1504
  %.val.i45 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.u = getelementptr i8, ptr %.val16.i, i64 8   ; 3 uses
  %.val1.i46 = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.v = load ptr, ptr %.val.i45, align 8, !noalias !1506, !nonnull !11, !noundef !11
  %i.w = tail call { ptr, i64 } %i.v(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17.i, i64 noundef %.val18.i), !noalias !1506, !inline_history !1473 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %.val.i45, align 8, !noalias !1506, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i) ], !noalias !1505
  %i.aa = tail call { ptr, i64 } %i.z(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val19.i, i64 noundef %.val20.i), !noalias !1506, !inline_history !1473 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %i.ad = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ac), !noalias !1506 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i46) ], !noalias !1505
  %i.ae = load i8, ptr %.val1.i46, align 1, !range !21, !noalias !1506, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  %switch.offset.i.i47 = sub nsw i8 0, %i.ad
  %.sroa.0.0.i.i48 = select i1 %i.af, i8 %switch.offset.i.i47, i8 %i.ad
  %i.ag = icmp ne i8 %.sroa.0.0.i.i48, -1         ; 2 uses
  %.not91 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ag, label %.preheader59, label %.preheader58

.preheader59:                                     ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread, label %.lr.ph

.preheader58:                                     ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132, label %.lr.ph78

.lr.ph:                                           ; preds = %.preheader59, %bb.l
  %.val15.i = phi i64 [ %.val13.i, %bb.l ], [ %.val18.i, %.preheader59 ]
  %.val14.i = phi ptr [ %.val12.i, %bb.l ], [ %.val17.i, %.preheader59 ]
  %.sroa.01.0.i.i74 = phi i64 [ %i.aw, %bb.l ], [ 2, %.preheader59 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i74 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val12.i = load ptr, ptr %i.ai, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val13.i = load i64, ptr %i.aj, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 2 uses
  %.val.i41 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i42 = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.ak = load ptr, ptr %.val.i41, align 8, !noalias !1507, !nonnull !11, !noundef !11
  %i.al = tail call { ptr, i64 } %i.ak(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1507, !inline_history !1473 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = load ptr, ptr %.val.i41, align 8, !noalias !1507, !nonnull !11, !noundef !11
  %i.ap = tail call { ptr, i64 } %i.ao(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i), !noalias !1507, !inline_history !1473 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  %i.as = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef %i.an, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aq, i64 noundef %i.ar), !noalias !1507 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i42) ], !noalias !1505
  %i.at = load i8, ptr %.val1.i42, align 1, !range !21, !noalias !1507, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  %switch.offset.i.i43 = sub nsw i8 0, %i.as
  %.sroa.0.0.i.i44 = select i1 %i.au, i8 %switch.offset.i.i43, i8 %i.as
  %i.av = icmp eq i8 %.sroa.0.0.i.i44, -1
  br i1 %i.av, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aw = add nuw i64 %.sroa.01.0.i.i74, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %.lr.ph

.lr.ph78:                                         ; preds = %.preheader58, %bb.m
  %.val10.i = phi i64 [ %.val8.i, %bb.m ], [ %.val18.i, %.preheader58 ]
  %.val9.i = phi ptr [ %.val7.i, %bb.m ], [ %.val17.i, %.preheader58 ]
  %.sroa.01.1.i.i77 = phi i64 [ %i.bm, %bb.m ], [ 2, %.preheader58 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i77 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val7.i = load ptr, ptr %i.ay, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %.val8.i = load i64, ptr %i.az, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 2 uses
  %.val.i39 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.ba = load ptr, ptr %.val.i39, align 8, !noalias !1508, !nonnull !11, !noundef !11
  %i.bb = tail call { ptr, i64 } %i.ba(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i), !noalias !1508, !inline_history !1473 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  %i.be = load ptr, ptr %.val.i39, align 8, !noalias !1508, !nonnull !11, !noundef !11
  %i.bf = tail call { ptr, i64 } %i.be(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i), !noalias !1508, !inline_history !1473 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  %i.bi = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bc, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bg, i64 noundef %i.bh), !noalias !1508 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !1505
  %i.bj = load i8, ptr %.val1.i, align 1, !range !21, !noalias !1508, !noundef !11
  %i.bk = trunc nuw i8 %i.bj to i1
  %switch.offset.i.i = sub nsw i8 0, %i.bi
  %.sroa.0.0.i.i40 = select i1 %i.bk, i8 %switch.offset.i.i, i8 %i.bi
  %i.bl = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.bl, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i

bb.m:                                             ; preds = %.lr.ph78
  %i.bm = add nuw i64 %.sroa.01.1.i.i77, 1        ; 2 uses
  %exitcond104.not = icmp eq i64 %i.bm, %i.n
  br i1 %exitcond104.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %.lr.ph78

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i: ; preds = %bb.m, %.lr.ph78, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i74, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i77, %.lr.ph78 ], [ %i.n, %bb.m ] ; 5 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2T_:bb.a

bb.u:                                             ; preds = %bb.s
  %i.db = shl nuw nsw i64 %i.ct, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 384307168202282326) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1479
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cr
  %i.di = or i64 %i.cs, 1
  %i.dj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 384307168202282326) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1479
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.dn = icmp eq i64 %i.cr, 0
  %i.do = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.do, %i.dn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %i.cr) ; 2 uses
  %i.dp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dp, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cr ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cr, %i.cs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dq, ptr %i.cv
  %i.dr = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dr, i1 false), !alias.scope !1511
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dt = getelementptr i8, ptr %.val, i64 8      ; 2 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.0.i = phi ptr [ %i.ep, %.noexc20.i ], [ %i.dq, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.er, %.noexc20.i ], [ %i.ds, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dw, %.noexc20.i ], [ %i.m, %.critedge.i ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val12.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !1510, !noalias !1512, !nonnull !11, !noundef !11
  %i.dy = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val13.i.i = load i64, ptr %i.dy, align 8, !alias.scope !1510, !noalias !1512, !noundef !11
  %i.dz = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val14.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !1509, !noalias !1513 ; 2 uses
  %i.ea = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val15.i.i = load i64, ptr %i.ea, align 8, !alias.scope !1509, !noalias !1513
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !1514, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !1514 ; 2 uses
  %i.eb = load ptr, ptr %.val.i.i.i, align 8, !noalias !1515, !nonnull !11, !noundef !11
  %i.ec = invoke { ptr, i64 } %i.eb(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i.i, i64 noundef %.val13.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1511, !inline_history !1487 ; 2 uses

.noexc.i:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %.val.i.i.i, align 8, !noalias !1515, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  %i.ee = invoke { ptr, i64 } %i.ed(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i.i, i64 noundef %.val15.i.i)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !1511, !inline_history !1487 ; 2 uses

.noexc19.i:                                       ; preds = %.noexc.i
  %i.ef = extractvalue { ptr, i64 } %i.ec, 1
  %i.eg = extractvalue { ptr, i64 } %i.ec, 0
  %i.eh = extractvalue { ptr, i64 } %i.ee, 0
  %i.ei = extractvalue { ptr, i64 } %i.ee, 1
  %i.ej = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
          to label %.noexc20.i unwind label %.loopexit.i, !noalias !1511 ; 2 uses

.noexc20.i:                                       ; preds = %.noexc19.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.ek = load i8, ptr %.val1.i.i.i, align 1, !range !21, !noalias !1515, !noundef !11
  %i.el = trunc nuw i8 %i.ek to i1
  %switch.offset.i.i.i.i = sub nsw i8 0, %i.ej
  %.sroa.0.0.i.i.i.i = select i1 %i.el, i8 %switch.offset.i.i.i.i, i8 %i.ej
  %i.em = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i18.i = select i1 %i.em, ptr %i.du, ptr %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %..i18.i, i64 24, i1 false), !alias.scope !1511, !noalias !1516
  %i.en = xor i1 %i.em, true
  %i.eo = zext i1 %i.en to i64
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.eo ; 3 uses
  %i.eq = zext i1 %i.em to i64
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.eq ; 3 uses
  %i.es = icmp eq ptr %i.ep, %i.cv
  %i.et = icmp eq ptr %i.er, %2
  %or.cond.i.i = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB3l_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc29.i
  %.sroa.13.1.i = phi ptr [ %i.fp, %.noexc29.i ], [ %i.cv, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.fm, %.noexc29.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fo, %.noexc29.i ], [ %i.dq, %.critedge.i ] ; 4 uses
  %i.eu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !1509, !noalias !1517, !nonnull !11, !noundef !11
  %i.ev = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ev, align 8, !alias.scope !1509, !noalias !1517, !noundef !11
  %i.ew = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val7.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !1510, !noalias !1518 ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val8.i.i = load i64, ptr %i.ex, align 8, !alias.scope !1510, !noalias !1518
  %.val.i.i22.i = load ptr, ptr %.val, align 8, !noalias !1519, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i.i23.i = load ptr, ptr %i.dt, align 8, !noalias !1519 ; 2 uses
  %i.ey = load ptr, ptr %.val.i.i22.i, align 8, !noalias !1520, !nonnull !11, !noundef !11
  %i.ez = invoke { ptr, i64 } %i.ey(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i)
          to label %.noexc27.i unwind label %.loopexit.split-lp.i, !noalias !1511, !inline_history !1492 ; 2 uses

.noexc27.i:                                       ; preds = %.lr.ph.i.i
  %i.fa = load ptr, ptr %.val.i.i22.i, align 8, !noalias !1520, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.fb = invoke { ptr, i64 } %i.fa(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i.i, i64 noundef %.val8.i.i)
          to label %.noexc28.i unwind label %.loopexit.split-lp.i, !noalias !1511, !inline_history !1492 ; 2 uses

.noexc28.i:                                       ; preds = %.noexc27.i
  %i.fc = extractvalue { ptr, i64 } %i.ez, 1
  %i.fd = extractvalue { ptr, i64 } %i.ez, 0
  %i.fe = extractvalue { ptr, i64 } %i.fb, 0
  %i.ff = extractvalue { ptr, i64 } %i.fb, 1
  %i.fg = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fd, i64 noundef %i.fc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !noalias !1511 ; 2 uses

.noexc29.i:                                       ; preds = %.noexc28.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i23.i) ]
  %i.fh = load i8, ptr %.val1.i.i23.i, align 1, !range !21, !noalias !1520, !noundef !11
  %i.fi = trunc nuw i8 %i.fh to i1
  %switch.offset.i.i.i24.i = sub nsw i8 0, %i.fg
  %.sroa.0.0.i.i.i25.i = select i1 %i.fi, i8 %switch.offset.i.i.i24.i, i8 %i.fg
  %i.fj = icmp eq i8 %.sroa.0.0.i.i.i25.i, -1     ; 3 uses
  %i.fk = xor i1 %i.fj, true
  %.sroa.05.0.i.i = select i1 %i.fj, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1511, !noalias !1521
  %i.fl = zext i1 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.fl ; 3 uses
  %i.fn = zext i1 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.fq = icmp ne ptr %i.fm, %i.ds
  %i.fr = icmp ne ptr %i.fo, %i.m
  %or.cond.i26.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond.i26.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB3l_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB3l_.exit.i: ; preds = %.noexc29.i, %.noexc20.i
  %.sroa.13.4.i = phi ptr [ %i.ep, %.noexc20.i ], [ %i.fp, %.noexc29.i ]
  %.sroa.7.2.i = phi ptr [ %i.er, %.noexc20.i ], [ %i.ds, %.noexc29.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc20.i ], [ %i.fm, %.noexc29.i ] ; 2 uses
  %i.fs = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ft = ptrtoint ptr %.sroa.0.3.i to i64
  %i.fu = sub nuw i64 %i.fs, %i.ft
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.fu, i1 false), !alias.scope !1511, !noalias !1522
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit

.loopexit.i:                                      ; preds = %.noexc19.i, %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc28.i, %.noexc27.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ds, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.fw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.fx = sub nuw i64 %i.fv, %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.fx, i1 false), !alias.scope !1511, !noalias !1523
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB3l_.exit.i
  %i.fy = shl nuw nsw i64 %i.ct, 1
  %i.fz = or disjoint i64 %i.fy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit
  %.sroa.0.0.i = phi i64 [ %i.fz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit ], [ %i.db, %bb.u ] ; 2 uses
  %i.ga = icmp ugt i64 %i.ck, 1
  br i1 %i.ga, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.gb = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.gc = lshr i64 %.sroa.018.0, 1
  %i.gd = add nuw i64 %i.gc, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ge = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ge, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gf = or i64 %1, 1
  %i.gg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.gf, i1 true)
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = shl nuw nsw i32 %i.gh, 1
  %i.gj = xor i32 %i.gi, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.gj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1479
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvBY_19sort_and_prioritizes_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ap, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ii, %bb.ap ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ig, %bb.ap ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.dw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph113, label %._crit_edge

.lr.ph113:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 15 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.w, label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593), !noalias !1592
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 107
  %i.s = load i8, ptr %i.r, align 1, !range !22, !alias.scope !1594, !noalias !1595, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 51
  %i.u = load i8, ptr %i.t, align 1, !range !22, !alias.scope !1596, !noalias !1597, !noundef !11 ; 2 uses
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.x = load i16, ptr %i.w, align 8, !alias.scope !1594, !noalias !1595, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.z = load i16, ptr %i.y, align 8, !alias.scope !1596, !noalias !1597, !noundef !11
  %i.aa = trunc i16 %i.x to i8
  %i.ab = lshr i8 %i.aa, 6
  %i.ac = and i8 %i.ab, 1
  %i.ad = trunc i16 %i.z to i8
  %6 = shl i8 %i.ad, 1
  %7 = ashr i8 %6, 7
  %8 = add nsw i8 %7, %i.ac
  switch i8 %8, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader
    i8 0, label %bb.m
    i8 1, label %.split52.preheader
  ]

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader: ; preds = %.split, %switch.lookup.i.i47, %bb.l
  %.not120 = icmp eq i64 %i.n, 2
  br i1 %.not120, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph102

.split:                                           ; preds = %bb.k
  %i.ae = icmp samesign ult i8 %i.s, %i.u
  br i1 %i.ae, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, label %.split52.preheader

default.unreachable:                              ; preds = %bb.l, %bb.o, %bb.r, %bb.al, %bb.ai
  unreachable

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599), !noalias !1592
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1600, !noalias !1601, !noundef !11 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ah), !noalias !1592
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %.split52.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1602, !noalias !1603, !noundef !11 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 2305843009213693952
  tail call void @llvm.assume(i1 %i.al), !noalias !1592
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %.split52.preheader, label %switch.lookup.i.i47

switch.lookup.i.i47:                              ; preds = %bb.n
  %i.an = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q, i32 noundef 126), !noalias !1601
  %i.ao = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, i32 noundef 126), !noalias !1592
  %i.ap = xor i1 %i.an, true
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, label %.split52.preheader

.split52.preheader:                               ; preds = %bb.m, %bb.n, %.split, %switch.lookup.i.i47, %bb.l
  %.not119 = icmp eq i64 %i.n, 2
  br i1 %.not119, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split52.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread
  %.sroa.01.0.i.i97 = phi i64 [ %i.bv, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ], [ 2, %.split52.preheader ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 4 uses
  %i.as = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.n
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.as ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607), !noalias !1592
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 51
  %i.aw = load i8, ptr %i.av, align 1, !range !22, !alias.scope !1608, !noalias !1609, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 51
  %i.ay = load i8, ptr %i.ax, align 1, !range !22, !alias.scope !1610, !noalias !1611, !noundef !11 ; 2 uses
  %i.az = icmp eq i8 %i.aw, %i.ay
  br i1 %i.az, label %bb.o, label %.split56

bb.o:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bb = load i16, ptr %i.ba, align 8, !alias.scope !1608, !noalias !1609, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bd = load i16, ptr %i.bc, align 8, !alias.scope !1610, !noalias !1611, !noundef !11
  %i.be = trunc i16 %i.bb to i8
  %i.bf = lshr i8 %i.be, 6
  %i.bg = and i8 %i.bf, 1
  %i.bh = trunc i16 %i.bd to i8
  %9 = shl i8 %i.bh, 1
  %10 = ashr i8 %9, 7
  %11 = add nsw i8 %10, %i.bg
  switch i8 %11, label %default.unreachable [
    i8 -1, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
    i8 0, label %bb.p
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread
  ]

.split56:                                         ; preds = %.lr.ph
  %i.bi = icmp samesign ult i8 %i.aw, %i.ay
  br i1 %i.bi, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613), !noalias !1592
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1614, !noalias !1615, !noundef !11 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bl), !noalias !1592
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1616, !noalias !1617, !noundef !11 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bp), !noalias !1592
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45: ; preds = %bb.q
  %i.br = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ar, i32 noundef 126), !noalias !1615
  %i.bs = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, i32 noundef 126), !noalias !1592
  %i.bt = xor i1 %i.br, true
  %i.bu = and i1 %i.bs, %i.bt
  br i1 %i.bu, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread: ; preds = %bb.o, %bb.p, %bb.q, %.split56, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45
  %i.bv = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph

.lr.ph102:                                        ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58
  %.sroa.01.1.i.i101 = phi i64 [ %i.da, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ] ; 8 uses
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i101 ; 4 uses
  %i.bx = add nsw i64 %.sroa.01.1.i.i101, -1      ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.n
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621), !noalias !1592
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 51
  %i.cb = load i8, ptr %i.ca, align 1, !range !22, !alias.scope !1622, !noalias !1623, !noundef !11 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 51
  %i.cd = load i8, ptr %i.cc, align 1, !range !22, !alias.scope !1624, !noalias !1625, !noundef !11 ; 2 uses
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %bb.r, label %.split60

bb.r:                                             ; preds = %.lr.ph102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.cg = load i16, ptr %i.cf, align 8, !alias.scope !1622, !noalias !1623, !noundef !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ci = load i16, ptr %i.ch, align 8, !alias.scope !1624, !noalias !1625, !noundef !11
  %i.cj = trunc i16 %i.cg to i8
  %i.ck = lshr i8 %i.cj, 6
  %i.cl = and i8 %i.ck, 1
  %i.cm = trunc i16 %i.ci to i8
  %12 = shl i8 %i.cm, 1
  %13 = ashr i8 %12, 7
  %14 = add nsw i8 %13, %i.cl
  switch i8 %14, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58
    i8 0, label %bb.s
    i8 1, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
  ]

.split60:                                         ; preds = %.lr.ph102
  %i.cn = icmp samesign ult i8 %i.cb, %i.cd
  br i1 %i.cn, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627), !noalias !1592
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1628, !noalias !1629, !noundef !11 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cq), !noalias !1592
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1630, !noalias !1631, !noundef !11 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cu), !noalias !1592
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.t
  %i.cw = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bw, i32 noundef 126), !noalias !1629
  %i.cx = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bz, i32 noundef 126), !noalias !1592
  %i.cy = xor i1 %i.cw, true
  %i.cz = and i1 %i.cx, %i.cy
  br i1 %i.cz, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58: ; preds = %bb.r, %.split60, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.da = add nuw i64 %.sroa.01.1.i.i101, 1       ; 2 uses
  %exitcond141.not = icmp eq i64 %i.da, %i.n
  br i1 %exitcond141.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph102

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45, %.split56, %bb.o, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, %.split60, %bb.t, %bb.s, %bb.r, %.split52.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ], [ false, %.split52.preheader ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.t ], [ true, %.split60 ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit ], [ false, %bb.o ], [ false, %.split56 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ]
  %.sroa.0.0.i.i = phi i64 [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ], [ 2, %.split52.preheader ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ %.sroa.01.1.i.i101, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit ], [ %.sroa.01.1.i.i101, %.split60 ], [ %.sroa.01.1.i.i101, %bb.t ], [ %.sroa.01.1.i.i101, %bb.s ], [ %.sroa.01.1.i.i101, %bb.r ], [ %.sroa.01.0.i.i97, %.split56 ], [ %.sroa.01.0.i.i97, %bb.o ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45 ] ; 7 uses
  %i.db = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.db)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit

bb.v:                                             ; preds = %bb.i
  %..i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.dc = shl nuw nsw i64 %..i39, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

bb.w:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i38, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1554
  %i.dd = shl nuw nsw i64 %..i38, 1
  %i.de = or disjoint i64 %i.dd, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %bb.j, %bb.x, %bb.u
  %.sroa.0.0.i.i6568 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ]
  %i.df = shl nuw nsw i64 %.sroa.0.0.i.i6568, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

bb.x:                                             ; preds = %bb.u
  %i.dh = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i36 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i36, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.dn, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dj = xor i64 %.sroa.0.017.i.i, -1
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.dl = getelementptr [56 x i8], ptr %i.di, i64 %i.dj
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, i64 noundef 7)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i unwind label %bb.y, !noalias !1592

bb.y:                                             ; preds = %.lr.ph.i.i37
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1592
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.dn = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %i.dh
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit: ; preds = %bb.v, %bb.w, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.dg, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit ], [ %i.de, %bb.w ], [ %i.dc, %bb.v ] ; 2 uses
  %i.do = lshr i64 %.sroa.023.0, 1
  %i.dp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dq = sub nsw i64 %factor, %i.do
  %i.dr = add nuw nsw i64 %i.dp, %factor
  %i.ds = mul i64 %i.dq, %.sroa.0.0
  %i.dt = mul i64 %i.dr, %.sroa.0.0
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 false)
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  br label %bb.g

bb.z:                                             ; preds = %.lr.ph113, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit
  %.sroa.02.1112 = phi i64 [ %.sroa.02.0, %.lr.ph113 ], [ %i.dx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.1111 = phi i64 [ %.sroa.023.0, %.lr.ph113 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 4 uses
  %i.dx = add i64 %.sroa.02.1112, -1              ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.dz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit, %bb.z, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1111, %bb.z ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1112, %bb.z ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.eb, align 1
  br i1 %i.k, label %bb.ap, label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dx
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !11 ; 3 uses
  %i.ee = lshr i64 %i.ed, 1                       ; 8 uses
  %i.ef = lshr i64 %.sroa.023.1111, 1             ; 6 uses
  %i.eg = add nuw i64 %i.ee, %i.ef                ; 4 uses
  %i.eh = sub i64 %.sroa.09.0, %i.eg
  %i.ei = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.eh ; 6 uses
  %i.ej = icmp samesign ugt i64 %i.eg, %3
  %i.ek = trunc i64 %.sroa.023.1111 to i1
  %i.el = or i64 %i.ed, %.sroa.023.1111
  %i.em = trunc i64 %i.el to i1
  %or.cond3.i = or i1 %i.ej, %i.em
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = trunc i64 %i.ed to i1
  br i1 %i.en, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.eo = shl nuw nsw i64 %i.eg, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.ek, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ep = or i64 %i.ee, 1
  %i.eq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 1
  %i.et = xor i32 %i.es, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ei, i64 noundef range(i64 0, 164703072086692426) %i.ee, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %i.ee
  %i.ev = or i64 %i.ef, 1
  %i.ew = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.eu, i64 noundef range(i64 0, 164703072086692426) %i.ef, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.fa = icmp eq i64 %i.ee, 0
  %i.fb = icmp eq i64 %i.ef, 0
  %or.cond.i = or i1 %i.fb, %i.fa
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 range(i64 0, -9223372036854775808) %i.ee) ; 2 uses
  %i.fc = icmp samesign ult i64 %3, %..i.i
  br i1 %i.fc, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %i.ee ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.ee, %i.ef  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.fd, ptr %i.ei
  %i.fe = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.fe, i1 false), !alias.scope !1634
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %.sroa.13.0.i = phi ptr [ %i.gm, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.fd, %.critedge.i ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ %i.go, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.ff, %.critedge.i ] ; 5 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.fi, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.fg = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 7 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %i.fj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -5
  %i.fk = load i8, ptr %i.fj, align 1, !range !22, !alias.scope !1639, !noalias !1640, !noundef !11 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -5
  %i.fm = load i8, ptr %i.fl, align 1, !range !22, !alias.scope !1641, !noalias !1642, !noundef !11 ; 2 uses
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br i1 %i.fn, label %bb.ai, label %.split.i.i

bb.ai:                                            ; preds = %.preheader.i
  %i.fo = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8
  %i.fp = load i16, ptr %i.fo, align 8, !alias.scope !1639, !noalias !1640, !noundef !11
  %i.fq = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.fr = load i16, ptr %i.fq, align 8, !alias.scope !1641, !noalias !1642, !noundef !11
  %i.fs = trunc i16 %i.fp to i8
  %i.ft = lshr i8 %i.fs, 6
  %i.fu = and i8 %i.ft, 1
  %i.fv = trunc i16 %i.fr to i8
  %15 = shl i8 %i.fv, 1
  %16 = ashr i8 %15, 7
  %17 = add nsw i8 %16, %i.fu
  switch i8 %17, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i
    i8 0, label %bb.aj
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  ]

.split.i.i:                                       ; preds = %.preheader.i
  %i.fw = icmp samesign ult i8 %i.fk, %i.fm
  br i1 %i.fw, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.fx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -40
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !1645, !noalias !1646, !noundef !11 ; 2 uses
  %i.fz = icmp ult i64 %i.fy, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -40
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1647, !noalias !1648, !noundef !11 ; 2 uses
  %i.gd = icmp ult i64 %i.gc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp eq i64 %i.gc, 0
  br i1 %i.ge, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i: ; preds = %bb.ak
  %i.gf = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, i32 noundef 126)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i
  %i.gg = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fg, i32 noundef 126)
          to label %.noexc17.i unwind label %.loopexit.i

.noexc17.i:                                       ; preds = %.noexc.i
  %i.gh = xor i1 %i.gf, true
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i: ; preds = %.noexc17.i, %.split.i.i, %bb.ai
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i, %.noexc17.i, %bb.ak, %bb.aj, %.split.i.i, %bb.ai
  %.sroa.0.0.i.i3.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i ], [ false, %.noexc17.i ], [ false, %.split.i.i ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ] ; 2 uses
  %i.gj = phi ptr [ %i.fg, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i ], [ %i.fh, %.noexc17.i ], [ %i.fh, %.split.i.i ], [ %i.fh, %bb.ak ], [ %i.fh, %bb.aj ], [ %i.fh, %bb.ai ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, ptr noundef nonnull align 8 dereferenceable(56) %i.gj, i64 56, i1 false), !alias.scope !1634, !noalias !1649
  %i.gk = xor i1 %.sroa.0.0.i.i3.i.i, true
  %i.gl = zext i1 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [56 x i8], ptr %i.fg, i64 %i.gl ; 3 uses
  %i.gn = zext i1 %.sroa.0.0.i.i3.i.i to i64
  %i.go = getelementptr inbounds nuw [56 x i8], ptr %i.fh, i64 %i.gn ; 3 uses
  %i.gp = icmp eq ptr %i.gm, %i.ei
  %i.gq = icmp eq ptr %i.go, %2
  %or.cond.i.i = select i1 %i.gp, i1 true, i1 %i.gq
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i
  %.sroa.13.1.i = phi ptr [ %i.hu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ], [ %i.ei, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.hs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ], [ %2, %.critedge.i ] ; 11 uses
  %.sroa.0.010.i.i = phi ptr [ %i.ht, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ], [ %i.fd, %.critedge.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 51
  %i.gs = load i8, ptr %i.gr, align 1, !range !22, !alias.scope !1654, !noalias !1655, !noundef !11 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 51
  %i.gu = load i8, ptr %i.gt, align 1, !range !22, !alias.scope !1656, !noalias !1657, !noundef !11 ; 2 uses
  %i.gv = icmp eq i8 %i.gs, %i.gu
  br i1 %i.gv, label %bb.al, label %.split.i19.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 48
  %i.gx = load i16, ptr %i.gw, align 8, !alias.scope !1654, !noalias !1655, !noundef !11
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 48
  %i.gz = load i16, ptr %i.gy, align 8, !alias.scope !1656, !noalias !1657, !noundef !11
  %i.ha = trunc i16 %i.gx to i8
  %i.hb = lshr i8 %i.ha, 6
  %i.hc = and i8 %i.hb, 1
  %i.hd = trunc i16 %i.gz to i8
  %18 = shl i8 %i.hd, 1
  %19 = ashr i8 %18, 7
  %20 = add nsw i8 %19, %i.hc
  switch i8 %20, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i
    i8 0, label %bb.am
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i
  ]

.split.i19.i:                                     ; preds = %.lr.ph.i.i
  %.not.i.i = icmp samesign ult i8 %i.gs, %i.gu
  br i1 %.not.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1660, !noalias !1661, !noundef !11 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp eq i64 %i.hf, 0
  br i1 %i.hh, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1662, !noalias !1663, !noundef !11 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp eq i64 %i.hj, 0
  br i1 %i.hl, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i: ; preds = %bb.an
  %i.hm = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.010.i.i, i32 noundef 126)
          to label %.noexc26.i unwind label %.loopexit.split-lp.i

.noexc26.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i
  %i.hn = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0.i34, i32 noundef 126)
          to label %.noexc27.i unwind label %.loopexit.split-lp.i

.noexc27.i:                                       ; preds = %.noexc26.i
  %i.ho = xor i1 %i.hm, true
  %i.hp = and i1 %i.hn, %i.ho
  br i1 %i.hp, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i: ; preds = %.noexc27.i, %.split.i19.i, %bb.al
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i, %.noexc27.i, %bb.an, %bb.am, %.split.i19.i, %bb.al
  %i.hq = phi i64 [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ 1, %.noexc27.i ], [ 1, %.split.i19.i ], [ 1, %bb.an ], [ 1, %bb.am ], [ 1, %bb.al ]
  %.sroa.0.0.i.i3.i21.i = phi i64 [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ 0, %.noexc27.i ], [ 0, %.split.i19.i ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.al ]
  %i.hr = phi ptr [ %.sroa.0.010.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ %.sroa.0.0.i34, %.noexc27.i ], [ %.sroa.0.0.i34, %.split.i19.i ], [ %.sroa.0.0.i34, %bb.an ], [ %.sroa.0.0.i34, %bb.am ], [ %.sroa.0.0.i34, %bb.al ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(56) %i.hr, i64 56, i1 false), !alias.scope !1634, !noalias !1664
  %i.hs = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i34, i64 %i.hq ; 3 uses
  %i.ht = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.010.i.i, i64 %.sroa.0.0.i.i3.i21.i ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 56 ; 2 uses
  %i.hv = icmp ne ptr %i.hs, %i.ff
  %i.hw = icmp ne ptr %i.ht, %i.m
  %or.cond.i22.i = select i1 %i.hv, i1 %i.hw, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %.sroa.13.4.i = phi ptr [ %i.gm, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.hu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ]
  %.sroa.7.2.i = phi ptr [ %i.go, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.ff, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.hs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ] ; 2 uses
  %i.hx = ptrtoint ptr %.sroa.7.2.i to i64
  %i.hy = ptrtoint ptr %.sroa.0.3.i to i64
  %i.hz = sub nuw i64 %i.hx, %i.hy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.hz, i1 false), !alias.scope !1634, !noalias !1665
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %.noexc26.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ff, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ia = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ib = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ic = sub nuw i64 %i.ia, %i.ib
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.ic, i1 false), !alias.scope !1634, !noalias !1666
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit: ; preds = %bb.ag, %bb.ah, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i
  %i.id = shl nuw nsw i64 %i.eg, 1
  %i.ie = or disjoint i64 %i.id, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit: ; preds = %bb.ac, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.ie, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.if = icmp ugt i64 %i.dx, 1
  br i1 %i.if, label %bb.z, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.ig = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ih = lshr i64 %.sroa.018.0, 1
  %i.ii = add nuw i64 %i.ih, %.sroa.09.0
  br label %bb.f

bb.aq:                                            ; preds = %._crit_edge
  %i.ij = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ij, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ik = or i64 %1, 1
  %i.il = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ik, i1 true)
  %i.im = trunc nuw nsw i64 %i.il to i32
  %i.in = shl nuw nsw i32 %i.im, 1
  %i.io = xor i32 %i.in, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.io, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvMs0_NtB10_6expandNtB2w_8Expander15stage_wildcardss_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 72
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1688, !noalias !1689, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1690
  %i.v = icmp ne i8 %i.u, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1690
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1690
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1671
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [56 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 7)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i unwind label %bb.q, !noalias !1689

end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvMs0_NtB10_6expandNtB2w_8Expander15stage_wildcardss_0E0EB10_:bb.a
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 164703072086692426) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 164703072086692426) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1693
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -48
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1692, !noalias !1694, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -40
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1692, !noalias !1694, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -48
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1691, !noalias !1695, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -40
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1691, !noalias !1695, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1693

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 2 uses
  %i.cw = icmp eq i8 %i.cs, -1                    ; 3 uses
  %..i17.i = select i1 %i.cw, ptr %i.cv, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %..i17.i, i64 56, i1 false), !alias.scope !1693, !noalias !1696
  %i.cx = xor i1 %i.cw, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.cu, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bq
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.noexc21.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dm, %.noexc21.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.noexc21.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %i.de = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !1691, !noalias !1697, !nonnull !11, !noundef !11
  %i.df = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.df, align 8, !alias.scope !1691, !noalias !1697, !noundef !11
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val.i19.i = load ptr, ptr %i.dg, align 8, !alias.scope !1692, !noalias !1698, !nonnull !11, !noundef !11
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val7.i.i = load i64, ptr %i.dh, align 8, !alias.scope !1692, !noalias !1698, !noundef !11
  %i.di = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i19.i, i64 noundef %.val7.i.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !1693

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dj = icmp eq i8 %i.di, -1                    ; 3 uses
  %i.dk = xor i1 %i.dj, true
  %.sroa.05.0.i.i = select i1 %i.dj, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i.i, i64 56, i1 false), !alias.scope !1693, !noalias !1699
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i34, i64 %i.dl ; 3 uses
  %i.dn = zext i1 %i.dj to i64
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 56 ; 2 uses
  %i.dq = icmp ne ptr %i.dm, %i.cn
  %i.dr = icmp ne ptr %i.do, %i.m
  %or.cond.i20.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.dp, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dm, %.noexc21.i ] ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.3.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.du, i1 false), !alias.scope !1693, !noalias !1700
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cn, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dx, i1 false), !alias.scope !1693, !noalias !1701
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNvBY_27natural_compare_completionsE0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.al, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.al ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gp, %bb.al ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gn, %bb.al ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.cu, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773), !noalias !1770
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = load i16, ptr %i.q, align 8, !alias.scope !1774, !noalias !1775, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !1776, !noalias !1777, !noundef !11 ; 2 uses
  %i.u = and i16 %i.r, 32                         ; 2 uses
  %i.v = and i16 %i.u, %i.t
  %.not.i.i.i44 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i.i44, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  %.not1.i.i.i46 = icmp eq i16 %i.u, 0
  br i1 %.not1.i.i.i46, label %bb.m, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader: ; preds = %.split, %bb.l
  %.not100 = icmp eq i64 %i.n, 2
  br i1 %.not100, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph85

bb.m:                                             ; preds = %bb.l
  %i.w = and i16 %i.t, 32
  %.not2.i.i.i47 = icmp eq i16 %i.w, 0
  br i1 %.not2.i.i.i47, label %.split, label %.preheader

.split:                                           ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1774, !noalias !1775, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1774, !noalias !1775, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1776, !noalias !1777, !nonnull !11, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1776, !noalias !1777, !noundef !11
  %i.af = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef %i.ae), !noalias !1778
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader, label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.k, %.split
  %.not99 = icmp eq i64 %i.n, 2
  br i1 %.not99, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread
  %.sroa.01.0.i.i80 = phi i64 [ %i.bc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread ], [ 2, %.preheader ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i80 ; 3 uses
  %i.ai = add nsw i64 %.sroa.01.0.i.i80, -1       ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.n
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.ai ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784), !noalias !1770
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load i16, ptr %i.al, align 8, !alias.scope !1785, !noalias !1786, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ao = load i16, ptr %i.an, align 8, !alias.scope !1787, !noalias !1788, !noundef !11 ; 2 uses
  %i.ap = and i16 %i.am, 32                       ; 2 uses
  %i.aq = and i16 %i.ap, %i.ao
  %.not.i.i.i39 = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i39, label %bb.n, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

bb.n:                                             ; preds = %.lr.ph
  %.not1.i.i.i41 = icmp eq i16 %i.ap, 0
  br i1 %.not1.i.i.i41, label %bb.o, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ar = and i16 %i.ao, 32
  %.not2.i.i.i42 = icmp eq i16 %i.ar, 0
  br i1 %.not2.i.i.i42, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1785, !noalias !1786, !nonnull !11, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1785, !noalias !1786, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1787, !noalias !1788, !nonnull !11, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1787, !noalias !1788, !noundef !11
  %i.ba = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ax, i64 noundef %i.az), !noalias !1789
  %i.bb = icmp eq i8 %i.ba, -1
  br i1 %i.bb, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread: ; preds = %bb.o, %.lr.ph, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43
  %i.bc = add nuw i64 %.sroa.01.0.i.i80, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph

.lr.ph85:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55
  %.sroa.01.1.i.i84 = phi i64 [ %i.by, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55 ], [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i84 ; 3 uses
  %i.be = add nsw i64 %.sroa.01.1.i.i84, -1       ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.n
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.be ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795), !noalias !1770
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load i16, ptr %i.bh, align 8, !alias.scope !1796, !noalias !1797, !noundef !11
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNvBY_27natural_compare_completionsE0EB10_:bb.a
  %i.dr = xor i32 %i.dq, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dg, i64 noundef range(i64 0, 164703072086692426) %i.dc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.dc
  %i.dt = or i64 %i.dd, 1
  %i.du = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ds, i64 noundef range(i64 0, 164703072086692426) %i.dd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.dy = icmp eq i64 %i.dc, 0
  %i.dz = icmp eq i64 %i.dd, 0
  %or.cond.i = or i1 %i.dz, %i.dy
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 range(i64 0, -9223372036854775808) %i.dc) ; 2 uses
  %i.ea = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ea, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.dc ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dc, %i.dd  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eb, ptr %i.dg
  %i.ec = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ec, i1 false), !alias.scope !1803
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.ec ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i
  %.sroa.13.0.i = phi ptr [ %i.fb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.eb, %.critedge.i ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ %i.fd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.ed, %.critedge.i ] ; 5 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.eg, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.m, %.critedge.i ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.eh = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8
  %i.ei = load i16, ptr %i.eh, align 8, !alias.scope !1810, !noalias !1811, !noundef !11
  %i.ej = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.ek = load i16, ptr %i.ej, align 8, !alias.scope !1812, !noalias !1813, !noundef !11 ; 2 uses
  %i.el = and i16 %i.ei, 32                       ; 2 uses
  %i.em = and i16 %i.el, %i.ek
  %.not.i.i.i.i.i = icmp eq i16 %i.em, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

bb.af:                                            ; preds = %.preheader.i
  %.not1.i.i.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not1.i.i.i.i.i, label %bb.ag, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

bb.ag:                                            ; preds = %bb.af
  %i.en = and i16 %i.ek, 32
  %.not2.i.i.i.i.i = icmp eq i16 %i.en, 0
  br i1 %.not2.i.i.i.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i: ; preds = %bb.ag
  %i.eo = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -48
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !1810, !noalias !1811, !nonnull !11, !noundef !11
  %i.eq = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -40
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !1810, !noalias !1811, !noundef !11
  %i.es = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -48
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !1812, !noalias !1813, !nonnull !11, !noundef !11
  %i.eu = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -40
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !1812, !noalias !1813, !noundef !11
  %i.ew = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ep, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1803

.noexc.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i
  %i.ex = icmp eq i8 %i.ew, -1                    ; 2 uses
  %spec.select6.i.i = select i1 %i.ex, ptr %i.ee, ptr %i.ef
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i: ; preds = %.noexc.i, %bb.ag, %bb.af, %.preheader.i
  %.sroa.0.0.i.i.i2.i.i = phi i1 [ true, %bb.af ], [ %i.ex, %.noexc.i ], [ false, %bb.ag ], [ false, %.preheader.i ] ; 2 uses
  %i.ey = phi ptr [ %i.ee, %bb.af ], [ %spec.select6.i.i, %.noexc.i ], [ %i.ef, %bb.ag ], [ %i.ef, %.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 8 dereferenceable(56) %i.ey, i64 56, i1 false), !alias.scope !1803, !noalias !1814
  %i.ez = xor i1 %.sroa.0.0.i.i.i2.i.i, true
  %i.fa = zext i1 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [56 x i8], ptr %i.ee, i64 %i.fa ; 3 uses
  %i.fc = zext i1 %.sroa.0.0.i.i.i2.i.i to i64
  %i.fd = getelementptr inbounds nuw [56 x i8], ptr %i.ef, i64 %i.fc ; 3 uses
  %i.fe = icmp eq ptr %i.fb, %i.dg
  %i.ff = icmp eq ptr %i.fd, %2
  %or.cond.i.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i
  %.sroa.13.1.i = phi ptr [ %i.gb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ], [ %i.dg, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.fz, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ], [ %2, %.critedge.i ] ; 8 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ga, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ], [ %i.eb, %.critedge.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 48
  %i.fh = load i16, ptr %i.fg, align 8, !alias.scope !1821, !noalias !1822, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 48
  %i.fj = load i16, ptr %i.fi, align 8, !alias.scope !1823, !noalias !1824, !noundef !11 ; 2 uses
  %i.fk = and i16 %i.fh, 32                       ; 2 uses
  %i.fl = and i16 %i.fk, %i.fj
  %.not.i.i.i.i18.i = icmp eq i16 %i.fl, 0
  br i1 %.not.i.i.i.i18.i, label %bb.ah, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  %.not1.i.i.i.i22.i = icmp eq i16 %i.fk, 0
  br i1 %.not1.i.i.i.i22.i, label %bb.ai, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

bb.ai:                                            ; preds = %bb.ah
  %i.fm = and i16 %i.fj, 32
  %.not2.i.i.i.i23.i = icmp eq i16 %i.fm, 0
  br i1 %.not2.i.i.i.i23.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i: ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !1821, !noalias !1822, !nonnull !11, !noundef !11
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1821, !noalias !1822, !noundef !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !1823, !noalias !1824, !nonnull !11, !noundef !11
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !1823, !noalias !1824, !noundef !11
  %i.fv = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fo, i64 noundef %i.fq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fs, i64 noundef %i.fu)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !1803

.noexc25.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %bb.aj, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

bb.aj:                                            ; preds = %.noexc25.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i: ; preds = %bb.aj, %.noexc25.i, %bb.ai, %bb.ah, %.lr.ph.i.i
  %i.fx = phi i64 [ 0, %bb.ah ], [ 1, %.noexc25.i ], [ 0, %bb.aj ], [ 1, %.lr.ph.i.i ], [ 1, %bb.ai ]
  %.sroa.0.0.i.i.i2.i20.i = phi i64 [ 1, %bb.ah ], [ 0, %.noexc25.i ], [ 1, %bb.aj ], [ 0, %.lr.ph.i.i ], [ 0, %bb.ai ]
  %i.fy = phi ptr [ %.sroa.0.07.i.i, %bb.ah ], [ %.sroa.0.0.i34, %.noexc25.i ], [ %.sroa.0.07.i.i, %bb.aj ], [ %.sroa.0.0.i34, %.lr.ph.i.i ], [ %.sroa.0.0.i34, %bb.ai ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(56) %i.fy, i64 56, i1 false), !alias.scope !1803, !noalias !1825
  %i.fz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i34, i64 %i.fx ; 3 uses
  %i.ga = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.07.i.i, i64 %.sroa.0.0.i.i.i2.i20.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 56 ; 2 uses
  %i.gc = icmp ne ptr %i.fz, %i.ed
  %i.gd = icmp ne ptr %i.ga, %i.m
  %or.cond.i21.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i
  %.sroa.13.4.i = phi ptr [ %i.fb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.gb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ]
  %.sroa.7.2.i = phi ptr [ %i.fd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.ed, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.fz, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ] ; 2 uses
  %i.ge = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gf = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gg = sub nuw i64 %i.ge, %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gg, i1 false), !alias.scope !1803, !noalias !1826
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit

.loopexit.i:                                      ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp.i:                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ed, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gh = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gi = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gj = sub nuw i64 %i.gh, %i.gi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gj, i1 false), !alias.scope !1803, !noalias !1827
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit: ; preds = %bb.ad, %bb.ae, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i
  %i.gk = shl nuw nsw i64 %i.de, 1
  %i.gl = or disjoint i64 %i.gk, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit: ; preds = %bb.z, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.gl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit ], [ %i.dm, %bb.z ] ; 2 uses
  %i.gm = icmp ugt i64 %i.cv, 1
  br i1 %i.gm, label %bb.w, label %._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.gn = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.go = lshr i64 %.sroa.018.0, 1
  %i.gp = add nuw i64 %i.go, %.sroa.09.0
  br label %bb.f

bb.am:                                            ; preds = %._crit_edge
  %i.gq = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gq, 0
  br i1 %.not30, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gr = or i64 %1, 1
  %i.gs = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.gr, i1 true)
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 1
  %i.gv = xor i32 %i.gu, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.gv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1849, !noalias !1850, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1851
  %i.v = icmp ne i8 %i.u, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1851
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1851
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1832
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [24 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1850

end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2F_:bb.a
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1854
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1853, !noalias !1855, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1853, !noalias !1855, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1852, !noalias !1856, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1852, !noalias !1856, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1854

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.cw = icmp eq i8 %i.cs, -1                    ; 3 uses
  %..i17.i = select i1 %i.cw, ptr %i.cv, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !1854, !noalias !1857
  %i.cx = xor i1 %i.cw, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bq
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.noexc21.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dm, %.noexc21.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.noexc21.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %i.de = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !1852, !noalias !1858, !nonnull !11, !noundef !11
  %i.df = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.df, align 8, !alias.scope !1852, !noalias !1858, !noundef !11
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val.i19.i = load ptr, ptr %i.dg, align 8, !alias.scope !1853, !noalias !1859, !nonnull !11, !noundef !11
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val7.i.i = load i64, ptr %i.dh, align 8, !alias.scope !1853, !noalias !1859, !noundef !11
  %i.di = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i19.i, i64 noundef %.val7.i.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !1854

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dj = icmp eq i8 %i.di, -1                    ; 3 uses
  %i.dk = xor i1 %i.dj, true
  %.sroa.05.0.i.i = select i1 %i.dj, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1854, !noalias !1860
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.dl ; 3 uses
  %i.dn = zext i1 %i.dj to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.dq = icmp ne ptr %i.dm, %i.cn
  %i.dr = icmp ne ptr %i.do, %i.m
  %or.cond.i20.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.dp, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dm, %.noexc21.i ] ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.3.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.du, i1 false), !alias.scope !1854, !noalias !1861
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cn, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dx, i1 false), !alias.scope !1854, !noalias !1862
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1884, !noalias !1885, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1886
  %i.v = icmp sgt i8 %i.u, -1                     ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1886
  %i.aa = icmp slt i8 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1886
  %i.ag = icmp slt i8 %i.af, 0
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1867
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [24 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1885

end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish:bb.a
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1889
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.da, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1888, !noalias !1890, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1888, !noalias !1890, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1887, !noalias !1891, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1887, !noalias !1891, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1889 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.cw = icmp sgt i8 %i.cs, -1                   ; 2 uses
  %..i17.i = select i1 %i.cw, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !1889, !noalias !1892
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cx ; 3 uses
  %.lobit.i.i = lshr i8 %i.cs, 7
  %i.cz = zext nneg i8 %.lobit.i.i to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cz ; 3 uses
  %i.db = icmp eq ptr %i.cy, %i.bq
  %i.dc = icmp eq ptr %i.da, %2
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.dn, %.noexc22.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dk, %.noexc22.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dm, %.noexc22.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %i.dd = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !1887, !noalias !1893, !nonnull !11, !noundef !11
  %i.de = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.de, align 8, !alias.scope !1887, !noalias !1893, !noundef !11
  %i.df = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val.i19.i = load ptr, ptr %i.df, align 8, !alias.scope !1888, !noalias !1894, !nonnull !11, !noundef !11
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val7.i.i = load i64, ptr %i.dg, align 8, !alias.scope !1888, !noalias !1894, !noundef !11
  %i.dh = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i19.i, i64 noundef %.val7.i.i)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !1889 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.di = icmp sgt i8 %i.dh, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.di, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1889, !noalias !1895
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.dj ; 3 uses
  %.lobit.i20.i = lshr i8 %i.dh, 7
  %i.dl = zext nneg i8 %.lobit.i20.i to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cn
  %i.dp = icmp ne ptr %i.dm, %i.m
  %or.cond.i21.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.dn, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.da, %.noexc.i ], [ %i.cn, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dk, %.noexc22.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ds, i1 false), !alias.scope !1889, !noalias !1896
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cn, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dt = ptrtoint ptr %.sroa.7.1.i to i64
  %i.du = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dv, i1 false), !alias.scope !1889, !noalias !1897
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i
  %i.dw = shl nuw nsw i64 %i.bo, 1
  %i.dx = or disjoint i64 %i.dw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i = phi i64 [ %i.dx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bf, 1
  br i1 %i.dy, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dz = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ec, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = or i64 %1, 1
  %i.ee = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BY_BW_20last_added_timestampE0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 136
  %.val14.i = load i64, ptr %i.q, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 144
  %.val15.i = load i32, ptr %i.r, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 48
  %.val16.i = load i64, ptr %i.s, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 56
  %.val17.i = load i32, ptr %i.t, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11
  %i.u = icmp eq i64 %.val14.i, %.val16.i
  %i.v = icmp samesign ult i32 %.val15.i, %.val17.i
  %i.w = icmp slt i64 %.val14.i, %.val16.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w         ; 2 uses
  %.not69 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not69, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not69, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100, label %.lr.ph56

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.val13.i = phi i32 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader47 ]
  %.val12.i = phi i64 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader47 ] ; 2 uses
  %.sroa.01.0.i.i52 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader47 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i52 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %.val10.i = load i64, ptr %i.z, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 56
  %.val11.i = load i32, ptr %i.aa, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.ab = icmp eq i64 %.val10.i, %.val12.i
  %i.ac = icmp samesign ult i32 %.val11.i, %.val13.i
  %i.ad = icmp slt i64 %.val10.i, %.val12.i
  %i.ae = select i1 %i.ab, i1 %i.ac, i1 %i.ad
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i52, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %.lr.ph

.lr.ph56:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i32 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i64 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i55 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i55 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %.val.i = load i64, ptr %i.ah, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 56
  %.val7.i = load i32, ptr %i.ai, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.aj = icmp eq i64 %.val.i, %.val8.i
  %i.ak = icmp samesign ult i32 %.val7.i, %.val9.i
  %i.al = icmp slt i64 %.val.i, %.val8.i
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph56
  %i.an = add nuw i64 %.sroa.01.1.i.i55, 1        ; 2 uses
  %exitcond76.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond76.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %.lr.ph56

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph56
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i55, %.lr.ph56 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i52, %.lr.ph ], [ %i.n, %bb.l ] ; 5 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i
  %i.ap = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %or.cond.not = and i1 %.not.i.i, %i.x
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.aq = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1902
  %i.ar = shl nuw nsw i64 %..i36, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100
  %i.av = phi i64 [ %i.ap, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100 ]
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.017.i.i, -1
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.az = getelementptr [88 x i8], ptr %i.aw, i64 %i.ax
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i64 noundef 11)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i unwind label %bb.q, !noalias !1916

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1916
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.bb = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.av
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %i.bc = lshr i64 %.sroa.023.0, 1
  %i.bd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.be = sub nsw i64 %factor, %i.bc
  %i.bf = add nuw nsw i64 %i.bd, %factor
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph62, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit
  %.sroa.02.161 = phi i64 [ %.sroa.02.0, %.lr.ph62 ], [ %i.bl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 2 uses
  %.sroa.023.160 = phi i64 [ %.sroa.023.0, %.lr.ph62 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 4 uses
  %i.bl = add i64 %.sroa.02.161, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.160, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.161, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !11 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.160, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.160 to i1
  %i.bz = or i64 %i.br, %.sroa.023.160
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.by, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 104811045873349726) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 104811045873349726) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [88 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !1919
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.dl, %.preheader.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %i.cv = phi ptr [ %i.dj, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -88 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -88 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -88 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cu, i64 -40
  %.val.i.i = load i64, ptr %i.cz, align 8, !alias.scope !1918, !noalias !1920, !noundef !11 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 -32
  %.val12.i.i = load i32, ptr %i.da, align 8, !range !23, !alias.scope !1918, !noalias !1920, !noundef !11
  %i.db = getelementptr i8, ptr %i.cv, i64 -40
  %.val13.i.i = load i64, ptr %i.db, align 8, !alias.scope !1917, !noalias !1921, !noundef !11 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cv, i64 -32
  %.val14.i.i = load i32, ptr %i.dc, align 8, !range !23, !alias.scope !1917, !noalias !1921, !noundef !11
  %i.dd = icmp eq i64 %.val.i.i, %.val13.i.i
  %i.de = icmp samesign ult i32 %.val12.i.i, %.val14.i.i
  %i.df = icmp slt i64 %.val.i.i, %.val13.i.i
  %i.dg = select i1 %i.dd, i1 %i.de, i1 %i.df     ; 3 uses
  %..i17.i = select i1 %i.dg, ptr %i.cw, ptr %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cy, ptr noundef nonnull align 8 dereferenceable(88) %..i17.i, i64 88, i1 false), !alias.scope !1919, !noalias !1922
  %i.dh = xor i1 %i.dg, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.cw, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [88 x i8], ptr %i.cx, i64 %i.dk ; 3 uses
  %i.dm = icmp eq ptr %i.dj, %i.bw
  %i.dn = icmp eq ptr %i.dl, %2
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.do = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %i.bw, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 4 uses
  %i.dp = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48
  %.sroa.0.0.val.i.i = load i64, ptr %i.dq, align 8, !alias.scope !1917, !noalias !1923, !noundef !11 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 56
  %.sroa.0.0.val6.i.i = load i32, ptr %i.dr, align 8, !range !23, !alias.scope !1917, !noalias !1923, !noundef !11
  %i.ds = getelementptr i8, ptr %i.dp, i64 48
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !1918, !noalias !1924, !noundef !11 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dp, i64 56
  %.val7.i.i = load i32, ptr %i.dt, align 8, !range !23, !alias.scope !1918, !noalias !1924, !noundef !11
  %i.du = icmp eq i64 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.dv = icmp samesign ult i32 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.dw = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 3 uses
  %i.dy = xor i1 %i.dx, true
  %.sroa.05.0.i.i = select i1 %i.dx, ptr %.sroa.0.02.i.i, ptr %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.do, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !1919, !noalias !1925
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [88 x i8], ptr %i.dp, i64 %i.dz ; 3 uses
  %i.eb = zext i1 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.02.i.i, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 88 ; 2 uses
  %i.ee = icmp ne ptr %i.ea, %i.ct
  %i.ef = icmp ne ptr %i.ec, %i.m
  %or.cond.i20.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.ed, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ] ; 2 uses
  %i.eg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ei, i1 false), !alias.scope !1919, !noalias !1926
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i
  %i.ej = shl nuw nsw i64 %i.bu, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit ], [ %i.cc, %bb.u ] ; 2 uses
  %i.el = icmp ugt i64 %i.bl, 1
  br i1 %i.el, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.em = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.018.0, 1
  %i.eo = add nuw i64 %i.en, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ep, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = or i64 %1, 1
  %i.er = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.eu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB10_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvB10_14complete_print0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.br, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load ptr, ptr %i.r, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1951, !noundef !11 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noalias !1951, !noundef !11
  %i.w = icmp ult i64 %i.t, %i.v                  ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %i.x = phi i64 [ %i.ab, %bb.l ], [ %i.t, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i51, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %i.ae = phi i64 [ %i.ai, %bb.m ], [ %i.t, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ae
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ak = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ak, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %.lr.ph55

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.am = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1931
  %i.an = shl nuw nsw i64 %..i35, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i ], [ %i.bi, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ap = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.ax, i64 %i.ap ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !alias.scope !1955, !noalias !1956
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957), !noalias !1950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958), !noalias !1950
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB10_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvB10_14complete_print0E0EB12_:bb.a

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new ], [ %i.bi, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i ]
  %i.az = xor i64 %.sroa.0.016.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !alias.scope !1955, !noalias !1956
  %i.bd = xor i64 %.sroa.0.016.i.i, -2
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %i.ax, i64 %i.bd ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !alias.scope !1955, !noalias !1956
  %i.bi = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.bj = lshr i64 %.sroa.023.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bl = sub nsw i64 %factor, %i.bj
  %i.bm = add nuw nsw i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bs, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bu, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bw, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !11 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp samesign ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.023.159 to i1
  %i.cg = or i64 %i.by, %.sroa.023.159
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cf, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ck = or i64 %i.bz, 1
  %i.cl = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.cp, i64 noundef range(i64 0, 576460752303423488) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 range(i64 0, -9223372036854775808) %i.bz) ; 2 uses
  %i.cx = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cx, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cy, ptr %i.cd
  %i.cz = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cz, i1 false), !alias.scope !1961
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.db = phi ptr [ %i.dr, %.preheader.i ], [ %i.da, %.critedge.i ] ; 2 uses
  %i.dc = phi ptr [ %i.dp, %.preheader.i ], [ %i.cy, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.df, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !1960, !noalias !1962, !nonnull !11, !align !14, !noundef !11
  %i.dh = getelementptr i8, ptr %i.dc, i64 -8
  %.val12.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1959, !noalias !1963, !nonnull !11, !align !14, !noundef !11
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !noalias !1964, !noundef !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !1964, !noundef !11
  %i.dm = icmp ult i64 %i.dj, %i.dl               ; 3 uses
  %..i17.i = select i1 %i.dm, ptr %i.dd, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !1961, !noalias !1965
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.do ; 3 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cd
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.du = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cy, %.critedge.i ] ; 3 uses
  %i.dv = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !1959, !noalias !1966, !nonnull !11, !align !14, !noundef !11
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  %.val.i19.i = load ptr, ptr %i.dx, align 8, !alias.scope !1960, !noalias !1967, !nonnull !11, !align !14, !noundef !11
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1968, !noundef !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !1968, !noundef !11
  %i.ec = icmp ult i64 %i.dz, %i.eb               ; 3 uses
  %i.ed = xor i1 %i.ec, true
  %.sroa.05.0.i.i = select i1 %i.ec, ptr %.sroa.0.02.i.i, ptr %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !1961, !noalias !1969
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ee ; 3 uses
  %i.eg = zext i1 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.ej = icmp ne ptr %i.ef, %i.da
  %i.ek = icmp ne ptr %i.eh, %i.m
  %or.cond.i20.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.ei, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.7.0.i to i64
  %i.em = ptrtoint ptr %.sroa.0.1.i to i64
  %i.en = sub nuw i64 %i.el, %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.en, i1 false), !alias.scope !1961, !noalias !1970
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i
  %i.eo = shl nuw nsw i64 %i.cb, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit ], [ %i.cj, %bb.u ] ; 2 uses
  %i.eq = icmp ugt i64 %i.bs, 1
  br i1 %i.eq, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.er = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.es = lshr i64 %.sroa.018.0, 1
  %i.et = add nuw i64 %i.es, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eu, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = or i64 %1, 1
  %i.ew = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvMNtB1W_20env_universal_commonNtB3s_12EnvUniversal19serialize_with_vars0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i124 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i43 = load ptr, ptr %i.r, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i44 = load i64, ptr %i.s, align 8, !noalias !1999, !noundef !11
  %i.t = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i45 = load ptr, ptr %i.t, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.u = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i46 = load i64, ptr %i.u, align 8, !noalias !1999, !noundef !11
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i43, i64 noundef %.val1.i.i44, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i45, i64 noundef %.val3.i.i46), !noalias !1999
  %i.w = icmp slt i8 %i.v, 0                      ; 2 uses
  %.not88 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.k
  br i1 %.not88, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not88, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader56, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader56 ] ; 2 uses
  %.sroa.01.0.i.i71 = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader56 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i71
  %.val8.i = load ptr, ptr %i.x, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.y = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i39 = load ptr, ptr %i.y, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.z = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i40 = load i64, ptr %i.z, align 8, !noalias !1999, !noundef !11
  %i.aa = getelementptr i8, ptr %.val9.i, i64 8
  %.val2.i.i41 = load ptr, ptr %i.aa, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %.val9.i, i64 16
  %.val3.i.i42 = load i64, ptr %i.ab, align 8, !noalias !1999, !noundef !11
  %i.ac = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i39, i64 noundef %.val1.i.i40, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i41, i64 noundef %.val3.i.i42), !noalias !1999
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i74 = phi i64 [ %i.am, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.ag = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i38 = load ptr, ptr %i.ag, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.ah = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i = load i64, ptr %i.ah, align 8, !noalias !1999, !noundef !11
  %i.ai = getelementptr i8, ptr %.val7.i, i64 8
  %.val2.i.i = load ptr, ptr %i.ai, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.aj = getelementptr i8, ptr %.val7.i, i64 16
  %.val3.i.i = load i64, ptr %i.aj, align 8, !noalias !1999, !noundef !11
  %i.ak = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i38, i64 noundef %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i), !noalias !1999
  %i.al = icmp slt i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i

bb.m:                                             ; preds = %.lr.ph75
  %i.am = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond101.not = icmp eq i64 %i.am, %i.n
  br i1 %exitcond101.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %.lr.ph75

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i71, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.an = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.an)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122: ; preds = %.preheader
  br i1 %.not5.i124, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ao = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1975
  %i.ap = shl nuw nsw i64 %..i36, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i ], [ %i.bk, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod168 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.ar = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.az, i64 %i.ar ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !2000, !noalias !2001
end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvMNtB1W_20env_universal_commonNtB3s_12EnvUniversal19serialize_with_vars0E0EB1W_:bb.a
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph81, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.bu, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 2 uses
  %.sroa.023.179 = phi i64 [ %.sroa.023.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.179, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.180, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !11 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.179, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.179 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.179
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 range(i64 0, -9223372036854775808) %i.cb) ; 2 uses
  %i.cz = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cz, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.da, ptr %i.cf
  %i.db = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.db, i1 false), !alias.scope !2009
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.da, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dc, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dk, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.dd = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !2008, !noalias !2010, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !2007, !noalias !2011, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.df = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !2012, !nonnull !11, !noundef !11
  %i.dg = getelementptr i8, ptr %.val.i.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !2012, !noundef !11
  %i.dh = getelementptr i8, ptr %.val12.i.i, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !2012, !nonnull !11, !noundef !11
  %i.di = getelementptr i8, ptr %.val12.i.i, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.di, align 8, !noalias !2012, !noundef !11
  %i.dj = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i.i.i, i64 noundef %.val3.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2009 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -16 ; 2 uses
  %i.dl = icmp sgt i8 %i.dj, -1                   ; 2 uses
  %..i17.i = select i1 %i.dl, ptr %i.de, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !2009, !noalias !2013
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dm ; 3 uses
  %.lobit.i.i = lshr i8 %i.dj, 7
  %i.do = zext nneg i8 %.lobit.i.i to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = icmp eq ptr %i.dn, %i.cf
  %i.dr = icmp eq ptr %i.dp, %2
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc26.i
  %.sroa.13.1.i = phi ptr [ %i.ec, %.noexc26.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dz, %.noexc26.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eb, %.noexc26.i ], [ %i.da, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !2007, !noalias !2014, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i34, align 8, !alias.scope !2008, !noalias !2015, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 8
  %.val.i.i.i20.i = load ptr, ptr %i.ds, align 8, !noalias !2016, !nonnull !11, !noundef !11
  %i.dt = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 16
  %.val1.i.i.i21.i = load i64, ptr %i.dt, align 8, !noalias !2016, !noundef !11
  %i.du = getelementptr i8, ptr %.val.i19.i, i64 8
  %.val2.i.i.i22.i = load ptr, ptr %i.du, align 8, !noalias !2016, !nonnull !11, !noundef !11
  %i.dv = getelementptr i8, ptr %.val.i19.i, i64 16
  %.val3.i.i.i23.i = load i64, ptr %i.dv, align 8, !noalias !2016, !noundef !11
  %i.dw = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i.i20.i, i64 noundef %.val1.i.i.i21.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i.i22.i, i64 noundef %.val3.i.i.i23.i)
          to label %.noexc26.i unwind label %.loopexit.split-lp.i, !noalias !2009 ; 2 uses

.noexc26.i:                                       ; preds = %.lr.ph.i.i
  %i.dx = icmp sgt i8 %i.dw, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dx, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !2009, !noalias !2017
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i34, i64 %i.dy ; 3 uses
  %.lobit.i24.i = lshr i8 %i.dw, 7
  %i.ea = zext nneg i8 %.lobit.i24.i to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.ed = icmp ne ptr %i.dz, %i.dc
  %i.ee = icmp ne ptr %i.eb, %i.m
  %or.cond.i25.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i25.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i: ; preds = %.noexc26.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.ec, %.noexc26.i ]
  %.sroa.7.2.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dc, %.noexc26.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dz, %.noexc26.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.eh, i1 false), !alias.scope !2009, !noalias !2018
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dc, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ei = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ek, i1 false), !alias.scope !2009, !noalias !2019
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i
  %i.el = shl nuw nsw i64 %i.cd, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit
  %.sroa.0.0.i = phi i64 [ %i.em, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit ], [ %i.cl, %bb.u ] ; 2 uses
  %i.en = icmp ugt i64 %i.bu, 1
  br i1 %i.en, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eo = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add nuw i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.er, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2e_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !2044, !noalias !2045, !noundef !11
  %i.r = icmp slt i64 %.val11.i, %.val10.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 2 uses
  %i.t = icmp slt i64 %.val9.i, %.val8.i
  br i1 %i.t, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 2 uses
  %i.w = icmp slt i64 %.val7.i, %.val.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %.lr.ph55

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2024
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i, %middle.block, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %middle.block ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046), !noalias !2045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047), !noalias !2045
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2048, !noalias !2049
  %wide.load114 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !2048, !noalias !2049
  %i.al = getelementptr i8, ptr %i.aj, i64 -8     ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -24    ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2050, !noalias !2051
  %wide.load116 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2050, !noalias !2051
  %reverse = shufflevector <2 x i64> %wide.load115, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse117 = shufflevector <2 x i64> %wide.load116, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !2048, !noalias !2049
  store <2 x i64> %reverse117, ptr %i.ak, align 8, !alias.scope !2048, !noalias !2049
  %reverse118 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse119 = shufflevector <2 x i64> %wide.load114, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse118, ptr %i.al, align 8, !alias.scope !2050, !noalias !2051
  store <2 x i64> %reverse119, ptr %i.am, align 8, !alias.scope !2050, !noalias !2051
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2030

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !2048, !noalias !2049, !noundef !11
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !2050, !noalias !2051
  store i64 %i.as, ptr %i.ap, align 8, !alias.scope !2048, !noalias !2049
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !2050, !noalias !2051
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i, !llvm.loop !2031

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !11 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2032
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2032
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !2054
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cm = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.critedge.i ]
  %i.cn = phi ptr [ %i.cv, %.preheader.i ], [ %i.cj, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.cq, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.cp, align 8, !alias.scope !2053, !noalias !2055, !noundef !11 ; 2 uses
  %.val12.i.i = load i64, ptr %i.co, align 8, !alias.scope !2052, !noalias !2056, !noundef !11 ; 2 uses
  %i.cr = icmp slt i64 %.val12.i.i, %.val.i.i     ; 2 uses
  %i.cs = tail call i64 @llvm.smin.i64(i64 %.val12.i.i, i64 %.val.i.i)
  store i64 %i.cs, ptr %i.cq, align 8, !alias.scope !2052, !noalias !2056
  %i.ct = xor i1 %i.cr, true
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cw ; 3 uses
  %i.cy = icmp eq ptr %i.cv, %i.bo
  %i.cz = icmp eq ptr %i.cx, %2
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateiE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBb_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2F_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.da = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !2052, !noalias !2057, !noundef !11 ; 2 uses
  %.val.i18.i = load i64, ptr %i.db, align 8, !alias.scope !2053, !noalias !2058, !noundef !11 ; 2 uses
  %i.dc = icmp slt i64 %.val.i18.i, %.sroa.0.0.val.i.i ; 2 uses
  %i.dd = xor i1 %i.dc, true
  %i.de = tail call i64 @llvm.smax.i64(i64 %.val.i18.i, i64 %.sroa.0.0.val.i.i)
  store i64 %i.de, ptr %i.da, align 8, !alias.scope !2052, !noalias !2057
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.dc to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dk = icmp ne ptr %i.dg, %i.cl
  %i.dl = icmp ne ptr %i.di, %i.m
  %or.cond.i19.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateiE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBb_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2F_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateiE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBb_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2F_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cx, %.preheader.i ], [ %i.cl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dg, %.lr.ph.i.i ] ; 2 uses
  %i.dm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.do, i1 false), !alias.scope !2054, !noalias !2059
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateiE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBb_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2F_.exit.i
  %i.dp = shl nuw nsw i64 %i.bm, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit
  %.sroa.0.0.i = phi i64 [ %i.dq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bd, 1
  br i1 %i.dr, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.018.0, 1
  %i.du = add nuw i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dv, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2032
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph232 = phi ptr [ %i.alt, %.outer ], [ %0, %bb.a ] ; 25 uses
  %.sroa.16.0.ph231 = phi i64 [ %i.ale, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph230 = phi i32 [ %i.ao, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph229 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph232 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph229, null
  %i.d = icmp eq i32 %.sroa.025.0.ph230, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph713

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit
  %i.e = icmp eq i32 %i.ao, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph713

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit, %bb.a
  %.sroa.0.0.ph.lcssa222 = phi ptr [ %.sroa.0.0.ph232, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit ], [ %0, %bb.a ], [ %i.alt, %.outer ] ; 11 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit ], [ %1, %bb.a ], [ %i.ale, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1x_5sliceSB1s_7sort_byNCNvB22_5print0E0EB24_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 11 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 5 uses
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph.lcssa222, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa222, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef readonly %i.m, ptr noundef %i.n)
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1l_5sliceSB1g_7sort_byNCNvB1Q_5print0E0EB1S_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull align 8 %2), !noalias !2232
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa222, i64 %i.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef nonnull readonly %i.o, ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef readonly %i.r, ptr noundef %i.s)
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1l_5sliceSB1g_7sort_byNCNvB1Q_5print0E0EB1S_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef 8, ptr noundef nonnull %i.p), !noalias !2232
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa222, ptr noundef nonnull align 8 %2)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa222, i64 %i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1e_5sliceSB19_7sort_byNCNvB1J_5print0E0EB1L_(ptr noundef %i.t, ptr noundef %i.u)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %.sroa.0.0.ph.lcssa222, align 8, !alias.scope !2232, !noalias !2233
  store i64 %i.v, ptr %2, align 8, !alias.scope !2233, !noalias !2232
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa222, i64 %i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !2232, !noalias !2233
  store i64 %i.y, ptr %i.x, align 8, !alias.scope !2233, !noalias !2232
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.z = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i  ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa222, i64 %i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, %i.z
  br i1 %i.ad, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.05.04.1.i = phi i64 [ %i.ah, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.05.04.1.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.05.04.1.i ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !2232, !noalias !2233
  store i64 %i.ag, ptr %i.af, align 8, !alias.scope !2233, !noalias !2232
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1d_5sliceSB18_7sort_byNCNvB1I_5print0E0EB1K_(ptr noundef %i.ac, ptr noundef %i.af), !noalias !2232
  %i.ah = add nuw nsw i64 %.sroa.05.04.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ah, %i.z
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1l_5sliceSB1g_7sort_byNCNvB1Q_5print0E0EB1S_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa222)
          to label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1x_5sliceSB1s_7sort_byNCNvB22_5print0E0EB24_.exit unwind label %bb.k

bb.k:                                             ; preds = %.loopexit.1.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa222, ptr nonnull align 8 %2, i64 %i.aj, i1 false), !alias.scope !2234, !noalias !2235
  resume { ptr, i32 } %i.ai

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.05.04.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.j ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa222, i64 %.sroa.05.04.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.05.04.i ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !2232, !noalias !2233
  store i64 %i.am, ptr %i.al, align 8, !alias.scope !2233, !noalias !2232
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1d_5sliceSB18_7sort_byNCNvB1I_5print0E0EB1K_(ptr noundef nonnull align 8 %2, ptr noundef %i.al), !noalias !2232
  %i.an = add nuw nsw i64 %.sroa.05.04.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0225.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph231, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB11_5sliceSBW_7sort_byNCNvB1w_5print0E0EB1y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph232, i64 noundef %.sroa.16.0225.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1x_5sliceSB1s_7sort_byNCNvB22_5print0E0EB24_.exit

.lr.ph713:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0224712 = phi i32 [ %i.ao, %bb.b ], [ %.sroa.025.0.ph230, %.lr.ph ]
  %.sroa.16.0225711 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph231, %.lr.ph ] ; 19 uses
  %i.ao = add i32 %.sroa.025.0224712, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.ap = lshr i64 %.sroa.16.0225711, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ap, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph232, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ap, 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph232, i64 %.idx2.i ; 3 uses
  %i.as = icmp samesign ult i64 %.sroa.16.0225711, 64
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph713
  %i.at = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB19_5sliceSB14_7sort_byNCNvB1E_5print0E0EB1G_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph232, ptr noundef readonly %i.aq, ptr noundef readonly %i.ar, i64 noundef %i.ap)
  br label %bb.bh

bb.m:                                             ; preds = %.lr.ph713
  %.val6.i = load ptr, ptr %.sroa.0.0.ph232, align 8, !alias.scope !2236, !nonnull !11, !noundef !11 ; 19 uses
  %.val7.i = load ptr, ptr %i.aq, align 8, !alias.scope !2236, !nonnull !11, !noundef !11 ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  %i.aw = load i32, ptr %i.au, align 8, !range !18, !alias.scope !2237, !noalias !2239, !noundef !11 ; 6 uses
  %i.ax = load i32, ptr %i.av, align 8, !range !18, !alias.scope !2238, !noalias !2240, !noundef !11 ; 5 uses
  %i.ay = icmp eq i32 %i.aw, %i.ax
  %i.az = icmp samesign ult i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i

bb.n:                                             ; preds = %bb.m
  switch i32 %i.aw, label %.unreachabledefault [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.r
    i32 4, label %bb.u
    i32 5, label %bb.z
    i32 6, label %bb.aa
    i32 0, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i
  ]

.unreachabledefault:                              ; preds = %bb.n
  unreachable
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_:bb.a

bb.am:                                            ; preds = %._crit_edge.i61
  %i.kl = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i62, i64 -24
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i64, i64 24, i1 false), !alias.scope !2636, !noalias !2639
  %i.kn = add i64 %.sroa.11.1.lcssa.i63, 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i64, i64 24
  br label %bb.al

bb.an:                                            ; preds = %._crit_edge.i61
  %i.kp = mul nuw nsw i64 %.sroa.11.1.lcssa.i63, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph133, ptr nonnull align 8 %2, i64 %i.kp, i1 false), !alias.scope !2636
  %i.kq = sub i64 %.sroa.16.0126303, %.sroa.11.1.lcssa.i63 ; 6 uses
  %.not18.i65 = icmp eq i64 %.sroa.16.0126303, %.sroa.11.1.lcssa.i63
  br i1 %.not18.i65, label %.outer._crit_edge.thread, label %.lr.ph16.i66

.lr.ph16.i66:                                     ; preds = %bb.an
  %i.kr = getelementptr [24 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 3 uses
  %.neg412 = add i64 %.sroa.11.1.lcssa.i63, 1
  %xtraiter407 = and i64 %i.kq, 1
  %i.ks = icmp eq i64 %.sroa.16.0126303, %.neg412
  br i1 %i.ks, label %.epil.preheader400, label %.lr.ph16.i66.new

.lr.ph16.i66.new:                                 ; preds = %.lr.ph16.i66
  %unroll_iter410 = and i64 %i.kq, -2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph16.i66.new
  %.sroa.06.014.i67 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %i.kw, %bb.ao ] ; 5 uses
  %niter411 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %niter411.next.1, %bb.ao ]
  %i.kt = xor i64 %.sroa.06.014.i67, -1
  %i.ku = getelementptr [24 x i8], ptr %i.jk, i64 %i.kt
  %i.kv = getelementptr [24 x i8], ptr %i.kr, i64 %.sroa.06.014.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i64 24, i1 false), !alias.scope !2636
  %i.kw = add nuw i64 %.sroa.06.014.i67, 2        ; 2 uses
  %i.kx = xor i64 %.sroa.06.014.i67, -2
  %i.ky = getelementptr [24 x i8], ptr %i.jk, i64 %i.kx
  %i.kz = getelementptr [24 x i8], ptr %i.kr, i64 %.sroa.06.014.i67
  %i.la = getelementptr i8, ptr %i.kz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i64 24, i1 false), !alias.scope !2636
  %niter411.next.1 = add i64 %niter411, 2         ; 2 uses
  %niter411.ncmp.1 = icmp eq i64 %niter411.next.1, %unroll_iter410
  br i1 %niter411.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit.unr-lcssa, label %bb.ao

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit, label %.epil.preheader400

.epil.preheader400:                               ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit.unr-lcssa, %.lr.ph16.i66
  %.sroa.06.014.i67.epil.init = phi i64 [ 0, %.lr.ph16.i66 ], [ %i.kw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod409 = trunc i64 %i.kq to i1
  call void @llvm.assume(i1 %lcmp.mod409)
  %i.lb = xor i64 %.sroa.06.014.i67.epil.init, -1
  %i.lc = getelementptr [24 x i8], ptr %i.jk, i64 %i.lb
  %i.ld = getelementptr [24 x i8], ptr %i.kr, i64 %.sroa.06.014.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ld, ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i64 24, i1 false), !alias.scope !2636
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit.unr-lcssa, %.epil.preheader400
  %i.le = icmp ugt i64 %.sroa.11.1.lcssa.i63, %.sroa.16.0126303
  br i1 %i.le, label %bb.ap, label %.outer, !prof !25

.outer._crit_edge.thread:                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1x_5sliceSB1s_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB3q_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lg = icmp ult i64 %i.kq, 33
  br i1 %i.lg, label %.outer._crit_edge, label %.lr.ph

bb.ap:                                            ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0E0EB3x_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i63, i64 noundef %.sroa.16.0126303, i64 noundef %.sroa.16.0126303, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.lw, %.outer ], [ %0, %bb.a ] ; 26 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.lh, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.df, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 51
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 16 ; 2 uses
  %i.f = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph116, i64 51
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph116, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph116, i64 16
  %i.j = icmp eq i32 %.sroa.025.0.ph117, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph321

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit
  %i.k = icmp eq i32 %i.df, 0
  br i1 %i.k, label %.lr.ph._crit_edge, label %.lr.ph321

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %.sroa.0.0.ph119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.lw, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.lh, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  %i.l = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvB1u_19sort_and_prioritizes_0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.m = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.n = icmp samesign ult i64 %3, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.p = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa110, i64 %i.o ; 3 uses
  %i.r = getelementptr [56 x i8], ptr %2, i64 %i.o ; 6 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvB1b_19sort_and_prioritizes_0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvB1b_19sort_and_prioritizes_0E0EB1d_(ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.ph.lcssa110, i64 56, i1 false), !alias.scope !2750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !alias.scope !2750
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.s = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.o  ; 2 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %i.o
  br i1 %i.t, label %.lr.ph.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %.lr.ph.i, %bb.h
  %i.u = icmp samesign ult i64 %.sroa.0.0.i, %i.s
  br i1 %i.u, label %.lr.ph.1.i, label %.loopexit4.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit4.i, %.lr.ph.1.i
  %.sroa.05.09.1.i = phi i64 [ %i.x, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.sroa.05.09.1.i
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %.sroa.05.09.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !alias.scope !2750
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvB1a_19sort_and_prioritizes_0E0EB1c_(ptr noundef %i.r, ptr noundef %i.w)
  %i.x = add nuw nsw i64 %.sroa.05.09.1.i, 1      ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.x, %i.s
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.lr.ph.1.i

.loopexit4.1.i:                                   ; preds = %.lr.ph.1.i, %.loopexit4.i
  %i.y = add nsw i64 %.sroa.16.0.lcssa, -1        ; 2 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa110, i64 %i.y
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.r, i64 -56
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i
  %i.ac = getelementptr i8, ptr %i.cr, i64 56     ; 2 uses
  %i.ad = getelementptr i8, ptr %i.cq, i64 56
  %i.ae = and i64 %.sroa.16.0.lcssa, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %bb.o

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i, %.loopexit4.1.i
  %.sroa.0.040.i.i = phi ptr [ %i.bn, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %.sroa.0.0.ph.lcssa110, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.039.i.i = phi i64 [ %i.ag, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.037.i.i = phi ptr [ %i.bm, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %2, %.loopexit4.1.i ] ; 10 uses
  %.sroa.011.036.i.i = phi ptr [ %i.bk, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %i.r, %.loopexit4.1.i ] ; 6 uses
  %.sroa.015.035.i.i = phi ptr [ %i.cr, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %i.ab, %.loopexit4.1.i ] ; 6 uses
  %.sroa.017.033.i.i = phi ptr [ %i.cq, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %i.aa, %.loopexit4.1.i ] ; 10 uses
  %.sroa.019.032.i.i = phi ptr [ %i.cs, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i ], [ %i.z, %.loopexit4.1.i ] ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.04.039.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.036.i.i, i64 51
  %i.ai = load i8, ptr %i.ah, align 1, !range !22, !alias.scope !2755, !noalias !2756, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.037.i.i, i64 51
  %i.ak = load i8, ptr %i.aj, align 1, !range !22, !alias.scope !2757, !noalias !2758, !noundef !11 ; 2 uses
  %i.al = icmp eq i8 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %.split.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.036.i.i, i64 48
  %i.an = load i16, ptr %i.am, align 8, !alias.scope !2755, !noalias !2756, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.037.i.i, i64 48
  %i.ap = load i16, ptr %i.ao, align 8, !alias.scope !2757, !noalias !2758, !noundef !11
  %i.aq = trunc i16 %i.an to i8
  %i.ar = lshr i8 %i.aq, 6
  %i.as = and i8 %i.ar, 1
  %i.at = trunc i16 %i.ap to i8
  %7 = shl i8 %i.at, 1
  %8 = ashr i8 %7, 7
  %9 = add nsw i8 %8, %i.as
  switch i8 %9, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i
    i8 0, label %bb.j
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  ]

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.au = icmp samesign ult i8 %i.ai, %i.ak
  br i1 %i.au, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

default.unreachable:                              ; preds = %bb.al, %bb.ae, %bb.z, %bb.u, %bb.be, %bb.ar, %bb.l, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.036.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2761, !noalias !2762, !noundef !11 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693952
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aw, 0
  br i1 %i.ay, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.037.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !2763, !noalias !2764, !noundef !11 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 2305843009213693952
  call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i: ; preds = %bb.k
  %i.bd = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.011.036.i.i, i32 noundef 126)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i
  %i.be = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.06.037.i.i, i32 noundef 126)
          to label %.noexc30.i unwind label %.loopexit.i

.noexc30.i:                                       ; preds = %.noexc.i
  %i.bf = xor i1 %i.bd, true
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i: ; preds = %.noexc30.i, %.split.i.i, %bb.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i, %.noexc30.i, %bb.k, %bb.j, %.split.i.i, %bb.i
  %.sroa.0.0.i.i6.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i ], [ false, %.noexc30.i ], [ false, %.split.i.i ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  %i.bh = phi ptr [ %.sroa.011.036.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread7.i.i ], [ %.sroa.06.037.i.i, %.noexc30.i ], [ %.sroa.06.037.i.i, %.split.i.i ], [ %.sroa.06.037.i.i, %bb.k ], [ %.sroa.06.037.i.i, %bb.j ], [ %.sroa.06.037.i.i, %bb.i ]
  %i.bi = xor i1 %.sroa.0.0.i.i6.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.040.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false), !alias.scope !2750, !noalias !2765
  %i.bj = zext i1 %.sroa.0.0.i.i6.i.i to i64
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.036.i.i, i64 %i.bj ; 4 uses
  %i.bl = zext i1 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.037.i.i, i64 %i.bl ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.040.i.i, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i.i, i64 51
  %i.bp = load i8, ptr %i.bo, align 1, !range !22, !alias.scope !2770, !noalias !2771, !noundef !11 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 51
  %i.br = load i8, ptr %i.bq, align 1, !range !22, !alias.scope !2772, !noalias !2773, !noundef !11 ; 2 uses
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %bb.l, label %.split20.i.i

bb.l:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i.i, i64 48
  %i.bu = load i16, ptr %i.bt, align 8, !alias.scope !2770, !noalias !2771, !noundef !11
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 48
  %i.bw = load i16, ptr %i.bv, align 8, !alias.scope !2772, !noalias !2773, !noundef !11
  %i.bx = trunc i16 %i.bu to i8
  %i.by = lshr i8 %i.bx, 6
  %i.bz = and i8 %i.by, 1
  %i.ca = trunc i16 %i.bw to i8
  %10 = shl i8 %i.ca, 1
  %11 = ashr i8 %10, 7
  %12 = add nsw i8 %11, %i.bz
  switch i8 %12, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i
    i8 0, label %bb.m
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i
  ]

.split20.i.i:                                     ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %i.cb = icmp samesign ult i8 %i.bp, %i.br
  br i1 %i.cb, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !2776, !noalias !2777, !noundef !11 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 2305843009213693952
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2778, !noalias !2779, !noundef !11 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 2305843009213693952
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.ch, 0
  br i1 %i.cj, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.i.i: ; preds = %bb.n
  %i.ck = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.017.033.i.i, i32 noundef 126)
          to label %.noexc31.i unwind label %.loopexit.i

.noexc31.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.i.i
  %i.cl = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.015.035.i.i, i32 noundef 126)
          to label %.noexc32.i unwind label %.loopexit.i

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.cm = xor i1 %i.ck, true
  %i.cn = and i1 %i.cl, %i.cm
  br i1 %i.cn, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i: ; preds = %.noexc32.i, %.split20.i.i, %bb.l
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread.i.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i, %.noexc32.i, %bb.n, %bb.m, %.split20.i.i, %bb.l
  %.sroa.0.0.i.i2215.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i ], [ false, %.noexc32.i ], [ false, %.split20.i.i ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %i.co = phi ptr [ %.sroa.015.035.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.thread16.i.i ], [ %.sroa.017.033.i.i, %.noexc32.i ], [ %.sroa.017.033.i.i, %.split20.i.i ], [ %.sroa.017.033.i.i, %bb.n ], [ %.sroa.017.033.i.i, %bb.m ], [ %.sroa.017.033.i.i, %bb.l ]
  %i.cp = xor i1 %.sroa.0.0.i.i2215.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.032.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.co, i64 56, i1 false), !alias.scope !2750, !noalias !2780
  %.neg.i.i.i = sext i1 %i.cp to i64
  %i.cq = getelementptr [56 x i8], ptr %.sroa.017.033.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %.sroa.0.0.i.i2215.i.i to i64
  %i.cr = getelementptr [56 x i8], ptr %.sroa.015.035.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.019.032.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.o
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.ct = icmp ult ptr %i.bm, %i.ac               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ct, ptr %i.bm, ptr %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !2750
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %i.cu
  %i.cw = xor i1 %i.ct, true
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %i.cx
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.bk, %._crit_edge.i.i ], [ %i.cy, %bb.o ]
  %.sroa.06.1.i.i = phi ptr [ %i.bm, %._crit_edge.i.i ], [ %i.cv, %bb.o ]
  %i.cz = icmp ne ptr %.sroa.06.1.i.i, %i.ac
  %i.da = icmp ne ptr %.sroa.011.1.i.i, %i.ad
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da, !prof !24
  br i1 %or.cond.i.i, label %bb.q, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvB1u_19sort_and_prioritizes_0E0EB1w_.exit, !prof !24

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #27
          to label %.noexc33.i unwind label %.loopexit.split-lp.i

.noexc33.i:                                       ; preds = %bb.q
  unreachable

.loopexit.i:                                      ; preds = %.noexc31.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit25.i.i, %.noexc.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.db = mul nuw nsw i64 %.sroa.16.0.lcssa, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa110, ptr nonnull align 8 %2, i64 %i.db, i1 false), !alias.scope !2750, !noalias !2781
  resume { ptr, i32 } %lpad.phi.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.05.09.i = phi i64 [ %i.de, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa110, i64 %.sroa.05.09.i
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.sroa.05.09.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.dc, i64 56, i1 false), !alias.scope !2750
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvB1a_19sort_and_prioritizes_0E0EB1c_(ptr noundef nonnull align 8 %2, ptr noundef %i.dd)
  %i.de = add nuw nsw i64 %.sroa.05.09.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %i.o
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvBY_19sort_and_prioritizes_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvB1u_19sort_and_prioritizes_0E0EB1w_.exit

.lr.ph321:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111320 = phi i32 [ %i.df, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112319 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.df = add i32 %.sroa.025.0111320, -1          ; 4 uses
  %i.dg = lshr i64 %.sroa.16.0112319, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dg, 224
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i ; 9 uses
  %.idx2.i = mul nuw nsw i64 %i.dg, 392
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i ; 9 uses
  %i.dj = icmp samesign ult i64 %.sroa.16.0112319, 64
  br i1 %i.dj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph321
  %i.dk = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvB16_19sort_and_prioritizes_0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef readonly %i.dh, ptr noundef readonly %i.di, i64 noundef %i.dg)
  br label %bb.aj

bb.t:                                             ; preds = %.lr.ph321
  call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  %i.dl = load i8, ptr %i.c, align 1, !range !22, !alias.scope !2786, !noalias !2787, !noundef !11 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 51
  %i.dn = load i8, ptr %i.dm, align 1, !range !22, !alias.scope !2788, !noalias !2789, !noundef !11 ; 4 uses
  %i.do = icmp eq i8 %i.dl, %i.dn
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dp = load i16, ptr %i.d, align 8, !alias.scope !2786, !noalias !2787, !noundef !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dr = load i16, ptr %i.dq, align 8, !alias.scope !2788, !noalias !2789, !noundef !11
  %i.ds = trunc i16 %i.dp to i8
  %i.dt = lshr i8 %i.ds, 6
  %i.du = and i8 %i.dt, 1
  %i.dv = trunc i16 %i.dr to i8
  %13 = shl i8 %i.dv, 1
  %14 = ashr i8 %13, 7
  %15 = add nsw i8 %14, %i.du
  switch i8 %15, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.t
  %i.dw = icmp samesign ult i8 %i.dl, %i.dn
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i

bb.w:                                             ; preds = %bb.u
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  %i.dx = load i64, ptr %i.e, align 8, !alias.scope !2792, !noalias !2793, !noundef !11 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 2305843009213693952
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !2794, !noalias !2795, !noundef !11 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 2305843009213693952
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.eb, 0
  br i1 %i.ed, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i, label %switch.lookup.i.i.i

switch.lookup.i.i.i:                              ; preds = %bb.y
  %i.ee = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0.ph119, i32 noundef 126), !noalias !2793
  %i.ef = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dh, i32 noundef 126)
  %i.eg = xor i1 %i.ee, true
  %i.eh = and i1 %i.ef, %i.eg
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i: ; preds = %switch.lookup.i.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.0.0.i.i.i = phi i1 [ %i.dw, %bb.v ], [ true, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.x ], [ %i.eh, %switch.lookup.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2796)
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 51
  %i.ej = load i8, ptr %i.ei, align 1, !range !22, !alias.scope !2800, !noalias !2801, !noundef !11 ; 4 uses
  %i.ek = icmp eq i8 %i.dl, %i.ej
  br i1 %i.ek, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i
  %i.el = load i16, ptr %i.d, align 8, !alias.scope !2802, !noalias !2803, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.en = load i16, ptr %i.em, align 8, !alias.scope !2800, !noalias !2801, !noundef !11
  %i.eo = trunc i16 %i.el to i8
  %i.ep = lshr i8 %i.eo, 6
  %i.eq = and i8 %i.ep, 1
  %i.er = trunc i16 %i.en to i8
  %16 = shl i8 %i.er, 1
  %17 = ashr i8 %16, 7
  %18 = add nsw i8 %17, %i.eq
  switch i8 %18, label %default.unreachable [
    i8 -1, label %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6_crit_edge.i
    i8 0, label %bb.ab
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i
  ]

._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6_crit_edge.i: ; preds = %bb.z
  br i1 %.sroa.0.0.i.i.i, label %bb.ad, label %bb.aj

bb.aa:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i
  %i.es = icmp samesign ult i8 %i.dl, %i.ej
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %i.et = load i64, ptr %i.e, align 8, !alias.scope !2806, !noalias !2807, !noundef !11 ; 2 uses
  %i.eu = icmp ult i64 %i.et, 2305843009213693952
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !2808, !noalias !2809, !noundef !11 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, 2305843009213693952
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i, label %switch.lookup.i.i4.i

switch.lookup.i.i4.i:                             ; preds = %bb.ac
  %i.fa = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0.ph119, i32 noundef 126), !noalias !2807
  %i.fb = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.di, i32 noundef 126)
  %i.fc = xor i1 %i.fa, true
  %i.fd = and i1 %i.fb, %i.fc
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i: ; preds = %bb.ac, %bb.ab, %bb.z
  br i1 %.sroa.0.0.i.i.i, label %bb.aj, label %bb.ad

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i: ; preds = %switch.lookup.i.i4.i, %bb.aa
  %.sroa.0.0.i.i3.i = phi i1 [ %i.es, %bb.aa ], [ %i.fd, %switch.lookup.i.i4.i ]
  %i.fe = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i3.i
  br i1 %i.fe, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6_crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.ff = icmp eq i8 %i.dn, %i.ej
  br i1 %i.ff, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.fh = load i16, ptr %i.fg, align 8, !alias.scope !2814, !noalias !2815, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.fj = load i16, ptr %i.fi, align 8, !alias.scope !2816, !noalias !2817, !noundef !11
  %i.fk = trunc i16 %i.fh to i8
  %i.fl = lshr i8 %i.fk, 6
  %i.fm = and i8 %i.fl, 1
  %i.fn = trunc i16 %i.fj to i8
  %19 = shl i8 %i.fn, 1
  %20 = ashr i8 %19, 7
  %21 = add nsw i8 %20, %i.fm
  switch i8 %21, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ad
  %i.fo = icmp samesign ult i8 %i.dn, %i.ej
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i

bb.ag:                                            ; preds = %bb.ae
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !2820, !noalias !2821, !noundef !11 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 2305843009213693952
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp eq i64 %i.fq, 0
  br i1 %i.fs, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !2822, !noalias !2823, !noundef !11 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 2305843009213693952
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp eq i64 %i.fu, 0
  br i1 %i.fw, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i, label %switch.lookup.i.i8.i

switch.lookup.i.i8.i:                             ; preds = %bb.ai
  %i.fx = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dh, i32 noundef 126), !noalias !2821
  %i.fy = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.di, i32 noundef 126)
  %i.fz = xor i1 %i.fx, true
  %i.ga = and i1 %i.fy, %i.fz
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i: ; preds = %switch.lookup.i.i8.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sroa.0.0.i.i7.i = phi i1 [ %i.fo, %bb.af ], [ true, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.ah ], [ %i.ga, %switch.lookup.i.i8.i ]
  %i.gb = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i7.i
  %..i.i = select i1 %i.gb, ptr %i.di, ptr %i.dh
  br label %bb.aj

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvB1u_19sort_and_prioritizes_0E0EB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.p, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.aj:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6_crit_edge.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dk, %bb.s ], [ %.sroa.0.0.ph119, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.i ], [ %..i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit10.i ], [ %.sroa.0.0.ph119, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6.thr_comm.i ], [ %.sroa.0.0.ph119, %._RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit6_crit_edge.i ]
  %i.gc = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.gd = sub nuw i64 %i.gc, %i.f                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.gd, 56       ; 3 uses
  %i.ge = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0112319
  call void @llvm.assume(i1 %i.ge)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.gd ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false)
  br i1 %.not, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.gg = load i8, ptr %i.g, align 1, !range !22, !alias.scope !2828, !noalias !2829, !noundef !11 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 51
  %i.gi = load i8, ptr %i.gh, align 1, !range !22, !alias.scope !2829, !noalias !2828, !noundef !11 ; 2 uses
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.al, label %.split

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i16, ptr %i.h, align 8, !alias.scope !2828, !noalias !2829, !noundef !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gm = load i16, ptr %i.gl, align 8, !alias.scope !2829, !noalias !2828, !noundef !11
  %i.gn = trunc i16 %i.gk to i8
  %i.go = lshr i8 %i.gn, 6
  %i.gp = and i8 %i.go, 1
  %i.gq = trunc i16 %i.gm to i8
  %22 = shl i8 %i.gq, 1
  %23 = ashr i8 %22, 7
  %24 = add nsw i8 %23, %i.gp
  switch i8 %24, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62
    i8 0, label %bb.am
    i8 1, label %.thread
  ]

.split:                                           ; preds = %bb.ak
  %i.gr = icmp samesign ult i8 %i.gg, %i.gi
  br i1 %i.gr, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62, label %.thread

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.gs = load i64, ptr %i.i, align 8, !alias.scope !2832, !noalias !2833, !noundef !11 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 2305843009213693952
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp eq i64 %i.gs, 0
  br i1 %i.gu, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !2833, !noalias !2832, !noundef !11 ; 2 uses
  %i.gx = icmp ult i64 %i.gw, 2305843009213693952
  call void @llvm.assume(i1 %i.gx)
  %i.gy = icmp eq i64 %i.gw, 0
  br i1 %i.gy, label %.thread, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.an
  %i.gz = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.028.0.ph116, i32 noundef 126), !noalias !2833
  %i.ha = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gf, i32 noundef 126)
  %i.hb = xor i1 %i.gz, true
  %i.hc = and i1 %i.ha, %i.hb
  br i1 %i.hc, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62, label %.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62: ; preds = %bb.al, %.split, %bb.aj, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  %.not66 = icmp samesign ult i64 %3, %.sroa.16.0112319
  br i1 %.not66, label %bb.ap, label %bb.ao, !prof !24

bb.ao:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62
  %i.hd = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0112319 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gf, i64 51
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  br label %bb.aq

bb.ap:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread62
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.aw, %bb.ao
  %.sroa.19.0.i = phi ptr [ %i.hd, %bb.ao ], [ %i.is, %bb.aw ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.ao ], [ %.sroa.11.1.lcssa.i, %bb.aw ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.ao ], [ %i.iu, %bb.aw ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i37, %bb.ao ], [ %.sroa.16.0112319, %bb.aw ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i40 ; 2 uses
  %i.hi = icmp ult ptr %.sroa.5.0.i, %i.hh
  br i1 %i.hi, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.av, %bb.aq
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.aq ], [ %i.im, %bb.av ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.aq ], [ %i.ip, %bb.av ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.aq ], [ %i.iq, %bb.av ] ; 2 uses
  %i.hj = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0112319
  br i1 %i.hj, label %bb.ax, label %bb.aw

.lr.ph.i42:                                       ; preds = %bb.aq, %bb.av
  %.sroa.5.122.i = phi ptr [ %i.iq, %bb.av ], [ %.sroa.5.0.i, %bb.aq ] ; 6 uses
  %.sroa.11.121.i = phi i64 [ %i.ip, %bb.av ], [ %.sroa.11.0.i, %bb.aq ] ; 2 uses
  %.sroa.19.120.i = phi ptr [ %i.im, %bb.av ], [ %.sroa.19.0.i, %bb.aq ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.5.122.i, i64 51
  %i.hl = load i8, ptr %i.hk, align 1, !range !22, !alias.scope !2839, !noalias !2840, !noundef !11 ; 2 uses
  %i.hm = load i8, ptr %i.he, align 1, !range !22, !alias.scope !2841, !noalias !2842, !noundef !11 ; 2 uses
  %i.hn = icmp eq i8 %i.hl, %i.hm
  br i1 %i.hn, label %bb.ar, label %.split.i

bb.ar:                                            ; preds = %.lr.ph.i42
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.5.122.i, i64 48
  %i.hp = load i16, ptr %i.ho, align 8, !alias.scope !2839, !noalias !2840, !noundef !11
  %i.hq = load i16, ptr %i.hf, align 8, !alias.scope !2841, !noalias !2842, !noundef !11
  %i.hr = trunc i16 %i.hp to i8
  %i.hs = lshr i8 %i.hr, 6
  %i.ht = and i8 %i.hs, 1
  %i.hu = trunc i16 %i.hq to i8
  %25 = shl i8 %i.hu, 1
  %26 = ashr i8 %25, 7
  %27 = add nsw i8 %26, %i.ht
  switch i8 %27, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread12.i
    i8 0, label %bb.as
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i
  ]

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread12.i: ; preds = %bb.ar
  %i.hv = getelementptr inbounds i8, ptr %.sroa.19.120.i, i64 -56
  br label %bb.au

.split.i:                                         ; preds = %.lr.ph.i42
  %i.hw = icmp samesign ult i8 %i.hl, %i.hm
  %i.hx = getelementptr inbounds i8, ptr %.sroa.19.120.i, i64 -56 ; 3 uses
  br i1 %i.hw, label %bb.au, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.5.122.i, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !2845, !noalias !2846, !noundef !11 ; 2 uses
  %i.ia = icmp ult i64 %i.hz, 2305843009213693952
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp eq i64 %i.hz, 0
  br i1 %i.ib, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = load i64, ptr %i.hg, align 8, !alias.scope !2847, !noalias !2848, !noundef !11 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 2305843009213693952
  call void @llvm.assume(i1 %i.id)
  %i.ie = icmp eq i64 %i.ic, 0
  br i1 %i.ie, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.if = getelementptr inbounds i8, ptr %.sroa.19.120.i, i64 -56 ; 2 uses
  br label %bb.av

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43: ; preds = %bb.at
  %i.ig = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.5.122.i, i32 noundef 126), !noalias !2846
  %i.ih = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gf, i32 noundef 126), !noalias !2834
  %i.ii = xor i1 %i.ig, true
  %i.ij = and i1 %i.ih, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %.sroa.19.120.i, i64 -56 ; 3 uses
  br i1 %i.ij, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43, %.split.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread12.i
  %i.il = phi ptr [ %i.hv, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread12.i ], [ %i.ik, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43 ], [ %i.hx, %.split.i ]
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i, %.split.i
  %i.im = phi ptr [ %i.il, %bb.au ], [ %i.ik, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43 ], [ %i.if, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i ], [ %i.hx, %.split.i ] ; 2 uses
  %.sroa.0.0.i.i11.i = phi i64 [ 1, %bb.au ], [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43 ], [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i ], [ 0, %.split.i ]
  %i.in = phi ptr [ %2, %bb.au ], [ %i.ik, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i43 ], [ %i.if, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i ], [ %i.hx, %.split.i ]
  %i.io = getelementptr inbounds nuw [56 x i8], ptr %i.in, i64 %.sroa.11.121.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.io, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.122.i, i64 56, i1 false), !alias.scope !2849, !noalias !2850
  %i.ip = add i64 %.sroa.0.0.i.i11.i, %.sroa.11.121.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.5.122.i, i64 56 ; 3 uses
  %i.ir = icmp ult ptr %i.iq, %i.hh
  br i1 %i.ir, label %.lr.ph.i42, label %._crit_edge.i

bb.aw:                                            ; preds = %._crit_edge.i
  %i.is = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56 ; 2 uses
  %i.it = getelementptr inbounds nuw [56 x i8], ptr %i.is, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.it, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !alias.scope !2849, !noalias !2851
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56
  br label %bb.aq

bb.ax:                                            ; preds = %._crit_edge.i
  %i.iv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.iv, i1 false), !alias.scope !2849
  %i.iw = sub i64 %.sroa.16.0112319, %.sroa.11.1.lcssa.i ; 4 uses
  %.not29.i = icmp eq i64 %.sroa.16.0112319, %.sroa.11.1.lcssa.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.ax
  %i.ix = getelementptr [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.iw, 1
  %i.iy = icmp eq i64 %.sroa.16.0112319, %.neg
  br i1 %i.iy, label %.epil.preheader, label %.lr.ph27.i.new

.lr.ph27.i.new:                                   ; preds = %.lr.ph27.i
  %unroll_iter = and i64 %i.iw, -2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph27.i.new
  %.sroa.06.025.i = phi i64 [ 0, %.lr.ph27.i.new ], [ %i.jc, %bb.ay ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph27.i.new ], [ %niter.next.1, %bb.ay ]
  %i.iz = xor i64 %.sroa.06.025.i, -1
  %i.ja = getelementptr [56 x i8], ptr %i.hd, i64 %i.iz
  %i.jb = getelementptr [56 x i8], ptr %i.ix, i64 %.sroa.06.025.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jb, ptr noundef nonnull align 8 dereferenceable(56) %i.ja, i64 56, i1 false), !alias.scope !2849
  %i.jc = add nuw i64 %.sroa.06.025.i, 2          ; 2 uses
  %i.jd = xor i64 %.sroa.06.025.i, -2
  %i.je = getelementptr [56 x i8], ptr %i.hd, i64 %i.jd
  %i.jf = getelementptr [56 x i8], ptr %i.ix, i64 %.sroa.06.025.i
  %i.jg = getelementptr i8, ptr %i.jf, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jg, ptr noundef nonnull align 8 dereferenceable(56) %i.je, i64 56, i1 false), !alias.scope !2849
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ay

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph27.i
  %.sroa.06.025.i.epil.init = phi i64 [ 0, %.lr.ph27.i ], [ %i.jc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod400 = trunc i64 %i.iw to i1
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.jh = xor i64 %.sroa.06.025.i.epil.init, -1
  %i.ji = getelementptr [56 x i8], ptr %i.hd, i64 %i.jh
  %i.jj = getelementptr [56 x i8], ptr %i.ix, i64 %.sroa.06.025.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jj, ptr noundef nonnull align 8 dereferenceable(56) %i.ji, i64 56, i1 false), !alias.scope !2849
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ax
  %i.jk = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.jk, label %.thread, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %.not.i45 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0112319
  br i1 %.not.i45, label %bb.ba, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit, !prof !25

bb.ba:                                            ; preds = %bb.az
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !noalias !2852
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit: ; preds = %bb.az
  %i.jl = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.jl, i64 noundef %i.iw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.jm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.al, %bb.am, %bb.an, %.split, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2853)
  %.not67 = icmp samesign ult i64 %3, %.sroa.16.0112319
  br i1 %.not67, label %bb.bc, label %bb.bb, !prof !24

bb.bb:                                            ; preds = %.thread
  %i.jn = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0112319 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gf, i64 51
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  br label %bb.bd

bb.bc:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.bd:                                            ; preds = %bb.bj, %bb.bb
  %.sroa.19.0.i48 = phi ptr [ %i.jn, %bb.bb ], [ %i.lc, %bb.bj ] ; 2 uses
  %.sroa.11.0.i49 = phi i64 [ 0, %bb.bb ], [ %i.le, %bb.bj ] ; 2 uses
  %.sroa.5.0.i50 = phi ptr [ %.sroa.0.0.ph119, %bb.bb ], [ %i.lf, %bb.bj ] ; 3 uses
  %.sroa.0.0.i51 = phi i64 [ %.sroa.0.0.i37, %bb.bb ], [ %.sroa.16.0112319, %bb.bj ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i51 ; 2 uses
  %i.js = icmp ult ptr %.sroa.5.0.i50, %i.jr
  br i1 %i.js, label %.lr.ph.i57, label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %bb.bi, %bb.bd
  %.sroa.19.1.lcssa.i53 = phi ptr [ %.sroa.19.0.i48, %bb.bd ], [ %i.kv, %bb.bi ]
  %.sroa.11.1.lcssa.i54 = phi i64 [ %.sroa.11.0.i49, %bb.bd ], [ %i.kz, %bb.bi ] ; 10 uses
  %.sroa.5.1.lcssa.i55 = phi ptr [ %.sroa.5.0.i50, %bb.bd ], [ %i.la, %bb.bi ] ; 2 uses
  %i.jt = icmp eq i64 %.sroa.0.0.i51, %.sroa.16.0112319
  br i1 %i.jt, label %bb.bk, label %bb.bj

.lr.ph.i57:                                       ; preds = %bb.bd, %bb.bi
  %.sroa.5.114.i = phi ptr [ %i.la, %bb.bi ], [ %.sroa.5.0.i50, %bb.bd ] ; 6 uses
  %.sroa.11.113.i = phi i64 [ %i.kz, %bb.bi ], [ %.sroa.11.0.i49, %bb.bd ] ; 2 uses
  %.sroa.19.112.i = phi ptr [ %i.kv, %bb.bi ], [ %.sroa.19.0.i48, %bb.bd ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %i.ju = load i8, ptr %i.jo, align 1, !range !22, !alias.scope !2860, !noalias !2861, !noundef !11 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 51
  %i.jw = load i8, ptr %i.jv, align 1, !range !22, !alias.scope !2862, !noalias !2863, !noundef !11 ; 2 uses
  %i.jx = icmp eq i8 %i.ju, %i.jw
  br i1 %i.jx, label %bb.be, label %.split.i58

bb.be:                                            ; preds = %.lr.ph.i57
  %i.jy = load i16, ptr %i.jp, align 8, !alias.scope !2860, !noalias !2861, !noundef !11
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 48
  %i.ka = load i16, ptr %i.jz, align 8, !alias.scope !2862, !noalias !2863, !noundef !11
  %i.kb = trunc i16 %i.jy to i8
  %i.kc = lshr i8 %i.kb, 6
  %i.kd = and i8 %i.kc, 1
  %i.ke = trunc i16 %i.ka to i8
  %28 = shl i8 %i.ke, 1
  %29 = ashr i8 %28, 7
  %30 = add nsw i8 %29, %i.kd
  switch i8 %30, label %default.unreachable [
    i8 -1, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread31.i
    i8 0, label %bb.bf
    i8 1, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i
  ]

_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread31.i: ; preds = %bb.be
  %i.kf = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -56
  br label %bb.bh

.split.i58:                                       ; preds = %.lr.ph.i57
  %.not37.i = icmp samesign ult i8 %i.ju, %i.jw
  %i.kg = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -56 ; 2 uses
  br i1 %.not37.i, label %bb.bh, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  %i.kh = load i64, ptr %i.jq, align 8, !alias.scope !2866, !noalias !2867, !noundef !11 ; 2 uses
  %i.ki = icmp ult i64 %i.kh, 2305843009213693952
  call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp eq i64 %i.kh, 0
  br i1 %i.kj, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !2868, !noalias !2869, !noundef !11 ; 2 uses
  %i.km = icmp ult i64 %i.kl, 2305843009213693952
  call void @llvm.assume(i1 %i.km)
  %i.kn = icmp eq i64 %i.kl, 0
  br i1 %i.kn, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i, label %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i

_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ko = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -56
  br label %bb.bi

_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i: ; preds = %bb.bg
  %i.kp = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gf, i32 noundef 126), !noalias !2867
  %i.kq = call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.5.114.i, i32 noundef 126), !noalias !2853
  %i.kr = xor i1 %i.kp, true
  %i.ks = and i1 %i.kq, %i.kr
  %i.kt = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -56 ; 2 uses
  br i1 %i.ks, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i, %.split.i58, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread31.i
  %i.ku = phi ptr [ %i.kf, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread31.i ], [ %i.kt, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i ], [ %i.kg, %.split.i58 ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i, %.split.i58
  %i.kv = phi ptr [ %i.ku, %bb.bh ], [ %i.kt, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i ], [ %i.ko, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i ], [ %i.kg, %.split.i58 ] ; 2 uses
  %i.kw = phi i64 [ 0, %bb.bh ], [ 1, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i ], [ 1, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i ], [ 1, %.split.i58 ]
  %i.kx = phi ptr [ %i.ku, %bb.bh ], [ %2, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.i ], [ %2, %_RNCINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB17_7sort_byNCNvB19_19sort_and_prioritizes_0E0E0B1b_.exit.thread.i ], [ %2, %.split.i58 ]
  %i.ky = getelementptr inbounds nuw [56 x i8], ptr %i.kx, i64 %.sroa.11.113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ky, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.114.i, i64 56, i1 false), !alias.scope !2870, !noalias !2871
  %i.kz = add i64 %i.kw, %.sroa.11.113.i          ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 56 ; 3 uses
  %i.lb = icmp ult ptr %i.la, %i.jr
  br i1 %i.lb, label %.lr.ph.i57, label %._crit_edge.i52

bb.bj:                                            ; preds = %._crit_edge.i52
  %i.lc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i53, i64 -56
  %i.ld = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ld, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i55, i64 56, i1 false), !alias.scope !2870, !noalias !2872
  %i.le = add i64 %.sroa.11.1.lcssa.i54, 1
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i55, i64 56
  br label %bb.bd

bb.bk:                                            ; preds = %._crit_edge.i52
  %i.lg = mul nuw nsw i64 %.sroa.11.1.lcssa.i54, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.lg, i1 false), !alias.scope !2870
  %i.lh = sub i64 %.sroa.16.0112319, %.sroa.11.1.lcssa.i54 ; 6 uses
  %.not21.i = icmp eq i64 %.sroa.16.0112319, %.sroa.11.1.lcssa.i54
  br i1 %.not21.i, label %.outer._crit_edge.thread, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.bk
  %i.li = getelementptr [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.11.1.lcssa.i54 ; 3 uses
  %.neg414 = add i64 %.sroa.11.1.lcssa.i54, 1
  %xtraiter409 = and i64 %i.lh, 1
  %i.lj = icmp eq i64 %.sroa.16.0112319, %.neg414
  br i1 %i.lj, label %.epil.preheader401, label %.lr.ph19.i.new

.lr.ph19.i.new:                                   ; preds = %.lr.ph19.i
  %unroll_iter412 = and i64 %i.lh, -2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph19.i.new
  %.sroa.06.017.i = phi i64 [ 0, %.lr.ph19.i.new ], [ %i.ln, %bb.bl ] ; 5 uses
  %niter413 = phi i64 [ 0, %.lr.ph19.i.new ], [ %niter413.next.1, %bb.bl ]
  %i.lk = xor i64 %.sroa.06.017.i, -1
  %i.ll = getelementptr [56 x i8], ptr %i.jn, i64 %i.lk
  %i.lm = getelementptr [56 x i8], ptr %i.li, i64 %.sroa.06.017.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lm, ptr noundef nonnull align 8 dereferenceable(56) %i.ll, i64 56, i1 false), !alias.scope !2870
  %i.ln = add nuw i64 %.sroa.06.017.i, 2          ; 2 uses
  %i.lo = xor i64 %.sroa.06.017.i, -2
  %i.lp = getelementptr [56 x i8], ptr %i.jn, i64 %i.lo
  %i.lq = getelementptr [56 x i8], ptr %i.li, i64 %.sroa.06.017.i
  %i.lr = getelementptr i8, ptr %i.lq, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lr, ptr noundef nonnull align 8 dereferenceable(56) %i.lp, i64 56, i1 false), !alias.scope !2870
  %niter413.next.1 = add i64 %niter413, 2         ; 2 uses
  %niter413.ncmp.1 = icmp eq i64 %niter413.next.1, %unroll_iter412
  br i1 %niter413.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit.unr-lcssa, label %bb.bl

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit.unr-lcssa: ; preds = %bb.bl
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit, label %.epil.preheader401

.epil.preheader401:                               ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit.unr-lcssa, %.lr.ph19.i
  %.sroa.06.017.i.epil.init = phi i64 [ 0, %.lr.ph19.i ], [ %i.ln, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod411 = trunc i64 %i.lh to i1
  call void @llvm.assume(i1 %lcmp.mod411)
  %i.ls = xor i64 %.sroa.06.017.i.epil.init, -1
  %i.lt = getelementptr [56 x i8], ptr %i.jn, i64 %i.ls
  %i.lu = getelementptr [56 x i8], ptr %i.li, i64 %.sroa.06.017.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lu, ptr noundef nonnull align 8 dereferenceable(56) %i.lt, i64 56, i1 false), !alias.scope !2870
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit.unr-lcssa, %.epil.preheader401
  %i.lv = icmp ugt i64 %.sroa.11.1.lcssa.i54, %.sroa.16.0112319
  br i1 %i.lv, label %bb.bm, label %.outer, !prof !25

.outer._crit_edge.thread:                         ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvB1u_19sort_and_prioritizes_0E0EB1w_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit
  %i.lw = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.11.1.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lx = icmp ult i64 %i.lh, 33
  br i1 %i.lx, label %.outer._crit_edge, label %.lr.ph

bb.bm:                                            ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvB1f_19sort_and_prioritizes_0E0E0EB1h_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i54, i64 noundef %.sroa.16.0112319, i64 noundef %.sroa.16.0112319, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i = alloca [32 x i8], align 8        ; 9 uses
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph114 = phi ptr [ %i.gg, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph113 = phi i64 [ %i.fr, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph112 = phi i32 [ %i.cl, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph111 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph114, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph114, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph114 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph111, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph111, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph111, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph112, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph273

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit
  %i.i = icmp eq i32 %i.cl, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph273

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa105 = phi ptr [ %.sroa.0.0.ph114, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.gg, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.fr, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  %i.j = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvMs0_NtB1w_6expandNtB33_8Expander15stage_wildcardss_0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.k = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.l = icmp samesign ult i64 %3, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa105, i64 %i.m ; 3 uses
  %i.p = getelementptr [56 x i8], ptr %2, i64 %i.m ; 8 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvMs0_NtB1d_6expandNtB2K_8Expander15stage_wildcardss_0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa105, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB19_7sort_byNCNvMs0_NtB1d_6expandNtB2K_8Expander15stage_wildcardss_0E0EB1d_(ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.ph.lcssa105, i64 56, i1 false), !alias.scope !2916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !alias.scope !2916
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.q = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.m  ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.r, label %.noexc33.i, label %.loopexit4.i

end_hunk_12
