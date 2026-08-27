Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.13?download=true
inline.NumInlined: 2227
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3r_:bb.a
  %.not2.i4.i20 = icmp eq i32 %i.as, 0
  %.sroa.01.0.i5.i21 = select i1 %.not2.i4.i20, ptr null, ptr %i.ar
  %i.at = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.08.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i19, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i21), !noalias !197
  %i.au = icmp slt i32 %i.at, %i.am
  %i.av = xor i1 %i.ad, %i.au
  br i1 %i.av, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.aw = load ptr, ptr %.val, align 8, !alias.scope !203, !noalias !206, !nonnull !5, !align !82, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !203, !noalias !206, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !range !177, !noalias !211, !noundef !5
  %.not.i.i22 = icmp eq i32 %i.ba, -1
  %..i.i23 = select i1 %.not.i.i22, ptr null, ptr %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !203, !noalias !206, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !211, !noundef !5
  %.not2.i.i24 = icmp eq i32 %i.bd, 0
  %.sroa.01.0.i.i25 = select i1 %.not2.i.i24, ptr null, ptr %i.bc
  %i.be = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.04.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i23, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i25), !noalias !212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bf = load ptr, ptr %.val, align 8, !alias.scope !213, !noalias !216, !nonnull !5, !align !82, !noundef !5
  %i.bg = load ptr, ptr %i.ax, align 8, !alias.scope !213, !noalias !216, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !range !177, !noalias !218, !noundef !5
  %.not.i2.i26 = icmp eq i32 %i.bi, -1
  %..i3.i27 = select i1 %.not.i2.i26, ptr null, ptr %i.bg
  %i.bj = load ptr, ptr %i.bb, align 8, !alias.scope !213, !noalias !216, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !218, !noundef !5
  %.not2.i4.i28 = icmp eq i32 %i.bk, 0
  %.sroa.01.0.i5.i29 = select i1 %.not2.i4.i28, ptr null, ptr %i.bj
  %i.bl = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.08.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i27, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i29), !noalias !213
  %i.bm = icmp slt i32 %i.bl, %i.be
  %i.bn = xor i1 %i.ad, %i.bm
  %..i = select i1 %i.bn, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3l_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3l_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3r_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 13101380734168716) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3r_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3r_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3r_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val13 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.n = load ptr, ptr %.val13, align 8, !alias.scope !219, !noalias !222, !nonnull !5, !align !82, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !219, !noalias !222, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !177, !noalias !227, !noundef !5
  %.not.i.i = icmp eq i32 %i.r, -1
  %..i.i = select i1 %.not.i.i, ptr null, ptr %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !219, !noalias !222, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !noalias !227, !noundef !5
  %.not2.i.i = icmp eq i32 %i.u, 0
  %.sroa.01.0.i.i = select i1 %.not2.i.i, ptr null, ptr %i.t
  %i.v = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i), !noalias !228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.w = load ptr, ptr %.val13, align 8, !alias.scope !229, !noalias !232, !nonnull !5, !align !82, !noundef !5
  %i.x = load ptr, ptr %i.o, align 8, !alias.scope !229, !noalias !232, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !177, !noalias !234, !noundef !5
  %.not.i2.i = icmp eq i32 %i.z, -1
  %..i3.i = select i1 %.not.i2.i, ptr null, ptr %i.x
  %i.aa = load ptr, ptr %i.s, align 8, !alias.scope !229, !noalias !232, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !234, !noundef !5
  %.not2.i4.i = icmp eq i32 %i.ab, 0
  %.sroa.01.0.i5.i = select i1 %.not2.i4.i, ptr null, ptr %i.aa
  %i.ac = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.04.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i), !noalias !229
  %i.ad = icmp slt i32 %i.ac, %i.v                ; 2 uses
  %.val12 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ae = load ptr, ptr %.val12, align 8, !alias.scope !235, !noalias !238, !nonnull !5, !align !82, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.val12, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !235, !noalias !238, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !range !177, !noalias !243, !noundef !5
  %.not.i.i14 = icmp eq i32 %i.ai, -1
  %..i.i15 = select i1 %.not.i.i14, ptr null, ptr %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.val12, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !235, !noalias !238, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !243, !noundef !5
  %.not2.i.i16 = icmp eq i32 %i.al, 0
  %.sroa.01.0.i.i17 = select i1 %.not2.i.i16, ptr null, ptr %i.ak
  %i.am = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i15, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i17), !noalias !244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.an = load ptr, ptr %.val12, align 8, !alias.scope !245, !noalias !248, !nonnull !5, !align !82, !noundef !5
  %i.ao = load ptr, ptr %i.af, align 8, !alias.scope !245, !noalias !248, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !range !177, !noalias !250, !noundef !5
  %.not.i2.i18 = icmp eq i32 %i.aq, -1
  %..i3.i19 = select i1 %.not.i2.i18, ptr null, ptr %i.ao
  %i.ar = load ptr, ptr %i.aj, align 8, !alias.scope !245, !noalias !248, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !250, !noundef !5
  %.not2.i4.i20 = icmp eq i32 %i.as, 0
  %.sroa.01.0.i5.i21 = select i1 %.not2.i4.i20, ptr null, ptr %i.ar
  %i.at = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.08.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i19, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i21), !noalias !245
  %i.au = icmp slt i32 %i.at, %i.am
  %i.av = xor i1 %i.ad, %i.au
  br i1 %i.av, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.aw = load ptr, ptr %.val, align 8, !alias.scope !251, !noalias !254, !nonnull !5, !align !82, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !251, !noalias !254, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !range !177, !noalias !259, !noundef !5
  %.not.i.i22 = icmp eq i32 %i.ba, -1
  %..i.i23 = select i1 %.not.i.i22, ptr null, ptr %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !251, !noalias !254, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !259, !noundef !5
  %.not2.i.i24 = icmp eq i32 %i.bd, 0
  %.sroa.01.0.i.i25 = select i1 %.not2.i.i24, ptr null, ptr %i.bc
  %i.be = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.04.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i23, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i25), !noalias !260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.bf = load ptr, ptr %.val, align 8, !alias.scope !261, !noalias !264, !nonnull !5, !align !82, !noundef !5
  %i.bg = load ptr, ptr %i.ax, align 8, !alias.scope !261, !noalias !264, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !range !177, !noalias !266, !noundef !5
  %.not.i2.i26 = icmp eq i32 %i.bi, -1
  %..i3.i27 = select i1 %.not.i2.i26, ptr null, ptr %i.bg
  %i.bj = load ptr, ptr %i.bb, align 8, !alias.scope !261, !noalias !264, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !266, !noundef !5
  %.not2.i4.i28 = icmp eq i32 %i.bk, 0
  %.sroa.01.0.i5.i29 = select i1 %.not2.i4.i28, ptr null, ptr %i.bj
  %i.bl = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.08.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i27, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i29), !noalias !261
  %i.bm = icmp slt i32 %i.bl, %i.be
  %i.bn = xor i1 %i.ad, %i.bm
  %..i = select i1 %i.bn, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3l_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3l_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB30_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 13101380734168716) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB30_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB30_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB30_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 16 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 16 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.p = load i8, ptr %i.n, align 4, !range !282, !alias.scope !283, !noalias !284, !noundef !5 ; 5 uses
  %4 = zext nneg i8 %i.p to i64                   ; 2 uses
  %i.q = load i8, ptr %i.o, align 4, !range !282, !alias.scope !284, !noalias !283, !noundef !5 ; 4 uses
  %5 = zext nneg i8 %i.q to i64                   ; 2 uses
  %i.r = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.s = icmp eq i8 %i.p, %i.q
  br i1 %i.s, label %bb.d, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.c
  switch i8 %i.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.e
    i8 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !283, !noalias !284, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 25
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !284, !noalias !283, !noundef !5
  %i.x = tail call i8 @llvm.ucmp.i8.i8(i8 %i.u, i8 %i.w)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !285, !alias.scope !283, !noalias !284, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !range !285, !alias.scope !284, !noalias !283, !noundef !5 ; 2 uses
  %i.ac = tail call i8 @llvm.ucmp.i8.i32(i32 %i.z, i32 %i.ab)
  %i.ad = icmp eq i32 %i.z, %i.ab
  br i1 %i.ad, label %bb.g, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !283, !noalias !284, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !284, !noalias !283, !noundef !5
  %i.ai = tail call i8 @llvm.ucmp.i8.i32(i32 %i.af, i32 %i.ah)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.c ], [ %i.x, %bb.e ], [ %i.ai, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.aj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !291, !noalias !294, !noundef !5 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 1                   ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !291, !noalias !294, !nonnull !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !291, !noalias !294
  %.sink11.i.i.i.i = select i1 %i.am, ptr %i.an, ptr %.sroa.0.0
  %.sink10.i.i.i.i = select i1 %i.am, i64 %i.ap, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !296, !noalias !299, !noundef !5 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 1                   ; 2 uses
  %i.at = load ptr, ptr %.sroa.04.0, align 8, !alias.scope !296, !noalias !299, !nonnull !5
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !296, !noalias !299
  %.sink11.i1.i.i.i = select i1 %i.as, ptr %i.at, ptr %.sroa.04.0
  %.sink10.i2.i.i.i = select i1 %i.as, i64 %i.av, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aw, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.h
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.aw, %bb.h ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !311, !noalias !312, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !313, !noalias !314, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.bc = and i64 %i.bb, 1
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.bd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !315, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !315, !noundef !5 ; 2 uses
  %i.bi = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.bj = and i64 %i.bi, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.bk ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !315, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !315, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bo)
  %i.bp = tail call i32 @memcmp(ptr nonnull %i.bf, ptr nonnull %i.bm, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !315 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub i64 %i.bh, %i.bo
  %spec.select.i.i.i.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %bb.h, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.ax, %._crit_edge.i.i.i.i.i ], [ %i.ay, %.loopexit.i.i.i.i.i ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.bw = load i8, ptr %i.bv, align 4, !range !282, !alias.scope !331, !noalias !332, !noundef !5 ; 3 uses
  %6 = zext nneg i8 %i.bw to i64                  ; 2 uses
  %i.bx = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %6)
  %i.by = icmp eq i8 %i.p, %i.bw
  br i1 %i.by, label %bb.i, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.i:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  switch i8 %i.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15 [
    i8 1, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !332, !noalias !331, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 25
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !331, !noalias !332, !noundef !5
  %i.cd = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ca, i8 %i.cc)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.k:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !range !285, !alias.scope !332, !noalias !331, !noundef !5 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !range !285, !alias.scope !331, !noalias !332, !noundef !5 ; 2 uses
  %i.ci = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cf, i32 %i.ch)
  %i.cj = icmp eq i32 %i.cf, %i.ch
  br i1 %i.cj, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !332, !noalias !331, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !alias.scope !331, !noalias !332, !noundef !5
  %i.co = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cl, i32 %i.cn)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12: ; preds = %bb.l, %bb.k, %bb.j, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %.sroa.0.0.i.i.i13 = phi i8 [ %i.bx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit ], [ %i.cd, %bb.j ], [ %i.co, %bb.l ], [ %i.ci, %bb.k ] ; 2 uses
  %i.cp = icmp eq i8 %.sroa.0.0.i.i.i13, 0
  br i1 %i.cp, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !338, !noalias !341, !noundef !5 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 1                   ; 2 uses
  %i.ct = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !338, !noalias !341, !nonnull !5
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !338, !noalias !341
  %.sink11.i.i.i.i16 = select i1 %i.cs, ptr %i.ct, ptr %.sroa.0.0
  %.sink10.i.i.i.i17 = select i1 %i.cs, i64 %i.cv, i64 %i.cr ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !343, !noalias !346, !noundef !5 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 1                   ; 2 uses
  %i.cz = load ptr, ptr %.sroa.08.0, align 8, !alias.scope !343, !noalias !346, !nonnull !5
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !343, !noalias !346
  %.sink11.i1.i.i.i18 = select i1 %i.cy, ptr %i.cz, ptr %.sroa.08.0
  %.sink10.i2.i.i.i19 = select i1 %i.cy, i64 %i.db, i64 %i.cx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %..i.i.i.i.i.i20 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i19, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i17) ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq i64 %..i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i22

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i22
  %i.dc = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i23, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29 = icmp eq i64 %i.dc, %..i.i.i.i.i.i20
  br i1 %exitcond.not.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i22

._crit_edge.i.i.i.i.i30:                          ; preds = %bb.m, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15
  %i.dd = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i17, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i19)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31

.loopexit.i.i.i.i.i28:                            ; preds = %.lr.ph.i.i.i.i.i22
  %i.de = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i27, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31

.lr.ph.i.i.i.i.i22:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15, %bb.m
  %.sroa.01.019.i.i.i.i.i23 = phi i64 [ %i.dc, %bb.m ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i16, i64 %.sroa.01.019.i.i.i.i.i23
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i18, i64 %.sroa.01.019.i.i.i.i.i23
  %.val15.i.i.i.i.i24 = load ptr, ptr %i.df, align 8, !alias.scope !358, !noalias !359, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i25 = load ptr, ptr %i.dg, align 8, !alias.scope !360, !noalias !361, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %.val15.i.i.i.i.i24 to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.val15.i.i.i.i.i24, i64 %i.dj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !362, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !362, !noundef !5 ; 2 uses
  %i.do = ptrtoint ptr %.val16.i.i.i.i.i25 to i64
  %i.dp = and i64 %i.do, 1
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr i8, ptr %.val16.i.i.i.i.i25, i64 %i.dq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !362, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !362, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.du)
  %i.dv = tail call i32 @memcmp(ptr nonnull %i.dl, ptr nonnull %i.ds, i64 %spec.store.select.i.i.i.i.i.i.i26), !noalias !362 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = sub i64 %i.dn, %i.du
  %spec.select.i.i.i.i.i.i.i27 = select i1 %i.dx, i64 %i.dy, i64 %i.dw ; 2 uses
  %i.dz = icmp eq i64 %spec.select.i.i.i.i.i.i.i27, 0
  br i1 %i.dz, label %bb.m, label %.loopexit.i.i.i.i.i28

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12, %._crit_edge.i.i.i.i.i30, %.loopexit.i.i.i.i.i28
  %.sroa.0.0.i.i14 = phi i8 [ %.sroa.0.0.i.i.i13, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12 ], [ %i.dd, %._crit_edge.i.i.i.i.i30 ], [ %i.de, %.loopexit.i.i.i.i.i28 ]
  %i.ea = icmp eq i8 %.sroa.0.0.i.i14, -1
  %i.eb = xor i1 %i.bu, %i.ea
  br i1 %i.eb, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2U_.exit, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ec = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  %i.ed = icmp eq i8 %i.q, %i.bw
  br i1 %i.ed, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.o:                                             ; preds = %bb.n
  switch i8 %i.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35 [
    i8 1, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 25
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !378, !noalias !379, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 25
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !379, !noalias !378, !noundef !5
  %i.ei = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ef, i8 %i.eh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.q:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 28
  %i.ek = load i32, ptr %i.ej, align 4, !range !285, !alias.scope !378, !noalias !379, !noundef !5 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 28
  %i.em = load i32, ptr %i.el, align 4, !range !285, !alias.scope !379, !noalias !378, !noundef !5 ; 2 uses
  %i.en = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ek, i32 %i.em)
  %i.eo = icmp eq i32 %i.ek, %i.em
  br i1 %i.eo, label %bb.r, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %i.eq = load i32, ptr %i.ep, align 4, !alias.scope !378, !noalias !379, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !379, !noalias !378, !noundef !5
  %i.et = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eq, i32 %i.es)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.0.0.i.i.i33 = phi i8 [ %i.ec, %bb.n ], [ %i.ei, %bb.p ], [ %i.et, %bb.r ], [ %i.en, %bb.q ] ; 2 uses
  %i.eu = icmp eq i8 %.sroa.0.0.i.i.i33, 0
  br i1 %i.eu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !385, !noalias !388, !noundef !5 ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, 1                   ; 2 uses
  %i.ey = load ptr, ptr %.sroa.04.0, align 8, !alias.scope !385, !noalias !388, !nonnull !5
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !385, !noalias !388
  %.sink11.i.i.i.i36 = select i1 %i.ex, ptr %i.ey, ptr %.sroa.04.0
  %.sink10.i.i.i.i37 = select i1 %i.ex, i64 %i.fa, i64 %i.ew ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !390, !noalias !393, !noundef !5 ; 2 uses
  %i.fd = icmp ugt i64 %i.fc, 1                   ; 2 uses
  %i.fe = load ptr, ptr %.sroa.08.0, align 8, !alias.scope !390, !noalias !393, !nonnull !5
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !390, !noalias !393
  %.sink11.i1.i.i.i38 = select i1 %i.fd, ptr %i.fe, ptr %.sroa.08.0
  %.sink10.i2.i.i.i39 = select i1 %i.fd, i64 %i.fg, i64 %i.fc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %..i.i.i.i.i.i40 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i39, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i37) ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq i64 %..i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i41, label %._crit_edge.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i42

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i42
  %i.fh = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i43, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i49 = icmp eq i64 %i.fh, %..i.i.i.i.i.i40
  br i1 %exitcond.not.i.i.i.i.i49, label %._crit_edge.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i42

._crit_edge.i.i.i.i.i50:                          ; preds = %bb.s, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35
  %i.fi = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i37, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i39)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51

.loopexit.i.i.i.i.i48:                            ; preds = %.lr.ph.i.i.i.i.i42
  %i.fj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i47, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51

.lr.ph.i.i.i.i.i42:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35, %bb.s
  %.sroa.01.019.i.i.i.i.i43 = phi i64 [ %i.fh, %bb.s ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i36, i64 %.sroa.01.019.i.i.i.i.i43
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i38, i64 %.sroa.01.019.i.i.i.i.i43
  %.val15.i.i.i.i.i44 = load ptr, ptr %i.fk, align 8, !alias.scope !405, !noalias !406, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i45 = load ptr, ptr %i.fl, align 8, !alias.scope !407, !noalias !408, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = ptrtoint ptr %.val15.i.i.i.i.i44 to i64
  %i.fn = and i64 %i.fm, 1
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr i8, ptr %.val15.i.i.i.i.i44, i64 %i.fo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !409, !nonnull !5, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !409, !noundef !5 ; 2 uses
  %i.ft = ptrtoint ptr %.val16.i.i.i.i.i45 to i64
  %i.fu = and i64 %i.ft, 1
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr i8, ptr %.val16.i.i.i.i.i45, i64 %i.fv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !409, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !409, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i46 = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.fz)
  %i.ga = tail call i32 @memcmp(ptr nonnull %i.fq, ptr nonnull %i.fx, i64 %spec.store.select.i.i.i.i.i.i.i46), !noalias !409 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, 0
  %i.gd = sub i64 %i.fs, %i.fz
  %spec.select.i.i.i.i.i.i.i47 = select i1 %i.gc, i64 %i.gd, i64 %i.gb ; 2 uses
  %i.ge = icmp eq i64 %spec.select.i.i.i.i.i.i.i47, 0
  br i1 %i.ge, label %bb.s, label %.loopexit.i.i.i.i.i48

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32, %._crit_edge.i.i.i.i.i50, %.loopexit.i.i.i.i.i48
  %.sroa.0.0.i.i34 = phi i8 [ %.sroa.0.0.i.i.i33, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32 ], [ %i.fi, %._crit_edge.i.i.i.i.i50 ], [ %i.fj, %.loopexit.i.i.i.i.i48 ]
  %i.gf = icmp eq i8 %.sroa.0.0.i.i34, -1
  %i.gg = xor i1 %i.bu, %i.gf
  %..i = select i1 %i.gg, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2U_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2U_.exit: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit31 ], [ %..i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit51 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB30_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 13101380734168716) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB30_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB30_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB30_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 16 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 16 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.p = load i8, ptr %i.n, align 4, !range !282, !alias.scope !425, !noalias !426, !noundef !5 ; 5 uses
  %4 = zext nneg i8 %i.p to i64                   ; 2 uses
  %i.q = load i8, ptr %i.o, align 4, !range !282, !alias.scope !426, !noalias !425, !noundef !5 ; 4 uses
  %5 = zext nneg i8 %i.q to i64                   ; 2 uses
  %i.r = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.s = icmp eq i8 %i.p, %i.q
  br i1 %i.s, label %bb.d, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.c
  switch i8 %i.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.e
    i8 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !425, !noalias !426, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 25
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !426, !noalias !425, !noundef !5
  %i.x = tail call i8 @llvm.ucmp.i8.i8(i8 %i.u, i8 %i.w)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !285, !alias.scope !425, !noalias !426, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !range !285, !alias.scope !426, !noalias !425, !noundef !5 ; 2 uses
  %i.ac = tail call i8 @llvm.ucmp.i8.i32(i32 %i.z, i32 %i.ab)
  %i.ad = icmp eq i32 %i.z, %i.ab
  br i1 %i.ad, label %bb.g, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !425, !noalias !426, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !426, !noalias !425, !noundef !5
  %i.ai = tail call i8 @llvm.ucmp.i8.i32(i32 %i.af, i32 %i.ah)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.c ], [ %i.x, %bb.e ], [ %i.ai, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.aj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !432, !noalias !435, !noundef !5 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 1                   ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !432, !noalias !435, !nonnull !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !432, !noalias !435
  %.sink11.i.i.i.i = select i1 %i.am, ptr %i.an, ptr %.sroa.0.0
  %.sink10.i.i.i.i = select i1 %i.am, i64 %i.ap, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !437, !noalias !440, !noundef !5 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 1                   ; 2 uses
  %i.at = load ptr, ptr %.sroa.04.0, align 8, !alias.scope !437, !noalias !440, !nonnull !5
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !437, !noalias !440
  %.sink11.i1.i.i.i = select i1 %i.as, ptr %i.at, ptr %.sroa.04.0
  %.sink10.i2.i.i.i = select i1 %i.as, i64 %i.av, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aw, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.h, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.h
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.aw, %bb.h ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !452, !noalias !453, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !454, !noalias !455, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.bc = and i64 %i.bb, 1
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.bd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !456, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !456, !noundef !5 ; 2 uses
  %i.bi = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.bj = and i64 %i.bi, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.bk ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !456, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !456, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bo)
  %i.bp = tail call i32 @memcmp(ptr nonnull %i.bf, ptr nonnull %i.bm, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !456 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub i64 %i.bh, %i.bo
  %spec.select.i.i.i.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %bb.h, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.ax, %._crit_edge.i.i.i.i.i ], [ %i.ay, %.loopexit.i.i.i.i.i ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.bw = load i8, ptr %i.bv, align 4, !range !282, !alias.scope !472, !noalias !473, !noundef !5 ; 3 uses
  %6 = zext nneg i8 %i.bw to i64                  ; 2 uses
  %i.bx = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %6)
  %i.by = icmp eq i8 %i.p, %i.bw
  br i1 %i.by, label %bb.i, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.i:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  switch i8 %i.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15 [
    i8 1, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !473, !noalias !472, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 25
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !472, !noalias !473, !noundef !5
  %i.cd = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ca, i8 %i.cc)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.k:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !range !285, !alias.scope !473, !noalias !472, !noundef !5 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !range !285, !alias.scope !472, !noalias !473, !noundef !5 ; 2 uses
  %i.ci = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cf, i32 %i.ch)
  %i.cj = icmp eq i32 %i.cf, %i.ch
  br i1 %i.cj, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !473, !noalias !472, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !alias.scope !472, !noalias !473, !noundef !5
  %i.co = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cl, i32 %i.cn)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12: ; preds = %bb.l, %bb.k, %bb.j, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %.sroa.0.0.i.i.i13 = phi i8 [ %i.bx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit ], [ %i.cd, %bb.j ], [ %i.co, %bb.l ], [ %i.ci, %bb.k ] ; 2 uses
  %i.cp = icmp eq i8 %.sroa.0.0.i.i.i13, 0
  br i1 %i.cp, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !479, !noalias !482, !noundef !5 ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 1                   ; 2 uses
  %i.ct = load ptr, ptr %.sroa.0.0, align 8, !alias.scope !479, !noalias !482, !nonnull !5
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !479, !noalias !482
  %.sink11.i.i.i.i16 = select i1 %i.cs, ptr %i.ct, ptr %.sroa.0.0
  %.sink10.i.i.i.i17 = select i1 %i.cs, i64 %i.cv, i64 %i.cr ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !484, !noalias !487, !noundef !5 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 1                   ; 2 uses
  %i.cz = load ptr, ptr %.sroa.08.0, align 8, !alias.scope !484, !noalias !487, !nonnull !5
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !484, !noalias !487
  %.sink11.i1.i.i.i18 = select i1 %i.cy, ptr %i.cz, ptr %.sroa.08.0
  %.sink10.i2.i.i.i19 = select i1 %i.cy, i64 %i.db, i64 %i.cx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %..i.i.i.i.i.i20 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i19, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i17) ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq i64 %..i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i22

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i22
  %i.dc = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i23, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29 = icmp eq i64 %i.dc, %..i.i.i.i.i.i20
  br i1 %exitcond.not.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i30, label %.lr.ph.i.i.i.i.i22

._crit_edge.i.i.i.i.i30:                          ; preds = %bb.m, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15
  %i.dd = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i17, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i19)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31

.loopexit.i.i.i.i.i28:                            ; preds = %.lr.ph.i.i.i.i.i22
  %i.de = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i27, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31

.lr.ph.i.i.i.i.i22:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15, %bb.m
  %.sroa.01.019.i.i.i.i.i23 = phi i64 [ %i.dc, %bb.m ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i15 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i16, i64 %.sroa.01.019.i.i.i.i.i23
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i18, i64 %.sroa.01.019.i.i.i.i.i23
  %.val15.i.i.i.i.i24 = load ptr, ptr %i.df, align 8, !alias.scope !499, !noalias !500, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i25 = load ptr, ptr %i.dg, align 8, !alias.scope !501, !noalias !502, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %.val15.i.i.i.i.i24 to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.val15.i.i.i.i.i24, i64 %i.dj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !503, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !503, !noundef !5 ; 2 uses
  %i.do = ptrtoint ptr %.val16.i.i.i.i.i25 to i64
  %i.dp = and i64 %i.do, 1
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr i8, ptr %.val16.i.i.i.i.i25, i64 %i.dq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !503, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !noalias !503, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.du)
  %i.dv = tail call i32 @memcmp(ptr nonnull %i.dl, ptr nonnull %i.ds, i64 %spec.store.select.i.i.i.i.i.i.i26), !noalias !503 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = sub i64 %i.dn, %i.du
  %spec.select.i.i.i.i.i.i.i27 = select i1 %i.dx, i64 %i.dy, i64 %i.dw ; 2 uses
  %i.dz = icmp eq i64 %spec.select.i.i.i.i.i.i.i27, 0
  br i1 %i.dz, label %bb.m, label %.loopexit.i.i.i.i.i28

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12, %._crit_edge.i.i.i.i.i30, %.loopexit.i.i.i.i.i28
  %.sroa.0.0.i.i14 = phi i8 [ %.sroa.0.0.i.i.i13, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i12 ], [ %i.dd, %._crit_edge.i.i.i.i.i30 ], [ %i.de, %.loopexit.i.i.i.i.i28 ]
  %i.ea = icmp eq i8 %.sroa.0.0.i.i14, -1
  %i.eb = xor i1 %i.bu, %i.ea
  br i1 %i.eb, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2U_.exit, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.ec = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  %i.ed = icmp eq i8 %i.q, %i.bw
  br i1 %i.ed, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.o:                                             ; preds = %bb.n
  switch i8 %i.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35 [
    i8 1, label %bb.p
    i8 4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 25
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !519, !noalias !520, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 25
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !520, !noalias !519, !noundef !5
  %i.ei = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ef, i8 %i.eh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.q:                                             ; preds = %bb.o
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 28
  %i.ek = load i32, ptr %i.ej, align 4, !range !285, !alias.scope !519, !noalias !520, !noundef !5 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 28
  %i.em = load i32, ptr %i.el, align 4, !range !285, !alias.scope !520, !noalias !519, !noundef !5 ; 2 uses
  %i.en = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ek, i32 %i.em)
  %i.eo = icmp eq i32 %i.ek, %i.em
  br i1 %i.eo, label %bb.r, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %i.eq = load i32, ptr %i.ep, align 4, !alias.scope !519, !noalias !520, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !520, !noalias !519, !noundef !5
  %i.et = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eq, i32 %i.es)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.0.0.i.i.i33 = phi i8 [ %i.ec, %bb.n ], [ %i.ei, %bb.p ], [ %i.et, %bb.r ], [ %i.en, %bb.q ] ; 2 uses
  %i.eu = icmp eq i8 %.sroa.0.0.i.i.i33, 0
  br i1 %i.eu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !526, !noalias !529, !noundef !5 ; 2 uses
  %i.ex = icmp ugt i64 %i.ew, 1                   ; 2 uses
  %i.ey = load ptr, ptr %.sroa.04.0, align 8, !alias.scope !526, !noalias !529, !nonnull !5
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !526, !noalias !529
  %.sink11.i.i.i.i36 = select i1 %i.ex, ptr %i.ey, ptr %.sroa.04.0
  %.sink10.i.i.i.i37 = select i1 %i.ex, i64 %i.fa, i64 %i.ew ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !531, !noalias !534, !noundef !5 ; 2 uses
  %i.fd = icmp ugt i64 %i.fc, 1                   ; 2 uses
  %i.fe = load ptr, ptr %.sroa.08.0, align 8, !alias.scope !531, !noalias !534, !nonnull !5
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !531, !noalias !534
  %.sink11.i1.i.i.i38 = select i1 %i.fd, ptr %i.fe, ptr %.sroa.08.0
  %.sink10.i2.i.i.i39 = select i1 %i.fd, i64 %i.fg, i64 %i.fc ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %..i.i.i.i.i.i40 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i39, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i37) ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq i64 %..i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i41, label %._crit_edge.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i42

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i42
  %i.fh = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i43, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i49 = icmp eq i64 %i.fh, %..i.i.i.i.i.i40
  br i1 %exitcond.not.i.i.i.i.i49, label %._crit_edge.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i42

._crit_edge.i.i.i.i.i50:                          ; preds = %bb.s, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35
  %i.fi = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i37, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i39)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51

.loopexit.i.i.i.i.i48:                            ; preds = %.lr.ph.i.i.i.i.i42
  %i.fj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i47, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51

.lr.ph.i.i.i.i.i42:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35, %bb.s
  %.sroa.01.019.i.i.i.i.i43 = phi i64 [ %i.fh, %bb.s ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i35 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i36, i64 %.sroa.01.019.i.i.i.i.i43
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i38, i64 %.sroa.01.019.i.i.i.i.i43
  %.val15.i.i.i.i.i44 = load ptr, ptr %i.fk, align 8, !alias.scope !546, !noalias !547, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i45 = load ptr, ptr %i.fl, align 8, !alias.scope !548, !noalias !549, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = ptrtoint ptr %.val15.i.i.i.i.i44 to i64
  %i.fn = and i64 %i.fm, 1
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr i8, ptr %.val15.i.i.i.i.i44, i64 %i.fo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !550, !nonnull !5, !noundef !5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noalias !550, !noundef !5 ; 2 uses
  %i.ft = ptrtoint ptr %.val16.i.i.i.i.i45 to i64
  %i.fu = and i64 %i.ft, 1
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr i8, ptr %.val16.i.i.i.i.i45, i64 %i.fv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !550, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !550, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i46 = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.fz)
  %i.ga = tail call i32 @memcmp(ptr nonnull %i.fq, ptr nonnull %i.fx, i64 %spec.store.select.i.i.i.i.i.i.i46), !noalias !550 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, 0
  %i.gd = sub i64 %i.fs, %i.fz
  %spec.select.i.i.i.i.i.i.i47 = select i1 %i.gc, i64 %i.gd, i64 %i.gb ; 2 uses
  %i.ge = icmp eq i64 %spec.select.i.i.i.i.i.i.i47, 0
  br i1 %i.ge, label %bb.s, label %.loopexit.i.i.i.i.i48

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32, %._crit_edge.i.i.i.i.i50, %.loopexit.i.i.i.i.i48
  %.sroa.0.0.i.i34 = phi i8 [ %.sroa.0.0.i.i.i33, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i32 ], [ %i.fi, %._crit_edge.i.i.i.i.i50 ], [ %i.fj, %.loopexit.i.i.i.i.i48 ]
  %i.gf = icmp eq i8 %.sroa.0.0.i.i34, -1
  %i.gg = xor i1 %i.bu, %i.gf
  %..i = select i1 %i.gg, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2U_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2U_.exit: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit31 ], [ %..i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit51 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2Y_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2Y_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2Y_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB14_E0E0EB2Y_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0) #47 ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2S_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordField7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBy_E0E0B1P_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2S_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBZ_E0E0EB2S_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SB14_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2Q_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SB14_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2Q_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SB14_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2Q_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SB14_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2Q_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val13 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0) #47 ; 2 uses
  %.val12 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatFieldNCINvMB8_SBZ_20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0EB2K_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCshzWfHUSfYae_4core5sliceSNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14RecordPatField20sort_unstable_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers14reorder_fields14reorder_fieldss0_0E0B25_(ptr nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0) #47
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB30_:bb.a
  %.sroa.04.0.val21 = load i64, ptr %.sroa.04.0, align 8
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val22 = load ptr, ptr %i.o, align 8
  %.val3.i = load ptr, ptr %.val18, align 8
  %i.p = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.sroa.0.0.val19, ptr %.sroa.0.0.val20) #47
  %.val.i = load ptr, ptr %.val18, align 8
  %i.q = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i, i64 %.sroa.04.0.val21, ptr %.sroa.04.0.val22) #47
  %i.r = icmp ult i64 %i.p, %i.q                  ; 2 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.sroa.0.0.val = load i64, ptr %.sroa.0.0, align 8, !range !551, !noundef !5
  %.sroa.0.0.val15 = load ptr, ptr %i.n, align 8
  %.sroa.08.0.val16 = load i64, ptr %.sroa.08.0, align 8
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val17 = load ptr, ptr %i.s, align 8
  %.val3.i23 = load ptr, ptr %.val14, align 8
  %i.t = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i23, i64 %.sroa.0.0.val, ptr %.sroa.0.0.val15) #47
  %.val.i24 = load ptr, ptr %.val14, align 8
  %i.u = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i24, i64 %.sroa.08.0.val16, ptr %.sroa.08.0.val17) #47
  %i.v = icmp ult i64 %i.t, %i.u
  %i.w = xor i1 %i.r, %i.v
  br i1 %i.w, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %.sroa.04.0.val = load i64, ptr %.sroa.04.0, align 8, !range !551, !noundef !5
  %.sroa.04.0.val12 = load ptr, ptr %i.o, align 8
  %.sroa.08.0.val = load i64, ptr %.sroa.08.0, align 8
  %.sroa.08.0.val13 = load ptr, ptr %i.s, align 8
  %.val3.i25 = load ptr, ptr %.val, align 8
  %i.x = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i25, i64 %.sroa.04.0.val, ptr %.sroa.04.0.val12) #47
  %.val.i26 = load ptr, ptr %.val, align 8
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i26, i64 %.sroa.08.0.val, ptr %.sroa.08.0.val13) #47
  %i.z = icmp ult i64 %i.x, %i.y
  %i.aa = xor i1 %i.r, %i.z
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB2U_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB35_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !align !82, !noundef !5
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.o = load i64, ptr %.sroa.04.0.val14, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep10 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.o
  %switch.load11 = load i8, ptr %switch.gep10, align 1
  %i.p = icmp ult i8 %switch.load, %switch.load11 ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !noundef !5
  %switch.gep2 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.n
  %switch.load3 = load i8, ptr %switch.gep2, align 1
  %i.q = load i64, ptr %.sroa.08.0.val12, align 8, !range !552, !noundef !5 ; 2 uses
  %switch.gep18 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.q
  %switch.load19 = load i8, ptr %switch.gep18, align 1
  %i.r = icmp ult i8 %switch.load3, %switch.load19
  %i.s = xor i1 %i.p, %i.r
  br i1 %i.s, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit, label %switch.lookup5

switch.lookup5:                                   ; preds = %switch.lookup
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.o
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB36_.559, i64 %i.q
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %i.t = icmp ult i8 %switch.load7, %switch.load15
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_genericss_0E0EB2Z_.exit: ; preds = %switch.lookup, %switch.lookup5
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %switch.lookup ], [ %..i, %switch.lookup5 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB36_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0.0.val13 to i64
  %i.o = and i64 %i.n, 1
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr i8, ptr %.sroa.0.0.val13, i64 %i.p ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 4 uses
  %i.u = ptrtoint ptr %.sroa.04.0.val14 to i64
  %i.v = and i64 %i.u, 1
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %.sroa.04.0.val14, i64 %i.w ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.y, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.t, %i.aa
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = ptrtoint ptr %.sroa.08.0.val12 to i64
  %i.ag = and i64 %i.af, 1
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr i8, ptr %.sroa.08.0.val12, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.al)
  %i.am = tail call i32 @memcmp(ptr nonnull %i.r, ptr nonnull %i.aj, i64 %spec.store.select.i.i.i15) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %i.t, %i.al
  %spec.select.i.i.i16 = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = xor i64 %spec.select.i.i.i16, %spec.select.i.i.i
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.al)
  %i.as = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.aj, i64 %spec.store.select.i.i.i17) ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.aa, %i.al
  %spec.select.i.i.i18 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = xor i64 %spec.select.i.i.i18, %spec.select.i.i.i
  %i.ax = icmp slt i64 %i.aw, 0
  %..i = select i1 %i.ax, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3TNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_delegate_methods25generate_delegate_methodss0_0E0EB30_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB34_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds i8, ptr %1, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.e = load i8, ptr %i.c, align 4, !range !282, !alias.scope !568, !noalias !569, !noundef !5 ; 3 uses
  %2 = zext nneg i8 %i.e to i64
  %i.f = load i8, ptr %i.d, align 4, !range !282, !alias.scope !569, !noalias !568, !noundef !5 ; 2 uses
  %3 = zext nneg i8 %i.f to i64
  %i.g = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.h = icmp eq i8 %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !568, !noalias !569, !noundef !5
  %i.k = getelementptr inbounds i8, ptr %1, i64 -63
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !569, !noalias !568, !noundef !5
  %i.m = tail call i8 @llvm.ucmp.i8.i8(i8 %i.j, i8 %i.l)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !range !285, !alias.scope !568, !noalias !569, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 -60
  %i.q = load i32, ptr %i.p, align 4, !range !285, !alias.scope !569, !noalias !568, !noundef !5 ; 2 uses
  %i.r = tail call i8 @llvm.ucmp.i8.i32(i32 %i.o, i32 %i.q)
  %i.s = icmp eq i32 %i.o, %i.q
  br i1 %i.s, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !568, !noalias !569, !noundef !5
  %i.v = getelementptr inbounds i8, ptr %1, i64 -56
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !569, !noalias !568, !noundef !5
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %i.u, i32 %i.w)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.g, %bb.a ], [ %i.m, %bb.c ], [ %i.x, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.y = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !575, !noalias !578, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1                   ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !575, !noalias !578, !nonnull !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !575, !noalias !578
  %.sink11.i.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %1
  %.sink10.i.i.i.i = select i1 %i.ab, i64 %i.ae, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 -72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !580, !noalias !583, !noundef !5 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1                   ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !580, !noalias !583, !nonnull !5
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -80
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !580, !noalias !583
  %.sink11.i1.i.i.i = select i1 %i.ah, ptr %i.ai, ptr %i.b
  %.sink10.i2.i.i.i = select i1 %i.ah, i64 %i.ak, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.al, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.f
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !595, !noalias !596, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !597, !noalias !598, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.ar = and i64 %i.aq, 1
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.as ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load ptr, ptr %i.at, align 8, !noalias !599, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !599, !noundef !5 ; 2 uses
  %i.ax = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.ay = and i64 %i.ax, 1
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.az ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !599, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !599, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bd)
  %i.be = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.bb, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !599 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %i.aw, %i.bd
  %spec.select.i.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf ; 2 uses
  %i.bi = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %bb.f, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.am, %._crit_edge.i.i.i.i.i ], [ %i.an, %.loopexit.i.i.i.i.i ]
  %i.bj = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !range !282 ; 3 uses
  %4 = zext nneg i8 %i.bl to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !range !285 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 1                   ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %.sink11.i.i.i.i12 = select i1 %i.bu, ptr %i.bv, ptr %i.a
  %.sink10.i.i.i.i13 = select i1 %i.bu, i64 %i.bx, i64 %i.bt ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit, %bb.q
  ret void

bb.i:                                             ; preds = %bb.p, %bb.g
  %.sroa.5.0 = phi ptr [ %1, %bb.g ], [ %.sroa.0.0, %bb.p ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.g ], [ %i.bz, %bb.p ] ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0, i64 88, i1 false)
  %i.by = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.by, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64
  %i.cb = load i8, ptr %i.ca, align 8, !range !282, !alias.scope !606, !noalias !609, !noundef !5 ; 2 uses
  %5 = zext nneg i8 %i.cb to i64
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.cd = icmp eq i8 %i.bl, %i.cb
  br i1 %i.cd, label %bb.k, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.k:                                             ; preds = %bb.j
  switch i8 %i.bl, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11 [
    i8 1, label %bb.l
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -63
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !606, !noalias !609, !noundef !5
  %i.cg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.br, i8 %i.cf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -60
  %i.ci = load i32, ptr %i.ch, align 4, !range !285, !alias.scope !606, !noalias !609, !noundef !5 ; 2 uses
  %i.cj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bn, i32 %i.ci)
  %i.ck = icmp eq i32 %i.bn, %i.ci
  br i1 %i.ck, label %bb.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -56
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !606, !noalias !609, !noundef !5
  %i.cn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bp, i32 %i.cm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.sroa.0.0.i.i.i9 = phi i8 [ %i.cc, %bb.j ], [ %i.cg, %bb.l ], [ %i.cn, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.co = icmp eq i8 %.sroa.0.0.i.i.i9, 0
  br i1 %i.co, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11, label %bb.p

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -72
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !616, !noalias !619, !noundef !5 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1                   ; 2 uses
  %i.cs = load ptr, ptr %i.bz, align 8, !alias.scope !616, !noalias !619, !nonnull !5
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -80
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !616, !noalias !619
  %.sink11.i1.i.i.i14 = select i1 %i.cr, ptr %i.cs, ptr %i.bz
  %.sink10.i2.i.i.i15 = select i1 %i.cr, i64 %i.cu, i64 %i.cq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %..i.i.i.i.i.i16 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i15, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i13) ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq i64 %..i.i.i.i.i.i16, 0
  br i1 %.not.i.i.i.i.i17, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i18

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i18
  %i.cv = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i25 = icmp eq i64 %i.cv, %..i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i25, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i18

._crit_edge.i.i.i.i.i26:                          ; preds = %bb.o, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i13, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i15)
  br label %bb.p

.loopexit.i.i.i.i.i24:                            ; preds = %.lr.ph.i.i.i.i.i18
  %i.cx = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i23, i64 0)
  br label %bb.p

.lr.ph.i.i.i.i.i18:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11, %bb.o
  %.sroa.01.019.i.i.i.i.i19 = phi i64 [ %i.cv, %bb.o ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i12, i64 %.sroa.01.019.i.i.i.i.i19
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i14, i64 %.sroa.01.019.i.i.i.i.i19
  %.val15.i.i.i.i.i20 = load ptr, ptr %i.cy, align 8, !alias.scope !632, !noalias !633, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i21 = load ptr, ptr %i.cz, align 8, !alias.scope !634, !noalias !635, !nonnull !5, !noundef !5 ; 2 uses
  %i.da = ptrtoint ptr %.val15.i.i.i.i.i20 to i64
  %i.db = and i64 %i.da, 1
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr i8, ptr %.val15.i.i.i.i.i20, i64 %i.dc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !636, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !noalias !636, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %.val16.i.i.i.i.i21 to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.val16.i.i.i.i.i21, i64 %i.dj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !636, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !636, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dn)
  %i.do = tail call i32 @memcmp(ptr nonnull %i.de, ptr nonnull %i.dl, i64 %spec.store.select.i.i.i.i.i.i.i22), !noalias !636 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %i.dr = sub i64 %i.dg, %i.dn
  %spec.select.i.i.i.i.i.i.i23 = select i1 %i.dq, i64 %i.dr, i64 %i.dp ; 2 uses
  %i.ds = icmp eq i64 %spec.select.i.i.i.i.i.i.i23, 0
  br i1 %i.ds, label %bb.o, label %.loopexit.i.i.i.i.i24

bb.p:                                             ; preds = %.loopexit.i.i.i.i.i24, %._crit_edge.i.i.i.i.i26, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8
  %.sroa.0.0.i.i10 = phi i8 [ %.sroa.0.0.i.i.i9, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8 ], [ %i.cw, %._crit_edge.i.i.i.i.i26 ], [ %i.cx, %.loopexit.i.i.i.i.i24 ]
  %i.dt = icmp eq i8 %.sroa.0.0.i.i10, -1
  br i1 %i.dt, label %bb.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB34_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds i8, ptr %1, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.e = load i8, ptr %i.c, align 4, !range !282, !alias.scope !657, !noalias !658, !noundef !5 ; 3 uses
  %2 = zext nneg i8 %i.e to i64
  %i.f = load i8, ptr %i.d, align 4, !range !282, !alias.scope !658, !noalias !657, !noundef !5 ; 2 uses
  %3 = zext nneg i8 %i.f to i64
  %i.g = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.h = icmp eq i8 %i.e, %i.f
  br i1 %i.h, label %bb.b, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !657, !noalias !658, !noundef !5
  %i.k = getelementptr inbounds i8, ptr %1, i64 -63
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !658, !noalias !657, !noundef !5
  %i.m = tail call i8 @llvm.ucmp.i8.i8(i8 %i.j, i8 %i.l)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !range !285, !alias.scope !657, !noalias !658, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 -60
  %i.q = load i32, ptr %i.p, align 4, !range !285, !alias.scope !658, !noalias !657, !noundef !5 ; 2 uses
  %i.r = tail call i8 @llvm.ucmp.i8.i32(i32 %i.o, i32 %i.q)
  %i.s = icmp eq i32 %i.o, %i.q
  br i1 %i.s, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !657, !noalias !658, !noundef !5
  %i.v = getelementptr inbounds i8, ptr %1, i64 -56
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !658, !noalias !657, !noundef !5
  %i.x = tail call i8 @llvm.ucmp.i8.i32(i32 %i.u, i32 %i.w)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.g, %bb.a ], [ %i.m, %bb.c ], [ %i.x, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.y = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !664, !noalias !667, !noundef !5 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1                   ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !664, !noalias !667, !nonnull !5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !664, !noalias !667
  %.sink11.i.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %1
  %.sink10.i.i.i.i = select i1 %i.ab, i64 %i.ae, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 -72
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !669, !noalias !672, !noundef !5 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1                   ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !669, !noalias !672, !nonnull !5
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -80
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !669, !noalias !672
  %.sink11.i1.i.i.i = select i1 %i.ah, ptr %i.ai, ptr %i.b
  %.sink10.i2.i.i.i = select i1 %i.ah, i64 %i.ak, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.al, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.f
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !684, !noalias !685, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !686, !noalias !687, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.ar = and i64 %i.aq, 1
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.as ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load ptr, ptr %i.at, align 8, !noalias !688, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !688, !noundef !5 ; 2 uses
  %i.ax = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.ay = and i64 %i.ax, 1
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.az ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !688, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !688, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bd)
  %i.be = tail call i32 @memcmp(ptr nonnull %i.au, ptr nonnull %i.bb, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !688 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %i.aw, %i.bd
  %spec.select.i.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 %i.bf ; 2 uses
  %i.bi = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %bb.f, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.am, %._crit_edge.i.i.i.i.i ], [ %i.an, %.loopexit.i.i.i.i.i ]
  %i.bj = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !range !282 ; 3 uses
  %4 = zext nneg i8 %i.bl to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !range !285 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 1                   ; 2 uses
  %i.bv = load ptr, ptr %i.a, align 8, !nonnull !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %.sink11.i.i.i.i12 = select i1 %i.bu, ptr %i.bv, ptr %i.a
  %.sink10.i.i.i.i13 = select i1 %i.bu, i64 %i.bx, i64 %i.bt ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit, %bb.q
  ret void

bb.i:                                             ; preds = %bb.p, %bb.g
  %.sroa.5.0 = phi ptr [ %1, %bb.g ], [ %.sroa.0.0, %bb.p ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.g ], [ %i.bz, %bb.p ] ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0, i64 88, i1 false)
  %i.by = icmp eq ptr %.sroa.0.0, %0
  br i1 %i.by, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64
  %i.cb = load i8, ptr %i.ca, align 8, !range !282, !alias.scope !695, !noalias !698, !noundef !5 ; 2 uses
  %5 = zext nneg i8 %i.cb to i64
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.cd = icmp eq i8 %i.bl, %i.cb
  br i1 %i.cd, label %bb.k, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.k:                                             ; preds = %bb.j
  switch i8 %i.bl, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11 [
    i8 1, label %bb.l
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -63
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !695, !noalias !698, !noundef !5
  %i.cg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.br, i8 %i.cf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -60
  %i.ci = load i32, ptr %i.ch, align 4, !range !285, !alias.scope !695, !noalias !698, !noundef !5 ; 2 uses
  %i.cj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bn, i32 %i.ci)
  %i.ck = icmp eq i32 %i.bn, %i.ci
  br i1 %i.ck, label %bb.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -56
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !695, !noalias !698, !noundef !5
  %i.cn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bp, i32 %i.cm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.sroa.0.0.i.i.i9 = phi i8 [ %i.cc, %bb.j ], [ %i.cg, %bb.l ], [ %i.cn, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.co = icmp eq i8 %.sroa.0.0.i.i.i9, 0
  br i1 %i.co, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11, label %bb.p

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -72
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !705, !noalias !708, !noundef !5 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1                   ; 2 uses
  %i.cs = load ptr, ptr %i.bz, align 8, !alias.scope !705, !noalias !708, !nonnull !5
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -80
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !705, !noalias !708
  %.sink11.i1.i.i.i14 = select i1 %i.cr, ptr %i.cs, ptr %i.bz
  %.sink10.i2.i.i.i15 = select i1 %i.cr, i64 %i.cu, i64 %i.cq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %..i.i.i.i.i.i16 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i15, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i13) ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq i64 %..i.i.i.i.i.i16, 0
  br i1 %.not.i.i.i.i.i17, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i18

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i18
  %i.cv = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i19, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i25 = icmp eq i64 %i.cv, %..i.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i25, label %._crit_edge.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i18

._crit_edge.i.i.i.i.i26:                          ; preds = %bb.o, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i13, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i15)
  br label %bb.p

.loopexit.i.i.i.i.i24:                            ; preds = %.lr.ph.i.i.i.i.i18
  %i.cx = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i23, i64 0)
  br label %bb.p

.lr.ph.i.i.i.i.i18:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11, %bb.o
  %.sroa.01.019.i.i.i.i.i19 = phi i64 [ %i.cv, %bb.o ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i11 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i12, i64 %.sroa.01.019.i.i.i.i.i19
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i14, i64 %.sroa.01.019.i.i.i.i.i19
  %.val15.i.i.i.i.i20 = load ptr, ptr %i.cy, align 8, !alias.scope !721, !noalias !722, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i21 = load ptr, ptr %i.cz, align 8, !alias.scope !723, !noalias !724, !nonnull !5, !noundef !5 ; 2 uses
  %i.da = ptrtoint ptr %.val15.i.i.i.i.i20 to i64
  %i.db = and i64 %i.da, 1
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr i8, ptr %.val15.i.i.i.i.i20, i64 %i.dc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !725, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !noalias !725, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %.val16.i.i.i.i.i21 to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.val16.i.i.i.i.i21, i64 %i.dj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !725, !nonnull !5, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !725, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 %i.dn)
  %i.do = tail call i32 @memcmp(ptr nonnull %i.de, ptr nonnull %i.dl, i64 %spec.store.select.i.i.i.i.i.i.i22), !noalias !725 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %i.dr = sub i64 %i.dg, %i.dn
  %spec.select.i.i.i.i.i.i.i23 = select i1 %i.dq, i64 %i.dr, i64 %i.dp ; 2 uses
  %i.ds = icmp eq i64 %spec.select.i.i.i.i.i.i.i23, 0
  br i1 %i.ds, label %bb.o, label %.loopexit.i.i.i.i.i24

bb.p:                                             ; preds = %.loopexit.i.i.i.i.i24, %._crit_edge.i.i.i.i.i26, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8
  %.sroa.0.0.i.i10 = phi i8 [ %.sroa.0.0.i.i.i9, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i8 ], [ %i.cw, %._crit_edge.i.i.i.i.i26 ], [ %i.cx, %.loopexit.i.i.i.i.i24 ]
  %i.dt = icmp eq i8 %.sroa.0.0.i.i10, -1
  br i1 %i.dt, label %bb.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB23_11SyntaxTokenB2p_EENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyNtNtCsuAhG64lL82_9text_size4size8TextSizeNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17inline_type_alias18create_replacements3_0E0EB5j_(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !731
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = icmp ult i32 %i.c, %i.e                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g), !noalias !734
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = icmp ult i32 %i.j, %i.l                  ; 2 uses
  %i.n = zext i1 %i.f to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = xor i1 %i.f, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %i.m, i64 3, i64 2
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.m, i64 2, i64 3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 3 uses
  %i.w = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t), !noalias !737
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
  %i.z = extractvalue { i32, i32 } %i.y, 0
  %i.aa = icmp ult i32 %i.x, %i.z                 ; 3 uses
  %i.ab = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v), !noalias !740
  %i.ac = extractvalue { i32, i32 } %i.ab, 0
  %i.ad = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = icmp ult i32 %i.ac, %i.ae               ; 3 uses
  %i.ag = select i1 %i.aa, ptr %i.t, ptr %i.o, !unpredictable !5
  %i.ah = select i1 %i.af, ptr %i.r, ptr %i.v, !unpredictable !5
  %i.ai = select i1 %i.af, ptr %i.t, ptr %i.r, !unpredictable !5
  %i.aj = select i1 %i.aa, ptr %i.o, ptr %i.ai, !unpredictable !5 ; 3 uses
  %i.ak = select i1 %i.aa, ptr %i.r, ptr %i.t, !unpredictable !5
  %i.al = select i1 %i.af, ptr %i.v, ptr %i.ak, !unpredictable !5 ; 3 uses
  %i.am = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al), !noalias !743
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = tail call { i32, i32 } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan3apiINtNtB7_13utility_types11NodeOrTokenINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB5_11SyntaxTokenB1n_EE10text_rangeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
  %i.ap = extractvalue { i32, i32 } %i.ao, 0
  %i.aq = icmp ult i32 %i.an, %i.ap               ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.al, ptr %i.aj, !unpredictable !5
  %i.as = select i1 %i.aq, ptr %i.aj, ptr %i.al, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3w_(ptr nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 352)) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.b = load ptr, ptr %.0.val, align 8, !alias.scope !746, !noalias !749, !nonnull !5, !align !82, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !746, !noalias !749, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !range !177, !noalias !754, !noundef !5
  %.not.i.i = icmp eq i32 %i.f, -1
  %..i.i = select i1 %.not.i.i, ptr null, ptr %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !746, !noalias !749, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !754, !noundef !5
  %.not2.i.i = icmp eq i32 %i.i, 0
  %.sroa.01.0.i.i = select i1 %.not2.i.i, ptr null, ptr %i.h
  %i.j = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i), !noalias !755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.k = load ptr, ptr %.0.val, align 8, !alias.scope !756, !noalias !759, !nonnull !5, !align !82, !noundef !5
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !756, !noalias !759, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !range !177, !noalias !761, !noundef !5
  %.not.i2.i = icmp eq i32 %i.n, -1
  %..i3.i = select i1 %.not.i2.i, ptr null, ptr %i.l
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !756, !noalias !759, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !761, !noundef !5
  %.not2.i4.i = icmp eq i32 %i.p, 0
  %.sroa.01.0.i5.i = select i1 %.not2.i4.i, ptr null, ptr %i.o
  %i.q = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i), !noalias !756
  %i.r = icmp slt i32 %i.q, %i.j                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.u = load ptr, ptr %.0.val, align 8, !alias.scope !762, !noalias !765, !nonnull !5, !align !82, !noundef !5
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_imports1_0E0EB3w_:bb.a
  %i.ci = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i32), !noalias !819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.cj = load ptr, ptr %.0.val, align 8, !alias.scope !820, !noalias !823, !nonnull !5, !align !82, !noundef !5
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !820, !noalias !823, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !range !177, !noalias !825, !noundef !5
  %.not.i2.i33 = icmp eq i32 %i.cm, -1
  %..i3.i34 = select i1 %.not.i2.i33, ptr null, ptr %i.ck
  %i.cn = load ptr, ptr %i.g, align 8, !alias.scope !820, !noalias !823, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !noalias !825, !noundef !5
  %.not2.i4.i35 = icmp eq i32 %i.co, 0
  %.sroa.01.0.i5.i36 = select i1 %.not2.i4.i35, ptr null, ptr %i.cn
  %i.cp = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i34, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i36), !noalias !820
  %i.cq = icmp slt i32 %i.cp, %i.ci               ; 2 uses
  %i.cr = select i1 %i.cq, ptr %i.cb, ptr %i.bz, !unpredictable !5
  %i.cs = select i1 %i.cq, ptr %i.bz, ptr %i.cb, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.bw, i64 88, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ct, ptr noundef nonnull align 8 dereferenceable(88) %i.cr, i64 88, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cu, ptr noundef nonnull align 8 dereferenceable(88) %i.cs, i64 88, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cv, ptr noundef nonnull align 8 dereferenceable(88) %i.bx, i64 88, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3w_(ptr nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 352)) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.b = load ptr, ptr %.0.val, align 8, !alias.scope !826, !noalias !829, !nonnull !5, !align !82, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !826, !noalias !829, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !range !177, !noalias !834, !noundef !5
  %.not.i.i = icmp eq i32 %i.f, -1
  %..i.i = select i1 %.not.i.i, ptr null, ptr %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !826, !noalias !829, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !834, !noundef !5
  %.not2.i.i = icmp eq i32 %i.i, 0
  %.sroa.01.0.i.i = select i1 %.not2.i.i, ptr null, ptr %i.h
  %i.j = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i), !noalias !835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.k = load ptr, ptr %.0.val, align 8, !alias.scope !836, !noalias !839, !nonnull !5, !align !82, !noundef !5
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !836, !noalias !839, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !range !177, !noalias !841, !noundef !5
  %.not.i2.i = icmp eq i32 %i.n, -1
  %..i3.i = select i1 %.not.i2.i, ptr null, ptr %i.l
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !836, !noalias !839, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !841, !noundef !5
  %.not2.i4.i = icmp eq i32 %i.p, 0
  %.sroa.01.0.i5.i = select i1 %.not2.i4.i, ptr null, ptr %i.o
  %i.q = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i), !noalias !836
  %i.r = icmp slt i32 %i.q, %i.j                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.u = load ptr, ptr %.0.val, align 8, !alias.scope !842, !noalias !845, !nonnull !5, !align !82, !noundef !5
  %i.v = load ptr, ptr %i.c, align 8, !alias.scope !842, !noalias !845, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !range !177, !noalias !850, !noundef !5
  %.not.i.i5 = icmp eq i32 %i.x, -1
  %..i.i6 = select i1 %.not.i.i5, ptr null, ptr %i.v
  %i.y = load ptr, ptr %i.g, align 8, !alias.scope !842, !noalias !845, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noalias !850, !noundef !5
  %.not2.i.i7 = icmp eq i32 %i.z, 0
  %.sroa.01.0.i.i8 = select i1 %.not2.i.i7, ptr null, ptr %i.y
  %i.aa = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i6, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i8), !noalias !851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.ab = load ptr, ptr %.0.val, align 8, !alias.scope !852, !noalias !855, !nonnull !5, !align !82, !noundef !5
  %i.ac = load ptr, ptr %i.c, align 8, !alias.scope !852, !noalias !855, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !range !177, !noalias !857, !noundef !5
  %.not.i2.i9 = icmp eq i32 %i.ae, -1
  %..i3.i10 = select i1 %.not.i2.i9, ptr null, ptr %i.ac
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !852, !noalias !855, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !noalias !857, !noundef !5
  %.not2.i4.i11 = icmp eq i32 %i.ag, 0
  %.sroa.01.0.i5.i12 = select i1 %.not2.i4.i11, ptr null, ptr %i.af
  %i.ah = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i12), !noalias !852
  %i.ai = icmp slt i32 %i.ah, %i.aa               ; 2 uses
  %i.aj = zext i1 %i.r to i64
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.aj ; 3 uses
  %i.al = xor i1 %i.r, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.aq ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.as = load ptr, ptr %.0.val, align 8, !alias.scope !858, !noalias !861, !nonnull !5, !align !82, !noundef !5
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !858, !noalias !861, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !range !177, !noalias !866, !noundef !5
  %.not.i.i13 = icmp eq i32 %i.av, -1
  %..i.i14 = select i1 %.not.i.i13, ptr null, ptr %i.at
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !858, !noalias !861, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !866, !noundef !5
  %.not2.i.i15 = icmp eq i32 %i.ax, 0
  %.sroa.01.0.i.i16 = select i1 %.not2.i.i15, ptr null, ptr %i.aw
  %i.ay = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i14, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i16), !noalias !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.az = load ptr, ptr %.0.val, align 8, !alias.scope !868, !noalias !871, !nonnull !5, !align !82, !noundef !5
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !868, !noalias !871, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !range !177, !noalias !873, !noundef !5
  %.not.i2.i17 = icmp eq i32 %i.bc, -1
  %..i3.i18 = select i1 %.not.i2.i17, ptr null, ptr %i.ba
  %i.bd = load ptr, ptr %i.g, align 8, !alias.scope !868, !noalias !871, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !noalias !873, !noundef !5
  %.not2.i4.i19 = icmp eq i32 %i.be, 0
  %.sroa.01.0.i5.i20 = select i1 %.not2.i4.i19, ptr null, ptr %i.bd
  %i.bf = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i18, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i20), !noalias !868
  %i.bg = icmp slt i32 %i.bf, %i.ay               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.bh = load ptr, ptr %.0.val, align 8, !alias.scope !874, !noalias !877, !nonnull !5, !align !82, !noundef !5
  %i.bi = load ptr, ptr %i.c, align 8, !alias.scope !874, !noalias !877, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !range !177, !noalias !882, !noundef !5
  %.not.i.i21 = icmp eq i32 %i.bk, -1
  %..i.i22 = select i1 %.not.i.i21, ptr null, ptr %i.bi
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !874, !noalias !877, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !noalias !882, !noundef !5
  %.not2.i.i23 = icmp eq i32 %i.bm, 0
  %.sroa.01.0.i.i24 = select i1 %.not2.i.i23, ptr null, ptr %i.bl
  %i.bn = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i22, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i24), !noalias !883
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.bo = load ptr, ptr %.0.val, align 8, !alias.scope !884, !noalias !887, !nonnull !5, !align !82, !noundef !5
  %i.bp = load ptr, ptr %i.c, align 8, !alias.scope !884, !noalias !887, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !range !177, !noalias !889, !noundef !5
  %.not.i2.i25 = icmp eq i32 %i.br, -1
  %..i3.i26 = select i1 %.not.i2.i25, ptr null, ptr %i.bp
  %i.bs = load ptr, ptr %i.g, align 8, !alias.scope !884, !noalias !887, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !889, !noundef !5
  %.not2.i4.i27 = icmp eq i32 %i.bt, 0
  %.sroa.01.0.i5.i28 = select i1 %.not2.i4.i27, ptr null, ptr %i.bs
  %i.bu = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i26, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i28), !noalias !884
  %i.bv = icmp slt i32 %i.bu, %i.bn               ; 3 uses
  %i.bw = select i1 %i.bg, ptr %i.ap, ptr %i.ak, !unpredictable !5
  %i.bx = select i1 %i.bv, ptr %i.an, ptr %i.ar, !unpredictable !5
  %i.by = select i1 %i.bv, ptr %i.ap, ptr %i.an, !unpredictable !5
  %i.bz = select i1 %i.bg, ptr %i.ak, ptr %i.by, !unpredictable !5 ; 3 uses
  %i.ca = select i1 %i.bg, ptr %i.an, ptr %i.ap, !unpredictable !5
  %i.cb = select i1 %i.bv, ptr %i.ar, ptr %i.ca, !unpredictable !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.cc = load ptr, ptr %.0.val, align 8, !alias.scope !890, !noalias !893, !nonnull !5, !align !82, !noundef !5
  %i.cd = load ptr, ptr %i.c, align 8, !alias.scope !890, !noalias !893, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !range !177, !noalias !898, !noundef !5
  %.not.i.i29 = icmp eq i32 %i.cf, -1
  %..i.i30 = select i1 %.not.i.i29, ptr null, ptr %i.cd
  %i.cg = load ptr, ptr %i.g, align 8, !alias.scope !890, !noalias !893, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !898, !noundef !5
  %.not2.i.i31 = icmp eq i32 %i.ch, 0
  %.sroa.01.0.i.i32 = select i1 %.not2.i.i31, ptr null, ptr %i.cg
  %i.ci = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i30, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i32), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.cj = load ptr, ptr %.0.val, align 8, !alias.scope !900, !noalias !903, !nonnull !5, !align !82, !noundef !5
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !900, !noalias !903, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !range !177, !noalias !905, !noundef !5
  %.not.i2.i33 = icmp eq i32 %i.cm, -1
  %..i3.i34 = select i1 %.not.i2.i33, ptr null, ptr %i.ck
  %i.cn = load ptr, ptr %i.g, align 8, !alias.scope !900, !noalias !903, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !noalias !905, !noundef !5
  %.not2.i4.i35 = icmp eq i32 %i.co, 0
  %.sroa.01.0.i5.i36 = select i1 %.not2.i4.i35, ptr null, ptr %i.cn
  %i.cp = tail call noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i34, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i36), !noalias !900
  %i.cq = icmp slt i32 %i.cp, %i.ci               ; 2 uses
  %i.cr = select i1 %i.cq, ptr %i.cb, ptr %i.bz, !unpredictable !5
  %i.cs = select i1 %i.cq, ptr %i.bz, ptr %i.cb, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.bw, i64 88, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ct, ptr noundef nonnull align 8 dereferenceable(88) %i.cr, i64 88, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cu, ptr noundef nonnull align 8 dereferenceable(88) %i.cs, i64 88, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cv, ptr noundef nonnull align 8 dereferenceable(88) %i.bx, i64 88, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB35_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.d = load i8, ptr %i.b, align 4, !range !282, !alias.scope !921, !noalias !922, !noundef !5 ; 3 uses
  %2 = zext nneg i8 %i.d to i64
  %i.e = load i8, ptr %i.c, align 4, !range !282, !alias.scope !922, !noalias !921, !noundef !5 ; 2 uses
  %3 = zext nneg i8 %i.e to i64
  %i.f = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.g = icmp eq i8 %i.d, %i.e
  br i1 %i.g, label %bb.b, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !921, !noalias !922, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !922, !noalias !921, !noundef !5
  %i.l = tail call i8 @llvm.ucmp.i8.i8(i8 %i.i, i8 %i.k)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i32, ptr %i.m, align 4, !range !285, !alias.scope !921, !noalias !922, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !range !285, !alias.scope !922, !noalias !921, !noundef !5 ; 2 uses
  %i.q = tail call i8 @llvm.ucmp.i8.i32(i32 %i.n, i32 %i.p)
  %i.r = icmp eq i32 %i.n, %i.p
  br i1 %i.r, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !921, !noalias !922, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !922, !noalias !921, !noundef !5
  %i.w = tail call i8 @llvm.ucmp.i8.i32(i32 %i.t, i32 %i.v)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.f, %bb.a ], [ %i.l, %bb.c ], [ %i.w, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.x, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !928, !noalias !931, !noundef !5 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1                    ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !928, !noalias !931, !nonnull !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !928, !noalias !931
  %.sink11.i.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.aa, i64 %i.ad, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !933, !noalias !936, !noundef !5 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1                   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !933, !noalias !936, !nonnull !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !933, !noalias !936
  %.sink11.i1.i.i.i = select i1 %i.ag, ptr %i.ah, ptr %0
  %.sink10.i2.i.i.i = select i1 %i.ag, i64 %i.aj, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ak, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.al = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.f
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !948, !noalias !949, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !950, !noalias !951, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.aq = and i64 %i.ap, 1
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ar ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = load ptr, ptr %i.as, align 8, !noalias !952, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !952, !noundef !5 ; 2 uses
  %i.aw = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.ax = and i64 %i.aw, 1
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.ay ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !952, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !952, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.bc)
  %i.bd = tail call i32 @memcmp(ptr nonnull %i.at, ptr nonnull %i.ba, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !952 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %i.av, %i.bc
  %spec.select.i.i.i.i.i.i.i = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %bb.f, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.al, %._crit_edge.i.i.i.i.i ], [ %i.am, %.loopexit.i.i.i.i.i ]
  %i.bi = icmp eq i8 %.sroa.0.0.i.i, -1           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.bn = load i8, ptr %i.bl, align 4, !range !282, !alias.scope !968, !noalias !969, !noundef !5 ; 3 uses
  %4 = zext nneg i8 %i.bn to i64
  %i.bo = load i8, ptr %i.bm, align 4, !range !282, !alias.scope !969, !noalias !968, !noundef !5 ; 2 uses
  %5 = zext nneg i8 %i.bo to i64
  %i.bp = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.bq = icmp eq i8 %i.bn, %i.bo
  br i1 %i.bq, label %bb.g, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  switch i8 %i.bn, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4 [
    i8 1, label %bb.h
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !968, !noalias !969, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !969, !noalias !968, !noundef !5
  %i.bv = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bs, i8 %i.bu)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bx = load i32, ptr %i.bw, align 4, !range !285, !alias.scope !968, !noalias !969, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bz = load i32, ptr %i.by, align 4, !range !285, !alias.scope !969, !noalias !968, !noundef !5 ; 2 uses
  %i.ca = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bx, i32 %i.bz)
  %i.cb = icmp eq i32 %i.bx, %i.bz
  br i1 %i.cb, label %bb.j, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = load i32, ptr %i.cc, align 4, !alias.scope !968, !noalias !969, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !969, !noalias !968, !noundef !5
  %i.cg = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cd, i32 %i.cf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1: ; preds = %bb.j, %bb.i, %bb.h, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %.sroa.0.0.i.i.i2 = phi i8 [ %i.bp, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit ], [ %i.bv, %bb.h ], [ %i.cg, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ch = icmp eq i8 %.sroa.0.0.i.i.i2, 0
  br i1 %i.ch, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !975, !noalias !978, !noundef !5 ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 1                   ; 2 uses
  %i.cl = load ptr, ptr %i.bj, align 8, !alias.scope !975, !noalias !978, !nonnull !5
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !975, !noalias !978
  %.sink11.i.i.i.i5 = select i1 %i.ck, ptr %i.cl, ptr %i.bj
  %.sink10.i.i.i.i6 = select i1 %i.ck, i64 %i.cn, i64 %i.cj ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !980, !noalias !983, !noundef !5 ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 1                   ; 2 uses
  %i.cr = load ptr, ptr %i.bk, align 8, !alias.scope !980, !noalias !983, !nonnull !5
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !980, !noalias !983
  %.sink11.i1.i.i.i7 = select i1 %i.cq, ptr %i.cr, ptr %i.bk
  %.sink10.i2.i.i.i8 = select i1 %i.cq, i64 %i.ct, i64 %i.cp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %..i.i.i.i.i.i9 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i8, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i6) ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq i64 %..i.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i.i10, label %._crit_edge.i.i.i.i.i19, label %.lr.ph.i.i.i.i.i11

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i11
  %i.cu = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i12, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i18 = icmp eq i64 %i.cu, %..i.i.i.i.i.i9
  br i1 %exitcond.not.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i19, label %.lr.ph.i.i.i.i.i11

._crit_edge.i.i.i.i.i19:                          ; preds = %bb.k, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4
  %i.cv = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i6, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i8)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20

.loopexit.i.i.i.i.i17:                            ; preds = %.lr.ph.i.i.i.i.i11
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i16, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20

.lr.ph.i.i.i.i.i11:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4, %bb.k
  %.sroa.01.019.i.i.i.i.i12 = phi i64 [ %i.cu, %bb.k ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i5, i64 %.sroa.01.019.i.i.i.i.i12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i7, i64 %.sroa.01.019.i.i.i.i.i12
  %.val15.i.i.i.i.i13 = load ptr, ptr %i.cx, align 8, !alias.scope !995, !noalias !996, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i14 = load ptr, ptr %i.cy, align 8, !alias.scope !997, !noalias !998, !nonnull !5, !noundef !5 ; 2 uses
  %i.cz = ptrtoint ptr %.val15.i.i.i.i.i13 to i64
  %i.da = and i64 %i.cz, 1
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr i8, ptr %.val15.i.i.i.i.i13, i64 %i.db ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !999, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noalias !999, !noundef !5 ; 2 uses
  %i.dg = ptrtoint ptr %.val16.i.i.i.i.i14 to i64
  %i.dh = and i64 %i.dg, 1
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr i8, ptr %.val16.i.i.i.i.i14, i64 %i.di ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !999, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !999, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dm)
  %i.dn = tail call i32 @memcmp(ptr nonnull %i.dd, ptr nonnull %i.dk, i64 %spec.store.select.i.i.i.i.i.i.i15), !noalias !999 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %i.dq = sub i64 %i.df, %i.dm
  %spec.select.i.i.i.i.i.i.i16 = select i1 %i.dp, i64 %i.dq, i64 %i.do ; 2 uses
  %i.dr = icmp eq i64 %spec.select.i.i.i.i.i.i.i16, 0
  br i1 %i.dr, label %bb.k, label %.loopexit.i.i.i.i.i17

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1, %._crit_edge.i.i.i.i.i19, %.loopexit.i.i.i.i.i17
  %.sroa.0.0.i.i3 = phi i8 [ %.sroa.0.0.i.i.i2, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1 ], [ %i.cv, %._crit_edge.i.i.i.i.i19 ], [ %i.cw, %.loopexit.i.i.i.i.i17 ]
  %i.ds = icmp eq i8 %.sroa.0.0.i.i3, -1          ; 2 uses
  %i.dt = zext i1 %i.bi to i64
  %i.du = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dt ; 10 uses
  %i.dv = xor i1 %i.bi, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dw ; 11 uses
  %i.dy = select i1 %i.ds, i64 3, i64 2
  %i.dz = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dy ; 11 uses
  %i.ea = select i1 %i.ds, i64 2, i64 3
  %i.eb = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ea ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.ee = load i8, ptr %i.ec, align 4, !range !282, !alias.scope !1015, !noalias !1016, !noundef !5 ; 3 uses
  %6 = zext nneg i8 %i.ee to i64
  %i.ef = load i8, ptr %i.ed, align 4, !range !282, !alias.scope !1016, !noalias !1015, !noundef !5 ; 2 uses
  %7 = zext nneg i8 %i.ef to i64
  %i.eg = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.eh = icmp eq i8 %i.ee, %i.ef
  br i1 %i.eh, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.l:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20
  switch i8 %i.ee, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24 [
    i8 1, label %bb.m
    i8 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 25
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !1015, !noalias !1016, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 25
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !1016, !noalias !1015, !noundef !5
  %i.em = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ej, i8 %i.el)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.n:                                             ; preds = %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !range !285, !alias.scope !1015, !noalias !1016, !noundef !5 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !range !285, !alias.scope !1016, !noalias !1015, !noundef !5 ; 2 uses
  %i.er = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.eq)
  %i.es = icmp eq i32 %i.eo, %i.eq
  br i1 %i.es, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.o:                                             ; preds = %bb.n
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !1015, !noalias !1016, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ew = load i32, ptr %i.ev, align 4, !alias.scope !1016, !noalias !1015, !noundef !5
  %i.ex = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eu, i32 %i.ew)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21: ; preds = %bb.o, %bb.n, %bb.m, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20
  %.sroa.0.0.i.i.i22 = phi i8 [ %i.eg, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit20 ], [ %i.em, %bb.m ], [ %i.ex, %bb.o ], [ %i.er, %bb.n ] ; 2 uses
  %i.ey = icmp eq i8 %.sroa.0.0.i.i.i22, 0
  br i1 %i.ey, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !1022, !noalias !1025, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 1                   ; 2 uses
  %i.fc = load ptr, ptr %i.dz, align 8, !alias.scope !1022, !noalias !1025, !nonnull !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1022, !noalias !1025
  %.sink11.i.i.i.i25 = select i1 %i.fb, ptr %i.fc, ptr %i.dz
  %.sink10.i.i.i.i26 = select i1 %i.fb, i64 %i.fe, i64 %i.fa ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1027, !noalias !1030, !noundef !5 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 1                   ; 2 uses
  %i.fi = load ptr, ptr %i.du, align 8, !alias.scope !1027, !noalias !1030, !nonnull !5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !1027, !noalias !1030
  %.sink11.i1.i.i.i27 = select i1 %i.fh, ptr %i.fi, ptr %i.du
  %.sink10.i2.i.i.i28 = select i1 %i.fh, i64 %i.fk, i64 %i.fg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %..i.i.i.i.i.i29 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i28, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i26) ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq i64 %..i.i.i.i.i.i29, 0
  br i1 %.not.i.i.i.i.i30, label %._crit_edge.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i31

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i31
  %i.fl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i32, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i38 = icmp eq i64 %i.fl, %..i.i.i.i.i.i29
  br i1 %exitcond.not.i.i.i.i.i38, label %._crit_edge.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i31

._crit_edge.i.i.i.i.i39:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24
  %i.fm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i26, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i28)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40

.loopexit.i.i.i.i.i37:                            ; preds = %.lr.ph.i.i.i.i.i31
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i36, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40

.lr.ph.i.i.i.i.i31:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24, %bb.p
  %.sroa.01.019.i.i.i.i.i32 = phi i64 [ %i.fl, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i25, i64 %.sroa.01.019.i.i.i.i.i32
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i27, i64 %.sroa.01.019.i.i.i.i.i32
  %.val15.i.i.i.i.i33 = load ptr, ptr %i.fo, align 8, !alias.scope !1042, !noalias !1043, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i34 = load ptr, ptr %i.fp, align 8, !alias.scope !1044, !noalias !1045, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = ptrtoint ptr %.val15.i.i.i.i.i33 to i64
  %i.fr = and i64 %i.fq, 1
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr i8, ptr %.val15.i.i.i.i.i33, i64 %i.fs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !1046, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !1046, !noundef !5 ; 2 uses
  %i.fx = ptrtoint ptr %.val16.i.i.i.i.i34 to i64
  %i.fy = and i64 %i.fx, 1
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr i8, ptr %.val16.i.i.i.i.i34, i64 %i.fz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1046, !nonnull !5, !noundef !5
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !1046, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.gd)
  %i.ge = tail call i32 @memcmp(ptr nonnull %i.fu, ptr nonnull %i.gb, i64 %spec.store.select.i.i.i.i.i.i.i35), !noalias !1046 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp eq i32 %i.ge, 0
  %i.gh = sub i64 %i.fw, %i.gd
  %spec.select.i.i.i.i.i.i.i36 = select i1 %i.gg, i64 %i.gh, i64 %i.gf ; 2 uses
  %i.gi = icmp eq i64 %spec.select.i.i.i.i.i.i.i36, 0
  br i1 %i.gi, label %bb.p, label %.loopexit.i.i.i.i.i37

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21, %._crit_edge.i.i.i.i.i39, %.loopexit.i.i.i.i.i37
  %.sroa.0.0.i.i23 = phi i8 [ %.sroa.0.0.i.i.i22, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21 ], [ %i.fm, %._crit_edge.i.i.i.i.i39 ], [ %i.fn, %.loopexit.i.i.i.i.i37 ]
  %i.gj = icmp eq i8 %.sroa.0.0.i.i23, -1         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.gm = load i8, ptr %i.gk, align 4, !range !282, !alias.scope !1062, !noalias !1063, !noundef !5 ; 3 uses
  %8 = zext nneg i8 %i.gm to i64
  %i.gn = load i8, ptr %i.gl, align 4, !range !282, !alias.scope !1063, !noalias !1062, !noundef !5 ; 2 uses
  %9 = zext nneg i8 %i.gn to i64
  %i.go = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.gp = icmp eq i8 %i.gm, %i.gn
  br i1 %i.gp, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.q:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40
  switch i8 %i.gm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eb, i64 25
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !1062, !noalias !1063, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dx, i64 25
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !1063, !noalias !1062, !noundef !5
  %i.gu = tail call i8 @llvm.ucmp.i8.i8(i8 %i.gr, i8 %i.gt)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.s:                                             ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !range !285, !alias.scope !1062, !noalias !1063, !noundef !5 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !range !285, !alias.scope !1063, !noalias !1062, !noundef !5 ; 2 uses
  %i.gz = tail call i8 @llvm.ucmp.i8.i32(i32 %i.gw, i32 %i.gy)
  %i.ha = icmp eq i32 %i.gw, %i.gy
  br i1 %i.ha, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.t:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.hc = load i32, ptr %i.hb, align 4, !alias.scope !1062, !noalias !1063, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.he = load i32, ptr %i.hd, align 4, !alias.scope !1063, !noalias !1062, !noundef !5
  %i.hf = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hc, i32 %i.he)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41: ; preds = %bb.t, %bb.s, %bb.r, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40
  %.sroa.0.0.i.i.i42 = phi i8 [ %i.go, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit40 ], [ %i.gu, %bb.r ], [ %i.hf, %bb.t ], [ %i.gz, %bb.s ] ; 2 uses
  %i.hg = icmp eq i8 %.sroa.0.0.i.i.i42, 0
  br i1 %i.hg, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !1069, !noalias !1072, !noundef !5 ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, 1                   ; 2 uses
  %i.hk = load ptr, ptr %i.eb, align 8, !alias.scope !1069, !noalias !1072, !nonnull !5
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !1069, !noalias !1072
  %.sink11.i.i.i.i45 = select i1 %i.hj, ptr %i.hk, ptr %i.eb
  %.sink10.i.i.i.i46 = select i1 %i.hj, i64 %i.hm, i64 %i.hi ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !1074, !noalias !1077, !noundef !5 ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 1                   ; 2 uses
  %i.hq = load ptr, ptr %i.dx, align 8, !alias.scope !1074, !noalias !1077, !nonnull !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1074, !noalias !1077
  %.sink11.i1.i.i.i47 = select i1 %i.hp, ptr %i.hq, ptr %i.dx
  %.sink10.i2.i.i.i48 = select i1 %i.hp, i64 %i.hs, i64 %i.ho ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %..i.i.i.i.i.i49 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i48, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i46) ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq i64 %..i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i.i50, label %._crit_edge.i.i.i.i.i59, label %.lr.ph.i.i.i.i.i51

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.ht = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i52, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i58 = icmp eq i64 %i.ht, %..i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i58, label %._crit_edge.i.i.i.i.i59, label %.lr.ph.i.i.i.i.i51

._crit_edge.i.i.i.i.i59:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44
  %i.hu = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i46, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i48)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60

.loopexit.i.i.i.i.i57:                            ; preds = %.lr.ph.i.i.i.i.i51
  %i.hv = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i56, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60

.lr.ph.i.i.i.i.i51:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44, %bb.u
  %.sroa.01.019.i.i.i.i.i52 = phi i64 [ %i.ht, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i45, i64 %.sroa.01.019.i.i.i.i.i52
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i47, i64 %.sroa.01.019.i.i.i.i.i52
  %.val15.i.i.i.i.i53 = load ptr, ptr %i.hw, align 8, !alias.scope !1089, !noalias !1090, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i54 = load ptr, ptr %i.hx, align 8, !alias.scope !1091, !noalias !1092, !nonnull !5, !noundef !5 ; 2 uses
  %i.hy = ptrtoint ptr %.val15.i.i.i.i.i53 to i64
  %i.hz = and i64 %i.hy, 1
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr i8, ptr %.val15.i.i.i.i.i53, i64 %i.ia ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !1093, !nonnull !5, !noundef !5
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !1093, !noundef !5 ; 2 uses
  %i.if = ptrtoint ptr %.val16.i.i.i.i.i54 to i64
  %i.ig = and i64 %i.if, 1
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr i8, ptr %.val16.i.i.i.i.i54, i64 %i.ih ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ii) ]
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !1093, !nonnull !5, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !noalias !1093, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i55 = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %i.il)
  %i.im = tail call i32 @memcmp(ptr nonnull %i.ic, ptr nonnull %i.ij, i64 %spec.store.select.i.i.i.i.i.i.i55), !noalias !1093 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i32 %i.im, 0
  %i.ip = sub i64 %i.ie, %i.il
  %spec.select.i.i.i.i.i.i.i56 = select i1 %i.io, i64 %i.ip, i64 %i.in ; 2 uses
  %i.iq = icmp eq i64 %spec.select.i.i.i.i.i.i.i56, 0
  br i1 %i.iq, label %bb.u, label %.loopexit.i.i.i.i.i57

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41, %._crit_edge.i.i.i.i.i59, %.loopexit.i.i.i.i.i57
  %.sroa.0.0.i.i43 = phi i8 [ %.sroa.0.0.i.i.i42, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41 ], [ %i.hu, %._crit_edge.i.i.i.i.i59 ], [ %i.hv, %.loopexit.i.i.i.i.i57 ]
  %i.ir = icmp eq i8 %.sroa.0.0.i.i43, -1         ; 3 uses
  %i.is = select i1 %i.ir, ptr %i.dz, ptr %i.dx, !unpredictable !5
  %i.it = select i1 %i.gj, ptr %i.du, ptr %i.is, !unpredictable !5 ; 10 uses
  %i.iu = select i1 %i.gj, ptr %i.dx, ptr %i.dz, !unpredictable !5
  %i.iv = select i1 %i.ir, ptr %i.eb, ptr %i.iu, !unpredictable !5 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.iy = load i8, ptr %i.iw, align 4, !range !282, !alias.scope !1109, !noalias !1110, !noundef !5 ; 3 uses
  %10 = zext nneg i8 %i.iy to i64
  %i.iz = load i8, ptr %i.ix, align 4, !range !282, !alias.scope !1110, !noalias !1109, !noundef !5 ; 2 uses
  %11 = zext nneg i8 %i.iz to i64
  %i.ja = tail call i8 @llvm.scmp.i8.i64(i64 %10, i64 %11)
  %i.jb = icmp eq i8 %i.iy, %i.iz
  br i1 %i.jb, label %bb.v, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60
  switch i8 %i.iy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64 [
    i8 1, label %bb.w
    i8 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 25
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !1109, !noalias !1110, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 25
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !1110, !noalias !1109, !noundef !5
  %i.jg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.jd, i8 %i.jf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.x:                                             ; preds = %bb.v
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.ji = load i32, ptr %i.jh, align 4, !range !285, !alias.scope !1109, !noalias !1110, !noundef !5 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.jk = load i32, ptr %i.jj, align 4, !range !285, !alias.scope !1110, !noalias !1109, !noundef !5 ; 2 uses
  %i.jl = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ji, i32 %i.jk)
  %i.jm = icmp eq i32 %i.ji, %i.jk
  br i1 %i.jm, label %bb.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.y:                                             ; preds = %bb.x
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jo = load i32, ptr %i.jn, align 4, !alias.scope !1109, !noalias !1110, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.jq = load i32, ptr %i.jp, align 4, !alias.scope !1110, !noalias !1109, !noundef !5
  %i.jr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.jo, i32 %i.jq)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61: ; preds = %bb.y, %bb.x, %bb.w, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.ja, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit60 ], [ %i.jg, %bb.w ], [ %i.jr, %bb.y ], [ %i.jl, %bb.x ] ; 2 uses
  %i.js = icmp eq i8 %.sroa.0.0.i.i.i62, 0
  br i1 %i.js, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit80

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !1116, !noalias !1119, !noundef !5 ; 2 uses
  %i.jv = icmp ugt i64 %i.ju, 1                   ; 2 uses
  %i.jw = load ptr, ptr %i.iv, align 8, !alias.scope !1116, !noalias !1119, !nonnull !5
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !1116, !noalias !1119
  %.sink11.i.i.i.i65 = select i1 %i.jv, ptr %i.jw, ptr %i.iv
  %.sink10.i.i.i.i66 = select i1 %i.jv, i64 %i.jy, i64 %i.ju ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !1121, !noalias !1124, !noundef !5 ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 1                   ; 2 uses
  %i.kc = load ptr, ptr %i.it, align 8, !alias.scope !1121, !noalias !1124, !nonnull !5
  %i.kd = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !1121, !noalias !1124
  %.sink11.i1.i.i.i67 = select i1 %i.kb, ptr %i.kc, ptr %i.it
  %.sink10.i2.i.i.i68 = select i1 %i.kb, i64 %i.ke, i64 %i.ka ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %..i.i.i.i.i.i69 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66) ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq i64 %..i.i.i.i.i.i69, 0
  br i1 %.not.i.i.i.i.i70, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i71
  %i.kf = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i78 = icmp eq i64 %i.kf, %..i.i.i.i.i.i69
  br i1 %exitcond.not.i.i.i.i.i78, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

._crit_edge.i.i.i.i.i79:                          ; preds = %bb.z, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64
  %i.kg = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit80

.loopexit.i.i.i.i.i77:                            ; preds = %.lr.ph.i.i.i.i.i71
  %i.kh = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i76, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit80

.lr.ph.i.i.i.i.i71:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, %bb.z
  %.sroa.01.019.i.i.i.i.i72 = phi i64 [ %i.kf, %bb.z ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i65, i64 %.sroa.01.019.i.i.i.i.i72
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i67, i64 %.sroa.01.019.i.i.i.i.i72
  %.val15.i.i.i.i.i73 = load ptr, ptr %i.ki, align 8, !alias.scope !1136, !noalias !1137, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i74 = load ptr, ptr %i.kj, align 8, !alias.scope !1138, !noalias !1139, !nonnull !5, !noundef !5 ; 2 uses
  %i.kk = ptrtoint ptr %.val15.i.i.i.i.i73 to i64
  %i.kl = and i64 %i.kk, 1
  %i.km = sub nsw i64 0, %i.kl
  %i.kn = getelementptr i8, ptr %.val15.i.i.i.i.i73, i64 %i.km ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !1140, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !1140, !noundef !5 ; 2 uses
  %i.kr = ptrtoint ptr %.val16.i.i.i.i.i74 to i64
  %i.ks = and i64 %i.kr, 1
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr i8, ptr %.val16.i.i.i.i.i74, i64 %i.kt ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ku) ]
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !1140, !nonnull !5, !noundef !5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !1140, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i75 = tail call i64 @llvm.umin.i64(i64 %i.kq, i64 %i.kx)
  %i.ky = tail call i32 @memcmp(ptr nonnull %i.ko, ptr nonnull %i.kv, i64 %spec.store.select.i.i.i.i.i.i.i75), !noalias !1140 ; 2 uses
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp eq i32 %i.ky, 0
  %i.lb = sub i64 %i.kq, %i.kx
  %spec.select.i.i.i.i.i.i.i76 = select i1 %i.la, i64 %i.lb, i64 %i.kz ; 2 uses
  %i.lc = icmp eq i64 %spec.select.i.i.i.i.i.i.i76, 0
  br i1 %i.lc, label %bb.z, label %.loopexit.i.i.i.i.i77

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit80: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %._crit_edge.i.i.i.i.i79, %.loopexit.i.i.i.i.i77
  %.sroa.0.0.i.i63 = phi i8 [ %.sroa.0.0.i.i.i62, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61 ], [ %i.kg, %._crit_edge.i.i.i.i.i79 ], [ %i.kh, %.loopexit.i.i.i.i.i77 ]
  %i.ld = select i1 %i.ir, ptr %i.dx, ptr %i.eb, !unpredictable !5
  %i.le = select i1 %i.gj, ptr %i.dz, ptr %i.du, !unpredictable !5
  %i.lf = icmp eq i8 %.sroa.0.0.i.i63, -1         ; 2 uses
  %i.lg = select i1 %i.lf, ptr %i.iv, ptr %i.it, !unpredictable !5
  %i.lh = select i1 %i.lf, ptr %i.it, ptr %i.iv, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.le, i64 88, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.li, ptr noundef nonnull align 8 dereferenceable(88) %i.lg, i64 88, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lj, ptr noundef nonnull align 8 dereferenceable(88) %i.lh, i64 88, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lk, ptr noundef nonnull align 8 dereferenceable(88) %i.ld, i64 88, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB35_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.d = load i8, ptr %i.b, align 4, !range !282, !alias.scope !1156, !noalias !1157, !noundef !5 ; 3 uses
  %2 = zext nneg i8 %i.d to i64
  %i.e = load i8, ptr %i.c, align 4, !range !282, !alias.scope !1157, !noalias !1156, !noundef !5 ; 2 uses
  %3 = zext nneg i8 %i.e to i64
  %i.f = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.g = icmp eq i8 %i.d, %i.e
  br i1 %i.g, label %bb.b, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1156, !noalias !1157, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1157, !noalias !1156, !noundef !5
  %i.l = tail call i8 @llvm.ucmp.i8.i8(i8 %i.i, i8 %i.k)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i32, ptr %i.m, align 4, !range !285, !alias.scope !1156, !noalias !1157, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !range !285, !alias.scope !1157, !noalias !1156, !noundef !5 ; 2 uses
  %i.q = tail call i8 @llvm.ucmp.i8.i32(i32 %i.n, i32 %i.p)
  %i.r = icmp eq i32 %i.n, %i.p
  br i1 %i.r, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !1156, !noalias !1157, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !1157, !noalias !1156, !noundef !5
  %i.w = tail call i8 @llvm.ucmp.i8.i32(i32 %i.t, i32 %i.v)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i.i.i = phi i8 [ %i.f, %bb.a ], [ %i.l, %bb.c ], [ %i.w, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.x, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1163, !noalias !1166, !noundef !5 ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1                    ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !1163, !noalias !1166, !nonnull !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1163, !noalias !1166
  %.sink11.i.i.i.i = select i1 %i.aa, ptr %i.ab, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.aa, i64 %i.ad, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1168, !noalias !1171, !noundef !5 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1                   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1168, !noalias !1171, !nonnull !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1168, !noalias !1171
  %.sink11.i1.i.i.i = select i1 %i.ag, ptr %i.ah, ptr %0
  %.sink10.i2.i.i.i = select i1 %i.ag, i64 %i.aj, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ak, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.al = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.f
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1183, !noalias !1184, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !1185, !noalias !1186, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.aq = and i64 %i.ap, 1
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ar ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1187, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !1187, !noundef !5 ; 2 uses
  %i.aw = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.ax = and i64 %i.aw, 1
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.ay ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1187, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !1187, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.bc)
  %i.bd = tail call i32 @memcmp(ptr nonnull %i.at, ptr nonnull %i.ba, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !1187 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %i.av, %i.bc
  %spec.select.i.i.i.i.i.i.i = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %bb.f, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.al, %._crit_edge.i.i.i.i.i ], [ %i.am, %.loopexit.i.i.i.i.i ]
  %i.bi = icmp eq i8 %.sroa.0.0.i.i, -1           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.bn = load i8, ptr %i.bl, align 4, !range !282, !alias.scope !1203, !noalias !1204, !noundef !5 ; 3 uses
  %4 = zext nneg i8 %i.bn to i64
  %i.bo = load i8, ptr %i.bm, align 4, !range !282, !alias.scope !1204, !noalias !1203, !noundef !5 ; 2 uses
  %5 = zext nneg i8 %i.bo to i64
  %i.bp = tail call i8 @llvm.scmp.i8.i64(i64 %4, i64 %5)
  %i.bq = icmp eq i8 %i.bn, %i.bo
  br i1 %i.bq, label %bb.g, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  switch i8 %i.bn, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4 [
    i8 1, label %bb.h
    i8 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !1203, !noalias !1204, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1204, !noalias !1203, !noundef !5
  %i.bv = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bs, i8 %i.bu)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.i:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bx = load i32, ptr %i.bw, align 4, !range !285, !alias.scope !1203, !noalias !1204, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bz = load i32, ptr %i.by, align 4, !range !285, !alias.scope !1204, !noalias !1203, !noundef !5 ; 2 uses
  %i.ca = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bx, i32 %i.bz)
  %i.cb = icmp eq i32 %i.bx, %i.bz
  br i1 %i.cb, label %bb.j, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = load i32, ptr %i.cc, align 4, !alias.scope !1203, !noalias !1204, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !1204, !noalias !1203, !noundef !5
  %i.cg = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cd, i32 %i.cf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1: ; preds = %bb.j, %bb.i, %bb.h, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %.sroa.0.0.i.i.i2 = phi i8 [ %i.bp, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit ], [ %i.bv, %bb.h ], [ %i.cg, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ch = icmp eq i8 %.sroa.0.0.i.i.i2, 0
  br i1 %i.ch, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1210, !noalias !1213, !noundef !5 ; 2 uses
  %i.ck = icmp ugt i64 %i.cj, 1                   ; 2 uses
  %i.cl = load ptr, ptr %i.bj, align 8, !alias.scope !1210, !noalias !1213, !nonnull !5
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1210, !noalias !1213
  %.sink11.i.i.i.i5 = select i1 %i.ck, ptr %i.cl, ptr %i.bj
  %.sink10.i.i.i.i6 = select i1 %i.ck, i64 %i.cn, i64 %i.cj ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1215, !noalias !1218, !noundef !5 ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 1                   ; 2 uses
  %i.cr = load ptr, ptr %i.bk, align 8, !alias.scope !1215, !noalias !1218, !nonnull !5
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1215, !noalias !1218
  %.sink11.i1.i.i.i7 = select i1 %i.cq, ptr %i.cr, ptr %i.bk
  %.sink10.i2.i.i.i8 = select i1 %i.cq, i64 %i.ct, i64 %i.cp ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %..i.i.i.i.i.i9 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i8, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i6) ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq i64 %..i.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i.i10, label %._crit_edge.i.i.i.i.i19, label %.lr.ph.i.i.i.i.i11

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i11
  %i.cu = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i12, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i18 = icmp eq i64 %i.cu, %..i.i.i.i.i.i9
  br i1 %exitcond.not.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i19, label %.lr.ph.i.i.i.i.i11

._crit_edge.i.i.i.i.i19:                          ; preds = %bb.k, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4
  %i.cv = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i6, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i8)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20

.loopexit.i.i.i.i.i17:                            ; preds = %.lr.ph.i.i.i.i.i11
  %i.cw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i16, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20

.lr.ph.i.i.i.i.i11:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4, %bb.k
  %.sroa.01.019.i.i.i.i.i12 = phi i64 [ %i.cu, %bb.k ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i4 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i5, i64 %.sroa.01.019.i.i.i.i.i12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i7, i64 %.sroa.01.019.i.i.i.i.i12
  %.val15.i.i.i.i.i13 = load ptr, ptr %i.cx, align 8, !alias.scope !1230, !noalias !1231, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i14 = load ptr, ptr %i.cy, align 8, !alias.scope !1232, !noalias !1233, !nonnull !5, !noundef !5 ; 2 uses
  %i.cz = ptrtoint ptr %.val15.i.i.i.i.i13 to i64
  %i.da = and i64 %i.cz, 1
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr i8, ptr %.val15.i.i.i.i.i13, i64 %i.db ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !1234, !nonnull !5, !noundef !5
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noalias !1234, !noundef !5 ; 2 uses
  %i.dg = ptrtoint ptr %.val16.i.i.i.i.i14 to i64
  %i.dh = and i64 %i.dg, 1
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr i8, ptr %.val16.i.i.i.i.i14, i64 %i.di ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !1234, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !1234, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dm)
  %i.dn = tail call i32 @memcmp(ptr nonnull %i.dd, ptr nonnull %i.dk, i64 %spec.store.select.i.i.i.i.i.i.i15), !noalias !1234 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %i.dq = sub i64 %i.df, %i.dm
  %spec.select.i.i.i.i.i.i.i16 = select i1 %i.dp, i64 %i.dq, i64 %i.do ; 2 uses
  %i.dr = icmp eq i64 %spec.select.i.i.i.i.i.i.i16, 0
  br i1 %i.dr, label %bb.k, label %.loopexit.i.i.i.i.i17

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1, %._crit_edge.i.i.i.i.i19, %.loopexit.i.i.i.i.i17
  %.sroa.0.0.i.i3 = phi i8 [ %.sroa.0.0.i.i.i2, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i1 ], [ %i.cv, %._crit_edge.i.i.i.i.i19 ], [ %i.cw, %.loopexit.i.i.i.i.i17 ]
  %i.ds = icmp eq i8 %.sroa.0.0.i.i3, -1          ; 2 uses
  %i.dt = zext i1 %i.bi to i64
  %i.du = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dt ; 10 uses
  %i.dv = xor i1 %i.bi, true
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dw ; 11 uses
  %i.dy = select i1 %i.ds, i64 3, i64 2
  %i.dz = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.dy ; 11 uses
  %i.ea = select i1 %i.ds, i64 2, i64 3
  %i.eb = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ea ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.ee = load i8, ptr %i.ec, align 4, !range !282, !alias.scope !1250, !noalias !1251, !noundef !5 ; 3 uses
  %6 = zext nneg i8 %i.ee to i64
  %i.ef = load i8, ptr %i.ed, align 4, !range !282, !alias.scope !1251, !noalias !1250, !noundef !5 ; 2 uses
  %7 = zext nneg i8 %i.ef to i64
  %i.eg = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.eh = icmp eq i8 %i.ee, %i.ef
  br i1 %i.eh, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.l:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20
  switch i8 %i.ee, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24 [
    i8 1, label %bb.m
    i8 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 25
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !1250, !noalias !1251, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 25
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !1251, !noalias !1250, !noundef !5
  %i.em = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ej, i8 %i.el)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.n:                                             ; preds = %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !range !285, !alias.scope !1250, !noalias !1251, !noundef !5 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !range !285, !alias.scope !1251, !noalias !1250, !noundef !5 ; 2 uses
  %i.er = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.eq)
  %i.es = icmp eq i32 %i.eo, %i.eq
  br i1 %i.es, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

bb.o:                                             ; preds = %bb.n
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !1250, !noalias !1251, !noundef !5
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ew = load i32, ptr %i.ev, align 4, !alias.scope !1251, !noalias !1250, !noundef !5
  %i.ex = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eu, i32 %i.ew)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21: ; preds = %bb.o, %bb.n, %bb.m, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20
  %.sroa.0.0.i.i.i22 = phi i8 [ %i.eg, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit20 ], [ %i.em, %bb.m ], [ %i.ex, %bb.o ], [ %i.er, %bb.n ] ; 2 uses
  %i.ey = icmp eq i8 %.sroa.0.0.i.i.i22, 0
  br i1 %i.ey, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !1257, !noalias !1260, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 1                   ; 2 uses
  %i.fc = load ptr, ptr %i.dz, align 8, !alias.scope !1257, !noalias !1260, !nonnull !5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1257, !noalias !1260
  %.sink11.i.i.i.i25 = select i1 %i.fb, ptr %i.fc, ptr %i.dz
  %.sink10.i.i.i.i26 = select i1 %i.fb, i64 %i.fe, i64 %i.fa ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1262, !noalias !1265, !noundef !5 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, 1                   ; 2 uses
  %i.fi = load ptr, ptr %i.du, align 8, !alias.scope !1262, !noalias !1265, !nonnull !5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !1262, !noalias !1265
  %.sink11.i1.i.i.i27 = select i1 %i.fh, ptr %i.fi, ptr %i.du
  %.sink10.i2.i.i.i28 = select i1 %i.fh, i64 %i.fk, i64 %i.fg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %..i.i.i.i.i.i29 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i28, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i26) ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq i64 %..i.i.i.i.i.i29, 0
  br i1 %.not.i.i.i.i.i30, label %._crit_edge.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i31

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i31
  %i.fl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i32, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i38 = icmp eq i64 %i.fl, %..i.i.i.i.i.i29
  br i1 %exitcond.not.i.i.i.i.i38, label %._crit_edge.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i31

._crit_edge.i.i.i.i.i39:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24
  %i.fm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i26, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i28)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40

.loopexit.i.i.i.i.i37:                            ; preds = %.lr.ph.i.i.i.i.i31
  %i.fn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i36, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40

.lr.ph.i.i.i.i.i31:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24, %bb.p
  %.sroa.01.019.i.i.i.i.i32 = phi i64 [ %i.fl, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i24 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i25, i64 %.sroa.01.019.i.i.i.i.i32
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i27, i64 %.sroa.01.019.i.i.i.i.i32
  %.val15.i.i.i.i.i33 = load ptr, ptr %i.fo, align 8, !alias.scope !1277, !noalias !1278, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i34 = load ptr, ptr %i.fp, align 8, !alias.scope !1279, !noalias !1280, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = ptrtoint ptr %.val15.i.i.i.i.i33 to i64
  %i.fr = and i64 %i.fq, 1
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr i8, ptr %.val15.i.i.i.i.i33, i64 %i.fs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !1281, !nonnull !5, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !1281, !noundef !5 ; 2 uses
  %i.fx = ptrtoint ptr %.val16.i.i.i.i.i34 to i64
  %i.fy = and i64 %i.fx, 1
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr i8, ptr %.val16.i.i.i.i.i34, i64 %i.fz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1281, !nonnull !5, !noundef !5
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !1281, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.gd)
  %i.ge = tail call i32 @memcmp(ptr nonnull %i.fu, ptr nonnull %i.gb, i64 %spec.store.select.i.i.i.i.i.i.i35), !noalias !1281 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp eq i32 %i.ge, 0
  %i.gh = sub i64 %i.fw, %i.gd
  %spec.select.i.i.i.i.i.i.i36 = select i1 %i.gg, i64 %i.gh, i64 %i.gf ; 2 uses
  %i.gi = icmp eq i64 %spec.select.i.i.i.i.i.i.i36, 0
  br i1 %i.gi, label %bb.p, label %.loopexit.i.i.i.i.i37

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21, %._crit_edge.i.i.i.i.i39, %.loopexit.i.i.i.i.i37
  %.sroa.0.0.i.i23 = phi i8 [ %.sroa.0.0.i.i.i22, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i21 ], [ %i.fm, %._crit_edge.i.i.i.i.i39 ], [ %i.fn, %.loopexit.i.i.i.i.i37 ]
  %i.gj = icmp eq i8 %.sroa.0.0.i.i23, -1         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.gm = load i8, ptr %i.gk, align 4, !range !282, !alias.scope !1297, !noalias !1298, !noundef !5 ; 3 uses
  %8 = zext nneg i8 %i.gm to i64
  %i.gn = load i8, ptr %i.gl, align 4, !range !282, !alias.scope !1298, !noalias !1297, !noundef !5 ; 2 uses
  %9 = zext nneg i8 %i.gn to i64
  %i.go = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.gp = icmp eq i8 %i.gm, %i.gn
  br i1 %i.gp, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.q:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40
  switch i8 %i.gm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eb, i64 25
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !1297, !noalias !1298, !noundef !5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dx, i64 25
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !1298, !noalias !1297, !noundef !5
  %i.gu = tail call i8 @llvm.ucmp.i8.i8(i8 %i.gr, i8 %i.gt)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.s:                                             ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !range !285, !alias.scope !1297, !noalias !1298, !noundef !5 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !range !285, !alias.scope !1298, !noalias !1297, !noundef !5 ; 2 uses
  %i.gz = tail call i8 @llvm.ucmp.i8.i32(i32 %i.gw, i32 %i.gy)
  %i.ha = icmp eq i32 %i.gw, %i.gy
  br i1 %i.ha, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

bb.t:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.hc = load i32, ptr %i.hb, align 4, !alias.scope !1297, !noalias !1298, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.he = load i32, ptr %i.hd, align 4, !alias.scope !1298, !noalias !1297, !noundef !5
  %i.hf = tail call i8 @llvm.ucmp.i8.i32(i32 %i.hc, i32 %i.he)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41: ; preds = %bb.t, %bb.s, %bb.r, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40
  %.sroa.0.0.i.i.i42 = phi i8 [ %i.go, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit40 ], [ %i.gu, %bb.r ], [ %i.hf, %bb.t ], [ %i.gz, %bb.s ] ; 2 uses
  %i.hg = icmp eq i8 %.sroa.0.0.i.i.i42, 0
  br i1 %i.hg, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !1304, !noalias !1307, !noundef !5 ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, 1                   ; 2 uses
  %i.hk = load ptr, ptr %i.eb, align 8, !alias.scope !1304, !noalias !1307, !nonnull !5
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !1304, !noalias !1307
  %.sink11.i.i.i.i45 = select i1 %i.hj, ptr %i.hk, ptr %i.eb
  %.sink10.i.i.i.i46 = select i1 %i.hj, i64 %i.hm, i64 %i.hi ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !1309, !noalias !1312, !noundef !5 ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 1                   ; 2 uses
  %i.hq = load ptr, ptr %i.dx, align 8, !alias.scope !1309, !noalias !1312, !nonnull !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1309, !noalias !1312
  %.sink11.i1.i.i.i47 = select i1 %i.hp, ptr %i.hq, ptr %i.dx
  %.sink10.i2.i.i.i48 = select i1 %i.hp, i64 %i.hs, i64 %i.ho ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %..i.i.i.i.i.i49 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i48, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i46) ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq i64 %..i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i.i50, label %._crit_edge.i.i.i.i.i59, label %.lr.ph.i.i.i.i.i51

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.ht = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i52, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i58 = icmp eq i64 %i.ht, %..i.i.i.i.i.i49
  br i1 %exitcond.not.i.i.i.i.i58, label %._crit_edge.i.i.i.i.i59, label %.lr.ph.i.i.i.i.i51

._crit_edge.i.i.i.i.i59:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44
  %i.hu = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i46, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i48)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60

.loopexit.i.i.i.i.i57:                            ; preds = %.lr.ph.i.i.i.i.i51
  %i.hv = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i56, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60

.lr.ph.i.i.i.i.i51:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44, %bb.u
  %.sroa.01.019.i.i.i.i.i52 = phi i64 [ %i.ht, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i44 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i45, i64 %.sroa.01.019.i.i.i.i.i52
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i47, i64 %.sroa.01.019.i.i.i.i.i52
  %.val15.i.i.i.i.i53 = load ptr, ptr %i.hw, align 8, !alias.scope !1324, !noalias !1325, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i54 = load ptr, ptr %i.hx, align 8, !alias.scope !1326, !noalias !1327, !nonnull !5, !noundef !5 ; 2 uses
  %i.hy = ptrtoint ptr %.val15.i.i.i.i.i53 to i64
  %i.hz = and i64 %i.hy, 1
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr i8, ptr %.val15.i.i.i.i.i53, i64 %i.ia ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !1328, !nonnull !5, !noundef !5
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !1328, !noundef !5 ; 2 uses
  %i.if = ptrtoint ptr %.val16.i.i.i.i.i54 to i64
  %i.ig = and i64 %i.if, 1
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr i8, ptr %.val16.i.i.i.i.i54, i64 %i.ih ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ii) ]
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !1328, !nonnull !5, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !noalias !1328, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i55 = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %i.il)
  %i.im = tail call i32 @memcmp(ptr nonnull %i.ic, ptr nonnull %i.ij, i64 %spec.store.select.i.i.i.i.i.i.i55), !noalias !1328 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i32 %i.im, 0
  %i.ip = sub i64 %i.ie, %i.il
  %spec.select.i.i.i.i.i.i.i56 = select i1 %i.io, i64 %i.ip, i64 %i.in ; 2 uses
  %i.iq = icmp eq i64 %spec.select.i.i.i.i.i.i.i56, 0
  br i1 %i.iq, label %bb.u, label %.loopexit.i.i.i.i.i57

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41, %._crit_edge.i.i.i.i.i59, %.loopexit.i.i.i.i.i57
  %.sroa.0.0.i.i43 = phi i8 [ %.sroa.0.0.i.i.i42, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i41 ], [ %i.hu, %._crit_edge.i.i.i.i.i59 ], [ %i.hv, %.loopexit.i.i.i.i.i57 ]
  %i.ir = icmp eq i8 %.sroa.0.0.i.i43, -1         ; 3 uses
  %i.is = select i1 %i.ir, ptr %i.dz, ptr %i.dx, !unpredictable !5
  %i.it = select i1 %i.gj, ptr %i.du, ptr %i.is, !unpredictable !5 ; 10 uses
  %i.iu = select i1 %i.gj, ptr %i.dx, ptr %i.dz, !unpredictable !5
  %i.iv = select i1 %i.ir, ptr %i.eb, ptr %i.iu, !unpredictable !5 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  %i.iy = load i8, ptr %i.iw, align 4, !range !282, !alias.scope !1344, !noalias !1345, !noundef !5 ; 3 uses
  %10 = zext nneg i8 %i.iy to i64
  %i.iz = load i8, ptr %i.ix, align 4, !range !282, !alias.scope !1345, !noalias !1344, !noundef !5 ; 2 uses
  %11 = zext nneg i8 %i.iz to i64
  %i.ja = tail call i8 @llvm.scmp.i8.i64(i64 %10, i64 %11)
  %i.jb = icmp eq i8 %i.iy, %i.iz
  br i1 %i.jb, label %bb.v, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60
  switch i8 %i.iy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64 [
    i8 1, label %bb.w
    i8 4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 25
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !1344, !noalias !1345, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 25
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !1345, !noalias !1344, !noundef !5
  %i.jg = tail call i8 @llvm.ucmp.i8.i8(i8 %i.jd, i8 %i.jf)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.x:                                             ; preds = %bb.v
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.ji = load i32, ptr %i.jh, align 4, !range !285, !alias.scope !1344, !noalias !1345, !noundef !5 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.jk = load i32, ptr %i.jj, align 4, !range !285, !alias.scope !1345, !noalias !1344, !noundef !5 ; 2 uses
  %i.jl = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ji, i32 %i.jk)
  %i.jm = icmp eq i32 %i.ji, %i.jk
  br i1 %i.jm, label %bb.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

bb.y:                                             ; preds = %bb.x
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jo = load i32, ptr %i.jn, align 4, !alias.scope !1344, !noalias !1345, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.jq = load i32, ptr %i.jp, align 4, !alias.scope !1345, !noalias !1344, !noundef !5
  %i.jr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.jo, i32 %i.jq)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61: ; preds = %bb.y, %bb.x, %bb.w, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60
  %.sroa.0.0.i.i.i62 = phi i8 [ %i.ja, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit60 ], [ %i.jg, %bb.w ], [ %i.jr, %bb.y ], [ %i.jl, %bb.x ] ; 2 uses
  %i.js = icmp eq i8 %.sroa.0.0.i.i.i62, 0
  br i1 %i.js, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !1351, !noalias !1354, !noundef !5 ; 2 uses
  %i.jv = icmp ugt i64 %i.ju, 1                   ; 2 uses
  %i.jw = load ptr, ptr %i.iv, align 8, !alias.scope !1351, !noalias !1354, !nonnull !5
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !alias.scope !1351, !noalias !1354
  %.sink11.i.i.i.i65 = select i1 %i.jv, ptr %i.jw, ptr %i.iv
  %.sink10.i.i.i.i66 = select i1 %i.jv, i64 %i.jy, i64 %i.ju ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !1356, !noalias !1359, !noundef !5 ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 1                   ; 2 uses
  %i.kc = load ptr, ptr %i.it, align 8, !alias.scope !1356, !noalias !1359, !nonnull !5
  %i.kd = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !1356, !noalias !1359
  %.sink11.i1.i.i.i67 = select i1 %i.kb, ptr %i.kc, ptr %i.it
  %.sink10.i2.i.i.i68 = select i1 %i.kb, i64 %i.ke, i64 %i.ka ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %..i.i.i.i.i.i69 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66) ; 2 uses
  %.not.i.i.i.i.i70 = icmp eq i64 %..i.i.i.i.i.i69, 0
  br i1 %.not.i.i.i.i.i70, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i71
  %i.kf = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i78 = icmp eq i64 %i.kf, %..i.i.i.i.i.i69
  br i1 %exitcond.not.i.i.i.i.i78, label %._crit_edge.i.i.i.i.i79, label %.lr.ph.i.i.i.i.i71

._crit_edge.i.i.i.i.i79:                          ; preds = %bb.z, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64
  %i.kg = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i66, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i68)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

.loopexit.i.i.i.i.i77:                            ; preds = %.lr.ph.i.i.i.i.i71
  %i.kh = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i76, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80

.lr.ph.i.i.i.i.i71:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64, %bb.z
  %.sroa.01.019.i.i.i.i.i72 = phi i64 [ %i.kf, %bb.z ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i64 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i65, i64 %.sroa.01.019.i.i.i.i.i72
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i67, i64 %.sroa.01.019.i.i.i.i.i72
  %.val15.i.i.i.i.i73 = load ptr, ptr %i.ki, align 8, !alias.scope !1371, !noalias !1372, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i74 = load ptr, ptr %i.kj, align 8, !alias.scope !1373, !noalias !1374, !nonnull !5, !noundef !5 ; 2 uses
  %i.kk = ptrtoint ptr %.val15.i.i.i.i.i73 to i64
  %i.kl = and i64 %i.kk, 1
  %i.km = sub nsw i64 0, %i.kl
  %i.kn = getelementptr i8, ptr %.val15.i.i.i.i.i73, i64 %i.km ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !1375, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !1375, !noundef !5 ; 2 uses
  %i.kr = ptrtoint ptr %.val16.i.i.i.i.i74 to i64
  %i.ks = and i64 %i.kr, 1
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr i8, ptr %.val16.i.i.i.i.i74, i64 %i.kt ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ku) ]
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !1375, !nonnull !5, !noundef !5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !1375, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i75 = tail call i64 @llvm.umin.i64(i64 %i.kq, i64 %i.kx)
  %i.ky = tail call i32 @memcmp(ptr nonnull %i.ko, ptr nonnull %i.kv, i64 %spec.store.select.i.i.i.i.i.i.i75), !noalias !1375 ; 2 uses
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp eq i32 %i.ky, 0
  %i.lb = sub i64 %i.kq, %i.kx
  %spec.select.i.i.i.i.i.i.i76 = select i1 %i.la, i64 %i.lb, i64 %i.kz ; 2 uses
  %i.lc = icmp eq i64 %spec.select.i.i.i.i.i.i.i76, 0
  br i1 %i.lc, label %bb.z, label %.loopexit.i.i.i.i.i77

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit80: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61, %._crit_edge.i.i.i.i.i79, %.loopexit.i.i.i.i.i77
  %.sroa.0.0.i.i63 = phi i8 [ %.sroa.0.0.i.i.i62, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i61 ], [ %i.kg, %._crit_edge.i.i.i.i.i79 ], [ %i.kh, %.loopexit.i.i.i.i.i77 ]
  %i.ld = select i1 %i.ir, ptr %i.dx, ptr %i.eb, !unpredictable !5
  %i.le = select i1 %i.gj, ptr %i.dz, ptr %i.du, !unpredictable !5
  %i.lf = icmp eq i8 %.sroa.0.0.i.i63, -1         ; 2 uses
  %i.lg = select i1 %i.lf, ptr %i.iv, ptr %i.it, !unpredictable !5
  %i.lh = select i1 %i.lf, ptr %i.it, ptr %i.iv, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.le, i64 88, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.li, ptr noundef nonnull align 8 dereferenceable(88) %i.lg, i64 88, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lj, ptr noundef nonnull align 8 dereferenceable(88) %i.lh, i64 88, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.lk, ptr noundef nonnull align 8 dereferenceable(88) %i.ld, i64 88, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyjNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0E0EB35_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val21 = load i64, ptr %i.a, align 8, !range !551, !noundef !5
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val22 = load ptr, ptr %i.b, align 8
  %.val23 = load i64, ptr %0, align 8
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val24 = load ptr, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i = load ptr, ptr %.0.val, align 8
  %i.d = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i, i64 %.val21, ptr %.val22) #47
  %.val.i = load ptr, ptr %.0.val, align 8
  %i.e = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i, i64 %.val23, ptr %.val24) #47
  %i.f = icmp ult i64 %i.d, %i.e                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16 = load i64, ptr %i.g, align 8, !range !551, !noundef !5
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val17 = load ptr, ptr %i.i, align 8
  %.val18 = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val19 = load ptr, ptr %i.j, align 8
  %.val3.i25 = load ptr, ptr %.0.val, align 8
  %i.k = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i25, i64 %.val16, ptr %.val17) #47
  %.val.i26 = load ptr, ptr %.0.val, align 8
  %i.l = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i26, i64 %.val18, ptr %.val19) #47
  %i.m = icmp ult i64 %i.k, %i.l                  ; 2 uses
  %i.n = zext i1 %i.f to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = xor i1 %i.f, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = select i1 %i.m, i64 3, i64 2
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %i.m, i64 2, i64 3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %.val11 = load i64, ptr %i.t, align 8, !range !551, !noundef !5
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val12 = load ptr, ptr %i.w, align 8
  %.val13 = load i64, ptr %i.o, align 8
  %i.x = getelementptr i8, ptr %i.o, i64 8
  %.val14 = load ptr, ptr %i.x, align 8
  %.val3.i27 = load ptr, ptr %.0.val, align 8
  %i.y = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i27, i64 %.val11, ptr %.val12) #47
  %.val.i28 = load ptr, ptr %.0.val, align 8
  %i.z = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i28, i64 %.val13, ptr %.val14) #47
  %i.aa = icmp ult i64 %i.y, %i.z                 ; 3 uses
  %.val6 = load i64, ptr %i.v, align 8, !range !551, !noundef !5
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  %.val7 = load ptr, ptr %i.ab, align 8
  %.val8 = load i64, ptr %i.r, align 8
  %i.ac = getelementptr i8, ptr %i.r, i64 8
  %.val9 = load ptr, ptr %i.ac, align 8
  %.val3.i29 = load ptr, ptr %.0.val, align 8
  %i.ad = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val3.i29, i64 %.val6, ptr %.val7) #47
  %.val.i30 = load ptr, ptr %.0.val, align 8
  %i.ae = tail call fastcc noundef i64 @_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18reorder_impl_items18reorder_impl_itemss_0B7_(ptr %.val.i30, i64 %.val8, ptr %.val9) #47
  %i.af = icmp ult i64 %i.ad, %i.ae               ; 3 uses
  %i.ag = select i1 %i.aa, ptr %i.t, ptr %i.o, !unpredictable !5
  %i.ah = select i1 %i.af, ptr %i.r, ptr %i.v, !unpredictable !5
  %i.ai = select i1 %i.af, ptr %i.t, ptr %i.r, !unpredictable !5
  %i.aj = select i1 %i.aa, ptr %i.o, ptr %i.ai, !unpredictable !5 ; 4 uses
  %i.ak = select i1 %i.aa, ptr %i.r, ptr %i.t, !unpredictable !5
  %i.al = select i1 %i.af, ptr %i.v, ptr %i.ak, !unpredictable !5 ; 4 uses
  %.val1 = load i64, ptr %i.al, align 8, !range !551, !noundef !5
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2 = load ptr, ptr %i.am, align 8
  %.val3 = load i64, ptr %i.aj, align 8
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val4 = load ptr, ptr %i.an, align 8
  %.val3.i31 = load ptr, ptr %.0.val, align 8
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3i_:bb.a
  %i.fr = getelementptr inbounds nuw [88 x i8], ptr %i.ew, i64 %i.fq ; 3 uses
  %i.fs = icmp eq ptr %i.fp, %i.dv
  %i.ft = icmp eq ptr %i.fr, %2
  %or.cond.i.i = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3K_.exit.i, label %.preheader

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc31.i
  %.sroa.13.1.i = phi ptr [ %i.go, %.noexc31.i ], [ %i.dv, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.gl, %.noexc31.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gn, %.noexc31.i ], [ %i.eq, %.critedge.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  %i.fu = load ptr, ptr %.val, align 8, !alias.scope !2177, !noalias !2180, !nonnull !5, !align !82, !noundef !5
  %i.fv = load ptr, ptr %i.et, align 8, !alias.scope !2177, !noalias !2180, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !range !177, !noalias !2187, !noundef !5
  %.not.i.i.i21.i = icmp eq i32 %i.fx, -1
  %..i.i.i22.i = select i1 %.not.i.i.i21.i, ptr null, ptr %i.fv
  %i.fy = load ptr, ptr %i.eu, align 8, !alias.scope !2177, !noalias !2180, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !noalias !2187, !noundef !5
  %.not2.i.i.i23.i = icmp eq i32 %i.fz, 0
  %.sroa.01.0.i.i.i24.i = select i1 %.not2.i.i.i23.i, ptr null, ptr %i.fy
  %i.ga = invoke noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.fu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.02.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i.i.i22.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i.i.i24.i)
          to label %.noexc30.i unwind label %.loopexit.split-lp.i

.noexc30.i:                                       ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  %i.gb = load ptr, ptr %.val, align 8, !alias.scope !2188, !noalias !2191, !nonnull !5, !align !82, !noundef !5
  %i.gc = load ptr, ptr %i.et, align 8, !alias.scope !2188, !noalias !2191, !nonnull !5, !align !82, !noundef !5 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !range !177, !noalias !2193, !noundef !5
  %.not.i2.i.i25.i = icmp eq i32 %i.ge, -1
  %..i3.i.i26.i = select i1 %.not.i2.i.i25.i, ptr null, ptr %i.gc
  %i.gf = load ptr, ptr %i.eu, align 8, !alias.scope !2188, !noalias !2191, !nonnull !5, !align !179, !noundef !5 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !2193, !noundef !5
  %.not2.i4.i.i27.i = icmp eq i32 %i.gg, 0
  %.sroa.01.0.i5.i.i28.i = select i1 %.not2.i4.i.i27.i, ptr null, ptr %i.gf
  %i.gh = invoke noundef i32 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import15relevance_score(ptr noundef nonnull align 8 %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %..i3.i.i26.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.01.0.i5.i.i28.i)
          to label %.noexc31.i unwind label %.loopexit.split-lp.i

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.gi = icmp slt i32 %i.gh, %i.ga               ; 3 uses
  %i.gj = xor i1 %i.gi, true
  %.sroa.05.0.i.i = select i1 %i.gi, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !2158, !noalias !2194
  %i.gk = zext i1 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.i34, i64 %i.gk ; 3 uses
  %i.gm = zext i1 %i.gi to i64
  %i.gn = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.02.i.i, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 88 ; 2 uses
  %i.gp = icmp ne ptr %i.gl, %i.es
  %i.gq = icmp ne ptr %i.gn, %i.m
  %or.cond.i29.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3K_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3K_.exit.i: ; preds = %.noexc31.i, %.noexc19.i
  %.sroa.13.4.i = phi ptr [ %i.fp, %.noexc19.i ], [ %i.go, %.noexc31.i ]
  %.sroa.7.2.i = phi ptr [ %i.fr, %.noexc19.i ], [ %i.es, %.noexc31.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc19.i ], [ %i.gl, %.noexc31.i ] ; 2 uses
  %i.gr = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gs = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gt = sub nuw i64 %i.gr, %i.gs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gt, i1 false), !alias.scope !2158, !noalias !2195
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.noexc30.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.es, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gu = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gv = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gw = sub nuw i64 %i.gu, %i.gv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gw, i1 false), !alias.scope !2158, !noalias !2200
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3K_.exit.i
  %i.gx = shl nuw nsw i64 %i.dt, 1
  %i.gy = or disjoint i64 %i.gx, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3t_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit
  %.sroa.0.0.i = phi i64 [ %i.gy, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3j_.exit ], [ %i.eb, %bb.u ] ; 2 uses
  %i.gz = icmp ugt i64 %i.dk, 1
  br i1 %i.gz, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.ha = add i64 %.sroa.02.1.lcssa, 1
  %i.hb = lshr i64 %.sroa.018.0, 1
  %i.hc = add nuw i64 %i.hb, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.hd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hd, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.he = or i64 %1, 1
  %i.hf = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.he, i1 true)
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = xor i32 %i.hh, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2152
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i154 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i159 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.az, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.az ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.pq, %bb.az ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.po, %bb.az ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit
  %.sroa.021.0 = phi i8 [ %i.im, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph105, label %._crit_edge

.lr.ph105:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 22 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, %bb.h
  br i1 %4, label %bb.ae, label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217), !noalias !2213
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2219), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222), !noalias !2213
  %i.t = load i8, ptr %i.r, align 8, !range !282, !alias.scope !2224, !noalias !2225, !noundef !5 ; 5 uses
  %6 = zext nneg i8 %i.t to i64
  %i.u = load i8, ptr %i.s, align 8, !range !282, !alias.scope !2226, !noalias !2227, !noundef !5 ; 2 uses
  %7 = zext nneg i8 %i.u to i64
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.w = icmp eq i8 %i.t, %i.u
  br i1 %i.w, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.l:                                             ; preds = %bb.k
  switch i8 %i.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 [
    i8 1, label %bb.m
    i8 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 113
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !2224, !noalias !2225, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.ab = tail call i8 @llvm.ucmp.i8.i8(i8 %i.y, i8 %i.aa)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !range !285, !alias.scope !2224, !noalias !2225, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !range !285, !alias.scope !2226, !noalias !2227, !noundef !5 ; 2 uses
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  %i.ah = icmp eq i32 %i.ad, %i.af
  br i1 %i.ah, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !2224, !noalias !2225, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !2226, !noalias !2227, !noundef !5
  %i.am = tail call i8 @llvm.ucmp.i8.i32(i32 %i.aj, i32 %i.al)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58: ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i59 = phi i8 [ %i.v, %bb.k ], [ %i.ab, %bb.m ], [ %i.am, %bb.o ], [ %i.ag, %bb.n ] ; 2 uses
  %i.an = icmp eq i8 %.sroa.0.0.i.i.i59, 0
  br i1 %i.an, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231), !noalias !2213
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !2233, !noalias !2236, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8, !alias.scope !2233, !noalias !2236, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2233, !noalias !2236
  %.sink11.i.i.i.i62 = select i1 %i.aq, ptr %i.ar, ptr %i.q
  %.sink10.i.i.i.i63 = select i1 %i.aq, i64 %i.at, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2238, !noalias !2241, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !alias.scope !2238, !noalias !2241, !nonnull !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2238, !noalias !2241
  %.sink11.i1.i.i.i64 = select i1 %i.aw, ptr %i.ax, ptr %i.o
  %.sink10.i2.i.i.i65 = select i1 %i.aw, i64 %i.az, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251), !noalias !2213
  %..i.i.i.i.i.i66 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63) ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq i64 %..i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.ba = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i75 = icmp eq i64 %i.ba, %..i.i.i.i.i.i66
  br i1 %exitcond.not.i.i.i.i.i75, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

._crit_edge.i.i.i.i.i76:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61
  %i.bb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77

.loopexit.i.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i.i68
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i73, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77

.lr.ph.i.i.i.i.i68:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, %bb.p
  %.sroa.01.019.i.i.i.i.i69 = phi i64 [ %i.ba, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i62, i64 %.sroa.01.019.i.i.i.i.i69
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i64, i64 %.sroa.01.019.i.i.i.i.i69
  %.val15.i.i.i.i.i70 = load ptr, ptr %i.bd, align 8, !alias.scope !2253, !noalias !2254, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i71 = load ptr, ptr %i.be, align 8, !alias.scope !2255, !noalias !2256, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = ptrtoint ptr %.val15.i.i.i.i.i70 to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr i8, ptr %.val15.i.i.i.i.i70, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ], !noalias !2213
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2257, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2257, !noundef !5 ; 2 uses
  %i.bm = ptrtoint ptr %.val16.i.i.i.i.i71 to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %.val16.i.i.i.i.i71, i64 %i.bo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ], !noalias !2213
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2257, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !2257, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bs)
  %i.bt = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i.i.i.i.i72), !noalias !2257 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bl, %i.bs
  %spec.select.i.i.i.i.i.i.i73 = select i1 %i.bv, i64 %i.bw, i64 %i.bu ; 2 uses
  %i.bx = icmp eq i64 %spec.select.i.i.i.i.i.i.i73, 0
  br i1 %i.bx, label %bb.p, label %.loopexit.i.i.i.i.i74

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %._crit_edge.i.i.i.i.i76, %.loopexit.i.i.i.i.i74
  %.sroa.0.0.i.i60 = phi i8 [ %.sroa.0.0.i.i.i59, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58 ], [ %i.bb, %._crit_edge.i.i.i.i.i76 ], [ %i.bc, %.loopexit.i.i.i.i.i74 ]
  %i.by = icmp eq i8 %.sroa.0.0.i.i60, -1         ; 2 uses
  %.not112 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader87

.preheader87:                                     ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader87
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %umax124 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.bz = phi i8 [ %i.cf, %bb.v ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.sroa.01.0.i.i97 = phi i64 [ %i.ek, %bb.v ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 8 uses
  %i.cb = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.n
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.cb ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266), !noalias !2213
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271), !noalias !2213
  %i.cf = load i8, ptr %i.ce, align 8, !range !282, !alias.scope !2273, !noalias !2274, !noundef !5 ; 3 uses
  %8 = zext nneg i8 %i.cf to i64
  %9 = zext nneg i8 %i.bz to i64
  %i.cg = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.ch = icmp eq i8 %i.cf, %i.bz
  br i1 %i.ch, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.q:                                             ; preds = %.lr.ph
  switch i8 %i.bz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 25
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !2273, !noalias !2274, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !2275, !noalias !2276, !noundef !5
  %i.cm = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cj, i8 %i.cl)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !range !285, !alias.scope !2273, !noalias !2274, !noundef !5 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !range !285, !alias.scope !2275, !noalias !2276, !noundef !5 ; 2 uses
  %i.cr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.co, i32 %i.cq)
  %i.cs = icmp eq i32 %i.co, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !2273, !noalias !2274, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !2275, !noalias !2276, !noundef !5
  %i.cx = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.cg, %.lr.ph ], [ %i.cm, %bb.r ], [ %i.cx, %bb.t ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.cy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280), !noalias !2213
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2282, !noalias !2285, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 1                   ; 2 uses
  %i.dc = load ptr, ptr %i.ca, align 8, !alias.scope !2282, !noalias !2285, !nonnull !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2282, !noalias !2285
  %.sink11.i.i.i.i42 = select i1 %i.db, ptr %i.dc, ptr %i.ca
  %.sink10.i.i.i.i43 = select i1 %i.db, i64 %i.de, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2287, !noalias !2290, !noundef !5 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 1                   ; 2 uses
  %i.di = load ptr, ptr %i.cd, align 8, !alias.scope !2287, !noalias !2290, !nonnull !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2287, !noalias !2290
  %.sink11.i1.i.i.i44 = select i1 %i.dh, ptr %i.di, ptr %i.cd
  %.sink10.i2.i.i.i45 = select i1 %i.dh, i64 %i.dk, i64 %i.dg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300), !noalias !2213
  %..i.i.i.i.i.i46 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43) ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i64 %..i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i48
  %i.dl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i49, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i55 = icmp eq i64 %i.dl, %..i.i.i.i.i.i46
  br i1 %exitcond.not.i.i.i.i.i55, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

._crit_edge.i.i.i.i.i56:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41
  %i.dm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

.loopexit.i.i.i.i.i54:                            ; preds = %.lr.ph.i.i.i.i.i48
  %i.dn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i53, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57

.lr.ph.i.i.i.i.i48:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, %bb.u
  %.sroa.01.019.i.i.i.i.i49 = phi i64 [ %i.dl, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i42, i64 %.sroa.01.019.i.i.i.i.i49
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i44, i64 %.sroa.01.019.i.i.i.i.i49
  %.val15.i.i.i.i.i50 = load ptr, ptr %i.do, align 8, !alias.scope !2302, !noalias !2303, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i51 = load ptr, ptr %i.dp, align 8, !alias.scope !2304, !noalias !2305, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = ptrtoint ptr %.val15.i.i.i.i.i50 to i64
  %i.dr = and i64 %i.dq, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %.val15.i.i.i.i.i50, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ], !noalias !2213
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2306, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2306, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %.val16.i.i.i.i.i51 to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr i8, ptr %.val16.i.i.i.i.i51, i64 %i.dz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ], !noalias !2213
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !2306, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !2306, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i52 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ed)
  %i.ee = tail call i32 @memcmp(ptr nonnull %i.du, ptr nonnull %i.eb, i64 %spec.store.select.i.i.i.i.i.i.i52), !noalias !2306 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %i.eh = sub i64 %i.dw, %i.ed
  %spec.select.i.i.i.i.i.i.i53 = select i1 %i.eg, i64 %i.eh, i64 %i.ef ; 2 uses
  %i.ei = icmp eq i64 %spec.select.i.i.i.i.i.i.i53, 0
  br i1 %i.ei, label %bb.u, label %.loopexit.i.i.i.i.i54

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %._crit_edge.i.i.i.i.i56, %.loopexit.i.i.i.i.i54
  %.sroa.0.0.i.i40 = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38 ], [ %i.dm, %._crit_edge.i.i.i.i.i56 ], [ %i.dn, %.loopexit.i.i.i.i.i54 ]
  %i.ej = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.ej, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57
  %i.ek = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %.lr.ph

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.ab
  %i.el = phi i8 [ %i.er, %bb.ab ], [ %i.t, %.lr.ph100.preheader ] ; 3 uses
  %.sroa.01.1.i.i99 = phi i64 [ %i.gw, %bb.ab ], [ 2, %.lr.ph100.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99 ; 8 uses
  %i.en = add nsw i64 %.sroa.01.1.i.i99, -1       ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.n
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.en ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2315), !noalias !2213
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320), !noalias !2213
  %i.er = load i8, ptr %i.eq, align 8, !range !282, !alias.scope !2322, !noalias !2323, !noundef !5 ; 3 uses
  %10 = zext nneg i8 %i.er to i64
  %11 = zext nneg i8 %i.el to i64
  %i.es = tail call i8 @llvm.scmp.i8.i64(i64 %10, i64 %11)
  %i.et = icmp eq i8 %i.er, %i.el
  br i1 %i.et, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %.lr.ph100
  switch i8 %i.el, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 25
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !2322, !noalias !2323, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 25
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2324, !noalias !2325, !noundef !5
  %i.ey = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ev, i8 %i.ex)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !range !285, !alias.scope !2322, !noalias !2323, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !range !285, !alias.scope !2324, !noalias !2325, !noundef !5 ; 2 uses
  %i.fd = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fa, i32 %i.fc)
  %i.fe = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fe, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !2322, !noalias !2323, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !2324, !noalias !2325, !noundef !5
  %i.fj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fg, i32 %i.fi)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph100
  %.sroa.0.0.i.i.i = phi i8 [ %i.es, %.lr.ph100 ], [ %i.ey, %bb.x ], [ %i.fj, %bb.z ], [ %i.fd, %bb.y ] ; 2 uses
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.fk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2326), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329), !noalias !2213
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2331, !noalias !2334, !noundef !5 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 1                   ; 2 uses
  %i.fo = load ptr, ptr %i.em, align 8, !alias.scope !2331, !noalias !2334, !nonnull !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !2331, !noalias !2334
  %.sink11.i.i.i.i = select i1 %i.fn, ptr %i.fo, ptr %i.em
  %.sink10.i.i.i.i = select i1 %i.fn, i64 %i.fq, i64 %i.fm ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2336, !noalias !2339, !noundef !5 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 1                   ; 2 uses
  %i.fu = load ptr, ptr %i.ep, align 8, !alias.scope !2336, !noalias !2339, !nonnull !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !2336, !noalias !2339
  %.sink11.i1.i.i.i = select i1 %i.ft, ptr %i.fu, ptr %i.ep
  %.sink10.i2.i.i.i = select i1 %i.ft, i64 %i.fw, i64 %i.fs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2344), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349), !noalias !2213
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fx, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.fy = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.aa
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.fx, %bb.aa ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !2351, !noalias !2352, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !2353, !noalias !2354, !nonnull !5, !noundef !5 ; 2 uses
  %i.gc = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.gd = and i64 %i.gc, 1
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ge ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ], !noalias !2213
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2355, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !2355, !noundef !5 ; 2 uses
  %i.gj = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.gk = and i64 %i.gj, 1
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.gl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ], !noalias !2213
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !2355, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !noalias !2355, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gp)
  %i.gq = tail call i32 @memcmp(ptr nonnull %i.gg, ptr nonnull %i.gn, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !2355 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %i.gt = sub i64 %i.gi, %i.gp
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gs, i64 %i.gt, i64 %i.gr ; 2 uses
  %i.gu = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.gu, label %bb.aa, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i37 = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.fy, %._crit_edge.i.i.i.i.i ], [ %i.fz, %.loopexit.i.i.i.i.i ]
  %i.gv = icmp eq i8 %.sroa.0.0.i.i37, -1
  br i1 %i.gv, label %bb.ab, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i

bb.ab:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %i.gw = add nuw i64 %.sroa.01.1.i.i99, 1        ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gw, %umax124
  br i1 %exitcond125.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i, label %.lr.ph100

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i: ; preds = %bb.v, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57, %bb.ab, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit ], [ %umax124, %bb.ab ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit57 ], [ %umax, %bb.v ] ; 6 uses
  %i.gx = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.gx)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ac

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157: ; preds = %.preheader
  br i1 %.not5.i159, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread: ; preds = %.preheader87
  br i1 %.not5.i154, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ac:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i
  br i1 %i.by, label %bb.af, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ad:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.gy = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

bb.ae:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2356
  %i.gz = shl nuw nsw i64 %..i35, 1
  %i.ha = or disjoint i64 %i.gz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread, %bb.j, %bb.af, %bb.ac
  %.sroa.0.0.i.i8285 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ac ], [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread ], [ %.sroa.0.0.i.i155162166, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.hb = shl nuw nsw i64 %.sroa.0.0.i.i8285, 1
  %i.hc = or disjoint i64 %i.hb, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hd = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360), !noalias !2213
  %.not.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157, %bb.af
  %i.he = phi i64 [ %i.hd, %bb.af ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157 ]
  %.sroa.0.0.i.i155162166 = phi i64 [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Y_.exit.i.thread157 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i155162166
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.id, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.hg = xor i64 %.sroa.0.016.i.i, -1
  %i.hh = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.hi = getelementptr [88 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  %i.hj = load <2 x i64>, ptr %i.hh, align 8, !alias.scope !2362, !noalias !2368
  %i.hk = load <2 x i64>, ptr %i.hi, align 8, !alias.scope !2369, !noalias !2372
  store <2 x i64> %i.hk, ptr %i.hh, align 8, !alias.scope !2362, !noalias !2368
  store <2 x i64> %i.hj, ptr %i.hi, align 8, !alias.scope !2369, !noalias !2372
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !2373, !noalias !2368
  %i.ho = load <2 x i64>, ptr %i.hm, align 8, !alias.scope !2376, !noalias !2372
  store <2 x i64> %i.ho, ptr %i.hl, align 8, !alias.scope !2373, !noalias !2368
  store <2 x i64> %i.hn, ptr %i.hm, align 8, !alias.scope !2376, !noalias !2372
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 32 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 2 uses
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !alias.scope !2379, !noalias !2368
  %i.hs = load <2 x i64>, ptr %i.hq, align 8, !alias.scope !2382, !noalias !2372
  store <2 x i64> %i.hs, ptr %i.hp, align 8, !alias.scope !2379, !noalias !2368
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !alias.scope !2382, !noalias !2372
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 48 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.ht, align 8, !alias.scope !2385, !noalias !2368
  %i.hw = load <2 x i64>, ptr %i.hu, align 8, !alias.scope !2388, !noalias !2372
  store <2 x i64> %i.hw, ptr %i.ht, align 8, !alias.scope !2385, !noalias !2368
  store <2 x i64> %i.hv, ptr %i.hu, align 8, !alias.scope !2388, !noalias !2372
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 64 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !2391, !noalias !2368
  %i.ia = load <2 x i64>, ptr %i.hy, align 8, !alias.scope !2394, !noalias !2372
  store <2 x i64> %i.ia, ptr %i.hx, align 8, !alias.scope !2391, !noalias !2368
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !alias.scope !2394, !noalias !2372
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 80 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397), !noalias !2213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399), !noalias !2213
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !2401, !noalias !2402
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2403, !noalias !2404
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ib, align 8, !alias.scope !2401, !noalias !2402
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ic, align 8, !alias.scope !2403, !noalias !2404
  %i.id = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.id, %i.he
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2Z_.exit: ; preds = %bb.ad, %bb.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.hc, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ha, %bb.ae ], [ %i.gy, %bb.ad ] ; 2 uses
  %i.ie = lshr i64 %.sroa.023.0, 1
  %i.if = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ig = sub nsw i64 %factor, %i.ie
  %i.ih = add nuw nsw i64 %i.if, %factor
  %i.ii = mul i64 %i.ig, %.sroa.0.0
  %i.ij = mul i64 %i.ih, %.sroa.0.0
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ik, i1 false)
  %i.im = trunc nuw nsw i64 %i.il to i8
  br label %bb.g

bb.ag:                                            ; preds = %.lr.ph105, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit
  %.sroa.02.1104 = phi i64 [ %.sroa.02.0, %.lr.ph105 ], [ %i.in, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 2 uses
  %.sroa.023.1103 = phi i64 [ %.sroa.023.0, %.lr.ph105 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 4 uses
  %i.in = add i64 %.sroa.02.1104, -1              ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ip, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit, %bb.ag, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1103, %bb.ag ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1104, %bb.ag ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ir, align 1
  br i1 %i.k, label %bb.az, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.in
  %i.it = load i64, ptr %i.is, align 8, !noundef !5 ; 3 uses
  %i.iu = lshr i64 %i.it, 1                       ; 8 uses
  %i.iv = lshr i64 %.sroa.023.1103, 1             ; 6 uses
  %i.iw = add nuw i64 %i.iu, %i.iv                ; 4 uses
  %i.ix = sub i64 %.sroa.09.0, %i.iw
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ix ; 6 uses
  %i.iz = icmp samesign ugt i64 %i.iw, %3
  %i.ja = trunc i64 %.sroa.023.1103 to i1
  %i.jb = or i64 %i.it, %.sroa.023.1103
  %i.jc = trunc i64 %i.jb to i1
  %or.cond3.i = or i1 %i.iz, %i.jc
  br i1 %or.cond3.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jd = trunc i64 %i.it to i1
  br i1 %i.jd, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.je = shl nuw nsw i64 %i.iw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit

bb.ak:                                            ; preds = %bb.al, %bb.ai
  br i1 %i.ja, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.jf = or i64 %i.iu, 1
  %i.jg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 1
  %i.jj = xor i32 %i.ji, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.iy, i64 noundef range(i64 0, 104811045873349726) %i.iu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2405
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu
  %i.jl = or i64 %i.iv, 1
  %i.jm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 1
  %i.jp = xor i32 %i.jo, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.jk, i64 noundef range(i64 0, 104811045873349726) %i.iv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2405
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  %i.jq = icmp eq i64 %i.iu, 0
  %i.jr = icmp eq i64 %i.iv, 0
  %or.cond.i = or i1 %i.jr, %i.jq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 range(i64 0, -9223372036854775808) %i.iu) ; 2 uses
  %i.js = icmp samesign ult i64 %3, %..i.i
  br i1 %i.js, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.iu, %i.iv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.jt, ptr %i.iy
  %i.ju = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ju, i1 false), !alias.scope !2411
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i
  %i.jw = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.jv, %.critedge.i ] ; 7 uses
  %i.jx = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.jt, %.critedge.i ] ; 7 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.ka, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -88 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -88 ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %i.kb = getelementptr inbounds i8, ptr %i.jw, i64 -64
  %i.kc = getelementptr inbounds i8, ptr %i.jx, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.kd = load i8, ptr %i.kb, align 4, !range !282, !alias.scope !2427, !noalias !2428, !noundef !5 ; 3 uses
  %12 = zext nneg i8 %i.kd to i64
  %i.ke = load i8, ptr %i.kc, align 4, !range !282, !alias.scope !2431, !noalias !2432, !noundef !5 ; 2 uses
  %13 = zext nneg i8 %i.ke to i64
  %i.kf = tail call i8 @llvm.scmp.i8.i64(i64 %12, i64 %13)
  %i.kg = icmp eq i8 %i.kd, %i.ke
  br i1 %i.kg, label %bb.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ap:                                            ; preds = %.preheader.i
  switch i8 %i.kd, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i [
    i8 1, label %bb.aq
    i8 4, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.kh = getelementptr inbounds i8, ptr %i.jw, i64 -63
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !2427, !noalias !2428, !noundef !5
  %i.kj = getelementptr inbounds i8, ptr %i.jx, i64 -63
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !2431, !noalias !2432, !noundef !5
  %i.kl = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ki, i8 %i.kk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.km = getelementptr inbounds i8, ptr %i.jw, i64 -60
  %i.kn = load i32, ptr %i.km, align 4, !range !285, !alias.scope !2427, !noalias !2428, !noundef !5 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.jx, i64 -60
  %i.kp = load i32, ptr %i.ko, align 4, !range !285, !alias.scope !2431, !noalias !2432, !noundef !5 ; 2 uses
  %i.kq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.kn, i32 %i.kp)
  %i.kr = icmp eq i32 %i.kn, %i.kp
  br i1 %i.kr, label %bb.as, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ks = getelementptr inbounds i8, ptr %i.jw, i64 -56
  %i.kt = load i32, ptr %i.ks, align 4, !alias.scope !2427, !noalias !2428, !noundef !5
  %i.ku = getelementptr inbounds i8, ptr %i.jx, i64 -56
  %i.kv = load i32, ptr %i.ku, align 4, !alias.scope !2431, !noalias !2432, !noundef !5
  %i.kw = tail call i8 @llvm.ucmp.i8.i32(i32 %i.kt, i32 %i.kv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.as, %bb.ar, %bb.aq, %.preheader.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.kf, %.preheader.i ], [ %i.kl, %bb.aq ], [ %i.kw, %bb.as ], [ %i.kq, %bb.ar ] ; 2 uses
  %i.kx = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.kx, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i, %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.ky = getelementptr inbounds i8, ptr %i.jw, i64 -72
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !2438, !noalias !2441, !noundef !5 ; 2 uses
  %i.la = icmp ugt i64 %i.kz, 1                   ; 2 uses
  %i.lb = load ptr, ptr %i.jz, align 8, !alias.scope !2438, !noalias !2441, !nonnull !5
  %i.lc = getelementptr inbounds i8, ptr %i.jw, i64 -80
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !2438, !noalias !2441
  %.sink11.i.i.i.i.i.i = select i1 %i.la, ptr %i.lb, ptr %i.jz
  %.sink10.i.i.i.i.i.i = select i1 %i.la, i64 %i.ld, i64 %i.kz ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.jx, i64 -72
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !2443, !noalias !2446, !noundef !5 ; 2 uses
  %i.lg = icmp ugt i64 %i.lf, 1                   ; 2 uses
  %i.lh = load ptr, ptr %i.jy, align 8, !alias.scope !2443, !noalias !2446, !nonnull !5
  %i.li = getelementptr inbounds i8, ptr %i.jx, i64 -80
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !2443, !noalias !2446
  %.sink11.i1.i.i.i.i.i = select i1 %i.lg, ptr %i.lh, ptr %i.jy
  %.sink10.i2.i.i.i.i.i = select i1 %i.lg, i64 %i.lj, i64 %i.lf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %..i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lk = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.lk, %..i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.at, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i
  %i.ll = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, %bb.at
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.lk, %bb.at ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.ln, align 8, !alias.scope !2458, !noalias !2459, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i = load ptr, ptr %i.lo, align 8, !alias.scope !2460, !noalias !2461, !nonnull !5, !noundef !5 ; 2 uses
  %i.lp = ptrtoint ptr %.val15.i.i.i.i.i.i.i to i64
  %i.lq = and i64 %i.lp, 1
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i, i64 %i.lr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !2462, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !noalias !2462, !noundef !5 ; 2 uses
  %i.lw = ptrtoint ptr %.val16.i.i.i.i.i.i.i to i64
  %i.lx = and i64 %i.lw, 1
  %i.ly = sub nsw i64 0, %i.lx
  %i.lz = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i, i64 %i.ly ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !2462, !nonnull !5, !noundef !5
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !2462, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.lv, i64 %i.mc)
  %i.md = tail call i32 @memcmp(ptr nonnull %i.lt, ptr nonnull %i.ma, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !2462 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp eq i32 %i.md, 0
  %i.mg = sub i64 %i.lv, %i.mc
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.mf, i64 %i.mg, i64 %i.me ; 2 uses
  %i.mh = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mh, label %bb.at, label %.loopexit.i.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i ], [ %i.ll, %._crit_edge.i.i.i.i.i.i.i ], [ %i.lm, %.loopexit.i.i.i.i.i.i.i ]
  %i.mi = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i17.i = select i1 %i.mi, ptr %i.jy, ptr %i.jz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %..i17.i, i64 88, i1 false), !alias.scope !2411, !noalias !2463
  %i.mj = xor i1 %i.mi, true
  %i.mk = zext i1 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [88 x i8], ptr %i.jy, i64 %i.mk ; 3 uses
  %i.mm = zext i1 %i.mi to i64
  %i.mn = getelementptr inbounds nuw [88 x i8], ptr %i.jz, i64 %i.mm ; 3 uses
  %i.mo = icmp eq ptr %i.ml, %i.iy
  %i.mp = icmp eq ptr %i.mn, %2
  %or.cond.i.i = select i1 %i.mo, i1 true, i1 %i.mp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3j_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i
  %i.mq = phi ptr [ %i.pf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ], [ %i.iy, %.critedge.i ] ; 2 uses
  %.sroa.0.03.i.i = phi ptr [ %i.pe, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ], [ %i.jt, %.critedge.i ] ; 10 uses
  %i.mr = phi ptr [ %i.pc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ], [ %2, %.critedge.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.mu = load i8, ptr %i.ms, align 4, !range !282, !alias.scope !2479, !noalias !2480, !noundef !5 ; 3 uses
  %14 = zext nneg i8 %i.mu to i64
  %i.mv = load i8, ptr %i.mt, align 4, !range !282, !alias.scope !2483, !noalias !2484, !noundef !5 ; 2 uses
  %15 = zext nneg i8 %i.mv to i64
  %i.mw = tail call i8 @llvm.scmp.i8.i64(i64 %14, i64 %15)
  %i.mx = icmp eq i8 %i.mu, %i.mv
  br i1 %i.mx, label %bb.au, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.au:                                            ; preds = %.lr.ph.i.i
  switch i8 %i.mu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i [
    i8 1, label %bb.av
    i8 4, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 25
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !2479, !noalias !2480, !noundef !5
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 25
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !2483, !noalias !2484, !noundef !5
  %i.nc = tail call i8 @llvm.ucmp.i8.i8(i8 %i.mz, i8 %i.nb)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.aw:                                            ; preds = %bb.au
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 28
  %i.ne = load i32, ptr %i.nd, align 4, !range !285, !alias.scope !2479, !noalias !2480, !noundef !5 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  %i.ng = load i32, ptr %i.nf, align 4, !range !285, !alias.scope !2483, !noalias !2484, !noundef !5 ; 2 uses
  %i.nh = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ne, i32 %i.ng)
  %i.ni = icmp eq i32 %i.ne, %i.ng
  br i1 %i.ni, label %bb.ax, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.ax:                                            ; preds = %bb.aw
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 32
  %i.nk = load i32, ptr %i.nj, align 4, !alias.scope !2479, !noalias !2480, !noundef !5
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.nm = load i32, ptr %i.nl, align 4, !alias.scope !2483, !noalias !2484, !noundef !5
  %i.nn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.nk, i32 %i.nm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i: ; preds = %bb.ax, %bb.aw, %bb.av, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i20.i = phi i8 [ %i.mw, %.lr.ph.i.i ], [ %i.nc, %bb.av ], [ %i.nn, %bb.ax ], [ %i.nh, %bb.aw ] ; 2 uses
  %i.no = icmp eq i8 %.sroa.0.0.i.i.i.i20.i, 0
  br i1 %i.no, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i, %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !2490, !noalias !2493, !noundef !5 ; 2 uses
  %i.nr = icmp ugt i64 %i.nq, 1                   ; 2 uses
  %i.ns = load ptr, ptr %.sroa.0.03.i.i, align 8, !alias.scope !2490, !noalias !2493, !nonnull !5
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !alias.scope !2490, !noalias !2493
  %.sink11.i.i.i.i.i25.i = select i1 %i.nr, ptr %i.ns, ptr %.sroa.0.03.i.i
  %.sink10.i.i.i.i.i26.i = select i1 %i.nr, i64 %i.nu, i64 %i.nq ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !alias.scope !2495, !noalias !2498, !noundef !5 ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, 1                   ; 2 uses
  %i.ny = load ptr, ptr %i.mr, align 8, !alias.scope !2495, !noalias !2498, !nonnull !5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !2495, !noalias !2498
  %.sink11.i1.i.i.i.i27.i = select i1 %i.nx, ptr %i.ny, ptr %i.mr
  %.sink10.i2.i.i.i.i28.i = select i1 %i.nx, i64 %i.oa, i64 %i.nw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %..i.i.i.i.i.i.i29.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i) ; 2 uses
  %.not.i.i.i.i.i.i30.i = icmp eq i64 %..i.i.i.i.i.i.i29.i, 0
  br i1 %.not.i.i.i.i.i.i30.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.ob = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i32.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i38.i = icmp eq i64 %i.ob, %..i.i.i.i.i.i.i29.i
  br i1 %exitcond.not.i.i.i.i.i.i38.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

._crit_edge.i.i.i.i.i.i39.i:                      ; preds = %bb.ay, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i
  %i.oc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i

.loopexit.i.i.i.i.i.i37.i:                        ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.od = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i36.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i

.lr.ph.i.i.i.i.i.i31.i:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i, %bb.ay
  %.sroa.01.019.i.i.i.i.i.i32.i = phi i64 [ %i.ob, %bb.ay ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i25.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i27.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %.val15.i.i.i.i.i.i33.i = load ptr, ptr %i.oe, align 8, !alias.scope !2510, !noalias !2511, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i34.i = load ptr, ptr %i.of, align 8, !alias.scope !2512, !noalias !2513, !nonnull !5, !noundef !5 ; 2 uses
  %i.og = ptrtoint ptr %.val15.i.i.i.i.i.i33.i to i64
  %i.oh = and i64 %i.og, 1
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr i8, ptr %.val15.i.i.i.i.i.i33.i, i64 %i.oi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oj) ]
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !2514, !nonnull !5, !noundef !5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !noalias !2514, !noundef !5 ; 2 uses
  %i.on = ptrtoint ptr %.val16.i.i.i.i.i.i34.i to i64
  %i.oo = and i64 %i.on, 1
  %i.op = sub nsw i64 0, %i.oo
  %i.oq = getelementptr i8, ptr %.val16.i.i.i.i.i.i34.i, i64 %i.op ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oq) ]
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !2514, !nonnull !5, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !noalias !2514, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i35.i = tail call i64 @llvm.umin.i64(i64 %i.om, i64 %i.ot)
  %i.ou = tail call i32 @memcmp(ptr nonnull %i.ok, ptr nonnull %i.or, i64 %spec.store.select.i.i.i.i.i.i.i.i35.i), !noalias !2514 ; 2 uses
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp eq i32 %i.ou, 0
  %i.ox = sub i64 %i.om, %i.ot
  %spec.select.i.i.i.i.i.i.i.i36.i = select i1 %i.ow, i64 %i.ox, i64 %i.ov ; 2 uses
  %i.oy = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i36.i, 0
  br i1 %i.oy, label %bb.ay, label %.loopexit.i.i.i.i.i.i37.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i: ; preds = %.loopexit.i.i.i.i.i.i37.i, %._crit_edge.i.i.i.i.i.i39.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i
  %.sroa.0.0.i.i.i22.i = phi i8 [ %.sroa.0.0.i.i.i.i20.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i ], [ %i.oc, %._crit_edge.i.i.i.i.i.i39.i ], [ %i.od, %.loopexit.i.i.i.i.i.i37.i ]
  %i.oz = icmp eq i8 %.sroa.0.0.i.i.i22.i, -1     ; 3 uses
  %i.pa = xor i1 %i.oz, true
  %.sroa.05.0.i.i = select i1 %i.oz, ptr %.sroa.0.03.i.i, ptr %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !2411, !noalias !2515
  %i.pb = zext i1 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [88 x i8], ptr %i.mr, i64 %i.pb ; 3 uses
  %i.pd = zext i1 %i.oz to i64
  %i.pe = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.03.i.i, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mq, i64 88 ; 2 uses
  %i.pg = icmp ne ptr %i.pc, %i.jv
  %i.ph = icmp ne ptr %i.pe, %i.m
  %or.cond.i23.i = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3j_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3j_.exit.i: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.pf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ]
  %.sroa.7.0.i = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.jv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.pc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i21.i ] ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.pj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.pk = sub nuw i64 %i.pi, %i.pj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.pk, i1 false), !alias.scope !2411, !noalias !2516
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit: ; preds = %bb.an, %bb.ao, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3j_.exit.i
  %i.pl = shl nuw nsw i64 %i.iw, 1
  %i.pm = or disjoint i64 %i.pl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB32_.exit: ; preds = %bb.aj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.pm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2S_.exit ], [ %i.je, %bb.aj ] ; 2 uses
  %i.pn = icmp ugt i64 %i.in, 1
  br i1 %i.pn, label %bb.ag, label %._crit_edge

bb.az:                                            ; preds = %._crit_edge
  %i.po = add i64 %.sroa.02.1.lcssa, 1
  %i.pp = lshr i64 %.sroa.018.0, 1
  %i.pq = add nuw i64 %i.pp, %.sroa.09.0
  br label %bb.f

bb.ba:                                            ; preds = %._crit_edge
  %i.pr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pr, 0
  br i1 %.not30, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = or i64 %1, 1
  %i.pt = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ps, i1 true)
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 1
  %i.pw = xor i32 %i.pv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2405
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i154 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i159 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.az, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.az ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.pq, %bb.az ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.po, %bb.az ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit
  %.sroa.021.0 = phi i8 [ %i.im, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph105, label %._crit_edge

.lr.ph105:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 22 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, %bb.h
  br i1 %4, label %bb.ae, label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2533), !noalias !2529
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538), !noalias !2529
  %i.t = load i8, ptr %i.r, align 8, !range !282, !alias.scope !2540, !noalias !2541, !noundef !5 ; 5 uses
  %6 = zext nneg i8 %i.t to i64
  %i.u = load i8, ptr %i.s, align 8, !range !282, !alias.scope !2542, !noalias !2543, !noundef !5 ; 2 uses
  %7 = zext nneg i8 %i.u to i64
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  %i.w = icmp eq i8 %i.t, %i.u
  br i1 %i.w, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.l:                                             ; preds = %bb.k
  switch i8 %i.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 [
    i8 1, label %bb.m
    i8 4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 113
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !2540, !noalias !2541, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !2542, !noalias !2543, !noundef !5
  %i.ab = tail call i8 @llvm.ucmp.i8.i8(i8 %i.y, i8 %i.aa)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !range !285, !alias.scope !2540, !noalias !2541, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !range !285, !alias.scope !2542, !noalias !2543, !noundef !5 ; 2 uses
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  %i.ah = icmp eq i32 %i.ad, %i.af
  br i1 %i.ah, label %bb.o, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !2540, !noalias !2541, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !alias.scope !2542, !noalias !2543, !noundef !5
  %i.am = tail call i8 @llvm.ucmp.i8.i32(i32 %i.aj, i32 %i.al)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58: ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.sroa.0.0.i.i.i59 = phi i8 [ %i.v, %bb.k ], [ %i.ab, %bb.m ], [ %i.am, %bb.o ], [ %i.ag, %bb.n ] ; 2 uses
  %i.an = icmp eq i8 %.sroa.0.0.i.i.i59, 0
  br i1 %i.an, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547), !noalias !2529
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !2549, !noalias !2552, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %i.q, align 8, !alias.scope !2549, !noalias !2552, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2549, !noalias !2552
  %.sink11.i.i.i.i62 = select i1 %i.aq, ptr %i.ar, ptr %i.q
  %.sink10.i.i.i.i63 = select i1 %i.aq, i64 %i.at, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2554, !noalias !2557, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !alias.scope !2554, !noalias !2557, !nonnull !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2554, !noalias !2557
  %.sink11.i1.i.i.i64 = select i1 %i.aw, ptr %i.ax, ptr %i.o
  %.sink10.i2.i.i.i65 = select i1 %i.aw, i64 %i.az, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567), !noalias !2529
  %..i.i.i.i.i.i66 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63) ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq i64 %..i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i68
  %i.ba = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i75 = icmp eq i64 %i.ba, %..i.i.i.i.i.i66
  br i1 %exitcond.not.i.i.i.i.i75, label %._crit_edge.i.i.i.i.i76, label %.lr.ph.i.i.i.i.i68

._crit_edge.i.i.i.i.i76:                          ; preds = %bb.p, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61
  %i.bb = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i63, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i65)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77

.loopexit.i.i.i.i.i74:                            ; preds = %.lr.ph.i.i.i.i.i68
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i73, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77

.lr.ph.i.i.i.i.i68:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61, %bb.p
  %.sroa.01.019.i.i.i.i.i69 = phi i64 [ %i.ba, %bb.p ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i61 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i62, i64 %.sroa.01.019.i.i.i.i.i69
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i64, i64 %.sroa.01.019.i.i.i.i.i69
  %.val15.i.i.i.i.i70 = load ptr, ptr %i.bd, align 8, !alias.scope !2569, !noalias !2570, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i71 = load ptr, ptr %i.be, align 8, !alias.scope !2571, !noalias !2572, !nonnull !5, !noundef !5 ; 2 uses
  %i.bf = ptrtoint ptr %.val15.i.i.i.i.i70 to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr i8, ptr %.val15.i.i.i.i.i70, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ], !noalias !2529
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !2573, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2573, !noundef !5 ; 2 uses
  %i.bm = ptrtoint ptr %.val16.i.i.i.i.i71 to i64
  %i.bn = and i64 %i.bm, 1
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %.val16.i.i.i.i.i71, i64 %i.bo ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ], !noalias !2529
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2573, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !2573, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i72 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bs)
  %i.bt = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bq, i64 %spec.store.select.i.i.i.i.i.i.i72), !noalias !2573 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp eq i32 %i.bt, 0
  %i.bw = sub i64 %i.bl, %i.bs
  %spec.select.i.i.i.i.i.i.i73 = select i1 %i.bv, i64 %i.bw, i64 %i.bu ; 2 uses
  %i.bx = icmp eq i64 %spec.select.i.i.i.i.i.i.i73, 0
  br i1 %i.bx, label %bb.p, label %.loopexit.i.i.i.i.i74

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58, %._crit_edge.i.i.i.i.i76, %.loopexit.i.i.i.i.i74
  %.sroa.0.0.i.i60 = phi i8 [ %.sroa.0.0.i.i.i59, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i58 ], [ %i.bb, %._crit_edge.i.i.i.i.i76 ], [ %i.bc, %.loopexit.i.i.i.i.i74 ]
  %i.by = icmp eq i8 %.sroa.0.0.i.i60, -1         ; 2 uses
  %.not112 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.by, label %.preheader, label %.preheader87

.preheader87:                                     ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader87
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit77
  br i1 %.not112, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %umax124 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.bz = phi i8 [ %i.cf, %bb.v ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.sroa.01.0.i.i97 = phi i64 [ %i.ek, %bb.v ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 8 uses
  %i.cb = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.n
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.cb ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582), !noalias !2529
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587), !noalias !2529
  %i.cf = load i8, ptr %i.ce, align 8, !range !282, !alias.scope !2589, !noalias !2590, !noundef !5 ; 3 uses
  %8 = zext nneg i8 %i.cf to i64
  %9 = zext nneg i8 %i.bz to i64
  %i.cg = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  %i.ch = icmp eq i8 %i.cf, %i.bz
  br i1 %i.ch, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.q:                                             ; preds = %.lr.ph
  switch i8 %i.bz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 25
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !2589, !noalias !2590, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 25
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !2591, !noalias !2592, !noundef !5
  %i.cm = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cj, i8 %i.cl)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.s:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !range !285, !alias.scope !2589, !noalias !2590, !noundef !5 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cq = load i32, ptr %i.cp, align 4, !range !285, !alias.scope !2591, !noalias !2592, !noundef !5 ; 2 uses
  %i.cr = tail call i8 @llvm.ucmp.i8.i32(i32 %i.co, i32 %i.cq)
  %i.cs = icmp eq i32 %i.co, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !alias.scope !2589, !noalias !2590, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !2591, !noalias !2592, !noundef !5
  %i.cx = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.cg, %.lr.ph ], [ %i.cm, %bb.r ], [ %i.cx, %bb.t ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.cy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2593), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596), !noalias !2529
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !2598, !noalias !2601, !noundef !5 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 1                   ; 2 uses
  %i.dc = load ptr, ptr %i.ca, align 8, !alias.scope !2598, !noalias !2601, !nonnull !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !2598, !noalias !2601
  %.sink11.i.i.i.i42 = select i1 %i.db, ptr %i.dc, ptr %i.ca
  %.sink10.i.i.i.i43 = select i1 %i.db, i64 %i.de, i64 %i.da ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2603, !noalias !2606, !noundef !5 ; 2 uses
  %i.dh = icmp ugt i64 %i.dg, 1                   ; 2 uses
  %i.di = load ptr, ptr %i.cd, align 8, !alias.scope !2603, !noalias !2606, !nonnull !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2603, !noalias !2606
  %.sink11.i1.i.i.i44 = select i1 %i.dh, ptr %i.di, ptr %i.cd
  %.sink10.i2.i.i.i45 = select i1 %i.dh, i64 %i.dk, i64 %i.dg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2611), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616), !noalias !2529
  %..i.i.i.i.i.i46 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43) ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq i64 %..i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i48
  %i.dl = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i49, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i55 = icmp eq i64 %i.dl, %..i.i.i.i.i.i46
  br i1 %exitcond.not.i.i.i.i.i55, label %._crit_edge.i.i.i.i.i56, label %.lr.ph.i.i.i.i.i48

._crit_edge.i.i.i.i.i56:                          ; preds = %bb.u, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41
  %i.dm = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i43, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i45)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

.loopexit.i.i.i.i.i54:                            ; preds = %.lr.ph.i.i.i.i.i48
  %i.dn = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i53, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57

.lr.ph.i.i.i.i.i48:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41, %bb.u
  %.sroa.01.019.i.i.i.i.i49 = phi i64 [ %i.dl, %bb.u ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i41 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i42, i64 %.sroa.01.019.i.i.i.i.i49
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i44, i64 %.sroa.01.019.i.i.i.i.i49
  %.val15.i.i.i.i.i50 = load ptr, ptr %i.do, align 8, !alias.scope !2618, !noalias !2619, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i51 = load ptr, ptr %i.dp, align 8, !alias.scope !2620, !noalias !2621, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = ptrtoint ptr %.val15.i.i.i.i.i50 to i64
  %i.dr = and i64 %i.dq, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr i8, ptr %.val15.i.i.i.i.i50, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ], !noalias !2529
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2622, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2622, !noundef !5 ; 2 uses
  %i.dx = ptrtoint ptr %.val16.i.i.i.i.i51 to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr i8, ptr %.val16.i.i.i.i.i51, i64 %i.dz ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ], !noalias !2529
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !2622, !nonnull !5, !noundef !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !2622, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i52 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ed)
  %i.ee = tail call i32 @memcmp(ptr nonnull %i.du, ptr nonnull %i.eb, i64 %spec.store.select.i.i.i.i.i.i.i52), !noalias !2622 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %i.eh = sub i64 %i.dw, %i.ed
  %spec.select.i.i.i.i.i.i.i53 = select i1 %i.eg, i64 %i.eh, i64 %i.ef ; 2 uses
  %i.ei = icmp eq i64 %spec.select.i.i.i.i.i.i.i53, 0
  br i1 %i.ei, label %bb.u, label %.loopexit.i.i.i.i.i54

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38, %._crit_edge.i.i.i.i.i56, %.loopexit.i.i.i.i.i54
  %.sroa.0.0.i.i40 = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i38 ], [ %i.dm, %._crit_edge.i.i.i.i.i56 ], [ %i.dn, %.loopexit.i.i.i.i.i54 ]
  %i.ej = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.ej, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57
  %i.ek = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %.lr.ph

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.ab
  %i.el = phi i8 [ %i.er, %bb.ab ], [ %i.t, %.lr.ph100.preheader ] ; 3 uses
  %.sroa.01.1.i.i99 = phi i64 [ %i.gw, %bb.ab ], [ 2, %.lr.ph100.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i99 ; 8 uses
  %i.en = add nsw i64 %.sroa.01.1.i.i99, -1       ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.n
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.en ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631), !noalias !2529
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636), !noalias !2529
  %i.er = load i8, ptr %i.eq, align 8, !range !282, !alias.scope !2638, !noalias !2639, !noundef !5 ; 3 uses
  %10 = zext nneg i8 %i.er to i64
  %11 = zext nneg i8 %i.el to i64
  %i.es = tail call i8 @llvm.scmp.i8.i64(i64 %10, i64 %11)
  %i.et = icmp eq i8 %i.er, %i.el
  br i1 %i.et, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %.lr.ph100
  switch i8 %i.el, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 25
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !2638, !noalias !2639, !noundef !5
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 25
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !2640, !noalias !2641, !noundef !5
  %i.ey = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ev, i8 %i.ex)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !range !285, !alias.scope !2638, !noalias !2639, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !range !285, !alias.scope !2640, !noalias !2641, !noundef !5 ; 2 uses
  %i.fd = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fa, i32 %i.fc)
  %i.fe = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fe, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !2638, !noalias !2639, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !alias.scope !2640, !noalias !2641, !noundef !5
  %i.fj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fg, i32 %i.fi)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %.lr.ph100
  %.sroa.0.0.i.i.i = phi i8 [ %i.es, %.lr.ph100 ], [ %i.ey, %bb.x ], [ %i.fj, %bb.z ], [ %i.fd, %bb.y ] ; 2 uses
  %i.fk = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.fk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645), !noalias !2529
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2647, !noalias !2650, !noundef !5 ; 2 uses
  %i.fn = icmp ugt i64 %i.fm, 1                   ; 2 uses
  %i.fo = load ptr, ptr %i.em, align 8, !alias.scope !2647, !noalias !2650, !nonnull !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !2647, !noalias !2650
  %.sink11.i.i.i.i = select i1 %i.fn, ptr %i.fo, ptr %i.em
  %.sink10.i.i.i.i = select i1 %i.fn, i64 %i.fq, i64 %i.fm ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !2652, !noalias !2655, !noundef !5 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 1                   ; 2 uses
  %i.fu = load ptr, ptr %i.ep, align 8, !alias.scope !2652, !noalias !2655, !nonnull !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !2652, !noalias !2655
  %.sink11.i1.i.i.i = select i1 %i.ft, ptr %i.fu, ptr %i.ep
  %.sink10.i2.i.i.i = select i1 %i.ft, i64 %i.fw, i64 %i.fs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665), !noalias !2529
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fx, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.aa, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.fy = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.fz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.aa
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.fx, %bb.aa ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !2667, !noalias !2668, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !2669, !noalias !2670, !nonnull !5, !noundef !5 ; 2 uses
  %i.gc = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.gd = and i64 %i.gc, 1
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.ge ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ], !noalias !2529
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2671, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !2671, !noundef !5 ; 2 uses
  %i.gj = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.gk = and i64 %i.gj, 1
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.gl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ], !noalias !2529
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !2671, !nonnull !5, !noundef !5
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !noalias !2671, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gp)
  %i.gq = tail call i32 @memcmp(ptr nonnull %i.gg, ptr nonnull %i.gn, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !2671 ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 0
  %i.gt = sub i64 %i.gi, %i.gp
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gs, i64 %i.gt, i64 %i.gr ; 2 uses
  %i.gu = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.gu, label %bb.aa, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i37 = phi i8 [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.fy, %._crit_edge.i.i.i.i.i ], [ %i.fz, %.loopexit.i.i.i.i.i ]
  %i.gv = icmp eq i8 %.sroa.0.0.i.i37, -1
  br i1 %i.gv, label %bb.ab, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i

bb.ab:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %i.gw = add nuw i64 %.sroa.01.1.i.i99, 1        ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gw, %umax124
  br i1 %exitcond125.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i, label %.lr.ph100

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i: ; preds = %bb.v, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57, %bb.ab, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i99, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit ], [ %umax124, %bb.ab ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit57 ], [ %umax, %bb.v ] ; 6 uses
  %i.gx = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.gx)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ac

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157: ; preds = %.preheader
  br i1 %.not5.i159, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread: ; preds = %.preheader87
  br i1 %.not5.i154, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ac:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i
  br i1 %i.by, label %bb.af, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit

bb.ad:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.gy = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

bb.ae:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2672
  %i.gz = shl nuw nsw i64 %..i35, 1
  %i.ha = or disjoint i64 %i.gz, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread, %bb.j, %bb.af, %bb.ac
  %.sroa.0.0.i.i8285 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ac ], [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread ], [ %.sroa.0.0.i.i155162166, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ]
  %i.hb = shl nuw nsw i64 %.sroa.0.0.i.i8285, 1
  %i.hc = or disjoint i64 %i.hb, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit

bb.af:                                            ; preds = %bb.ac
  %i.hd = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676), !noalias !2529
  %.not.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157, %bb.af
  %i.he = phi i64 [ %i.hd, %bb.af ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157 ]
  %.sroa.0.0.i.i155162166 = phi i64 [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Y_.exit.i.thread157 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i155162166
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.id, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.preheader.i.i ] ; 3 uses
  %i.hg = xor i64 %.sroa.0.016.i.i, -1
  %i.hh = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 7 uses
  %i.hi = getelementptr [88 x i8], ptr %i.hf, i64 %i.hg ; 7 uses
  %i.hj = load <2 x i64>, ptr %i.hh, align 8, !alias.scope !2678, !noalias !2684
  %i.hk = load <2 x i64>, ptr %i.hi, align 8, !alias.scope !2685, !noalias !2688
  store <2 x i64> %i.hk, ptr %i.hh, align 8, !alias.scope !2678, !noalias !2684
  store <2 x i64> %i.hj, ptr %i.hi, align 8, !alias.scope !2685, !noalias !2688
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !alias.scope !2689, !noalias !2684
  %i.ho = load <2 x i64>, ptr %i.hm, align 8, !alias.scope !2692, !noalias !2688
  store <2 x i64> %i.ho, ptr %i.hl, align 8, !alias.scope !2689, !noalias !2684
  store <2 x i64> %i.hn, ptr %i.hm, align 8, !alias.scope !2692, !noalias !2688
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 32 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 2 uses
  %i.hr = load <2 x i64>, ptr %i.hp, align 8, !alias.scope !2695, !noalias !2684
  %i.hs = load <2 x i64>, ptr %i.hq, align 8, !alias.scope !2698, !noalias !2688
  store <2 x i64> %i.hs, ptr %i.hp, align 8, !alias.scope !2695, !noalias !2684
  store <2 x i64> %i.hr, ptr %i.hq, align 8, !alias.scope !2698, !noalias !2688
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 48 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.ht, align 8, !alias.scope !2701, !noalias !2684
  %i.hw = load <2 x i64>, ptr %i.hu, align 8, !alias.scope !2704, !noalias !2688
  store <2 x i64> %i.hw, ptr %i.ht, align 8, !alias.scope !2701, !noalias !2684
  store <2 x i64> %i.hv, ptr %i.hu, align 8, !alias.scope !2704, !noalias !2688
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 64 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !2707, !noalias !2684
  %i.ia = load <2 x i64>, ptr %i.hy, align 8, !alias.scope !2710, !noalias !2688
  store <2 x i64> %i.ia, ptr %i.hx, align 8, !alias.scope !2707, !noalias !2684
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !alias.scope !2710, !noalias !2688
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 80 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713), !noalias !2529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715), !noalias !2529
  %.sroa.0.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !2717, !noalias !2718
  %.sroa.02.0.copyload.i.i.i.10.i.i.i.i = load i64, ptr %i.ic, align 8, !alias.scope !2719, !noalias !2720
  store i64 %.sroa.02.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ib, align 8, !alias.scope !2717, !noalias !2718
  store i64 %.sroa.0.0.copyload.i.i.i.10.i.i.i.i, ptr %i.ic, align 8, !alias.scope !2719, !noalias !2720
  %i.id = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.id, %i.he
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit11.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2Z_.exit: ; preds = %bb.ad, %bb.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.0.0.i32 = phi i64 [ %i.hc, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7reverseCsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.ha, %bb.ae ], [ %i.gy, %bb.ad ] ; 2 uses
  %i.ie = lshr i64 %.sroa.023.0, 1
  %i.if = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ig = sub nsw i64 %factor, %i.ie
  %i.ih = add nuw nsw i64 %i.if, %factor
  %i.ii = mul i64 %i.ig, %.sroa.0.0
  %i.ij = mul i64 %i.ih, %.sroa.0.0
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ik, i1 false)
  %i.im = trunc nuw nsw i64 %i.il to i8
  br label %bb.g

bb.ag:                                            ; preds = %.lr.ph105, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit
  %.sroa.02.1104 = phi i64 [ %.sroa.02.0, %.lr.ph105 ], [ %i.in, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 2 uses
  %.sroa.023.1103 = phi i64 [ %.sroa.023.0, %.lr.ph105 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 4 uses
  %i.in = add i64 %.sroa.02.1104, -1              ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ip, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ah

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit, %bb.ag, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1103, %bb.ag ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1104, %bb.ag ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ir, align 1
  br i1 %i.k, label %bb.az, label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.in
  %i.it = load i64, ptr %i.is, align 8, !noundef !5 ; 3 uses
  %i.iu = lshr i64 %i.it, 1                       ; 8 uses
  %i.iv = lshr i64 %.sroa.023.1103, 1             ; 6 uses
  %i.iw = add nuw i64 %i.iu, %i.iv                ; 4 uses
  %i.ix = sub i64 %.sroa.09.0, %i.iw
  %i.iy = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ix ; 6 uses
  %i.iz = icmp samesign ugt i64 %i.iw, %3
  %i.ja = trunc i64 %.sroa.023.1103 to i1
  %i.jb = or i64 %i.it, %.sroa.023.1103
  %i.jc = trunc i64 %i.jb to i1
  %or.cond3.i = or i1 %i.iz, %i.jc
  br i1 %or.cond3.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jd = trunc i64 %i.it to i1
  br i1 %i.jd, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.je = shl nuw nsw i64 %i.iw, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit

bb.ak:                                            ; preds = %bb.al, %bb.ai
  br i1 %i.ja, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.jf = or i64 %i.iu, 1
  %i.jg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 1
  %i.jj = xor i32 %i.ji, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.iy, i64 noundef range(i64 0, 104811045873349726) %i.iu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2721
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.jk = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu
  %i.jl = or i64 %i.iv, 1
  %i.jm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 1
  %i.jp = xor i32 %i.jo, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.jk, i64 noundef range(i64 0, 104811045873349726) %i.iv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.jp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2721
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  %i.jq = icmp eq i64 %i.iu, 0
  %i.jr = icmp eq i64 %i.iv, 0
  %or.cond.i = or i1 %i.jr, %i.jq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 range(i64 0, -9223372036854775808) %i.iu) ; 2 uses
  %i.js = icmp samesign ult i64 %3, %..i.i
  br i1 %i.js, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw [88 x i8], ptr %i.iy, i64 %i.iu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.iu, %i.iv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.jt, ptr %i.iy
  %i.ju = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ju, i1 false), !alias.scope !2727
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  %i.jw = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jv, %.critedge.i ] ; 7 uses
  %i.jx = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jt, %.critedge.i ] ; 7 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.ka, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -88 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 -88 ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  %i.kb = getelementptr inbounds i8, ptr %i.jw, i64 -64
  %i.kc = getelementptr inbounds i8, ptr %i.jx, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.kd = load i8, ptr %i.kb, align 4, !range !282, !alias.scope !2743, !noalias !2744, !noundef !5 ; 3 uses
  %12 = zext nneg i8 %i.kd to i64
  %i.ke = load i8, ptr %i.kc, align 4, !range !282, !alias.scope !2747, !noalias !2748, !noundef !5 ; 2 uses
  %13 = zext nneg i8 %i.ke to i64
  %i.kf = tail call i8 @llvm.scmp.i8.i64(i64 %12, i64 %13)
  %i.kg = icmp eq i8 %i.kd, %i.ke
  br i1 %i.kg, label %bb.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ap:                                            ; preds = %.preheader.i
  switch i8 %i.kd, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i [
    i8 1, label %bb.aq
    i8 4, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.kh = getelementptr inbounds i8, ptr %i.jw, i64 -63
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !2743, !noalias !2744, !noundef !5
  %i.kj = getelementptr inbounds i8, ptr %i.jx, i64 -63
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !2747, !noalias !2748, !noundef !5
  %i.kl = tail call i8 @llvm.ucmp.i8.i8(i8 %i.ki, i8 %i.kk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.km = getelementptr inbounds i8, ptr %i.jw, i64 -60
  %i.kn = load i32, ptr %i.km, align 4, !range !285, !alias.scope !2743, !noalias !2744, !noundef !5 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.jx, i64 -60
  %i.kp = load i32, ptr %i.ko, align 4, !range !285, !alias.scope !2747, !noalias !2748, !noundef !5 ; 2 uses
  %i.kq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.kn, i32 %i.kp)
  %i.kr = icmp eq i32 %i.kn, %i.kp
  br i1 %i.kr, label %bb.as, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ks = getelementptr inbounds i8, ptr %i.jw, i64 -56
  %i.kt = load i32, ptr %i.ks, align 4, !alias.scope !2743, !noalias !2744, !noundef !5
  %i.ku = getelementptr inbounds i8, ptr %i.jx, i64 -56
  %i.kv = load i32, ptr %i.ku, align 4, !alias.scope !2747, !noalias !2748, !noundef !5
  %i.kw = tail call i8 @llvm.ucmp.i8.i32(i32 %i.kt, i32 %i.kv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.as, %bb.ar, %bb.aq, %.preheader.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.kf, %.preheader.i ], [ %i.kl, %bb.aq ], [ %i.kw, %bb.as ], [ %i.kq, %bb.ar ] ; 2 uses
  %i.kx = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.kx, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i, %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  %i.ky = getelementptr inbounds i8, ptr %i.jw, i64 -72
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !2754, !noalias !2757, !noundef !5 ; 2 uses
  %i.la = icmp ugt i64 %i.kz, 1                   ; 2 uses
  %i.lb = load ptr, ptr %i.jz, align 8, !alias.scope !2754, !noalias !2757, !nonnull !5
  %i.lc = getelementptr inbounds i8, ptr %i.jw, i64 -80
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !2754, !noalias !2757
  %.sink11.i.i.i.i.i.i = select i1 %i.la, ptr %i.lb, ptr %i.jz
  %.sink10.i.i.i.i.i.i = select i1 %i.la, i64 %i.ld, i64 %i.kz ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.jx, i64 -72
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !2759, !noalias !2762, !noundef !5 ; 2 uses
  %i.lg = icmp ugt i64 %i.lf, 1                   ; 2 uses
  %i.lh = load ptr, ptr %i.jy, align 8, !alias.scope !2759, !noalias !2762, !nonnull !5
  %i.li = getelementptr inbounds i8, ptr %i.jx, i64 -80
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !2759, !noalias !2762
  %.sink11.i1.i.i.i.i.i = select i1 %i.lg, ptr %i.lh, ptr %i.jy
  %.sink10.i2.i.i.i.i.i = select i1 %i.lg, i64 %i.lj, i64 %i.lf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %..i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lk = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.lk, %..i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.at, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i
  %i.ll = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lm = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, %bb.at
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.lk, %bb.at ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.ln, align 8, !alias.scope !2774, !noalias !2775, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i = load ptr, ptr %i.lo, align 8, !alias.scope !2776, !noalias !2777, !nonnull !5, !noundef !5 ; 2 uses
  %i.lp = ptrtoint ptr %.val15.i.i.i.i.i.i.i to i64
  %i.lq = and i64 %i.lp, 1
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i, i64 %i.lr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !2778, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !noalias !2778, !noundef !5 ; 2 uses
  %i.lw = ptrtoint ptr %.val16.i.i.i.i.i.i.i to i64
  %i.lx = and i64 %i.lw, 1
  %i.ly = sub nsw i64 0, %i.lx
  %i.lz = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i, i64 %i.ly ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !2778, !nonnull !5, !noundef !5
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !2778, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.lv, i64 %i.mc)
  %i.md = tail call i32 @memcmp(ptr nonnull %i.lt, ptr nonnull %i.ma, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !2778 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp eq i32 %i.md, 0
  %i.mg = sub i64 %i.lv, %i.mc
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.mf, i64 %i.mg, i64 %i.me ; 2 uses
  %i.mh = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.mh, label %bb.at, label %.loopexit.i.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i ], [ %i.ll, %._crit_edge.i.i.i.i.i.i.i ], [ %i.lm, %.loopexit.i.i.i.i.i.i.i ]
  %i.mi = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i17.i = select i1 %i.mi, ptr %i.jy, ptr %i.jz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %..i17.i, i64 88, i1 false), !alias.scope !2727, !noalias !2779
  %i.mj = xor i1 %i.mi, true
  %i.mk = zext i1 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [88 x i8], ptr %i.jy, i64 %i.mk ; 3 uses
  %i.mm = zext i1 %i.mi to i64
  %i.mn = getelementptr inbounds nuw [88 x i8], ptr %i.jz, i64 %i.mm ; 3 uses
  %i.mo = icmp eq ptr %i.ml, %i.iy
  %i.mp = icmp eq ptr %i.mn, %2
  %or.cond.i.i = select i1 %i.mo, i1 true, i1 %i.mp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i
  %i.mq = phi ptr [ %i.pf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ], [ %i.iy, %.critedge.i ] ; 2 uses
  %.sroa.0.03.i.i = phi ptr [ %i.pe, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ], [ %i.jt, %.critedge.i ] ; 10 uses
  %i.mr = phi ptr [ %i.pc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ], [ %2, %.critedge.i ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  %i.mu = load i8, ptr %i.ms, align 4, !range !282, !alias.scope !2795, !noalias !2796, !noundef !5 ; 3 uses
  %14 = zext nneg i8 %i.mu to i64
  %i.mv = load i8, ptr %i.mt, align 4, !range !282, !alias.scope !2799, !noalias !2800, !noundef !5 ; 2 uses
  %15 = zext nneg i8 %i.mv to i64
  %i.mw = tail call i8 @llvm.scmp.i8.i64(i64 %14, i64 %15)
  %i.mx = icmp eq i8 %i.mu, %i.mv
  br i1 %i.mx, label %bb.au, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.au:                                            ; preds = %.lr.ph.i.i
  switch i8 %i.mu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i [
    i8 1, label %bb.av
    i8 4, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 25
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !2795, !noalias !2796, !noundef !5
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 25
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !2799, !noalias !2800, !noundef !5
  %i.nc = tail call i8 @llvm.ucmp.i8.i8(i8 %i.mz, i8 %i.nb)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.aw:                                            ; preds = %bb.au
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 28
  %i.ne = load i32, ptr %i.nd, align 4, !range !285, !alias.scope !2795, !noalias !2796, !noundef !5 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  %i.ng = load i32, ptr %i.nf, align 4, !range !285, !alias.scope !2799, !noalias !2800, !noundef !5 ; 2 uses
  %i.nh = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ne, i32 %i.ng)
  %i.ni = icmp eq i32 %i.ne, %i.ng
  br i1 %i.ni, label %bb.ax, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

bb.ax:                                            ; preds = %bb.aw
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 32
  %i.nk = load i32, ptr %i.nj, align 4, !alias.scope !2795, !noalias !2796, !noundef !5
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.nm = load i32, ptr %i.nl, align 4, !alias.scope !2799, !noalias !2800, !noundef !5
  %i.nn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.nk, i32 %i.nm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i: ; preds = %bb.ax, %bb.aw, %bb.av, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i20.i = phi i8 [ %i.mw, %.lr.ph.i.i ], [ %i.nc, %bb.av ], [ %i.nn, %bb.ax ], [ %i.nh, %bb.aw ] ; 2 uses
  %i.no = icmp eq i8 %.sroa.0.0.i.i.i.i20.i, 0
  br i1 %i.no, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i, %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !2806, !noalias !2809, !noundef !5 ; 2 uses
  %i.nr = icmp ugt i64 %i.nq, 1                   ; 2 uses
  %i.ns = load ptr, ptr %.sroa.0.03.i.i, align 8, !alias.scope !2806, !noalias !2809, !nonnull !5
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !alias.scope !2806, !noalias !2809
  %.sink11.i.i.i.i.i25.i = select i1 %i.nr, ptr %i.ns, ptr %.sroa.0.03.i.i
  %.sink10.i.i.i.i.i26.i = select i1 %i.nr, i64 %i.nu, i64 %i.nq ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !alias.scope !2811, !noalias !2814, !noundef !5 ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, 1                   ; 2 uses
  %i.ny = load ptr, ptr %i.mr, align 8, !alias.scope !2811, !noalias !2814, !nonnull !5
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !2811, !noalias !2814
  %.sink11.i1.i.i.i.i27.i = select i1 %i.nx, ptr %i.ny, ptr %i.mr
  %.sink10.i2.i.i.i.i28.i = select i1 %i.nx, i64 %i.oa, i64 %i.nw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  %..i.i.i.i.i.i.i29.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i) ; 2 uses
  %.not.i.i.i.i.i.i30.i = icmp eq i64 %..i.i.i.i.i.i.i29.i, 0
  br i1 %.not.i.i.i.i.i.i30.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.ob = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i32.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i38.i = icmp eq i64 %i.ob, %..i.i.i.i.i.i.i29.i
  br i1 %exitcond.not.i.i.i.i.i.i38.i, label %._crit_edge.i.i.i.i.i.i39.i, label %.lr.ph.i.i.i.i.i.i31.i

._crit_edge.i.i.i.i.i.i39.i:                      ; preds = %bb.ay, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i
  %i.oc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i26.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i28.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i

.loopexit.i.i.i.i.i.i37.i:                        ; preds = %.lr.ph.i.i.i.i.i.i31.i
  %i.od = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i36.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i

.lr.ph.i.i.i.i.i.i31.i:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i, %bb.ay
  %.sroa.01.019.i.i.i.i.i.i32.i = phi i64 [ %i.ob, %bb.ay ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i24.i ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i25.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i27.i, i64 %.sroa.01.019.i.i.i.i.i.i32.i
  %.val15.i.i.i.i.i.i33.i = load ptr, ptr %i.oe, align 8, !alias.scope !2826, !noalias !2827, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i34.i = load ptr, ptr %i.of, align 8, !alias.scope !2828, !noalias !2829, !nonnull !5, !noundef !5 ; 2 uses
  %i.og = ptrtoint ptr %.val15.i.i.i.i.i.i33.i to i64
  %i.oh = and i64 %i.og, 1
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr i8, ptr %.val15.i.i.i.i.i.i33.i, i64 %i.oi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oj) ]
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !2830, !nonnull !5, !noundef !5
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !noalias !2830, !noundef !5 ; 2 uses
  %i.on = ptrtoint ptr %.val16.i.i.i.i.i.i34.i to i64
  %i.oo = and i64 %i.on, 1
  %i.op = sub nsw i64 0, %i.oo
  %i.oq = getelementptr i8, ptr %.val16.i.i.i.i.i.i34.i, i64 %i.op ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oq) ]
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !2830, !nonnull !5, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !noalias !2830, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i35.i = tail call i64 @llvm.umin.i64(i64 %i.om, i64 %i.ot)
  %i.ou = tail call i32 @memcmp(ptr nonnull %i.ok, ptr nonnull %i.or, i64 %spec.store.select.i.i.i.i.i.i.i.i35.i), !noalias !2830 ; 2 uses
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp eq i32 %i.ou, 0
  %i.ox = sub i64 %i.om, %i.ot
  %spec.select.i.i.i.i.i.i.i.i36.i = select i1 %i.ow, i64 %i.ox, i64 %i.ov ; 2 uses
  %i.oy = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i36.i, 0
  br i1 %i.oy, label %bb.ay, label %.loopexit.i.i.i.i.i.i37.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i: ; preds = %.loopexit.i.i.i.i.i.i37.i, %._crit_edge.i.i.i.i.i.i39.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i
  %.sroa.0.0.i.i.i22.i = phi i8 [ %.sroa.0.0.i.i.i.i20.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i19.i ], [ %i.oc, %._crit_edge.i.i.i.i.i.i39.i ], [ %i.od, %.loopexit.i.i.i.i.i.i37.i ]
  %i.oz = icmp eq i8 %.sroa.0.0.i.i.i22.i, -1     ; 3 uses
  %i.pa = xor i1 %i.oz, true
  %.sroa.05.0.i.i = select i1 %i.oz, ptr %.sroa.0.03.i.i, ptr %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.mq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !2727, !noalias !2831
  %i.pb = zext i1 %i.pa to i64
  %i.pc = getelementptr inbounds nuw [88 x i8], ptr %i.mr, i64 %i.pb ; 3 uses
  %i.pd = zext i1 %i.oz to i64
  %i.pe = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.03.i.i, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mq, i64 88 ; 2 uses
  %i.pg = icmp ne ptr %i.pc, %i.jv
  %i.ph = icmp ne ptr %i.pe, %i.m
  %or.cond.i23.i = select i1 %i.pg, i1 %i.ph, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i: ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ml, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.pf, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ]
  %.sroa.7.0.i = phi ptr [ %i.mn, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.jv, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.pc, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i21.i ] ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.pj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.pk = sub nuw i64 %i.pi, %i.pj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.pk, i1 false), !alias.scope !2727, !noalias !2832
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit: ; preds = %bb.an, %bb.ao, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3j_.exit.i
  %i.pl = shl nuw nsw i64 %i.iw, 1
  %i.pm = or disjoint i64 %i.pl, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB32_.exit: ; preds = %bb.aj, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit
  %.sroa.0.0.i = phi i64 [ %i.pm, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2S_.exit ], [ %i.je, %bb.aj ] ; 2 uses
  %i.pn = icmp ugt i64 %i.in, 1
  br i1 %i.pn, label %bb.ag, label %._crit_edge

bb.az:                                            ; preds = %._crit_edge
  %i.po = add i64 %.sroa.02.1.lcssa, 1
  %i.pp = lshr i64 %.sroa.018.0, 1
  %i.pq = add nuw i64 %i.pp, %.sroa.09.0
  br label %bb.f

bb.ba:                                            ; preds = %._crit_edge
  %i.pr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pr, 0
  br i1 %.not30, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ps = or i64 %1, 1
  %i.pt = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ps, i1 true)
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 1
  %i.pw = xor i32 %i.pv, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #44, !inline_history !2721
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameBW_E0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3s_:bb.a
  %i.kp = zext i1 %i.km to i64
  %i.kq = add i64 %.sroa.11.110.i71, %i.kp        ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 88 ; 3 uses
  %i.ks = icmp ult ptr %i.kr, %i.jt
  br i1 %i.ks, label %.lr.ph.i69, label %._crit_edge.i61

bb.am:                                            ; preds = %._crit_edge.i61
  %i.kt = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i62, i64 -88
  %i.ku = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ku, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i64, i64 88, i1 false), !alias.scope !3886, !noalias !3890
  %i.kv = add i64 %.sroa.11.1.lcssa.i63, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i64, i64 88
  br label %bb.al

bb.an:                                            ; preds = %._crit_edge.i61
  %i.kx = mul nuw nsw i64 %.sroa.11.1.lcssa.i63, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph126, ptr nonnull align 8 %2, i64 %i.kx, i1 false), !alias.scope !3886
  %i.ky = sub i64 %.sroa.16.0119278, %.sroa.11.1.lcssa.i63 ; 6 uses
  %.not18.i65 = icmp eq i64 %.sroa.16.0119278, %.sroa.11.1.lcssa.i63
  br i1 %.not18.i65, label %.outer._crit_edge.thread, label %.lr.ph16.i66

.lr.ph16.i66:                                     ; preds = %bb.an
  %i.kz = getelementptr [88 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.11.1.lcssa.i63 ; 3 uses
  %.neg373 = add i64 %.sroa.11.1.lcssa.i63, 1
  %xtraiter368 = and i64 %i.ky, 1
  %i.la = icmp eq i64 %.sroa.16.0119278, %.neg373
  br i1 %i.la, label %.epil.preheader361, label %.lr.ph16.i66.new

.lr.ph16.i66.new:                                 ; preds = %.lr.ph16.i66
  %unroll_iter371 = and i64 %i.ky, -2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph16.i66.new
  %.sroa.06.014.i67 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %i.le, %bb.ao ] ; 5 uses
  %niter372 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %niter372.next.1, %bb.ao ]
  %i.lb = xor i64 %.sroa.06.014.i67, -1
  %i.lc = getelementptr [88 x i8], ptr %i.js, i64 %i.lb
  %i.ld = getelementptr [88 x i8], ptr %i.kz, i64 %.sroa.06.014.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ld, ptr noundef nonnull align 8 dereferenceable(88) %i.lc, i64 88, i1 false), !alias.scope !3886
  %i.le = add nuw i64 %.sroa.06.014.i67, 2        ; 2 uses
  %i.lf = xor i64 %.sroa.06.014.i67, -2
  %i.lg = getelementptr [88 x i8], ptr %i.js, i64 %i.lf
  %i.lh = getelementptr [88 x i8], ptr %i.kz, i64 %.sroa.06.014.i67
  %i.li = getelementptr i8, ptr %i.lh, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.li, ptr noundef nonnull align 8 dereferenceable(88) %i.lg, i64 88, i1 false), !alias.scope !3886
  %niter372.next.1 = add i64 %niter372, 2         ; 2 uses
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit.unr-lcssa, label %bb.ao

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit, label %.epil.preheader361

.epil.preheader361:                               ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit.unr-lcssa, %.lr.ph16.i66
  %.sroa.06.014.i67.epil.init = phi i64 [ 0, %.lr.ph16.i66 ], [ %i.le, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod370 = trunc i64 %i.ky to i1
  call void @llvm.assume(i1 %lcmp.mod370)
  %i.lj = xor i64 %.sroa.06.014.i67.epil.init, -1
  %i.lk = getelementptr [88 x i8], ptr %i.js, i64 %i.lj
  %i.ll = getelementptr [88 x i8], ptr %i.kz, i64 %.sroa.06.014.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ll, ptr noundef nonnull align 8 dereferenceable(88) %i.lk, i64 88, i1 false), !alias.scope !3886
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit.unr-lcssa, %.epil.preheader361
  %i.lm = icmp ugt i64 %.sroa.11.1.lcssa.i63, %.sroa.16.0119278
  br i1 %i.lm, label %bb.ap, label %.outer, !prof !21

.outer._crit_edge.thread:                         ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0EB3P_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit
  %i.ln = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.11.1.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lo = icmp ult i64 %i.ky, 33
  br i1 %i.lo, label %.outer._crit_edge, label %.lr.ph

bb.ap:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverselENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths2_0E0E0EB3W_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i63, i64 noundef %.sroa.16.0119278, i64 noundef %.sroa.16.0119278, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(88) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph151 = phi ptr [ %i.vu, %.outer ], [ %0, %bb.a ] ; 29 uses
  %.sroa.16.0.ph150 = phi i64 [ %i.vf, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph149 = phi i32 [ %i.ga, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph148 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0.0.ph151 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph148, null
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 8
  %i.p = icmp eq i32 %.sroa.025.0.ph149, 0
  br i1 %i.p, label %.lr.ph._crit_edge, label %.lr.ph336

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit
  %i.q = icmp eq i32 %i.ga, 0
  br i1 %i.q, label %.lr.ph._crit_edge, label %.lr.ph336

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, %bb.a
  %.sroa.0.0.ph.lcssa142 = phi ptr [ %.sroa.0.0.ph151, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %0, %bb.a ], [ %i.vu, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %1, %bb.a ], [ %i.vf, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  %i.r = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.r, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3o_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.s = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.t = icmp samesign ult i64 %3, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.v = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %i.u ; 3 uses
  %i.x = getelementptr [88 x i8], ptr %2, i64 %i.u ; 6 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB35_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa142, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB35_(ptr noundef %i.w, ptr noundef %i.x)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.ph.lcssa142, i64 88, i1 false), !alias.scope !3896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !alias.scope !3896
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.y = sub nsw i64 %.sroa.16.0.lcssa, %i.u      ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i, %i.u
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.y
  br i1 %i.aa, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.ad, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.05.010.1.i
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %.sroa.05.010.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false), !alias.scope !3896
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB34_(ptr noundef %i.x, ptr noundef %i.ac)
  %i.ad = add i64 %.sroa.05.010.1.i, 1            ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  %i.ae = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.x, i64 -88
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i
  %i.ai = getelementptr i8, ptr %i.fl, i64 88     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.fk, i64 88
  %i.ak = and i64 %.sroa.16.0.lcssa, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.t, label %bb.s

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i, %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.da, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %.sroa.0.0.ph.lcssa142, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.am, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.016.i.i = phi ptr [ %i.cz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %2, %.loopexit.1.i ] ; 10 uses
  %.sroa.011.013.i.i = phi ptr [ %i.cx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %i.x, %.loopexit.1.i ] ; 10 uses
  %.sroa.015.010.i.i = phi ptr [ %i.fl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %i.ah, %.loopexit.1.i ] ; 10 uses
  %.sroa.017.07.i.i = phi ptr [ %i.fk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %i.ag, %.loopexit.1.i ] ; 10 uses
  %.sroa.019.06.i.i = phi ptr [ %i.fm, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i ], [ %i.af, %.loopexit.1.i ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3898)
  call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  call void @llvm.experimental.noalias.scope.decl(metadata !3906)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3908)
  call void @llvm.experimental.noalias.scope.decl(metadata !3911)
  %i.ap = load i8, ptr %i.an, align 4, !range !282, !alias.scope !3913, !noalias !3916, !noundef !5 ; 3 uses
  %7 = zext nneg i8 %i.ap to i64
  %i.aq = load i8, ptr %i.ao, align 4, !range !282, !alias.scope !3917, !noalias !3918, !noundef !5 ; 2 uses
  %8 = zext nneg i8 %i.aq to i64
  %i.ar = call i8 @llvm.scmp.i8.i64(i64 %7, i64 %8)
  %i.as = icmp eq i8 %i.ap, %i.aq
  br i1 %i.as, label %bb.i, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i [
    i8 1, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 25
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !3913, !noalias !3916, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !3917, !noalias !3918, !noundef !5
  %i.ax = call i8 @llvm.ucmp.i8.i8(i8 %i.au, i8 %i.aw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !range !285, !alias.scope !3913, !noalias !3916, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !range !285, !alias.scope !3917, !noalias !3918, !noundef !5 ; 2 uses
  %i.bc = call i8 @llvm.ucmp.i8.i32(i32 %i.az, i32 %i.bb)
  %i.bd = icmp eq i32 %i.az, %i.bb
  br i1 %i.bd, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !3913, !noalias !3916, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !3917, !noalias !3918, !noundef !5
  %i.bi = call i8 @llvm.ucmp.i8.i32(i32 %i.bf, i32 %i.bh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.ar, %.lr.ph.i.i ], [ %i.ax, %bb.j ], [ %i.bi, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bj = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  call void @llvm.experimental.noalias.scope.decl(metadata !3922)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !3924, !noalias !3927, !noundef !5 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 1                   ; 2 uses
  %i.bn = load ptr, ptr %.sroa.011.013.i.i, align 8, !alias.scope !3924, !noalias !3927, !nonnull !5
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !3924, !noalias !3927
  %.sink11.i.i.i.i.i.i = select i1 %i.bm, ptr %i.bn, ptr %.sroa.011.013.i.i
  %.sink10.i.i.i.i.i.i = select i1 %i.bm, i64 %i.bp, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !3929, !noalias !3932, !noundef !5 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1                   ; 2 uses
  %i.bt = load ptr, ptr %.sroa.06.016.i.i, align 8, !alias.scope !3929, !noalias !3932, !nonnull !5
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !3929, !noalias !3932
  %.sink11.i1.i.i.i.i.i = select i1 %i.bs, ptr %i.bt, ptr %.sroa.06.016.i.i
  %.sink10.i2.i.i.i.i.i = select i1 %i.bs, i64 %i.bv, i64 %i.br ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3934)
  call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bw, %..i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i
  %i.bx = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.by = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, %bb.m
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.m ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !3944, !noalias !3945, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !3946, !noalias !3947, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = ptrtoint ptr %.val15.i.i.i.i.i.i.i to i64
  %i.cc = and i64 %i.cb, 1
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i, i64 %i.cd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !3948, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !3948, !noundef !5 ; 2 uses
  %i.ci = ptrtoint ptr %.val16.i.i.i.i.i.i.i to i64
  %i.cj = and i64 %i.ci, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i, i64 %i.ck ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !3948, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !3948, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.co)
  %i.cp = call i32 @memcmp(ptr nonnull %i.cf, ptr nonnull %i.cm, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !3948 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub i64 %i.ch, %i.co
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq ; 2 uses
  %i.ct = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %bb.m, label %.loopexit.i.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i ], [ %i.bx, %._crit_edge.i.i.i.i.i.i.i ], [ %i.by, %.loopexit.i.i.i.i.i.i.i ]
  %i.cu = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i21.i.i = select i1 %i.cu, ptr %.sroa.011.013.i.i, ptr %.sroa.06.016.i.i
  %i.cv = xor i1 %i.cu, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(88) %..i21.i.i, i64 88, i1 false), !alias.scope !3896, !noalias !3949
  %i.cw = zext i1 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [88 x i8], ptr %.sroa.011.013.i.i, i64 %i.cw ; 4 uses
  %i.cy = zext i1 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [88 x i8], ptr %.sroa.06.016.i.i, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3953)
  call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  call void @llvm.experimental.noalias.scope.decl(metadata !3958)
  call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !3963)
  call void @llvm.experimental.noalias.scope.decl(metadata !3966)
  %i.dd = load i8, ptr %i.db, align 4, !range !282, !alias.scope !3968, !noalias !3969, !noundef !5 ; 3 uses
  %9 = zext nneg i8 %i.dd to i64
  %i.de = load i8, ptr %i.dc, align 4, !range !282, !alias.scope !3970, !noalias !3971, !noundef !5 ; 2 uses
  %10 = zext nneg i8 %i.de to i64
  %i.df = call i8 @llvm.scmp.i8.i64(i64 %9, i64 %10)
  %i.dg = icmp eq i8 %i.dd, %i.de
  br i1 %i.dg, label %bb.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.n:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i
  switch i8 %i.dd, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i [
    i8 1, label %bb.o
    i8 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 25
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !3968, !noalias !3969, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 25
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !3970, !noalias !3971, !noundef !5
  %i.dl = call i8 @llvm.ucmp.i8.i8(i8 %i.di, i8 %i.dk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.p:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !range !285, !alias.scope !3968, !noalias !3969, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4, !range !285, !alias.scope !3970, !noalias !3971, !noundef !5 ; 2 uses
  %i.dq = call i8 @llvm.ucmp.i8.i32(i32 %i.dn, i32 %i.dp)
  %i.dr = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dr, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !3968, !noalias !3969, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 32
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !3970, !noalias !3971, !noundef !5
  %i.dw = call i8 @llvm.ucmp.i8.i32(i32 %i.dt, i32 %i.dv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i: ; preds = %bb.q, %bb.p, %bb.o, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i
  %.sroa.0.0.i.i.i23.i.i = phi i8 [ %i.df, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i.i ], [ %i.dl, %bb.o ], [ %i.dw, %bb.q ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dx = icmp eq i8 %.sroa.0.0.i.i.i23.i.i, 0
  br i1 %i.dx, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !3977, !noalias !3980, !noundef !5 ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 1                   ; 2 uses
  %i.eb = load ptr, ptr %.sroa.017.07.i.i, align 8, !alias.scope !3977, !noalias !3980, !nonnull !5
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !3977, !noalias !3980
  %.sink11.i.i.i.i26.i.i = select i1 %i.ea, ptr %i.eb, ptr %.sroa.017.07.i.i
  %.sink10.i.i.i.i27.i.i = select i1 %i.ea, i64 %i.ed, i64 %i.dz ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !3982, !noalias !3985, !noundef !5 ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, 1                   ; 2 uses
  %i.eh = load ptr, ptr %.sroa.015.010.i.i, align 8, !alias.scope !3982, !noalias !3985, !nonnull !5
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !3982, !noalias !3985
  %.sink11.i1.i.i.i28.i.i = select i1 %i.eg, ptr %i.eh, ptr %.sroa.015.010.i.i
  %.sink10.i2.i.i.i29.i.i = select i1 %i.eg, i64 %i.ej, i64 %i.ef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  call void @llvm.experimental.noalias.scope.decl(metadata !3990)
  call void @llvm.experimental.noalias.scope.decl(metadata !3992)
  call void @llvm.experimental.noalias.scope.decl(metadata !3995)
  %..i.i.i.i.i.i30.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i29.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i27.i.i) ; 2 uses
  %.not.i.i.i.i.i31.i.i = icmp eq i64 %..i.i.i.i.i.i30.i.i, 0
  br i1 %.not.i.i.i.i.i31.i.i, label %._crit_edge.i.i.i.i.i40.i.i, label %.lr.ph.i.i.i.i.i32.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i32.i.i
  %i.ek = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i33.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i39.i.i = icmp eq i64 %i.ek, %..i.i.i.i.i.i30.i.i
  br i1 %exitcond.not.i.i.i.i.i39.i.i, label %._crit_edge.i.i.i.i.i40.i.i, label %.lr.ph.i.i.i.i.i32.i.i

._crit_edge.i.i.i.i.i40.i.i:                      ; preds = %bb.r, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i
  %i.el = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i27.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i29.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i

.loopexit.i.i.i.i.i38.i.i:                        ; preds = %.lr.ph.i.i.i.i.i32.i.i
  %i.em = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i37.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i

.lr.ph.i.i.i.i.i32.i.i:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i, %bb.r
  %.sroa.01.019.i.i.i.i.i33.i.i = phi i64 [ %i.ek, %bb.r ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i26.i.i, i64 %.sroa.01.019.i.i.i.i.i33.i.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i28.i.i, i64 %.sroa.01.019.i.i.i.i.i33.i.i
  %.val15.i.i.i.i.i34.i.i = load ptr, ptr %i.en, align 8, !alias.scope !3997, !noalias !3998, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i35.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !3999, !noalias !4000, !nonnull !5, !noundef !5 ; 2 uses
  %i.ep = ptrtoint ptr %.val15.i.i.i.i.i34.i.i to i64
  %i.eq = and i64 %i.ep, 1
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr i8, ptr %.val15.i.i.i.i.i34.i.i, i64 %i.er ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.et = load ptr, ptr %i.es, align 8, !noalias !4001, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !4001, !noundef !5 ; 2 uses
  %i.ew = ptrtoint ptr %.val16.i.i.i.i.i35.i.i to i64
  %i.ex = and i64 %i.ew, 1
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr i8, ptr %.val16.i.i.i.i.i35.i.i, i64 %i.ey ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ez) ]
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !4001, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !4001, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i36.i.i = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.fc)
  %i.fd = call i32 @memcmp(ptr nonnull %i.et, ptr nonnull %i.fa, i64 %spec.store.select.i.i.i.i.i.i.i36.i.i), !noalias !4001 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp eq i32 %i.fd, 0
  %i.fg = sub i64 %i.ev, %i.fc
  %spec.select.i.i.i.i.i.i.i37.i.i = select i1 %i.ff, i64 %i.fg, i64 %i.fe ; 2 uses
  %i.fh = icmp eq i64 %spec.select.i.i.i.i.i.i.i37.i.i, 0
  br i1 %i.fh, label %bb.r, label %.loopexit.i.i.i.i.i38.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit41.i.i: ; preds = %.loopexit.i.i.i.i.i38.i.i, %._crit_edge.i.i.i.i.i40.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i
  %.sroa.0.0.i.i24.i.i = phi i8 [ %.sroa.0.0.i.i.i23.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i ], [ %i.el, %._crit_edge.i.i.i.i.i40.i.i ], [ %i.em, %.loopexit.i.i.i.i.i38.i.i ]
  %i.fi = icmp eq i8 %.sroa.0.0.i.i24.i.i, -1     ; 3 uses
  %..i.i.i = select i1 %i.fi, ptr %.sroa.015.010.i.i, ptr %.sroa.017.07.i.i
  %i.fj = xor i1 %i.fi, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.019.06.i.i, ptr noundef nonnull align 8 dereferenceable(88) %..i.i.i, i64 88, i1 false), !alias.scope !3896, !noalias !4002
  %.neg.i.i.i = sext i1 %i.fj to i64
  %i.fk = getelementptr [88 x i8], ptr %.sroa.017.07.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.fi to i64
  %i.fl = getelementptr [88 x i8], ptr %.sroa.015.010.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.019.06.i.i, i64 -88
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.u
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fn = icmp ult ptr %i.cz, %i.ai               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.fn, ptr %i.cz, ptr %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.da, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.06.0..sroa.011.0.i.i, i64 88, i1 false), !alias.scope !3896
  %i.fo = zext i1 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [88 x i8], ptr %i.cz, i64 %i.fo
  %i.fq = xor i1 %i.fn, true
  %i.fr = zext i1 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [88 x i8], ptr %i.cx, i64 %i.fr
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cx, %._crit_edge.i.i ], [ %i.fs, %bb.s ]
  %.sroa.06.1.i.i = phi ptr [ %i.cz, %._crit_edge.i.i ], [ %i.fp, %bb.s ]
  %i.ft = icmp ne ptr %.sroa.06.1.i.i, %i.ai
  %i.fu = icmp ne ptr %.sroa.011.1.i.i, %i.aj
  %or.cond.i.i = select i1 %i.ft, i1 true, i1 %i.fu, !prof !1390
  br i1 %or.cond.i.i, label %bb.u, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3o_.exit, !prof !1390

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = mul nuw nsw i64 %.sroa.16.0.lcssa, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa142, ptr nonnull align 8 %2, i64 %i.fw, i1 false), !alias.scope !3896, !noalias !4006
  resume { ptr, i32 } %i.fv

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.05.010.i = phi i64 [ %i.fz, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %.sroa.05.010.i
  %i.fy = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.05.010.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fy, ptr noundef nonnull align 8 dereferenceable(88) %i.fx, i64 88, i1 false), !alias.scope !3896
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB34_(ptr noundef nonnull align 8 %2, ptr noundef %i.fy)
  %i.fz = add i64 %.sroa.05.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fz, %i.u
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0144.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph150, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph151, i64 noundef %.sroa.16.0144.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3o_.exit

.lr.ph336:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0143335 = phi i32 [ %i.ga, %bb.b ], [ %.sroa.025.0.ph149, %.lr.ph ]
  %.sroa.16.0144334 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph150, %.lr.ph ] ; 21 uses
  %i.ga = add i32 %.sroa.025.0143335, -1          ; 4 uses
  %i.gb = lshr i64 %.sroa.16.0144334, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.gb, 352
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %.idx.i ; 17 uses
  %.idx2.i = mul nuw nsw i64 %i.gb, 616
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %.idx2.i ; 17 uses
  %i.ge = icmp samesign ult i64 %.sroa.16.0144334, 64
  br i1 %i.ge, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph336
  %i.gf = call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph151, ptr noundef readonly %i.gc, ptr noundef readonly %i.gd, i64 noundef %i.gb)
  br label %bb.ao

bb.x:                                             ; preds = %.lr.ph336
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  call void @llvm.experimental.noalias.scope.decl(metadata !4014)
  call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  call void @llvm.experimental.noalias.scope.decl(metadata !4024)
  %i.gh = load i8, ptr %i.c, align 4, !range !282, !alias.scope !4026, !noalias !4029, !noundef !5 ; 5 uses
  %11 = zext nneg i8 %i.gh to i64                 ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 4, !range !282, !alias.scope !4030, !noalias !4031, !noundef !5 ; 4 uses
  %12 = zext nneg i8 %i.gi to i64                 ; 2 uses
  %i.gj = call i8 @llvm.scmp.i8.i64(i64 %11, i64 %12)
  %i.gk = icmp eq i8 %i.gh, %i.gi
  br i1 %i.gk, label %bb.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  switch i8 %i.gh, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i [
    i8 1, label %bb.z
    i8 4, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.gl = load i8, ptr %i.f, align 1, !alias.scope !4026, !noalias !4029, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4030, !noalias !4031, !noundef !5
  %i.go = call i8 @llvm.ucmp.i8.i8(i8 %i.gl, i8 %i.gn)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.gp = load i32, ptr %i.d, align 4, !range !285, !alias.scope !4026, !noalias !4029, !noundef !5 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !range !285, !alias.scope !4030, !noalias !4031, !noundef !5 ; 2 uses
  %i.gs = call i8 @llvm.ucmp.i8.i32(i32 %i.gp, i32 %i.gr)
  %i.gt = icmp eq i32 %i.gp, %i.gr
  br i1 %i.gt, label %bb.ab, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gu = load i32, ptr %i.e, align 4, !alias.scope !4026, !noalias !4029, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gw = load i32, ptr %i.gv, align 4, !alias.scope !4030, !noalias !4031, !noundef !5
  %i.gx = call i8 @llvm.ucmp.i8.i32(i32 %i.gu, i32 %i.gw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %.sroa.0.0.i.i.i.i38 = phi i8 [ %i.gj, %bb.x ], [ %i.go, %bb.z ], [ %i.gx, %bb.ab ], [ %i.gs, %bb.aa ] ; 2 uses
  %i.gy = icmp eq i8 %.sroa.0.0.i.i.i.i38, 0
  br i1 %i.gy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !4032)
  call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  %i.gz = load i64, ptr %i.g, align 8, !alias.scope !4037, !noalias !4040, !noundef !5 ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, 1                   ; 2 uses
  %i.hb = load ptr, ptr %.sroa.0.0.ph151, align 8, !alias.scope !4037, !noalias !4040, !nonnull !5
  %i.hc = load i64, ptr %i.h, align 8, !alias.scope !4037, !noalias !4040
  %.sink11.i.i.i.i.i = select i1 %i.ha, ptr %i.hb, ptr %.sroa.0.0.ph151
  %.sink10.i.i.i.i.i = select i1 %i.ha, i64 %i.hc, i64 %i.gz ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !4042, !noalias !4045, !noundef !5 ; 2 uses
  %i.hf = icmp ugt i64 %i.he, 1                   ; 2 uses
  %i.hg = load ptr, ptr %i.gc, align 8, !alias.scope !4042, !noalias !4045, !nonnull !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !4042, !noalias !4045
  %.sink11.i1.i.i.i.i = select i1 %i.hf, ptr %i.hg, ptr %i.gc
  %.sink10.i2.i.i.i.i = select i1 %i.hf, i64 %i.hi, i64 %i.he ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4047)
  call void @llvm.experimental.noalias.scope.decl(metadata !4050)
  call void @llvm.experimental.noalias.scope.decl(metadata !4052)
  call void @llvm.experimental.noalias.scope.decl(metadata !4055)
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hj = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.hj, %..i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ac, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i
  %i.hk = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hl = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, %bb.ac
  %.sroa.01.019.i.i.i.i.i.i = phi i64 [ %i.hj, %bb.ac ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !4057, !noalias !4058, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !4059, !noalias !4060, !nonnull !5, !noundef !5 ; 2 uses
  %i.ho = ptrtoint ptr %.val15.i.i.i.i.i.i to i64
  %i.hp = and i64 %i.ho, 1
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr i8, ptr %.val15.i.i.i.i.i.i, i64 %i.hq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hr) ]
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !4061, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !4061, !noundef !5 ; 2 uses
  %i.hv = ptrtoint ptr %.val16.i.i.i.i.i.i to i64
  %i.hw = and i64 %i.hv, 1
  %i.hx = sub nsw i64 0, %i.hw
  %i.hy = getelementptr i8, ptr %.val16.i.i.i.i.i.i, i64 %i.hx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !4061, !nonnull !5, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !4061, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.ib)
  %i.ic = call i32 @memcmp(ptr nonnull %i.hs, ptr nonnull %i.hz, i64 %spec.store.select.i.i.i.i.i.i.i.i), !noalias !4061 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp eq i32 %i.ic, 0
  %i.if = sub i64 %i.hu, %i.ib
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ie, i64 %i.if, i64 %i.id ; 2 uses
  %i.ig = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.ig, label %bb.ac, label %.loopexit.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i: ; preds = %.loopexit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i38, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.hk, %._crit_edge.i.i.i.i.i.i ], [ %i.hl, %.loopexit.i.i.i.i.i.i ]
  %i.ih = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4062)
  call void @llvm.experimental.noalias.scope.decl(metadata !4065)
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  call void @llvm.experimental.noalias.scope.decl(metadata !4070)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.ij = load i8, ptr %i.ii, align 4, !range !282, !alias.scope !4077, !noalias !4078, !noundef !5 ; 3 uses
  %13 = zext nneg i8 %i.ij to i64                 ; 2 uses
  %i.ik = call i8 @llvm.scmp.i8.i64(i64 %11, i64 %13)
  %i.il = icmp eq i8 %i.gh, %i.ij
  br i1 %i.il, label %bb.ad, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.ad:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i
  switch i8 %i.gh, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i [
    i8 1, label %bb.ae
    i8 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.im = load i8, ptr %i.f, align 1, !alias.scope !4079, !noalias !4080, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %i.gd, i64 25
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !4077, !noalias !4078, !noundef !5
  %i.ip = call i8 @llvm.ucmp.i8.i8(i8 %i.im, i8 %i.io)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.iq = load i32, ptr %i.d, align 4, !range !285, !alias.scope !4079, !noalias !4080, !noundef !5 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !range !285, !alias.scope !4077, !noalias !4078, !noundef !5 ; 2 uses
  %i.it = call i8 @llvm.ucmp.i8.i32(i32 %i.iq, i32 %i.is)
  %i.iu = icmp eq i32 %i.iq, %i.is
  br i1 %i.iu, label %bb.ag, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.ag:                                            ; preds = %bb.af
  %i.iv = load i32, ptr %i.e, align 4, !alias.scope !4079, !noalias !4080, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.ix = load i32, ptr %i.iw, align 4, !alias.scope !4077, !noalias !4078, !noundef !5
  %i.iy = call i8 @llvm.ucmp.i8.i32(i32 %i.iv, i32 %i.ix)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i
  %.sroa.0.0.i.i.i4.i = phi i8 [ %i.ik, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i ], [ %i.ip, %bb.ae ], [ %i.iy, %bb.ag ], [ %i.it, %bb.af ] ; 2 uses
  %i.iz = icmp eq i8 %.sroa.0.0.i.i.i4.i, 0
  br i1 %i.iz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  %i.ja = load i64, ptr %i.g, align 8, !alias.scope !4086, !noalias !4089, !noundef !5 ; 2 uses
  %i.jb = icmp ugt i64 %i.ja, 1                   ; 2 uses
  %i.jc = load ptr, ptr %.sroa.0.0.ph151, align 8, !alias.scope !4086, !noalias !4089, !nonnull !5
  %i.jd = load i64, ptr %i.h, align 8, !alias.scope !4086, !noalias !4089
  %.sink11.i.i.i.i7.i = select i1 %i.jb, ptr %i.jc, ptr %.sroa.0.0.ph151
  %.sink10.i.i.i.i8.i = select i1 %i.jb, i64 %i.jd, i64 %i.ja ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !4091, !noalias !4094, !noundef !5 ; 2 uses
  %i.jg = icmp ugt i64 %i.jf, 1                   ; 2 uses
  %i.jh = load ptr, ptr %i.gd, align 8, !alias.scope !4091, !noalias !4094, !nonnull !5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !4091, !noalias !4094
  %.sink11.i1.i.i.i9.i = select i1 %i.jg, ptr %i.jh, ptr %i.gd
  %.sink10.i2.i.i.i10.i = select i1 %i.jg, i64 %i.jj, i64 %i.jf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4096)
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %..i.i.i.i.i.i11.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i10.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i8.i) ; 2 uses
  %.not.i.i.i.i.i12.i = icmp eq i64 %..i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i21.i, label %.lr.ph.i.i.i.i.i13.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.jk = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i14.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i20.i = icmp eq i64 %i.jk, %..i.i.i.i.i.i11.i
  br i1 %exitcond.not.i.i.i.i.i20.i, label %._crit_edge.i.i.i.i.i21.i, label %.lr.ph.i.i.i.i.i13.i

._crit_edge.i.i.i.i.i21.i:                        ; preds = %bb.ah, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i
  %i.jl = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i8.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i10.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i

.loopexit.i.i.i.i.i19.i:                          ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.jm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i18.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i, %bb.ah
  %.sroa.01.019.i.i.i.i.i14.i = phi i64 [ %i.jk, %bb.ah ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i7.i, i64 %.sroa.01.019.i.i.i.i.i14.i
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i9.i, i64 %.sroa.01.019.i.i.i.i.i14.i
  %.val15.i.i.i.i.i15.i = load ptr, ptr %i.jn, align 8, !alias.scope !4106, !noalias !4107, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i16.i = load ptr, ptr %i.jo, align 8, !alias.scope !4108, !noalias !4109, !nonnull !5, !noundef !5 ; 2 uses
  %i.jp = ptrtoint ptr %.val15.i.i.i.i.i15.i to i64
  %i.jq = and i64 %i.jp, 1
  %i.jr = sub nsw i64 0, %i.jq
  %i.js = getelementptr i8, ptr %.val15.i.i.i.i.i15.i, i64 %i.jr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.js) ]
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !4110, !nonnull !5, !noundef !5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !4110, !noundef !5 ; 2 uses
  %i.jw = ptrtoint ptr %.val16.i.i.i.i.i16.i to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = sub nsw i64 0, %i.jx
  %i.jz = getelementptr i8, ptr %.val16.i.i.i.i.i16.i, i64 %i.jy ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !4110, !nonnull !5, !noundef !5
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !4110, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.jv, i64 %i.kc)
  %i.kd = call i32 @memcmp(ptr nonnull %i.jt, ptr nonnull %i.ka, i64 %spec.store.select.i.i.i.i.i.i.i17.i), !noalias !4110 ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp eq i32 %i.kd, 0
  %i.kg = sub i64 %i.jv, %i.kc
  %spec.select.i.i.i.i.i.i.i18.i = select i1 %i.kf, i64 %i.kg, i64 %i.ke ; 2 uses
  %i.kh = icmp eq i64 %spec.select.i.i.i.i.i.i.i18.i, 0
  br i1 %i.kh, label %bb.ah, label %.loopexit.i.i.i.i.i19.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i: ; preds = %.loopexit.i.i.i.i.i19.i, %._crit_edge.i.i.i.i.i21.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i
  %.sroa.0.0.i.i5.i = phi i8 [ %.sroa.0.0.i.i.i4.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i ], [ %i.jl, %._crit_edge.i.i.i.i.i21.i ], [ %i.jm, %.loopexit.i.i.i.i.i19.i ]
  %i.ki = icmp eq i8 %.sroa.0.0.i.i5.i, -1
  %i.kj = xor i1 %i.ih, %i.ki
  br i1 %i.kj, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  %i.kk = call i8 @llvm.scmp.i8.i64(i64 %12, i64 %13)
  %i.kl = icmp eq i8 %i.gi, %i.ij
  br i1 %i.kl, label %bb.aj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.gi, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i [
    i8 1, label %bb.ak
    i8 4, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.km = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !4126, !noalias !4127, !noundef !5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gd, i64 25
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !4128, !noalias !4129, !noundef !5
  %i.kq = call i8 @llvm.ucmp.i8.i8(i8 %i.kn, i8 %i.kp)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.al:                                            ; preds = %bb.aj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ks = load i32, ptr %i.kr, align 4, !range !285, !alias.scope !4126, !noalias !4127, !noundef !5 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.ku = load i32, ptr %i.kt, align 4, !range !285, !alias.scope !4128, !noalias !4129, !noundef !5 ; 2 uses
  %i.kv = call i8 @llvm.ucmp.i8.i32(i32 %i.ks, i32 %i.ku)
  %i.kw = icmp eq i32 %i.ks, %i.ku
  br i1 %i.kw, label %bb.am, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.am:                                            ; preds = %bb.al
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ky = load i32, ptr %i.kx, align 4, !alias.scope !4126, !noalias !4127, !noundef !5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.la = load i32, ptr %i.kz, align 4, !alias.scope !4128, !noalias !4129, !noundef !5
  %i.lb = call i8 @llvm.ucmp.i8.i32(i32 %i.ky, i32 %i.la)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %.sroa.0.0.i.i.i24.i = phi i8 [ %i.kk, %bb.ai ], [ %i.kq, %bb.ak ], [ %i.lb, %bb.am ], [ %i.kv, %bb.al ] ; 2 uses
  %i.lc = icmp eq i8 %.sroa.0.0.i.i.i24.i, 0
  br i1 %i.lc, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i, %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !4135, !noalias !4138, !noundef !5 ; 2 uses
  %i.lf = icmp ugt i64 %i.le, 1                   ; 2 uses
  %i.lg = load ptr, ptr %i.gc, align 8, !alias.scope !4135, !noalias !4138, !nonnull !5
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !alias.scope !4135, !noalias !4138
  %.sink11.i.i.i.i27.i = select i1 %i.lf, ptr %i.lg, ptr %i.gc
  %.sink10.i.i.i.i28.i = select i1 %i.lf, i64 %i.li, i64 %i.le ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !4140, !noalias !4143, !noundef !5 ; 2 uses
  %i.ll = icmp ugt i64 %i.lk, 1                   ; 2 uses
  %i.lm = load ptr, ptr %i.gd, align 8, !alias.scope !4140, !noalias !4143, !nonnull !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !4140, !noalias !4143
  %.sink11.i1.i.i.i29.i = select i1 %i.ll, ptr %i.lm, ptr %i.gd
  %.sink10.i2.i.i.i30.i = select i1 %i.ll, i64 %i.lo, i64 %i.lk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  %..i.i.i.i.i.i31.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i30.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i28.i) ; 2 uses
  %.not.i.i.i.i.i32.i = icmp eq i64 %..i.i.i.i.i.i31.i, 0
  br i1 %.not.i.i.i.i.i32.i, label %._crit_edge.i.i.i.i.i41.i, label %.lr.ph.i.i.i.i.i33.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i33.i
  %i.lp = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i34.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i40.i = icmp eq i64 %i.lp, %..i.i.i.i.i.i31.i
  br i1 %exitcond.not.i.i.i.i.i40.i, label %._crit_edge.i.i.i.i.i41.i, label %.lr.ph.i.i.i.i.i33.i

._crit_edge.i.i.i.i.i41.i:                        ; preds = %bb.an, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i
  %i.lq = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i28.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i30.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i

.loopexit.i.i.i.i.i39.i:                          ; preds = %.lr.ph.i.i.i.i.i33.i
  %i.lr = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i38.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i

.lr.ph.i.i.i.i.i33.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i, %bb.an
  %.sroa.01.019.i.i.i.i.i34.i = phi i64 [ %i.lp, %bb.an ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i27.i, i64 %.sroa.01.019.i.i.i.i.i34.i
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i29.i, i64 %.sroa.01.019.i.i.i.i.i34.i
  %.val15.i.i.i.i.i35.i = load ptr, ptr %i.ls, align 8, !alias.scope !4155, !noalias !4156, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i36.i = load ptr, ptr %i.lt, align 8, !alias.scope !4157, !noalias !4158, !nonnull !5, !noundef !5 ; 2 uses
  %i.lu = ptrtoint ptr %.val15.i.i.i.i.i35.i to i64
  %i.lv = and i64 %i.lu, 1
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr i8, ptr %.val15.i.i.i.i.i35.i, i64 %i.lw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !4159, !nonnull !5, !noundef !5
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !4159, !noundef !5 ; 2 uses
  %i.mb = ptrtoint ptr %.val16.i.i.i.i.i36.i to i64
  %i.mc = and i64 %i.mb, 1
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr i8, ptr %.val16.i.i.i.i.i36.i, i64 %i.md ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.me) ]
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !4159, !nonnull !5, !noundef !5
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !4159, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i37.i = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.mh)
  %i.mi = call i32 @memcmp(ptr nonnull %i.ly, ptr nonnull %i.mf, i64 %spec.store.select.i.i.i.i.i.i.i37.i), !noalias !4159 ; 2 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp eq i32 %i.mi, 0
  %i.ml = sub i64 %i.ma, %i.mh
  %spec.select.i.i.i.i.i.i.i38.i = select i1 %i.mk, i64 %i.ml, i64 %i.mj ; 2 uses
  %i.mm = icmp eq i64 %spec.select.i.i.i.i.i.i.i38.i, 0
  br i1 %i.mm, label %bb.an, label %.loopexit.i.i.i.i.i39.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i: ; preds = %.loopexit.i.i.i.i.i39.i, %._crit_edge.i.i.i.i.i41.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i
  %.sroa.0.0.i.i25.i = phi i8 [ %.sroa.0.0.i.i.i24.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i ], [ %i.lq, %._crit_edge.i.i.i.i.i41.i ], [ %i.lr, %.loopexit.i.i.i.i.i39.i ]
  %i.mn = icmp eq i8 %.sroa.0.0.i.i25.i, -1
  %i.mo = xor i1 %i.ih, %i.mn
  %..i.i = select i1 %i.mo, ptr %i.gd, ptr %i.gc
  br label %bb.ao

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3o_.exit: ; preds = %.outer._crit_edge.thread, %bb.t, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ao:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i, %bb.w
  %.sroa.0.0.i.sink.i = phi ptr [ %i.gf, %bb.w ], [ %.sroa.0.0.ph151, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit22.i ], [ %..i.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit42.i ]
  %i.mp = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.mq = sub nuw i64 %i.mp, %i.i                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.mq, 88       ; 3 uses
  %i.mr = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0144334
  call void @llvm.assume(i1 %i.mr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %i.mq ; 25 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.ms, i64 88, i1 false)
  br i1 %.not, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  call void @llvm.experimental.noalias.scope.decl(metadata !4163)
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  call void @llvm.experimental.noalias.scope.decl(metadata !4168)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4170)
  call void @llvm.experimental.noalias.scope.decl(metadata !4173)
  %i.mu = load i8, ptr %i.j, align 8, !range !282, !alias.scope !4175, !noalias !4176, !noundef !5 ; 3 uses
  %14 = zext nneg i8 %i.mu to i64
  %i.mv = load i8, ptr %i.mt, align 8, !range !282, !alias.scope !4176, !noalias !4175, !noundef !5 ; 2 uses
  %15 = zext nneg i8 %i.mv to i64
  %i.mw = call i8 @llvm.scmp.i8.i64(i64 %14, i64 %15)
  %i.mx = icmp eq i8 %i.mu, %i.mv
  br i1 %i.mx, label %bb.aq, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.mu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.my = load i8, ptr %i.m, align 1, !alias.scope !4175, !noalias !4176, !noundef !5
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.na = load i8, ptr %i.mz, align 1, !alias.scope !4176, !noalias !4175, !noundef !5
  %i.nb = call i8 @llvm.ucmp.i8.i8(i8 %i.my, i8 %i.na)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.nc = load i32, ptr %i.k, align 4, !range !285, !alias.scope !4175, !noalias !4176, !noundef !5 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.ne = load i32, ptr %i.nd, align 4, !range !285, !alias.scope !4176, !noalias !4175, !noundef !5 ; 2 uses
  %i.nf = call i8 @llvm.ucmp.i8.i32(i32 %i.nc, i32 %i.ne)
  %i.ng = icmp eq i32 %i.nc, %i.ne
  br i1 %i.ng, label %bb.at, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.nh = load i32, ptr %i.l, align 8, !alias.scope !4175, !noalias !4176, !noundef !5
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.nj = load i32, ptr %i.ni, align 8, !alias.scope !4176, !noalias !4175, !noundef !5
  %i.nk = call i8 @llvm.ucmp.i8.i32(i32 %i.nh, i32 %i.nj)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.mw, %bb.ap ], [ %i.nb, %bb.ar ], [ %i.nk, %bb.at ], [ %i.nf, %bb.as ] ; 2 uses
  %i.nl = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.nl, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !4177)
  call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.nm = load i64, ptr %i.n, align 8, !alias.scope !4182, !noalias !4185, !noundef !5 ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, 1                   ; 2 uses
  %i.no = load ptr, ptr %.sroa.028.0.ph148, align 8, !alias.scope !4182, !noalias !4185, !nonnull !5
  %i.np = load i64, ptr %i.o, align 8, !alias.scope !4182, !noalias !4185
  %.sink11.i.i.i.i = select i1 %i.nn, ptr %i.no, ptr %.sroa.028.0.ph148
  %.sink10.i.i.i.i = select i1 %i.nn, i64 %i.np, i64 %i.nm ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !4187, !noalias !4190, !noundef !5 ; 2 uses
  %i.ns = icmp ugt i64 %i.nr, 1                   ; 2 uses
  %i.nt = load ptr, ptr %i.ms, align 8, !alias.scope !4187, !noalias !4190, !nonnull !5
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !alias.scope !4187, !noalias !4190
  %.sink11.i1.i.i.i = select i1 %i.ns, ptr %i.nt, ptr %i.ms
  %.sink10.i2.i.i.i = select i1 %i.ns, i64 %i.nv, i64 %i.nr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  call void @llvm.experimental.noalias.scope.decl(metadata !4195)
  call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  %..i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.nw, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.nx = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ny = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.au
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.nw, %bb.au ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.nz, align 8, !alias.scope !4202, !noalias !4203, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.oa, align 8, !alias.scope !4204, !noalias !4205, !nonnull !5, !noundef !5 ; 2 uses
  %i.ob = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.oc = and i64 %i.ob, 1
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.od ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !4206, !nonnull !5, !noundef !5
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !noalias !4206, !noundef !5 ; 2 uses
  %i.oi = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.oj = and i64 %i.oi, 1
  %i.ok = sub nsw i64 0, %i.oj
  %i.ol = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.ok ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ol) ]
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !4206, !nonnull !5, !noundef !5
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !noalias !4206, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oh, i64 %i.oo)
  %i.op = call i32 @memcmp(ptr nonnull %i.of, ptr nonnull %i.om, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !4206 ; 2 uses
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp eq i32 %i.op, 0
  %i.os = sub i64 %i.oh, %i.oo
  %spec.select.i.i.i.i.i.i.i = select i1 %i.or, i64 %i.os, i64 %i.oq ; 2 uses
  %i.ot = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %bb.au, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.nx, %._crit_edge.i.i.i.i.i ], [ %i.ny, %.loopexit.i.i.i.i.i ]
  %i.ou = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.ou, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.ao, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4207)
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %.not105 = icmp samesign ult i64 %3, %.sroa.16.0144334
  br i1 %.not105, label %bb.ax, label %bb.aw, !prof !1390

bb.aw:                                            ; preds = %bb.av
  %i.ov = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0144334 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.be, %bb.aw
  %.sroa.19.0.i = phi ptr [ %i.ov, %bb.aw ], [ %i.rn, %bb.be ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.aw ], [ %.sroa.11.1.lcssa.i, %bb.be ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph151, %bb.aw ], [ %i.rp, %bb.be ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i37, %bb.aw ], [ %.sroa.16.0144334, %bb.be ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.0.0.i40 ; 2 uses
  %i.pd = icmp ult ptr %.sroa.5.0.i, %i.pc
  br i1 %i.pd, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45, %bb.ay
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.ay ], [ %i.rh, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.ay ], [ %i.rk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.ay ], [ %i.rl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ] ; 2 uses
  %i.pe = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0144334
  br i1 %i.pe, label %bb.bf, label %bb.be

.lr.ph.i42:                                       ; preds = %bb.ay, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45
  %.sroa.5.112.i = phi ptr [ %i.rl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ], [ %.sroa.5.0.i, %bb.ay ] ; 10 uses
  %.sroa.11.111.i = phi i64 [ %i.rk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ], [ %.sroa.11.0.i, %bb.ay ] ; 2 uses
  %.sroa.19.110.i = phi ptr [ %i.rh, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45 ], [ %.sroa.19.0.i, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4212)
  call void @llvm.experimental.noalias.scope.decl(metadata !4215)
  call void @llvm.experimental.noalias.scope.decl(metadata !4217)
  call void @llvm.experimental.noalias.scope.decl(metadata !4220)
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4222)
  call void @llvm.experimental.noalias.scope.decl(metadata !4225)
  %i.pg = load i8, ptr %i.pf, align 4, !range !282, !alias.scope !4227, !noalias !4228, !noundef !5 ; 3 uses
  %16 = zext nneg i8 %i.pg to i64
  %i.ph = load i8, ptr %i.ow, align 8, !range !282, !alias.scope !4229, !noalias !4230, !noundef !5 ; 2 uses
  %17 = zext nneg i8 %i.ph to i64
  %i.pi = call i8 @llvm.scmp.i8.i64(i64 %16, i64 %17)
  %i.pj = icmp eq i8 %i.pg, %i.ph
  br i1 %i.pj, label %bb.az, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.az:                                            ; preds = %.lr.ph.i42
  switch i8 %i.pg, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47 [
    i8 1, label %bb.ba
    i8 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 25
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !4227, !noalias !4228, !noundef !5
  %i.pm = load i8, ptr %i.oz, align 1, !alias.scope !4229, !noalias !4230, !noundef !5
  %i.pn = call i8 @llvm.ucmp.i8.i8(i8 %i.pl, i8 %i.pm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.bb:                                            ; preds = %bb.az
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 28
  %i.pp = load i32, ptr %i.po, align 4, !range !285, !alias.scope !4227, !noalias !4228, !noundef !5 ; 2 uses
  %i.pq = load i32, ptr %i.ox, align 4, !range !285, !alias.scope !4229, !noalias !4230, !noundef !5 ; 2 uses
  %i.pr = call i8 @llvm.ucmp.i8.i32(i32 %i.pp, i32 %i.pq)
  %i.ps = icmp eq i32 %i.pp, %i.pq
  br i1 %i.ps, label %bb.bc, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.bc:                                            ; preds = %bb.bb
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 32
  %i.pu = load i32, ptr %i.pt, align 4, !alias.scope !4227, !noalias !4228, !noundef !5
  %i.pv = load i32, ptr %i.oy, align 8, !alias.scope !4229, !noalias !4230, !noundef !5
  %i.pw = call i8 @llvm.ucmp.i8.i32(i32 %i.pu, i32 %i.pv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43: ; preds = %bb.bc, %bb.bb, %bb.ba, %.lr.ph.i42
  %.sroa.0.0.i.i.i.i44 = phi i8 [ %i.pi, %.lr.ph.i42 ], [ %i.pn, %bb.ba ], [ %i.pw, %bb.bc ], [ %i.pr, %bb.bb ] ; 2 uses
  %i.px = icmp eq i8 %.sroa.0.0.i.i.i.i44, 0
  br i1 %i.px, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  call void @llvm.experimental.noalias.scope.decl(metadata !4234)
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !4236, !noalias !4239, !noundef !5 ; 2 uses
  %i.qa = icmp ugt i64 %i.pz, 1                   ; 2 uses
  %i.qb = load ptr, ptr %.sroa.5.112.i, align 8, !alias.scope !4236, !noalias !4239, !nonnull !5
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !alias.scope !4236, !noalias !4239
  %.sink11.i.i.i.i.i48 = select i1 %i.qa, ptr %i.qb, ptr %.sroa.5.112.i
  %.sink10.i.i.i.i.i49 = select i1 %i.qa, i64 %i.qd, i64 %i.pz ; 2 uses
  %i.qe = load i64, ptr %i.pa, align 8, !alias.scope !4241, !noalias !4244, !noundef !5 ; 2 uses
  %i.qf = icmp ugt i64 %i.qe, 1                   ; 2 uses
  %i.qg = load ptr, ptr %i.ms, align 8, !alias.scope !4241, !noalias !4244, !nonnull !5
  %i.qh = load i64, ptr %i.pb, align 8, !alias.scope !4241, !noalias !4244
  %.sink11.i1.i.i.i.i50 = select i1 %i.qf, ptr %i.qg, ptr %i.ms
  %.sink10.i2.i.i.i.i51 = select i1 %i.qf, i64 %i.qh, i64 %i.qe ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4246)
  call void @llvm.experimental.noalias.scope.decl(metadata !4249)
  call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %..i.i.i.i.i.i.i52 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i51, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i49) ; 2 uses
  %.not.i.i.i.i.i.i53 = icmp eq i64 %..i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i.i.i53, label %._crit_edge.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i54

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i54
  %i.qi = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i61 = icmp eq i64 %i.qi, %..i.i.i.i.i.i.i52
  br i1 %exitcond.not.i.i.i.i.i.i61, label %._crit_edge.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i54

._crit_edge.i.i.i.i.i.i62:                        ; preds = %bb.bd, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47
  %i.qj = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i49, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i51)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45

.loopexit.i.i.i.i.i.i60:                          ; preds = %.lr.ph.i.i.i.i.i.i54
  %i.qk = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i59, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45

.lr.ph.i.i.i.i.i.i54:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47, %bb.bd
  %.sroa.01.019.i.i.i.i.i.i55 = phi i64 [ %i.qi, %bb.bd ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47 ] ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i48, i64 %.sroa.01.019.i.i.i.i.i.i55
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i50, i64 %.sroa.01.019.i.i.i.i.i.i55
  %.val15.i.i.i.i.i.i56 = load ptr, ptr %i.ql, align 8, !alias.scope !4256, !noalias !4257, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i57 = load ptr, ptr %i.qm, align 8, !alias.scope !4258, !noalias !4259, !nonnull !5, !noundef !5 ; 2 uses
  %i.qn = ptrtoint ptr %.val15.i.i.i.i.i.i56 to i64
  %i.qo = and i64 %i.qn, 1
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr i8, ptr %.val15.i.i.i.i.i.i56, i64 %i.qp ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qq) ]
  %i.qr = load ptr, ptr %i.qq, align 8, !noalias !4260, !nonnull !5, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !4260, !noundef !5 ; 2 uses
  %i.qu = ptrtoint ptr %.val16.i.i.i.i.i.i57 to i64
  %i.qv = and i64 %i.qu, 1
  %i.qw = sub nsw i64 0, %i.qv
  %i.qx = getelementptr i8, ptr %.val16.i.i.i.i.i.i57, i64 %i.qw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qx) ]
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !4260, !nonnull !5, !noundef !5
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !noalias !4260, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i58 = call i64 @llvm.umin.i64(i64 %i.qt, i64 %i.ra)
  %i.rb = call i32 @memcmp(ptr nonnull %i.qr, ptr nonnull %i.qy, i64 %spec.store.select.i.i.i.i.i.i.i.i58), !noalias !4260 ; 2 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp eq i32 %i.rb, 0
  %i.re = sub i64 %i.qt, %i.ra
  %spec.select.i.i.i.i.i.i.i.i59 = select i1 %i.rd, i64 %i.re, i64 %i.rc ; 2 uses
  %i.rf = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i59, 0
  br i1 %i.rf, label %bb.bd, label %.loopexit.i.i.i.i.i.i60

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit.i45: ; preds = %.loopexit.i.i.i.i.i.i60, %._crit_edge.i.i.i.i.i.i62, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43
  %.sroa.0.0.i.i.i46 = phi i8 [ %.sroa.0.0.i.i.i.i44, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43 ], [ %i.qj, %._crit_edge.i.i.i.i.i.i62 ], [ %i.qk, %.loopexit.i.i.i.i.i.i60 ]
  %i.rg = icmp eq i8 %.sroa.0.0.i.i.i46, -1       ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %.sroa.19.110.i, i64 -88 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.rg, ptr %2, ptr %i.rh
  %i.ri = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.111.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ri, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.112.i, i64 88, i1 false), !alias.scope !4261, !noalias !4262
  %i.rj = zext i1 %i.rg to i64
  %i.rk = add i64 %.sroa.11.111.i, %i.rj          ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 88 ; 3 uses
  %i.rm = icmp ult ptr %i.rl, %i.pc
  br i1 %i.rm, label %.lr.ph.i42, label %._crit_edge.i

bb.be:                                            ; preds = %._crit_edge.i
  %i.rn = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -88 ; 2 uses
  %i.ro = getelementptr inbounds nuw [88 x i8], ptr %i.rn, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ro, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i, i64 88, i1 false), !alias.scope !4261, !noalias !4265
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 88
  br label %bb.ay

bb.bf:                                            ; preds = %._crit_edge.i
  %i.rq = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph151, ptr nonnull align 8 %2, i64 %i.rq, i1 false), !alias.scope !4261
  %i.rr = sub i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i ; 4 uses
  %.not19.i = icmp eq i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i
  br i1 %.not19.i, label %.loopexit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bf
  %i.rs = getelementptr [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.rr, 1
  %i.rt = icmp eq i64 %.sroa.16.0144334, %.neg
  br i1 %i.rt, label %.epil.preheader, label %.lr.ph17.i.new

.lr.ph17.i.new:                                   ; preds = %.lr.ph17.i
  %unroll_iter = and i64 %i.rr, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph17.i.new
  %.sroa.06.015.i = phi i64 [ 0, %.lr.ph17.i.new ], [ %i.rx, %bb.bg ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph17.i.new ], [ %niter.next.1, %bb.bg ]
  %i.ru = xor i64 %.sroa.06.015.i, -1
  %i.rv = getelementptr [88 x i8], ptr %i.ov, i64 %i.ru
  %i.rw = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.rw, ptr noundef nonnull align 8 dereferenceable(88) %i.rv, i64 88, i1 false), !alias.scope !4261
  %i.rx = add nuw i64 %.sroa.06.015.i, 2          ; 2 uses
  %i.ry = xor i64 %.sroa.06.015.i, -2
  %i.rz = getelementptr [88 x i8], ptr %i.ov, i64 %i.ry
  %i.sa = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i
  %i.sb = getelementptr i8, ptr %i.sa, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.sb, ptr noundef nonnull align 8 dereferenceable(88) %i.rz, i64 88, i1 false), !alias.scope !4261
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bg

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17.i
  %.sroa.06.015.i.epil.init = phi i64 [ 0, %.lr.ph17.i ], [ %i.rx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod407 = trunc i64 %i.rr to i1
  call void @llvm.assume(i1 %lcmp.mod407)
  %i.sc = xor i64 %.sroa.06.015.i.epil.init, -1
  %i.sd = getelementptr [88 x i8], ptr %i.ov, i64 %i.sc
  %i.se = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.se, ptr noundef nonnull align 8 dereferenceable(88) %i.sd, i64 88, i1 false), !alias.scope !4261
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.bf
  %i.sf = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.sf, label %.thread, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %.not.i63 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0144334
  br i1 %.not.i63, label %bb.bi, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, !prof !21

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #42, !noalias !4268
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bh
  %i.sg = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph151) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.sg, i64 noundef %i.rr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.sh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.sh, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0B1R_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !4272)
  call void @llvm.experimental.noalias.scope.decl(metadata !4275)
  %.not106 = icmp samesign ult i64 %3, %.sroa.16.0144334
  br i1 %.not106, label %bb.bk, label %bb.bj, !prof !1390

bb.bj:                                            ; preds = %.thread
  %i.si = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0144334 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.bl:                                            ; preds = %bb.br, %bb.bj
  %.sroa.19.0.i66 = phi ptr [ %i.si, %bb.bj ], [ %i.va, %bb.br ] ; 2 uses
  %.sroa.11.0.i67 = phi i64 [ 0, %bb.bj ], [ %i.vc, %bb.br ] ; 2 uses
  %.sroa.5.0.i68 = phi ptr [ %.sroa.0.0.ph151, %bb.bj ], [ %i.vd, %bb.br ] ; 3 uses
  %.sroa.0.0.i69 = phi i64 [ %.sroa.0.0.i37, %bb.bj ], [ %.sroa.16.0144334, %bb.br ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.0.0.i69 ; 2 uses
  %i.sq = icmp ult ptr %.sroa.5.0.i68, %i.sp
  br i1 %i.sq, label %.lr.ph.i78, label %._crit_edge.i70

._crit_edge.i70:                                  ; preds = %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i, %bb.bl
  %.sroa.19.1.lcssa.i71 = phi ptr [ %.sroa.19.0.i66, %bb.bl ], [ %i.uu, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ]
  %.sroa.11.1.lcssa.i72 = phi i64 [ %.sroa.11.0.i67, %bb.bl ], [ %i.ux, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i73 = phi ptr [ %.sroa.5.0.i68, %bb.bl ], [ %i.uy, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ] ; 2 uses
  %i.sr = icmp eq i64 %.sroa.0.0.i69, %.sroa.16.0144334
  br i1 %i.sr, label %bb.bs, label %bb.br

.lr.ph.i78:                                       ; preds = %bb.bl, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i
  %.sroa.5.112.i79 = phi ptr [ %i.uy, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ], [ %.sroa.5.0.i68, %bb.bl ] ; 10 uses
  %.sroa.11.111.i80 = phi i64 [ %i.ux, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ], [ %.sroa.11.0.i67, %bb.bl ] ; 2 uses
  %.sroa.19.110.i81 = phi ptr [ %i.uu, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i ], [ %.sroa.19.0.i66, %bb.bl ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4277)
  call void @llvm.experimental.noalias.scope.decl(metadata !4280)
  call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4292)
  call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  %i.st = load i8, ptr %i.sj, align 4, !range !282, !alias.scope !4297, !noalias !4298, !noundef !5 ; 3 uses
  %18 = zext nneg i8 %i.st to i64
  %i.su = load i8, ptr %i.ss, align 4, !range !282, !alias.scope !4299, !noalias !4300, !noundef !5 ; 2 uses
  %19 = zext nneg i8 %i.su to i64
  %i.sv = call i8 @llvm.scmp.i8.i64(i64 %18, i64 %19)
  %i.sw = icmp eq i8 %i.st, %i.su
  br i1 %i.sw, label %bb.bm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bm:                                            ; preds = %.lr.ph.i78
  switch i8 %i.st, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86 [
    i8 1, label %bb.bn
    i8 4, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.sx = load i8, ptr %i.sm, align 1, !alias.scope !4297, !noalias !4298, !noundef !5
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 25
  %i.sz = load i8, ptr %i.sy, align 1, !alias.scope !4299, !noalias !4300, !noundef !5
  %i.ta = call i8 @llvm.ucmp.i8.i8(i8 %i.sx, i8 %i.sz)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bo:                                            ; preds = %bb.bm
  %i.tb = load i32, ptr %i.sk, align 4, !range !285, !alias.scope !4297, !noalias !4298, !noundef !5 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 28
  %i.td = load i32, ptr %i.tc, align 4, !range !285, !alias.scope !4299, !noalias !4300, !noundef !5 ; 2 uses
  %i.te = call i8 @llvm.ucmp.i8.i32(i32 %i.tb, i32 %i.td)
  %i.tf = icmp eq i32 %i.tb, %i.td
  br i1 %i.tf, label %bb.bp, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bp:                                            ; preds = %bb.bo
  %i.tg = load i32, ptr %i.sl, align 4, !alias.scope !4297, !noalias !4298, !noundef !5
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 32
  %i.ti = load i32, ptr %i.th, align 4, !alias.scope !4299, !noalias !4300, !noundef !5
  %i.tj = call i8 @llvm.ucmp.i8.i32(i32 %i.tg, i32 %i.ti)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82: ; preds = %bb.bp, %bb.bo, %bb.bn, %.lr.ph.i78
  %.sroa.0.0.i.i.i.i.i83 = phi i8 [ %i.sv, %.lr.ph.i78 ], [ %i.ta, %bb.bn ], [ %i.tj, %bb.bp ], [ %i.te, %bb.bo ] ; 2 uses
  %i.tk = icmp eq i8 %.sroa.0.0.i.i.i.i.i83, 0
  br i1 %i.tk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82, %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  %i.tl = load i64, ptr %i.sn, align 8, !alias.scope !4306, !noalias !4309, !noundef !5 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 1                   ; 2 uses
  %i.tn = load ptr, ptr %i.ms, align 8, !alias.scope !4306, !noalias !4309, !nonnull !5
  %i.to = load i64, ptr %i.so, align 8, !alias.scope !4306, !noalias !4309
  %.sink11.i.i.i.i.i.i87 = select i1 %i.tm, ptr %i.tn, ptr %i.ms
  %.sink10.i.i.i.i.i.i88 = select i1 %i.tm, i64 %i.to, i64 %i.tl ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !4311, !noalias !4314, !noundef !5 ; 2 uses
  %i.tr = icmp ugt i64 %i.tq, 1                   ; 2 uses
  %i.ts = load ptr, ptr %.sroa.5.112.i79, align 8, !alias.scope !4311, !noalias !4314, !nonnull !5
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !4311, !noalias !4314
  %.sink11.i1.i.i.i.i.i89 = select i1 %i.tr, ptr %i.ts, ptr %.sroa.5.112.i79
  %.sink10.i2.i.i.i.i.i90 = select i1 %i.tr, i64 %i.tu, i64 %i.tq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  call void @llvm.experimental.noalias.scope.decl(metadata !4319)
  call void @llvm.experimental.noalias.scope.decl(metadata !4321)
  call void @llvm.experimental.noalias.scope.decl(metadata !4324)
  %..i.i.i.i.i.i.i.i91 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i90, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i88) ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq i64 %..i.i.i.i.i.i.i.i91, 0
  br i1 %.not.i.i.i.i.i.i.i92, label %._crit_edge.i.i.i.i.i.i.i101, label %.lr.ph.i.i.i.i.i.i.i93

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i93
  %i.tv = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i94, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.tv, %..i.i.i.i.i.i.i.i91
  br i1 %exitcond.not.i.i.i.i.i.i.i100, label %._crit_edge.i.i.i.i.i.i.i101, label %.lr.ph.i.i.i.i.i.i.i93

._crit_edge.i.i.i.i.i.i.i101:                     ; preds = %bb.bq, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86
  %i.tw = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i88, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i90)
  br label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i

.loopexit.i.i.i.i.i.i.i99:                        ; preds = %.lr.ph.i.i.i.i.i.i.i93
  %i.tx = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i98, i64 0)
  br label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i

.lr.ph.i.i.i.i.i.i.i93:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86, %bb.bq
  %.sroa.01.019.i.i.i.i.i.i.i94 = phi i64 [ %i.tv, %bb.bq ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86 ] ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i87, i64 %.sroa.01.019.i.i.i.i.i.i.i94
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i89, i64 %.sroa.01.019.i.i.i.i.i.i.i94
  %.val15.i.i.i.i.i.i.i95 = load ptr, ptr %i.ty, align 8, !alias.scope !4326, !noalias !4327, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i96 = load ptr, ptr %i.tz, align 8, !alias.scope !4328, !noalias !4329, !nonnull !5, !noundef !5 ; 2 uses
  %i.ua = ptrtoint ptr %.val15.i.i.i.i.i.i.i95 to i64
  %i.ub = and i64 %i.ua, 1
  %i.uc = sub nsw i64 0, %i.ub
  %i.ud = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i95, i64 %i.uc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ud) ]
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !4330, !nonnull !5, !noundef !5
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.ug = load i64, ptr %i.uf, align 8, !noalias !4330, !noundef !5 ; 2 uses
  %i.uh = ptrtoint ptr %.val16.i.i.i.i.i.i.i96 to i64
  %i.ui = and i64 %i.uh, 1
  %i.uj = sub nsw i64 0, %i.ui
  %i.uk = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i96, i64 %i.uj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uk) ]
  %i.ul = load ptr, ptr %i.uk, align 8, !noalias !4330, !nonnull !5, !noundef !5
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.un = load i64, ptr %i.um, align 8, !noalias !4330, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i97 = call i64 @llvm.umin.i64(i64 %i.ug, i64 %i.un)
  %i.uo = call i32 @memcmp(ptr nonnull %i.ue, ptr nonnull %i.ul, i64 %spec.store.select.i.i.i.i.i.i.i.i.i97), !noalias !4330 ; 2 uses
  %i.up = sext i32 %i.uo to i64
  %i.uq = icmp eq i32 %i.uo, 0
  %i.ur = sub i64 %i.ug, %i.un
  %spec.select.i.i.i.i.i.i.i.i.i98 = select i1 %i.uq, i64 %i.ur, i64 %i.up ; 2 uses
  %i.us = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i98, 0
  br i1 %i.us, label %bb.bq, label %.loopexit.i.i.i.i.i.i.i99

_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0B33_.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i99, %._crit_edge.i.i.i.i.i.i.i101, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82
  %.sroa.0.0.i.i.i.i84 = phi i8 [ %.sroa.0.0.i.i.i.i.i83, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82 ], [ %i.tw, %._crit_edge.i.i.i.i.i.i.i101 ], [ %i.tx, %.loopexit.i.i.i.i.i.i.i99 ]
  %i.ut = icmp ne i8 %.sroa.0.0.i.i.i.i84, -1     ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %.sroa.19.110.i81, i64 -88 ; 3 uses
  %.sroa.01.0.i.i85 = select i1 %i.ut, ptr %2, ptr %i.uu
  %i.uv = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i85, i64 %.sroa.11.111.i80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.uv, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.112.i79, i64 88, i1 false), !alias.scope !4331, !noalias !4332
  %i.uw = zext i1 %i.ut to i64
  %i.ux = add i64 %.sroa.11.111.i80, %i.uw        ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 88 ; 3 uses
  %i.uz = icmp ult ptr %i.uy, %i.sp
  br i1 %i.uz, label %.lr.ph.i78, label %._crit_edge.i70

bb.br:                                            ; preds = %._crit_edge.i70
  %i.va = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i71, i64 -88
  %i.vb = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vb, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i73, i64 88, i1 false), !alias.scope !4331, !noalias !4335
  %i.vc = add i64 %.sroa.11.1.lcssa.i72, 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i73, i64 88
  br label %bb.bl

bb.bs:                                            ; preds = %._crit_edge.i70
  %i.ve = mul nuw nsw i64 %.sroa.11.1.lcssa.i72, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph151, ptr nonnull align 8 %2, i64 %i.ve, i1 false), !alias.scope !4331
  %i.vf = sub i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i72 ; 6 uses
  %.not19.i74 = icmp eq i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i72
  br i1 %.not19.i74, label %.outer._crit_edge.thread, label %.lr.ph17.i75

.lr.ph17.i75:                                     ; preds = %bb.bs
  %i.vg = getelementptr [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i72 ; 3 uses
  %.neg420 = add i64 %.sroa.11.1.lcssa.i72, 1
  %xtraiter415 = and i64 %i.vf, 1
  %i.vh = icmp eq i64 %.sroa.16.0144334, %.neg420
  br i1 %i.vh, label %.epil.preheader408, label %.lr.ph17.i75.new

.lr.ph17.i75.new:                                 ; preds = %.lr.ph17.i75
  %unroll_iter418 = and i64 %i.vf, -2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph17.i75.new
  %.sroa.06.015.i76 = phi i64 [ 0, %.lr.ph17.i75.new ], [ %i.vl, %bb.bt ] ; 5 uses
  %niter419 = phi i64 [ 0, %.lr.ph17.i75.new ], [ %niter419.next.1, %bb.bt ]
  %i.vi = xor i64 %.sroa.06.015.i76, -1
  %i.vj = getelementptr [88 x i8], ptr %i.si, i64 %i.vi
  %i.vk = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vk, ptr noundef nonnull align 8 dereferenceable(88) %i.vj, i64 88, i1 false), !alias.scope !4331
  %i.vl = add nuw i64 %.sroa.06.015.i76, 2        ; 2 uses
  %i.vm = xor i64 %.sroa.06.015.i76, -2
  %i.vn = getelementptr [88 x i8], ptr %i.si, i64 %i.vm
  %i.vo = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76
  %i.vp = getelementptr i8, ptr %i.vo, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vp, ptr noundef nonnull align 8 dereferenceable(88) %i.vn, i64 88, i1 false), !alias.scope !4331
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1 = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit.unr-lcssa, label %bb.bt

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit.unr-lcssa: ; preds = %bb.bt
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit, label %.epil.preheader408

.epil.preheader408:                               ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit.unr-lcssa, %.lr.ph17.i75
  %.sroa.06.015.i76.epil.init = phi i64 [ 0, %.lr.ph17.i75 ], [ %i.vl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i64 %i.vf to i1
  call void @llvm.assume(i1 %lcmp.mod417)
  %i.vq = xor i64 %.sroa.06.015.i76.epil.init, -1
  %i.vr = getelementptr [88 x i8], ptr %i.si, i64 %i.vq
  %i.vs = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vs, ptr noundef nonnull align 8 dereferenceable(88) %i.vr, i64 88, i1 false), !alias.scope !4331
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit.unr-lcssa, %.epil.preheader408
  %i.vt = icmp ugt i64 %.sroa.11.1.lcssa.i72, %.sroa.16.0144334
  br i1 %i.vt, label %bb.bu, label %.outer, !prof !21

.outer._crit_edge.thread:                         ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0EB3o_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit
  %i.vu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.vv = icmp ult i64 %i.vf, 33
  br i1 %i.vv, label %.outer._crit_edge, label %.lr.ph

bb.bu:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers11auto_import11auto_import0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i72, i64 noundef %.sroa.16.0144334, i64 noundef %.sroa.16.0144334, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(88) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph151 = phi ptr [ %i.vu, %.outer ], [ %0, %bb.a ] ; 29 uses
  %.sroa.16.0.ph150 = phi i64 [ %i.vf, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph149 = phi i32 [ %i.ga, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph148 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0.0.ph151 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph148, null
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph148, i64 8
  %i.p = icmp eq i32 %.sroa.025.0.ph149, 0
  br i1 %i.p, label %.lr.ph._crit_edge, label %.lr.ph336

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit
  %i.q = icmp eq i32 %i.ga, 0
  br i1 %i.q, label %.lr.ph._crit_edge, label %.lr.ph336

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, %bb.a
  %.sroa.0.0.ph.lcssa142 = phi ptr [ %.sroa.0.0.ph151, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %0, %bb.a ], [ %i.vu, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit ], [ %1, %bb.a ], [ %i.vf, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  %i.r = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.r, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3o_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.s = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.t = icmp samesign ult i64 %3, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.v = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %i.u ; 3 uses
  %i.x = getelementptr [88 x i8], ptr %2, i64 %i.u ; 6 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB35_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa142, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB35_(ptr noundef %i.w, ptr noundef %i.x)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.ph.lcssa142, i64 88, i1 false), !alias.scope !4341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !alias.scope !4341
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.y = sub nsw i64 %.sroa.16.0.lcssa, %i.u      ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i, %i.u
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.aa = icmp ult i64 %.sroa.0.0.i, %i.y
  br i1 %i.aa, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.ad, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.w, i64 %.sroa.05.010.1.i
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %.sroa.05.010.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false), !alias.scope !4341
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB34_(ptr noundef %i.x, ptr noundef %i.ac)
  %i.ad = add i64 %.sroa.05.010.1.i, 1            ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  %i.ae = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.x, i64 -88
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i
  %i.ai = getelementptr i8, ptr %i.fl, i64 88     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.fk, i64 88
  %i.ak = and i64 %.sroa.16.0.lcssa, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.t, label %bb.s

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i, %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.da, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %.sroa.0.0.ph.lcssa142, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.am, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.016.i.i = phi ptr [ %i.cz, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %2, %.loopexit.1.i ] ; 10 uses
  %.sroa.011.013.i.i = phi ptr [ %i.cx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %i.x, %.loopexit.1.i ] ; 10 uses
  %.sroa.015.010.i.i = phi ptr [ %i.fl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %i.ah, %.loopexit.1.i ] ; 10 uses
  %.sroa.017.07.i.i = phi ptr [ %i.fk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %i.ag, %.loopexit.1.i ] ; 10 uses
  %.sroa.019.06.i.i = phi ptr [ %i.fm, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i ], [ %i.af, %.loopexit.1.i ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4343)
  call void @llvm.experimental.noalias.scope.decl(metadata !4346)
  call void @llvm.experimental.noalias.scope.decl(metadata !4348)
  call void @llvm.experimental.noalias.scope.decl(metadata !4351)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  %i.ap = load i8, ptr %i.an, align 4, !range !282, !alias.scope !4358, !noalias !4361, !noundef !5 ; 3 uses
  %7 = zext nneg i8 %i.ap to i64
  %i.aq = load i8, ptr %i.ao, align 4, !range !282, !alias.scope !4362, !noalias !4363, !noundef !5 ; 2 uses
  %8 = zext nneg i8 %i.aq to i64
  %i.ar = call i8 @llvm.scmp.i8.i64(i64 %7, i64 %8)
  %i.as = icmp eq i8 %i.ap, %i.aq
  br i1 %i.as, label %bb.i, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  switch i8 %i.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i [
    i8 1, label %bb.j
    i8 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 25
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !4358, !noalias !4361, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !4362, !noalias !4363, !noundef !5
  %i.ax = call i8 @llvm.ucmp.i8.i8(i8 %i.au, i8 %i.aw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !range !285, !alias.scope !4358, !noalias !4361, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !range !285, !alias.scope !4362, !noalias !4363, !noundef !5 ; 2 uses
  %i.bc = call i8 @llvm.ucmp.i8.i32(i32 %i.az, i32 %i.bb)
  %i.bd = icmp eq i32 %i.az, %i.bb
  br i1 %i.bd, label %bb.l, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !4358, !noalias !4361, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !4362, !noalias !4363, !noundef !5
  %i.bi = call i8 @llvm.ucmp.i8.i32(i32 %i.bf, i32 %i.bh)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.ar, %.lr.ph.i.i ], [ %i.ax, %bb.j ], [ %i.bi, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bj = icmp eq i8 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4364)
  call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !4369, !noalias !4372, !noundef !5 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 1                   ; 2 uses
  %i.bn = load ptr, ptr %.sroa.011.013.i.i, align 8, !alias.scope !4369, !noalias !4372, !nonnull !5
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !4369, !noalias !4372
  %.sink11.i.i.i.i.i.i = select i1 %i.bm, ptr %i.bn, ptr %.sroa.011.013.i.i
  %.sink10.i.i.i.i.i.i = select i1 %i.bm, i64 %i.bp, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !4374, !noalias !4377, !noundef !5 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1                   ; 2 uses
  %i.bt = load ptr, ptr %.sroa.06.016.i.i, align 8, !alias.scope !4374, !noalias !4377, !nonnull !5
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.016.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !4374, !noalias !4377
  %.sink11.i1.i.i.i.i.i = select i1 %i.bs, ptr %i.bt, ptr %.sroa.06.016.i.i
  %.sink10.i2.i.i.i.i.i = select i1 %i.bs, i64 %i.bv, i64 %i.br ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4379)
  call void @llvm.experimental.noalias.scope.decl(metadata !4382)
  call void @llvm.experimental.noalias.scope.decl(metadata !4384)
  call void @llvm.experimental.noalias.scope.decl(metadata !4387)
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bw, %..i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.m, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i
  %i.bx = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.by = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i, %bb.m
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.m ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !4389, !noalias !4390, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !4391, !noalias !4392, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = ptrtoint ptr %.val15.i.i.i.i.i.i.i to i64
  %i.cc = and i64 %i.cb, 1
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i, i64 %i.cd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !4393, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !4393, !noundef !5 ; 2 uses
  %i.ci = ptrtoint ptr %.val16.i.i.i.i.i.i.i to i64
  %i.cj = and i64 %i.ci, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i, i64 %i.ck ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !4393, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !4393, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.co)
  %i.cp = call i32 @memcmp(ptr nonnull %i.cf, ptr nonnull %i.cm, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !noalias !4393 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub i64 %i.ch, %i.co
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq ; 2 uses
  %i.ct = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %bb.m, label %.loopexit.i.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i ], [ %i.bx, %._crit_edge.i.i.i.i.i.i.i ], [ %i.by, %.loopexit.i.i.i.i.i.i.i ]
  %i.cu = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i21.i.i = select i1 %i.cu, ptr %.sroa.011.013.i.i, ptr %.sroa.06.016.i.i
  %i.cv = xor i1 %i.cu, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(88) %..i21.i.i, i64 88, i1 false), !alias.scope !4341, !noalias !4394
  %i.cw = zext i1 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [88 x i8], ptr %.sroa.011.013.i.i, i64 %i.cw ; 4 uses
  %i.cy = zext i1 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [88 x i8], ptr %.sroa.06.016.i.i, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4398)
  call void @llvm.experimental.noalias.scope.decl(metadata !4401)
  call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  call void @llvm.experimental.noalias.scope.decl(metadata !4411)
  %i.dd = load i8, ptr %i.db, align 4, !range !282, !alias.scope !4413, !noalias !4414, !noundef !5 ; 3 uses
  %9 = zext nneg i8 %i.dd to i64
  %i.de = load i8, ptr %i.dc, align 4, !range !282, !alias.scope !4415, !noalias !4416, !noundef !5 ; 2 uses
  %10 = zext nneg i8 %i.de to i64
  %i.df = call i8 @llvm.scmp.i8.i64(i64 %9, i64 %10)
  %i.dg = icmp eq i8 %i.dd, %i.de
  br i1 %i.dg, label %bb.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.n:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  switch i8 %i.dd, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i [
    i8 1, label %bb.o
    i8 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 25
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !4413, !noalias !4414, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 25
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !4415, !noalias !4416, !noundef !5
  %i.dl = call i8 @llvm.ucmp.i8.i8(i8 %i.di, i8 %i.dk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.p:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !range !285, !alias.scope !4413, !noalias !4414, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4, !range !285, !alias.scope !4415, !noalias !4416, !noundef !5 ; 2 uses
  %i.dq = call i8 @llvm.ucmp.i8.i32(i32 %i.dn, i32 %i.dp)
  %i.dr = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dr, label %bb.q, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !4413, !noalias !4414, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 32
  %i.dv = load i32, ptr %i.du, align 4, !alias.scope !4415, !noalias !4416, !noundef !5
  %i.dw = call i8 @llvm.ucmp.i8.i32(i32 %i.dt, i32 %i.dv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i: ; preds = %bb.q, %bb.p, %bb.o, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i
  %.sroa.0.0.i.i.i23.i.i = phi i8 [ %i.df, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i.i ], [ %i.dl, %bb.o ], [ %i.dw, %bb.q ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dx = icmp eq i8 %.sroa.0.0.i.i.i23.i.i, 0
  br i1 %i.dx, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4417)
  call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !4422, !noalias !4425, !noundef !5 ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 1                   ; 2 uses
  %i.eb = load ptr, ptr %.sroa.017.07.i.i, align 8, !alias.scope !4422, !noalias !4425, !nonnull !5
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.017.07.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !4422, !noalias !4425
  %.sink11.i.i.i.i26.i.i = select i1 %i.ea, ptr %i.eb, ptr %.sroa.017.07.i.i
  %.sink10.i.i.i.i27.i.i = select i1 %i.ea, i64 %i.ed, i64 %i.dz ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !4427, !noalias !4430, !noundef !5 ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, 1                   ; 2 uses
  %i.eh = load ptr, ptr %.sroa.015.010.i.i, align 8, !alias.scope !4427, !noalias !4430, !nonnull !5
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.015.010.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !4427, !noalias !4430
  %.sink11.i1.i.i.i28.i.i = select i1 %i.eg, ptr %i.eh, ptr %.sroa.015.010.i.i
  %.sink10.i2.i.i.i29.i.i = select i1 %i.eg, i64 %i.ej, i64 %i.ef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4432)
  call void @llvm.experimental.noalias.scope.decl(metadata !4435)
  call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  call void @llvm.experimental.noalias.scope.decl(metadata !4440)
  %..i.i.i.i.i.i30.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i29.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i27.i.i) ; 2 uses
  %.not.i.i.i.i.i31.i.i = icmp eq i64 %..i.i.i.i.i.i30.i.i, 0
  br i1 %.not.i.i.i.i.i31.i.i, label %._crit_edge.i.i.i.i.i40.i.i, label %.lr.ph.i.i.i.i.i32.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i32.i.i
  %i.ek = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i33.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i39.i.i = icmp eq i64 %i.ek, %..i.i.i.i.i.i30.i.i
  br i1 %exitcond.not.i.i.i.i.i39.i.i, label %._crit_edge.i.i.i.i.i40.i.i, label %.lr.ph.i.i.i.i.i32.i.i

._crit_edge.i.i.i.i.i40.i.i:                      ; preds = %bb.r, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i
  %i.el = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i27.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i29.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i

.loopexit.i.i.i.i.i38.i.i:                        ; preds = %.lr.ph.i.i.i.i.i32.i.i
  %i.em = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i37.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i

.lr.ph.i.i.i.i.i32.i.i:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i, %bb.r
  %.sroa.01.019.i.i.i.i.i33.i.i = phi i64 [ %i.ek, %bb.r ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i25.i.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i26.i.i, i64 %.sroa.01.019.i.i.i.i.i33.i.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i28.i.i, i64 %.sroa.01.019.i.i.i.i.i33.i.i
  %.val15.i.i.i.i.i34.i.i = load ptr, ptr %i.en, align 8, !alias.scope !4442, !noalias !4443, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i35.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !4444, !noalias !4445, !nonnull !5, !noundef !5 ; 2 uses
  %i.ep = ptrtoint ptr %.val15.i.i.i.i.i34.i.i to i64
  %i.eq = and i64 %i.ep, 1
  %i.er = sub nsw i64 0, %i.eq
  %i.es = getelementptr i8, ptr %.val15.i.i.i.i.i34.i.i, i64 %i.er ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.et = load ptr, ptr %i.es, align 8, !noalias !4446, !nonnull !5, !noundef !5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !4446, !noundef !5 ; 2 uses
  %i.ew = ptrtoint ptr %.val16.i.i.i.i.i35.i.i to i64
  %i.ex = and i64 %i.ew, 1
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr i8, ptr %.val16.i.i.i.i.i35.i.i, i64 %i.ey ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ez) ]
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !4446, !nonnull !5, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !4446, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i36.i.i = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.fc)
  %i.fd = call i32 @memcmp(ptr nonnull %i.et, ptr nonnull %i.fa, i64 %spec.store.select.i.i.i.i.i.i.i36.i.i), !noalias !4446 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp eq i32 %i.fd, 0
  %i.fg = sub i64 %i.ev, %i.fc
  %spec.select.i.i.i.i.i.i.i37.i.i = select i1 %i.ff, i64 %i.fg, i64 %i.fe ; 2 uses
  %i.fh = icmp eq i64 %spec.select.i.i.i.i.i.i.i37.i.i, 0
  br i1 %i.fh, label %bb.r, label %.loopexit.i.i.i.i.i38.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit41.i.i: ; preds = %.loopexit.i.i.i.i.i38.i.i, %._crit_edge.i.i.i.i.i40.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i
  %.sroa.0.0.i.i24.i.i = phi i8 [ %.sroa.0.0.i.i.i23.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i22.i.i ], [ %i.el, %._crit_edge.i.i.i.i.i40.i.i ], [ %i.em, %.loopexit.i.i.i.i.i38.i.i ]
  %i.fi = icmp eq i8 %.sroa.0.0.i.i24.i.i, -1     ; 3 uses
  %..i.i.i = select i1 %i.fi, ptr %.sroa.015.010.i.i, ptr %.sroa.017.07.i.i
  %i.fj = xor i1 %i.fi, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.019.06.i.i, ptr noundef nonnull align 8 dereferenceable(88) %..i.i.i, i64 88, i1 false), !alias.scope !4341, !noalias !4447
  %.neg.i.i.i = sext i1 %i.fj to i64
  %i.fk = getelementptr [88 x i8], ptr %.sroa.017.07.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.fi to i64
  %i.fl = getelementptr [88 x i8], ptr %.sroa.015.010.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.019.06.i.i, i64 -88
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.u
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.fn = icmp ult ptr %i.cz, %i.ai               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.fn, ptr %i.cz, ptr %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.da, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.06.0..sroa.011.0.i.i, i64 88, i1 false), !alias.scope !4341
  %i.fo = zext i1 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [88 x i8], ptr %i.cz, i64 %i.fo
  %i.fq = xor i1 %i.fn, true
  %i.fr = zext i1 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [88 x i8], ptr %i.cx, i64 %i.fr
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cx, %._crit_edge.i.i ], [ %i.fs, %bb.s ]
  %.sroa.06.1.i.i = phi ptr [ %i.cz, %._crit_edge.i.i ], [ %i.fp, %bb.s ]
  %i.ft = icmp ne ptr %.sroa.06.1.i.i, %i.ai
  %i.fu = icmp ne ptr %.sroa.011.1.i.i, %i.aj
  %or.cond.i.i = select i1 %i.ft, i1 true, i1 %i.fu, !prof !1390
  br i1 %or.cond.i.i, label %bb.u, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3o_.exit, !prof !1390

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #42
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = mul nuw nsw i64 %.sroa.16.0.lcssa, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa142, ptr nonnull align 8 %2, i64 %i.fw, i1 false), !alias.scope !4341, !noalias !4451
  resume { ptr, i32 } %i.fv

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.05.010.i = phi i64 [ %i.fz, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph.lcssa142, i64 %.sroa.05.010.i
  %i.fy = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.05.010.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fy, ptr noundef nonnull align 8 dereferenceable(88) %i.fx, i64 88, i1 false), !alias.scope !4341
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB34_(ptr noundef nonnull align 8 %2, ptr noundef %i.fy)
  %i.fz = add i64 %.sroa.05.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fz, %i.u
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0144.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph150, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB2R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph151, i64 noundef %.sroa.16.0144.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3o_.exit

.lr.ph336:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0143335 = phi i32 [ %i.ga, %bb.b ], [ %.sroa.025.0.ph149, %.lr.ph ]
  %.sroa.16.0144334 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph150, %.lr.ph ] ; 21 uses
  %i.ga = add i32 %.sroa.025.0143335, -1          ; 4 uses
  %i.gb = lshr i64 %.sroa.16.0144334, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.gb, 352
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %.idx.i ; 17 uses
  %.idx2.i = mul nuw nsw i64 %i.gb, 616
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %.idx2.i ; 17 uses
  %i.ge = icmp samesign ult i64 %.sroa.16.0144334, 64
  br i1 %i.ge, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph336
  %i.gf = call fastcc noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB30_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph151, ptr noundef readonly %i.gc, ptr noundef readonly %i.gd, i64 noundef %i.gb)
  br label %bb.ao

bb.x:                                             ; preds = %.lr.ph336
  call void @llvm.experimental.noalias.scope.decl(metadata !4456)
  call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  call void @llvm.experimental.noalias.scope.decl(metadata !4461)
  call void @llvm.experimental.noalias.scope.decl(metadata !4464)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4466)
  call void @llvm.experimental.noalias.scope.decl(metadata !4469)
  %i.gh = load i8, ptr %i.c, align 4, !range !282, !alias.scope !4471, !noalias !4474, !noundef !5 ; 5 uses
  %11 = zext nneg i8 %i.gh to i64                 ; 2 uses
  %i.gi = load i8, ptr %i.gg, align 4, !range !282, !alias.scope !4475, !noalias !4476, !noundef !5 ; 4 uses
  %12 = zext nneg i8 %i.gi to i64                 ; 2 uses
  %i.gj = call i8 @llvm.scmp.i8.i64(i64 %11, i64 %12)
  %i.gk = icmp eq i8 %i.gh, %i.gi
  br i1 %i.gk, label %bb.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  switch i8 %i.gh, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i [
    i8 1, label %bb.z
    i8 4, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.gl = load i8, ptr %i.f, align 1, !alias.scope !4471, !noalias !4474, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4475, !noalias !4476, !noundef !5
  %i.go = call i8 @llvm.ucmp.i8.i8(i8 %i.gl, i8 %i.gn)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.gp = load i32, ptr %i.d, align 4, !range !285, !alias.scope !4471, !noalias !4474, !noundef !5 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !range !285, !alias.scope !4475, !noalias !4476, !noundef !5 ; 2 uses
  %i.gs = call i8 @llvm.ucmp.i8.i32(i32 %i.gp, i32 %i.gr)
  %i.gt = icmp eq i32 %i.gp, %i.gr
  br i1 %i.gt, label %bb.ab, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gu = load i32, ptr %i.e, align 4, !alias.scope !4471, !noalias !4474, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gw = load i32, ptr %i.gv, align 4, !alias.scope !4475, !noalias !4476, !noundef !5
  %i.gx = call i8 @llvm.ucmp.i8.i32(i32 %i.gu, i32 %i.gw)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %.sroa.0.0.i.i.i.i38 = phi i8 [ %i.gj, %bb.x ], [ %i.go, %bb.z ], [ %i.gx, %bb.ab ], [ %i.gs, %bb.aa ] ; 2 uses
  %i.gy = icmp eq i8 %.sroa.0.0.i.i.i.i38, 0
  br i1 %i.gy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !4477)
  call void @llvm.experimental.noalias.scope.decl(metadata !4480)
  %i.gz = load i64, ptr %i.g, align 8, !alias.scope !4482, !noalias !4485, !noundef !5 ; 2 uses
  %i.ha = icmp ugt i64 %i.gz, 1                   ; 2 uses
  %i.hb = load ptr, ptr %.sroa.0.0.ph151, align 8, !alias.scope !4482, !noalias !4485, !nonnull !5
  %i.hc = load i64, ptr %i.h, align 8, !alias.scope !4482, !noalias !4485
  %.sink11.i.i.i.i.i = select i1 %i.ha, ptr %i.hb, ptr %.sroa.0.0.ph151
  %.sink10.i.i.i.i.i = select i1 %i.ha, i64 %i.hc, i64 %i.gz ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !4487, !noalias !4490, !noundef !5 ; 2 uses
  %i.hf = icmp ugt i64 %i.he, 1                   ; 2 uses
  %i.hg = load ptr, ptr %i.gc, align 8, !alias.scope !4487, !noalias !4490, !nonnull !5
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !4487, !noalias !4490
  %.sink11.i1.i.i.i.i = select i1 %i.hf, ptr %i.hg, ptr %i.gc
  %.sink10.i2.i.i.i.i = select i1 %i.hf, i64 %i.hi, i64 %i.he ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4492)
  call void @llvm.experimental.noalias.scope.decl(metadata !4495)
  call void @llvm.experimental.noalias.scope.decl(metadata !4497)
  call void @llvm.experimental.noalias.scope.decl(metadata !4500)
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hj = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.hj, %..i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ac, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i
  %i.hk = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hl = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i, %bb.ac
  %.sroa.01.019.i.i.i.i.i.i = phi i64 [ %i.hj, %bb.ac ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !4502, !noalias !4503, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !4504, !noalias !4505, !nonnull !5, !noundef !5 ; 2 uses
  %i.ho = ptrtoint ptr %.val15.i.i.i.i.i.i to i64
  %i.hp = and i64 %i.ho, 1
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr i8, ptr %.val15.i.i.i.i.i.i, i64 %i.hq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hr) ]
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !4506, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !4506, !noundef !5 ; 2 uses
  %i.hv = ptrtoint ptr %.val16.i.i.i.i.i.i to i64
  %i.hw = and i64 %i.hv, 1
  %i.hx = sub nsw i64 0, %i.hw
  %i.hy = getelementptr i8, ptr %.val16.i.i.i.i.i.i, i64 %i.hx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !4506, !nonnull !5, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !4506, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.ib)
  %i.ic = call i32 @memcmp(ptr nonnull %i.hs, ptr nonnull %i.hz, i64 %spec.store.select.i.i.i.i.i.i.i.i), !noalias !4506 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp eq i32 %i.ic, 0
  %i.if = sub i64 %i.hu, %i.ib
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ie, i64 %i.if, i64 %i.id ; 2 uses
  %i.ig = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.ig, label %bb.ac, label %.loopexit.i.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i: ; preds = %.loopexit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i38, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.hk, %._crit_edge.i.i.i.i.i.i ], [ %i.hl, %.loopexit.i.i.i.i.i.i ]
  %i.ih = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4507)
  call void @llvm.experimental.noalias.scope.decl(metadata !4510)
  call void @llvm.experimental.noalias.scope.decl(metadata !4512)
  call void @llvm.experimental.noalias.scope.decl(metadata !4515)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  call void @llvm.experimental.noalias.scope.decl(metadata !4520)
  %i.ij = load i8, ptr %i.ii, align 4, !range !282, !alias.scope !4522, !noalias !4523, !noundef !5 ; 3 uses
  %13 = zext nneg i8 %i.ij to i64                 ; 2 uses
  %i.ik = call i8 @llvm.scmp.i8.i64(i64 %11, i64 %13)
  %i.il = icmp eq i8 %i.gh, %i.ij
  br i1 %i.il, label %bb.ad, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.ad:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i
  switch i8 %i.gh, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i [
    i8 1, label %bb.ae
    i8 4, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.im = load i8, ptr %i.f, align 1, !alias.scope !4524, !noalias !4525, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %i.gd, i64 25
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !4522, !noalias !4523, !noundef !5
  %i.ip = call i8 @llvm.ucmp.i8.i8(i8 %i.im, i8 %i.io)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.af:                                            ; preds = %bb.ad
  %i.iq = load i32, ptr %i.d, align 4, !range !285, !alias.scope !4524, !noalias !4525, !noundef !5 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !range !285, !alias.scope !4522, !noalias !4523, !noundef !5 ; 2 uses
  %i.it = call i8 @llvm.ucmp.i8.i32(i32 %i.iq, i32 %i.is)
  %i.iu = icmp eq i32 %i.iq, %i.is
  br i1 %i.iu, label %bb.ag, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

bb.ag:                                            ; preds = %bb.af
  %i.iv = load i32, ptr %i.e, align 4, !alias.scope !4524, !noalias !4525, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.ix = load i32, ptr %i.iw, align 4, !alias.scope !4522, !noalias !4523, !noundef !5
  %i.iy = call i8 @llvm.ucmp.i8.i32(i32 %i.iv, i32 %i.ix)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i: ; preds = %bb.ag, %bb.af, %bb.ae, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i
  %.sroa.0.0.i.i.i4.i = phi i8 [ %i.ik, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i ], [ %i.ip, %bb.ae ], [ %i.iy, %bb.ag ], [ %i.it, %bb.af ] ; 2 uses
  %i.iz = icmp eq i8 %.sroa.0.0.i.i.i4.i, 0
  br i1 %i.iz, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  call void @llvm.experimental.noalias.scope.decl(metadata !4529)
  %i.ja = load i64, ptr %i.g, align 8, !alias.scope !4531, !noalias !4534, !noundef !5 ; 2 uses
  %i.jb = icmp ugt i64 %i.ja, 1                   ; 2 uses
  %i.jc = load ptr, ptr %.sroa.0.0.ph151, align 8, !alias.scope !4531, !noalias !4534, !nonnull !5
  %i.jd = load i64, ptr %i.h, align 8, !alias.scope !4531, !noalias !4534
  %.sink11.i.i.i.i7.i = select i1 %i.jb, ptr %i.jc, ptr %.sroa.0.0.ph151
  %.sink10.i.i.i.i8.i = select i1 %i.jb, i64 %i.jd, i64 %i.ja ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !4536, !noalias !4539, !noundef !5 ; 2 uses
  %i.jg = icmp ugt i64 %i.jf, 1                   ; 2 uses
  %i.jh = load ptr, ptr %i.gd, align 8, !alias.scope !4536, !noalias !4539, !nonnull !5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !4536, !noalias !4539
  %.sink11.i1.i.i.i9.i = select i1 %i.jg, ptr %i.jh, ptr %i.gd
  %.sink10.i2.i.i.i10.i = select i1 %i.jg, i64 %i.jj, i64 %i.jf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4541)
  call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  call void @llvm.experimental.noalias.scope.decl(metadata !4549)
  %..i.i.i.i.i.i11.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i10.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i8.i) ; 2 uses
  %.not.i.i.i.i.i12.i = icmp eq i64 %..i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i.i12.i, label %._crit_edge.i.i.i.i.i21.i, label %.lr.ph.i.i.i.i.i13.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.jk = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i14.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i20.i = icmp eq i64 %i.jk, %..i.i.i.i.i.i11.i
  br i1 %exitcond.not.i.i.i.i.i20.i, label %._crit_edge.i.i.i.i.i21.i, label %.lr.ph.i.i.i.i.i13.i

._crit_edge.i.i.i.i.i21.i:                        ; preds = %bb.ah, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i
  %i.jl = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i8.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i10.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i

.loopexit.i.i.i.i.i19.i:                          ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.jm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i18.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i, %bb.ah
  %.sroa.01.019.i.i.i.i.i14.i = phi i64 [ %i.jk, %bb.ah ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i6.i ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i7.i, i64 %.sroa.01.019.i.i.i.i.i14.i
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i9.i, i64 %.sroa.01.019.i.i.i.i.i14.i
  %.val15.i.i.i.i.i15.i = load ptr, ptr %i.jn, align 8, !alias.scope !4551, !noalias !4552, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i16.i = load ptr, ptr %i.jo, align 8, !alias.scope !4553, !noalias !4554, !nonnull !5, !noundef !5 ; 2 uses
  %i.jp = ptrtoint ptr %.val15.i.i.i.i.i15.i to i64
  %i.jq = and i64 %i.jp, 1
  %i.jr = sub nsw i64 0, %i.jq
  %i.js = getelementptr i8, ptr %.val15.i.i.i.i.i15.i, i64 %i.jr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.js) ]
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !4555, !nonnull !5, !noundef !5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %i.jw = ptrtoint ptr %.val16.i.i.i.i.i16.i to i64
  %i.jx = and i64 %i.jw, 1
  %i.jy = sub nsw i64 0, %i.jx
  %i.jz = getelementptr i8, ptr %.val16.i.i.i.i.i16.i, i64 %i.jy ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !4555, !nonnull !5, !noundef !5
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !4555, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i17.i = call i64 @llvm.umin.i64(i64 %i.jv, i64 %i.kc)
  %i.kd = call i32 @memcmp(ptr nonnull %i.jt, ptr nonnull %i.ka, i64 %spec.store.select.i.i.i.i.i.i.i17.i), !noalias !4555 ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp eq i32 %i.kd, 0
  %i.kg = sub i64 %i.jv, %i.kc
  %spec.select.i.i.i.i.i.i.i18.i = select i1 %i.kf, i64 %i.kg, i64 %i.ke ; 2 uses
  %i.kh = icmp eq i64 %spec.select.i.i.i.i.i.i.i18.i, 0
  br i1 %i.kh, label %bb.ah, label %.loopexit.i.i.i.i.i19.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i: ; preds = %.loopexit.i.i.i.i.i19.i, %._crit_edge.i.i.i.i.i21.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i
  %.sroa.0.0.i.i5.i = phi i8 [ %.sroa.0.0.i.i.i4.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i3.i ], [ %i.jl, %._crit_edge.i.i.i.i.i21.i ], [ %i.jm, %.loopexit.i.i.i.i.i19.i ]
  %i.ki = icmp eq i8 %.sroa.0.0.i.i5.i, -1
  %i.kj = xor i1 %i.ih, %i.ki
  br i1 %i.kj, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  call void @llvm.experimental.noalias.scope.decl(metadata !4559)
  call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  call void @llvm.experimental.noalias.scope.decl(metadata !4564)
  call void @llvm.experimental.noalias.scope.decl(metadata !4566)
  call void @llvm.experimental.noalias.scope.decl(metadata !4569)
  %i.kk = call i8 @llvm.scmp.i8.i64(i64 %12, i64 %13)
  %i.kl = icmp eq i8 %i.gi, %i.ij
  br i1 %i.kl, label %bb.aj, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.aj:                                            ; preds = %bb.ai
  switch i8 %i.gi, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i [
    i8 1, label %bb.ak
    i8 4, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.km = getelementptr inbounds nuw i8, ptr %i.gc, i64 25
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !4571, !noalias !4572, !noundef !5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gd, i64 25
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !4573, !noalias !4574, !noundef !5
  %i.kq = call i8 @llvm.ucmp.i8.i8(i8 %i.kn, i8 %i.kp)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.al:                                            ; preds = %bb.aj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ks = load i32, ptr %i.kr, align 4, !range !285, !alias.scope !4571, !noalias !4572, !noundef !5 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  %i.ku = load i32, ptr %i.kt, align 4, !range !285, !alias.scope !4573, !noalias !4574, !noundef !5 ; 2 uses
  %i.kv = call i8 @llvm.ucmp.i8.i32(i32 %i.ks, i32 %i.ku)
  %i.kw = icmp eq i32 %i.ks, %i.ku
  br i1 %i.kw, label %bb.am, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

bb.am:                                            ; preds = %bb.al
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ky = load i32, ptr %i.kx, align 4, !alias.scope !4571, !noalias !4572, !noundef !5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.la = load i32, ptr %i.kz, align 4, !alias.scope !4573, !noalias !4574, !noundef !5
  %i.lb = call i8 @llvm.ucmp.i8.i32(i32 %i.ky, i32 %i.la)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %.sroa.0.0.i.i.i24.i = phi i8 [ %i.kk, %bb.ai ], [ %i.kq, %bb.ak ], [ %i.lb, %bb.am ], [ %i.kv, %bb.al ] ; 2 uses
  %i.lc = icmp eq i8 %.sroa.0.0.i.i.i24.i, 0
  br i1 %i.lc, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i, %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !4580, !noalias !4583, !noundef !5 ; 2 uses
  %i.lf = icmp ugt i64 %i.le, 1                   ; 2 uses
  %i.lg = load ptr, ptr %i.gc, align 8, !alias.scope !4580, !noalias !4583, !nonnull !5
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !alias.scope !4580, !noalias !4583
  %.sink11.i.i.i.i27.i = select i1 %i.lf, ptr %i.lg, ptr %i.gc
  %.sink10.i.i.i.i28.i = select i1 %i.lf, i64 %i.li, i64 %i.le ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !4585, !noalias !4588, !noundef !5 ; 2 uses
  %i.ll = icmp ugt i64 %i.lk, 1                   ; 2 uses
  %i.lm = load ptr, ptr %i.gd, align 8, !alias.scope !4585, !noalias !4588, !nonnull !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !4585, !noalias !4588
  %.sink11.i1.i.i.i29.i = select i1 %i.ll, ptr %i.lm, ptr %i.gd
  %.sink10.i2.i.i.i30.i = select i1 %i.ll, i64 %i.lo, i64 %i.lk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4590)
  call void @llvm.experimental.noalias.scope.decl(metadata !4593)
  call void @llvm.experimental.noalias.scope.decl(metadata !4595)
  call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  %..i.i.i.i.i.i31.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i30.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i28.i) ; 2 uses
  %.not.i.i.i.i.i32.i = icmp eq i64 %..i.i.i.i.i.i31.i, 0
  br i1 %.not.i.i.i.i.i32.i, label %._crit_edge.i.i.i.i.i41.i, label %.lr.ph.i.i.i.i.i33.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i33.i
  %i.lp = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i34.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i40.i = icmp eq i64 %i.lp, %..i.i.i.i.i.i31.i
  br i1 %exitcond.not.i.i.i.i.i40.i, label %._crit_edge.i.i.i.i.i41.i, label %.lr.ph.i.i.i.i.i33.i

._crit_edge.i.i.i.i.i41.i:                        ; preds = %bb.an, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i
  %i.lq = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i28.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i30.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i

.loopexit.i.i.i.i.i39.i:                          ; preds = %.lr.ph.i.i.i.i.i33.i
  %i.lr = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i38.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i

.lr.ph.i.i.i.i.i33.i:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i, %bb.an
  %.sroa.01.019.i.i.i.i.i34.i = phi i64 [ %i.lp, %bb.an ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i26.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i27.i, i64 %.sroa.01.019.i.i.i.i.i34.i
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i29.i, i64 %.sroa.01.019.i.i.i.i.i34.i
  %.val15.i.i.i.i.i35.i = load ptr, ptr %i.ls, align 8, !alias.scope !4600, !noalias !4601, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i36.i = load ptr, ptr %i.lt, align 8, !alias.scope !4602, !noalias !4603, !nonnull !5, !noundef !5 ; 2 uses
  %i.lu = ptrtoint ptr %.val15.i.i.i.i.i35.i to i64
  %i.lv = and i64 %i.lu, 1
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr i8, ptr %.val15.i.i.i.i.i35.i, i64 %i.lw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !4604, !nonnull !5, !noundef !5
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !4604, !noundef !5 ; 2 uses
  %i.mb = ptrtoint ptr %.val16.i.i.i.i.i36.i to i64
  %i.mc = and i64 %i.mb, 1
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr i8, ptr %.val16.i.i.i.i.i36.i, i64 %i.md ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.me) ]
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !4604, !nonnull !5, !noundef !5
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !4604, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i37.i = call i64 @llvm.umin.i64(i64 %i.ma, i64 %i.mh)
  %i.mi = call i32 @memcmp(ptr nonnull %i.ly, ptr nonnull %i.mf, i64 %spec.store.select.i.i.i.i.i.i.i37.i), !noalias !4604 ; 2 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp eq i32 %i.mi, 0
  %i.ml = sub i64 %i.ma, %i.mh
  %spec.select.i.i.i.i.i.i.i38.i = select i1 %i.mk, i64 %i.ml, i64 %i.mj ; 2 uses
  %i.mm = icmp eq i64 %spec.select.i.i.i.i.i.i.i38.i, 0
  br i1 %i.mm, label %bb.an, label %.loopexit.i.i.i.i.i39.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i: ; preds = %.loopexit.i.i.i.i.i39.i, %._crit_edge.i.i.i.i.i41.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i
  %.sroa.0.0.i.i25.i = phi i8 [ %.sroa.0.0.i.i.i24.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i23.i ], [ %i.lq, %._crit_edge.i.i.i.i.i41.i ], [ %i.lr, %.loopexit.i.i.i.i.i39.i ]
  %i.mn = icmp eq i8 %.sroa.0.0.i.i25.i, -1
  %i.mo = xor i1 %i.ih, %i.mn
  %..i.i = select i1 %i.mo, ptr %i.gd, ptr %i.gc
  br label %bb.ao

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3o_.exit: ; preds = %.outer._crit_edge.thread, %bb.t, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ao:                                            ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i, %bb.w
  %.sroa.0.0.i.sink.i = phi ptr [ %i.gf, %bb.w ], [ %.sroa.0.0.ph151, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit22.i ], [ %..i.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit42.i ]
  %i.mp = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.mq = sub nuw i64 %i.mp, %i.i                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.mq, 88       ; 3 uses
  %i.mr = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0144334
  call void @llvm.assume(i1 %i.mr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph151, i64 %i.mq ; 25 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.ms, i64 88, i1 false)
  br i1 %.not, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !4605)
  call void @llvm.experimental.noalias.scope.decl(metadata !4608)
  call void @llvm.experimental.noalias.scope.decl(metadata !4610)
  call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4615)
  call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  %i.mu = load i8, ptr %i.j, align 8, !range !282, !alias.scope !4620, !noalias !4621, !noundef !5 ; 3 uses
  %14 = zext nneg i8 %i.mu to i64
  %i.mv = load i8, ptr %i.mt, align 8, !range !282, !alias.scope !4621, !noalias !4620, !noundef !5 ; 2 uses
  %15 = zext nneg i8 %i.mv to i64
  %i.mw = call i8 @llvm.scmp.i8.i64(i64 %14, i64 %15)
  %i.mx = icmp eq i8 %i.mu, %i.mv
  br i1 %i.mx, label %bb.aq, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.mu, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.my = load i8, ptr %i.m, align 1, !alias.scope !4620, !noalias !4621, !noundef !5
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.na = load i8, ptr %i.mz, align 1, !alias.scope !4621, !noalias !4620, !noundef !5
  %i.nb = call i8 @llvm.ucmp.i8.i8(i8 %i.my, i8 %i.na)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.nc = load i32, ptr %i.k, align 4, !range !285, !alias.scope !4620, !noalias !4621, !noundef !5 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.ne = load i32, ptr %i.nd, align 4, !range !285, !alias.scope !4621, !noalias !4620, !noundef !5 ; 2 uses
  %i.nf = call i8 @llvm.ucmp.i8.i32(i32 %i.nc, i32 %i.ne)
  %i.ng = icmp eq i32 %i.nc, %i.ne
  br i1 %i.ng, label %bb.at, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.nh = load i32, ptr %i.l, align 8, !alias.scope !4620, !noalias !4621, !noundef !5
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.nj = load i32, ptr %i.ni, align 8, !alias.scope !4621, !noalias !4620, !noundef !5
  %i.nk = call i8 @llvm.ucmp.i8.i32(i32 %i.nh, i32 %i.nj)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.sroa.0.0.i.i.i39 = phi i8 [ %i.mw, %bb.ap ], [ %i.nb, %bb.ar ], [ %i.nk, %bb.at ], [ %i.nf, %bb.as ] ; 2 uses
  %i.nl = icmp eq i8 %.sroa.0.0.i.i.i39, 0
  br i1 %i.nl, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  call void @llvm.experimental.noalias.scope.decl(metadata !4625)
  %i.nm = load i64, ptr %i.n, align 8, !alias.scope !4627, !noalias !4630, !noundef !5 ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, 1                   ; 2 uses
  %i.no = load ptr, ptr %.sroa.028.0.ph148, align 8, !alias.scope !4627, !noalias !4630, !nonnull !5
  %i.np = load i64, ptr %i.o, align 8, !alias.scope !4627, !noalias !4630
  %.sink11.i.i.i.i = select i1 %i.nn, ptr %i.no, ptr %.sroa.028.0.ph148
  %.sink10.i.i.i.i = select i1 %i.nn, i64 %i.np, i64 %i.nm ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !alias.scope !4632, !noalias !4635, !noundef !5 ; 2 uses
  %i.ns = icmp ugt i64 %i.nr, 1                   ; 2 uses
  %i.nt = load ptr, ptr %i.ms, align 8, !alias.scope !4632, !noalias !4635, !nonnull !5
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !alias.scope !4632, !noalias !4635
  %.sink11.i1.i.i.i = select i1 %i.ns, ptr %i.nt, ptr %i.ms
  %.sink10.i2.i.i.i = select i1 %i.ns, i64 %i.nv, i64 %i.nr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4637)
  call void @llvm.experimental.noalias.scope.decl(metadata !4640)
  call void @llvm.experimental.noalias.scope.decl(metadata !4642)
  call void @llvm.experimental.noalias.scope.decl(metadata !4645)
  %..i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nw = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.nw, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %i.nx = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.ny = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %bb.au
  %.sroa.01.019.i.i.i.i.i = phi i64 [ %i.nw, %bb.au ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i, i64 %.sroa.01.019.i.i.i.i.i
  %.val15.i.i.i.i.i = load ptr, ptr %i.nz, align 8, !alias.scope !4647, !noalias !4648, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i = load ptr, ptr %i.oa, align 8, !alias.scope !4649, !noalias !4650, !nonnull !5, !noundef !5 ; 2 uses
  %i.ob = ptrtoint ptr %.val15.i.i.i.i.i to i64
  %i.oc = and i64 %i.ob, 1
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr i8, ptr %.val15.i.i.i.i.i, i64 %i.od ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !4651, !nonnull !5, !noundef !5
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !noalias !4651, !noundef !5 ; 2 uses
  %i.oi = ptrtoint ptr %.val16.i.i.i.i.i to i64
  %i.oj = and i64 %i.oi, 1
  %i.ok = sub nsw i64 0, %i.oj
  %i.ol = getelementptr i8, ptr %.val16.i.i.i.i.i, i64 %i.ok ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ol) ]
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !4651, !nonnull !5, !noundef !5
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !noalias !4651, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oh, i64 %i.oo)
  %i.op = call i32 @memcmp(ptr nonnull %i.of, ptr nonnull %i.om, i64 %spec.store.select.i.i.i.i.i.i.i), !noalias !4651 ; 2 uses
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp eq i32 %i.op, 0
  %i.os = sub i64 %i.oh, %i.oo
  %spec.select.i.i.i.i.i.i.i = select i1 %i.or, i64 %i.os, i64 %i.oq ; 2 uses
  %i.ot = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.ot, label %bb.au, label %.loopexit.i.i.i.i.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %._crit_edge.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i39, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.nx, %._crit_edge.i.i.i.i.i ], [ %i.ny, %.loopexit.i.i.i.i.i ]
  %i.ou = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.ou, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.ao, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4652)
  call void @llvm.experimental.noalias.scope.decl(metadata !4655)
  %.not105 = icmp samesign ult i64 %3, %.sroa.16.0144334
  br i1 %.not105, label %bb.ax, label %bb.aw, !prof !1390

bb.aw:                                            ; preds = %bb.av
  %i.ov = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0144334 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.be, %bb.aw
  %.sroa.19.0.i = phi ptr [ %i.ov, %bb.aw ], [ %i.rn, %bb.be ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.aw ], [ %.sroa.11.1.lcssa.i, %bb.be ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph151, %bb.aw ], [ %i.rp, %bb.be ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i37, %bb.aw ], [ %.sroa.16.0144334, %bb.be ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.0.0.i40 ; 2 uses
  %i.pd = icmp ult ptr %.sroa.5.0.i, %i.pc
  br i1 %i.pd, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45, %bb.ay
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.ay ], [ %i.rh, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.ay ], [ %i.rk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.ay ], [ %i.rl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ] ; 2 uses
  %i.pe = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0144334
  br i1 %i.pe, label %bb.bf, label %bb.be

.lr.ph.i42:                                       ; preds = %bb.ay, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45
  %.sroa.5.112.i = phi ptr [ %i.rl, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ], [ %.sroa.5.0.i, %bb.ay ] ; 10 uses
  %.sroa.11.111.i = phi i64 [ %i.rk, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ], [ %.sroa.11.0.i, %bb.ay ] ; 2 uses
  %.sroa.19.110.i = phi ptr [ %i.rh, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45 ], [ %.sroa.19.0.i, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4657)
  call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  call void @llvm.experimental.noalias.scope.decl(metadata !4662)
  call void @llvm.experimental.noalias.scope.decl(metadata !4665)
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4667)
  call void @llvm.experimental.noalias.scope.decl(metadata !4670)
  %i.pg = load i8, ptr %i.pf, align 4, !range !282, !alias.scope !4672, !noalias !4673, !noundef !5 ; 3 uses
  %16 = zext nneg i8 %i.pg to i64
  %i.ph = load i8, ptr %i.ow, align 8, !range !282, !alias.scope !4674, !noalias !4675, !noundef !5 ; 2 uses
  %17 = zext nneg i8 %i.ph to i64
  %i.pi = call i8 @llvm.scmp.i8.i64(i64 %16, i64 %17)
  %i.pj = icmp eq i8 %i.pg, %i.ph
  br i1 %i.pj, label %bb.az, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.az:                                            ; preds = %.lr.ph.i42
  switch i8 %i.pg, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47 [
    i8 1, label %bb.ba
    i8 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 25
  %i.pl = load i8, ptr %i.pk, align 1, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.pm = load i8, ptr %i.oz, align 1, !alias.scope !4674, !noalias !4675, !noundef !5
  %i.pn = call i8 @llvm.ucmp.i8.i8(i8 %i.pl, i8 %i.pm)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.bb:                                            ; preds = %bb.az
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 28
  %i.pp = load i32, ptr %i.po, align 4, !range !285, !alias.scope !4672, !noalias !4673, !noundef !5 ; 2 uses
  %i.pq = load i32, ptr %i.ox, align 4, !range !285, !alias.scope !4674, !noalias !4675, !noundef !5 ; 2 uses
  %i.pr = call i8 @llvm.ucmp.i8.i32(i32 %i.pp, i32 %i.pq)
  %i.ps = icmp eq i32 %i.pp, %i.pq
  br i1 %i.ps, label %bb.bc, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

bb.bc:                                            ; preds = %bb.bb
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 32
  %i.pu = load i32, ptr %i.pt, align 4, !alias.scope !4672, !noalias !4673, !noundef !5
  %i.pv = load i32, ptr %i.oy, align 8, !alias.scope !4674, !noalias !4675, !noundef !5
  %i.pw = call i8 @llvm.ucmp.i8.i32(i32 %i.pu, i32 %i.pv)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43: ; preds = %bb.bc, %bb.bb, %bb.ba, %.lr.ph.i42
  %.sroa.0.0.i.i.i.i44 = phi i8 [ %i.pi, %.lr.ph.i42 ], [ %i.pn, %bb.ba ], [ %i.pw, %bb.bc ], [ %i.pr, %bb.bb ] ; 2 uses
  %i.px = icmp eq i8 %.sroa.0.0.i.i.i.i44, 0
  br i1 %i.px, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 16
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !4681, !noalias !4684, !noundef !5 ; 2 uses
  %i.qa = icmp ugt i64 %i.pz, 1                   ; 2 uses
  %i.qb = load ptr, ptr %.sroa.5.112.i, align 8, !alias.scope !4681, !noalias !4684, !nonnull !5
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !alias.scope !4681, !noalias !4684
  %.sink11.i.i.i.i.i48 = select i1 %i.qa, ptr %i.qb, ptr %.sroa.5.112.i
  %.sink10.i.i.i.i.i49 = select i1 %i.qa, i64 %i.qd, i64 %i.pz ; 2 uses
  %i.qe = load i64, ptr %i.pa, align 8, !alias.scope !4686, !noalias !4689, !noundef !5 ; 2 uses
  %i.qf = icmp ugt i64 %i.qe, 1                   ; 2 uses
  %i.qg = load ptr, ptr %i.ms, align 8, !alias.scope !4686, !noalias !4689, !nonnull !5
  %i.qh = load i64, ptr %i.pb, align 8, !alias.scope !4686, !noalias !4689
  %.sink11.i1.i.i.i.i50 = select i1 %i.qf, ptr %i.qg, ptr %i.ms
  %.sink10.i2.i.i.i.i51 = select i1 %i.qf, i64 %i.qh, i64 %i.qe ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  call void @llvm.experimental.noalias.scope.decl(metadata !4694)
  call void @llvm.experimental.noalias.scope.decl(metadata !4696)
  call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  %..i.i.i.i.i.i.i52 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i51, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i49) ; 2 uses
  %.not.i.i.i.i.i.i53 = icmp eq i64 %..i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i.i.i53, label %._crit_edge.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i54

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i54
  %i.qi = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i61 = icmp eq i64 %i.qi, %..i.i.i.i.i.i.i52
  br i1 %exitcond.not.i.i.i.i.i.i61, label %._crit_edge.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i54

._crit_edge.i.i.i.i.i.i62:                        ; preds = %bb.bd, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47
  %i.qj = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i49, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i51)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45

.loopexit.i.i.i.i.i.i60:                          ; preds = %.lr.ph.i.i.i.i.i.i54
  %i.qk = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i59, i64 0)
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45

.lr.ph.i.i.i.i.i.i54:                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47, %bb.bd
  %.sroa.01.019.i.i.i.i.i.i55 = phi i64 [ %i.qi, %bb.bd ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i47 ] ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i48, i64 %.sroa.01.019.i.i.i.i.i.i55
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i50, i64 %.sroa.01.019.i.i.i.i.i.i55
  %.val15.i.i.i.i.i.i56 = load ptr, ptr %i.ql, align 8, !alias.scope !4701, !noalias !4702, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i57 = load ptr, ptr %i.qm, align 8, !alias.scope !4703, !noalias !4704, !nonnull !5, !noundef !5 ; 2 uses
  %i.qn = ptrtoint ptr %.val15.i.i.i.i.i.i56 to i64
  %i.qo = and i64 %i.qn, 1
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr i8, ptr %.val15.i.i.i.i.i.i56, i64 %i.qp ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qq) ]
  %i.qr = load ptr, ptr %i.qq, align 8, !noalias !4705, !nonnull !5, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !4705, !noundef !5 ; 2 uses
  %i.qu = ptrtoint ptr %.val16.i.i.i.i.i.i57 to i64
  %i.qv = and i64 %i.qu, 1
  %i.qw = sub nsw i64 0, %i.qv
  %i.qx = getelementptr i8, ptr %.val16.i.i.i.i.i.i57, i64 %i.qw ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qx) ]
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !4705, !nonnull !5, !noundef !5
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !noalias !4705, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i58 = call i64 @llvm.umin.i64(i64 %i.qt, i64 %i.ra)
  %i.rb = call i32 @memcmp(ptr nonnull %i.qr, ptr nonnull %i.qy, i64 %spec.store.select.i.i.i.i.i.i.i.i58), !noalias !4705 ; 2 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = icmp eq i32 %i.rb, 0
  %i.re = sub i64 %i.qt, %i.ra
  %spec.select.i.i.i.i.i.i.i.i59 = select i1 %i.rd, i64 %i.re, i64 %i.rc ; 2 uses
  %i.rf = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i59, 0
  br i1 %i.rf, label %bb.bd, label %.loopexit.i.i.i.i.i.i60

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit.i45: ; preds = %.loopexit.i.i.i.i.i.i60, %._crit_edge.i.i.i.i.i.i62, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43
  %.sroa.0.0.i.i.i46 = phi i8 [ %.sroa.0.0.i.i.i.i44, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i43 ], [ %i.qj, %._crit_edge.i.i.i.i.i.i62 ], [ %i.qk, %.loopexit.i.i.i.i.i.i60 ]
  %i.rg = icmp eq i8 %.sroa.0.0.i.i.i46, -1       ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %.sroa.19.110.i, i64 -88 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.rg, ptr %2, ptr %i.rh
  %i.ri = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.111.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ri, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.112.i, i64 88, i1 false), !alias.scope !4706, !noalias !4707
  %i.rj = zext i1 %i.rg to i64
  %i.rk = add i64 %.sroa.11.111.i, %i.rj          ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i, i64 88 ; 3 uses
  %i.rm = icmp ult ptr %i.rl, %i.pc
  br i1 %i.rm, label %.lr.ph.i42, label %._crit_edge.i

bb.be:                                            ; preds = %._crit_edge.i
  %i.rn = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -88 ; 2 uses
  %i.ro = getelementptr inbounds nuw [88 x i8], ptr %i.rn, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ro, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i, i64 88, i1 false), !alias.scope !4706, !noalias !4710
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 88
  br label %bb.ay

bb.bf:                                            ; preds = %._crit_edge.i
  %i.rq = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph151, ptr nonnull align 8 %2, i64 %i.rq, i1 false), !alias.scope !4706
  %i.rr = sub i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i ; 4 uses
  %.not19.i = icmp eq i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i
  br i1 %.not19.i, label %.loopexit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bf
  %i.rs = getelementptr [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.rr, 1
  %i.rt = icmp eq i64 %.sroa.16.0144334, %.neg
  br i1 %i.rt, label %.epil.preheader, label %.lr.ph17.i.new

.lr.ph17.i.new:                                   ; preds = %.lr.ph17.i
  %unroll_iter = and i64 %i.rr, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph17.i.new
  %.sroa.06.015.i = phi i64 [ 0, %.lr.ph17.i.new ], [ %i.rx, %bb.bg ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph17.i.new ], [ %niter.next.1, %bb.bg ]
  %i.ru = xor i64 %.sroa.06.015.i, -1
  %i.rv = getelementptr [88 x i8], ptr %i.ov, i64 %i.ru
  %i.rw = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.rw, ptr noundef nonnull align 8 dereferenceable(88) %i.rv, i64 88, i1 false), !alias.scope !4706
  %i.rx = add nuw i64 %.sroa.06.015.i, 2          ; 2 uses
  %i.ry = xor i64 %.sroa.06.015.i, -2
  %i.rz = getelementptr [88 x i8], ptr %i.ov, i64 %i.ry
  %i.sa = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i
  %i.sb = getelementptr i8, ptr %i.sa, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.sb, ptr noundef nonnull align 8 dereferenceable(88) %i.rz, i64 88, i1 false), !alias.scope !4706
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bg

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph17.i
  %.sroa.06.015.i.epil.init = phi i64 [ 0, %.lr.ph17.i ], [ %i.rx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod407 = trunc i64 %i.rr to i1
  call void @llvm.assume(i1 %lcmp.mod407)
  %i.sc = xor i64 %.sroa.06.015.i.epil.init, -1
  %i.sd = getelementptr [88 x i8], ptr %i.ov, i64 %i.sc
  %i.se = getelementptr [88 x i8], ptr %i.rs, i64 %.sroa.06.015.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.se, ptr noundef nonnull align 8 dereferenceable(88) %i.sd, i64 88, i1 false), !alias.scope !4706
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.bf
  %i.sf = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.sf, label %.thread, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %.not.i63 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0144334
  br i1 %.not.i63, label %bb.bi, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit, !prof !21

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #42, !noalias !4713
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport12split_at_mutCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.bh
  %i.sg = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph151) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB31_(ptr noalias nofree noundef nonnull align 8 %i.sg, i64 noundef %i.rr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.sh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.sh, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0B1R_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !4717)
  call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %.not106 = icmp samesign ult i64 %3, %.sroa.16.0144334
  br i1 %.not106, label %bb.bk, label %bb.bj, !prof !1390

bb.bj:                                            ; preds = %.thread
  %i.si = getelementptr [88 x i8], ptr %2, i64 %.sroa.16.0144334 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ms, i64 28
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.so = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.bl:                                            ; preds = %bb.br, %bb.bj
  %.sroa.19.0.i66 = phi ptr [ %i.si, %bb.bj ], [ %i.va, %bb.br ] ; 2 uses
  %.sroa.11.0.i67 = phi i64 [ 0, %bb.bj ], [ %i.vc, %bb.br ] ; 2 uses
  %.sroa.5.0.i68 = phi ptr [ %.sroa.0.0.ph151, %bb.bj ], [ %i.vd, %bb.br ] ; 3 uses
  %.sroa.0.0.i69 = phi i64 [ %.sroa.0.0.i37, %bb.bj ], [ %.sroa.16.0144334, %bb.br ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.0.0.i69 ; 2 uses
  %i.sq = icmp ult ptr %.sroa.5.0.i68, %i.sp
  br i1 %i.sq, label %.lr.ph.i78, label %._crit_edge.i70

._crit_edge.i70:                                  ; preds = %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i, %bb.bl
  %.sroa.19.1.lcssa.i71 = phi ptr [ %.sroa.19.0.i66, %bb.bl ], [ %i.uu, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ]
  %.sroa.11.1.lcssa.i72 = phi i64 [ %.sroa.11.0.i67, %bb.bl ], [ %i.ux, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i73 = phi ptr [ %.sroa.5.0.i68, %bb.bl ], [ %i.uy, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ] ; 2 uses
  %i.sr = icmp eq i64 %.sroa.0.0.i69, %.sroa.16.0144334
  br i1 %i.sr, label %bb.bs, label %bb.br

.lr.ph.i78:                                       ; preds = %bb.bl, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i
  %.sroa.5.112.i79 = phi ptr [ %i.uy, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ], [ %.sroa.5.0.i68, %bb.bl ] ; 10 uses
  %.sroa.11.111.i80 = phi i64 [ %i.ux, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ], [ %.sroa.11.0.i67, %bb.bl ] ; 2 uses
  %.sroa.19.110.i81 = phi ptr [ %i.uu, %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i ], [ %.sroa.19.0.i66, %bb.bl ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  call void @llvm.experimental.noalias.scope.decl(metadata !4725)
  call void @llvm.experimental.noalias.scope.decl(metadata !4727)
  call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  call void @llvm.experimental.noalias.scope.decl(metadata !4732)
  call void @llvm.experimental.noalias.scope.decl(metadata !4735)
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4737)
  call void @llvm.experimental.noalias.scope.decl(metadata !4740)
  %i.st = load i8, ptr %i.sj, align 4, !range !282, !alias.scope !4742, !noalias !4743, !noundef !5 ; 3 uses
  %18 = zext nneg i8 %i.st to i64
  %i.su = load i8, ptr %i.ss, align 4, !range !282, !alias.scope !4744, !noalias !4745, !noundef !5 ; 2 uses
  %19 = zext nneg i8 %i.su to i64
  %i.sv = call i8 @llvm.scmp.i8.i64(i64 %18, i64 %19)
  %i.sw = icmp eq i8 %i.st, %i.su
  br i1 %i.sw, label %bb.bm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bm:                                            ; preds = %.lr.ph.i78
  switch i8 %i.st, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86 [
    i8 1, label %bb.bn
    i8 4, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.sx = load i8, ptr %i.sm, align 1, !alias.scope !4742, !noalias !4743, !noundef !5
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 25
  %i.sz = load i8, ptr %i.sy, align 1, !alias.scope !4744, !noalias !4745, !noundef !5
  %i.ta = call i8 @llvm.ucmp.i8.i8(i8 %i.sx, i8 %i.sz)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bo:                                            ; preds = %bb.bm
  %i.tb = load i32, ptr %i.sk, align 4, !range !285, !alias.scope !4742, !noalias !4743, !noundef !5 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 28
  %i.td = load i32, ptr %i.tc, align 4, !range !285, !alias.scope !4744, !noalias !4745, !noundef !5 ; 2 uses
  %i.te = call i8 @llvm.ucmp.i8.i32(i32 %i.tb, i32 %i.td)
  %i.tf = icmp eq i32 %i.tb, %i.td
  br i1 %i.tf, label %bb.bp, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

bb.bp:                                            ; preds = %bb.bo
  %i.tg = load i32, ptr %i.sl, align 4, !alias.scope !4742, !noalias !4743, !noundef !5
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 32
  %i.ti = load i32, ptr %i.th, align 4, !alias.scope !4744, !noalias !4745, !noundef !5
  %i.tj = call i8 @llvm.ucmp.i8.i32(i32 %i.tg, i32 %i.ti)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82: ; preds = %bb.bp, %bb.bo, %bb.bn, %.lr.ph.i78
  %.sroa.0.0.i.i.i.i.i83 = phi i8 [ %i.sv, %.lr.ph.i78 ], [ %i.ta, %bb.bn ], [ %i.tj, %bb.bp ], [ %i.te, %bb.bo ] ; 2 uses
  %i.tk = icmp eq i8 %.sroa.0.0.i.i.i.i.i83, 0
  br i1 %i.tk, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86, label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82, %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !4746)
  call void @llvm.experimental.noalias.scope.decl(metadata !4749)
  %i.tl = load i64, ptr %i.sn, align 8, !alias.scope !4751, !noalias !4754, !noundef !5 ; 2 uses
  %i.tm = icmp ugt i64 %i.tl, 1                   ; 2 uses
  %i.tn = load ptr, ptr %i.ms, align 8, !alias.scope !4751, !noalias !4754, !nonnull !5
  %i.to = load i64, ptr %i.so, align 8, !alias.scope !4751, !noalias !4754
  %.sink11.i.i.i.i.i.i87 = select i1 %i.tm, ptr %i.tn, ptr %i.ms
  %.sink10.i.i.i.i.i.i88 = select i1 %i.tm, i64 %i.to, i64 %i.tl ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !4756, !noalias !4759, !noundef !5 ; 2 uses
  %i.tr = icmp ugt i64 %i.tq, 1                   ; 2 uses
  %i.ts = load ptr, ptr %.sroa.5.112.i79, align 8, !alias.scope !4756, !noalias !4759, !nonnull !5
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !alias.scope !4756, !noalias !4759
  %.sink11.i1.i.i.i.i.i89 = select i1 %i.tr, ptr %i.ts, ptr %.sroa.5.112.i79
  %.sink10.i2.i.i.i.i.i90 = select i1 %i.tr, i64 %i.tu, i64 %i.tq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4761)
  call void @llvm.experimental.noalias.scope.decl(metadata !4764)
  call void @llvm.experimental.noalias.scope.decl(metadata !4766)
  call void @llvm.experimental.noalias.scope.decl(metadata !4769)
  %..i.i.i.i.i.i.i.i91 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i90, i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i88) ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq i64 %..i.i.i.i.i.i.i.i91, 0
  br i1 %.not.i.i.i.i.i.i.i92, label %._crit_edge.i.i.i.i.i.i.i101, label %.lr.ph.i.i.i.i.i.i.i93

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i93
  %i.tv = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i94, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.tv, %..i.i.i.i.i.i.i.i91
  br i1 %exitcond.not.i.i.i.i.i.i.i100, label %._crit_edge.i.i.i.i.i.i.i101, label %.lr.ph.i.i.i.i.i.i.i93

._crit_edge.i.i.i.i.i.i.i101:                     ; preds = %bb.bq, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86
  %i.tw = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.sink10.i.i.i.i.i.i88, i64 range(i64 0, 1152921504606846976) %.sink10.i2.i.i.i.i.i90)
  br label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i

.loopexit.i.i.i.i.i.i.i99:                        ; preds = %.lr.ph.i.i.i.i.i.i.i93
  %i.tx = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i98, i64 0)
  br label %_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i

.lr.ph.i.i.i.i.i.i.i93:                           ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86, %bb.bq
  %.sroa.01.019.i.i.i.i.i.i.i94 = phi i64 [ %i.tv, %bb.bq ], [ 0, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i.i.i86 ] ; 3 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i.i.i.i.i87, i64 %.sroa.01.019.i.i.i.i.i.i.i94
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i1.i.i.i.i.i89, i64 %.sroa.01.019.i.i.i.i.i.i.i94
  %.val15.i.i.i.i.i.i.i95 = load ptr, ptr %i.ty, align 8, !alias.scope !4771, !noalias !4772, !nonnull !5, !noundef !5 ; 2 uses
  %.val16.i.i.i.i.i.i.i96 = load ptr, ptr %i.tz, align 8, !alias.scope !4773, !noalias !4774, !nonnull !5, !noundef !5 ; 2 uses
  %i.ua = ptrtoint ptr %.val15.i.i.i.i.i.i.i95 to i64
  %i.ub = and i64 %i.ua, 1
  %i.uc = sub nsw i64 0, %i.ub
  %i.ud = getelementptr i8, ptr %.val15.i.i.i.i.i.i.i95, i64 %i.uc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ud) ]
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !4775, !nonnull !5, !noundef !5
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.ug = load i64, ptr %i.uf, align 8, !noalias !4775, !noundef !5 ; 2 uses
  %i.uh = ptrtoint ptr %.val16.i.i.i.i.i.i.i96 to i64
  %i.ui = and i64 %i.uh, 1
  %i.uj = sub nsw i64 0, %i.ui
  %i.uk = getelementptr i8, ptr %.val16.i.i.i.i.i.i.i96, i64 %i.uj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uk) ]
  %i.ul = load ptr, ptr %i.uk, align 8, !noalias !4775, !nonnull !5, !noundef !5
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.un = load i64, ptr %i.um, align 8, !noalias !4775, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i97 = call i64 @llvm.umin.i64(i64 %i.ug, i64 %i.un)
  %i.uo = call i32 @memcmp(ptr nonnull %i.ue, ptr nonnull %i.ul, i64 %spec.store.select.i.i.i.i.i.i.i.i.i97), !noalias !4775 ; 2 uses
  %i.up = sext i32 %i.uo to i64
  %i.uq = icmp eq i32 %i.uo, 0
  %i.ur = sub i64 %i.ug, %i.un
  %spec.select.i.i.i.i.i.i.i.i.i98 = select i1 %i.uq, i64 %i.ur, i64 %i.up ; 2 uses
  %i.us = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i98, 0
  br i1 %i.us, label %bb.bq, label %.loopexit.i.i.i.i.i.i.i99

_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0B33_.exit.i: ; preds = %.loopexit.i.i.i.i.i.i.i99, %._crit_edge.i.i.i.i.i.i.i101, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82
  %.sroa.0.0.i.i.i.i84 = phi i8 [ %.sroa.0.0.i.i.i.i.i83, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i.i.i82 ], [ %i.tw, %._crit_edge.i.i.i.i.i.i.i101 ], [ %i.tx, %.loopexit.i.i.i.i.i.i.i99 ]
  %i.ut = icmp ne i8 %.sroa.0.0.i.i.i.i84, -1     ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %.sroa.19.110.i81, i64 -88 ; 3 uses
  %.sroa.01.0.i.i85 = select i1 %i.ut, ptr %2, ptr %i.uu
  %i.uv = getelementptr inbounds nuw [88 x i8], ptr %.sroa.01.0.i.i85, i64 %.sroa.11.111.i80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.uv, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.112.i79, i64 88, i1 false), !alias.scope !4776, !noalias !4777
  %i.uw = zext i1 %i.ut to i64
  %i.ux = add i64 %.sroa.11.111.i80, %i.uw        ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.5.112.i79, i64 88 ; 3 uses
  %i.uz = icmp ult ptr %i.uy, %i.sp
  br i1 %i.uz, label %.lr.ph.i78, label %._crit_edge.i70

bb.br:                                            ; preds = %._crit_edge.i70
  %i.va = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i71, i64 -88
  %i.vb = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vb, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.1.lcssa.i73, i64 88, i1 false), !alias.scope !4776, !noalias !4780
  %i.vc = add i64 %.sroa.11.1.lcssa.i72, 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i73, i64 88
  br label %bb.bl

bb.bs:                                            ; preds = %._crit_edge.i70
  %i.ve = mul nuw nsw i64 %.sroa.11.1.lcssa.i72, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph151, ptr nonnull align 8 %2, i64 %i.ve, i1 false), !alias.scope !4776
  %i.vf = sub i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i72 ; 6 uses
  %.not19.i74 = icmp eq i64 %.sroa.16.0144334, %.sroa.11.1.lcssa.i72
  br i1 %.not19.i74, label %.outer._crit_edge.thread, label %.lr.ph17.i75

.lr.ph17.i75:                                     ; preds = %bb.bs
  %i.vg = getelementptr [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i72 ; 3 uses
  %.neg420 = add i64 %.sroa.11.1.lcssa.i72, 1
  %xtraiter415 = and i64 %i.vf, 1
  %i.vh = icmp eq i64 %.sroa.16.0144334, %.neg420
  br i1 %i.vh, label %.epil.preheader408, label %.lr.ph17.i75.new

.lr.ph17.i75.new:                                 ; preds = %.lr.ph17.i75
  %unroll_iter418 = and i64 %i.vf, -2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph17.i75.new
  %.sroa.06.015.i76 = phi i64 [ 0, %.lr.ph17.i75.new ], [ %i.vl, %bb.bt ] ; 5 uses
  %niter419 = phi i64 [ 0, %.lr.ph17.i75.new ], [ %niter419.next.1, %bb.bt ]
  %i.vi = xor i64 %.sroa.06.015.i76, -1
  %i.vj = getelementptr [88 x i8], ptr %i.si, i64 %i.vi
  %i.vk = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vk, ptr noundef nonnull align 8 dereferenceable(88) %i.vj, i64 88, i1 false), !alias.scope !4776
  %i.vl = add nuw i64 %.sroa.06.015.i76, 2        ; 2 uses
  %i.vm = xor i64 %.sroa.06.015.i76, -2
  %i.vn = getelementptr [88 x i8], ptr %i.si, i64 %i.vm
  %i.vo = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76
  %i.vp = getelementptr i8, ptr %i.vo, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vp, ptr noundef nonnull align 8 dereferenceable(88) %i.vn, i64 88, i1 false), !alias.scope !4776
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1 = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit.unr-lcssa, label %bb.bt

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit.unr-lcssa: ; preds = %bb.bt
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit, label %.epil.preheader408

.epil.preheader408:                               ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit.unr-lcssa, %.lr.ph17.i75
  %.sroa.06.015.i76.epil.init = phi i64 [ 0, %.lr.ph17.i75 ], [ %i.vl, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i64 %i.vf to i1
  call void @llvm.assume(i1 %lcmp.mod417)
  %i.vq = xor i64 %.sroa.06.015.i76.epil.init, -1
  %i.vr = getelementptr [88 x i8], ptr %i.si, i64 %i.vq
  %i.vs = getelementptr [88 x i8], ptr %i.vg, i64 %.sroa.06.015.i76.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.vs, ptr noundef nonnull align 8 dereferenceable(88) %i.vr, i64 88, i1 false), !alias.scope !4776
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit.unr-lcssa, %.epil.preheader408
  %i.vt = icmp ugt i64 %.sroa.11.1.lcssa.i72, %.sroa.16.0144334
  br i1 %i.vt, label %bb.bu, label %.outer, !prof !21

.outer._crit_edge.thread:                         ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0EB3o_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit
  %i.vu = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.0.ph151, i64 %.sroa.11.1.lcssa.i72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.vv = icmp ult i64 %i.vf, 33
  br i1 %i.vv, label %.outer._crit_edge, label %.lr.ph

bb.bu:                                            ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_path12qualify_paths_0E0E0EB3v_.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i72, i64 noundef %.sroa.16.0144334, i64 noundef %.sroa.16.0144334, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #42
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11RecordFieldNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10sort_items12sort_by_nameB15_E0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
end_hunk_4
