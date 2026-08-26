Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.06?download=true
inline.NumInlined: 1194
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyB1b_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3j_:.lr.ph.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !232, !noundef !5
  %.val5.i6 = load ptr, ptr %i.ak, align 8
  %i.as = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.val4.i5, ptr %.val5.i6) #35 ; 3 uses
  %.val2.i7 = load ptr, ptr %i.ar, align 8, !nonnull !5, !align !232, !noundef !5
  %.val3.i8 = load ptr, ptr %i.an, align 8
  %i.at = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.val2.i7, ptr %.val3.i8) #35 ; 3 uses
  %i.au = select i1 %i.as, ptr %i.ap, ptr %i.ak, !unpredictable !5
  %i.av = select i1 %i.at, ptr %i.an, ptr %i.ar, !unpredictable !5
  %i.aw = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !5
  %i.ax = select i1 %i.as, ptr %i.ak, ptr %i.aw, !unpredictable !5 ; 3 uses
  %i.ay = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !5
  %i.az = select i1 %i.at, ptr %i.ar, ptr %i.ay, !unpredictable !5 ; 3 uses
  %.val.i9 = load ptr, ptr %i.az, align 8, !nonnull !5, !align !232, !noundef !5
  %.val1.i10 = load ptr, ptr %i.ax, align 8
  %i.ba = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.val.i9, ptr %.val1.i10) #35 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.az, ptr %i.ax, !unpredictable !5
  %i.bc = select i1 %i.ba, ptr %i.ax, ptr %i.az, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.bd = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.be = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bf = getelementptr i8, ptr %2, i64 112       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.011.0.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.06.0.val.i = load ptr, ptr %2, align 8, !alias.scope !245
  %i.bh = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.011.0.val.i, ptr %.sroa.06.0.val.i) #35, !noalias !245 ; 3 uses
  %..i21.i = select i1 %i.bh, ptr %i.ad, ptr %2
  %i.bi = xor i1 %i.bh, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !248
  %i.bj = zext i1 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bj ; 3 uses
  %i.bl = zext i1 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load ptr, ptr %i.bf, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.015.0.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !245
  %i.bo = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.017.0.val.i, ptr %.sroa.015.0.val.i) #35, !noalias !245 ; 3 uses
  %..i.i = select i1 %i.bo, ptr %i.ab, ptr %i.bf
  %i.bp = xor i1 %i.bo, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !252
  %.neg.i.i = sext i1 %i.bp to i64
  %i.bq = getelementptr [16 x i8], ptr %i.bf, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.bo to i64
  %i.br = getelementptr [16 x i8], ptr %i.ab, i64 %.neg13.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load ptr, ptr %i.bk, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.06.0.val.i.1 = load ptr, ptr %i.bm, align 8, !alias.scope !245
  %i.bt = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.011.0.val.i.1, ptr %.sroa.06.0.val.i.1) #35, !noalias !245 ; 3 uses
  %..i21.i.1 = select i1 %i.bt, ptr %i.bk, ptr %i.bm
  %i.bu = xor i1 %i.bt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.1, i64 16, i1 false), !noalias !248
  %i.bv = zext i1 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bv ; 3 uses
  %i.bx = zext i1 %i.bu to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load ptr, ptr %i.bq, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.015.0.val.i.1 = load ptr, ptr %i.br, align 8, !alias.scope !245
  %i.ca = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.017.0.val.i.1, ptr %.sroa.015.0.val.i.1) #35, !noalias !245 ; 3 uses
  %..i.i.1 = select i1 %i.ca, ptr %i.br, ptr %i.bq
  %i.cb = xor i1 %i.ca, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !252
  %.neg.i.i.1 = sext i1 %i.cb to i64
  %i.cc = getelementptr [16 x i8], ptr %i.bq, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.ca to i64
  %i.cd = getelementptr [16 x i8], ptr %i.br, i64 %.neg13.i.i.1 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.bw, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.by, align 8, !alias.scope !245
  %i.cf = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.011.0.val.i.2, ptr %.sroa.06.0.val.i.2) #35, !noalias !245 ; 3 uses
  %..i21.i.2 = select i1 %i.cf, ptr %i.bw, ptr %i.by
  %i.cg = xor i1 %i.cf, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.2, i64 16, i1 false), !noalias !248
  %i.ch = zext i1 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ch ; 3 uses
  %i.cj = zext i1 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.cc, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.cd, align 8, !alias.scope !245
  %i.cm = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.017.0.val.i.2, ptr %.sroa.015.0.val.i.2) #35, !noalias !245 ; 3 uses
  %..i.i.2 = select i1 %i.cm, ptr %i.cd, ptr %i.cc
  %i.cn = xor i1 %i.cm, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !252
  %.neg.i.i.2 = sext i1 %i.cn to i64
  %i.co = getelementptr [16 x i8], ptr %i.cc, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.cm to i64
  %i.cp = getelementptr [16 x i8], ptr %i.cd, i64 %.neg13.i.i.2 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.ci, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.ck, align 8, !alias.scope !245
  %i.cr = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.011.0.val.i.3, ptr %.sroa.06.0.val.i.3) #35, !noalias !245 ; 3 uses
  %..i21.i.3 = select i1 %i.cr, ptr %i.ci, ptr %i.ck
  %i.cs = xor i1 %i.cr, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !248
  %i.ct = zext i1 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ct
  %i.cv = zext i1 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cv
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.co, align 8, !alias.scope !245, !nonnull !5, !align !232, !noundef !5
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.cp, align 8, !alias.scope !245
  %i.cx = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.017.0.val.i.3, ptr %.sroa.015.0.val.i.3) #35, !noalias !245 ; 3 uses
  %..i.i.3 = select i1 %i.cx, ptr %i.cp, ptr %i.co
  %i.cy = xor i1 %i.cx, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !252
  %.neg.i.i.3 = sext i1 %i.cy to i64
  %i.cz = getelementptr [16 x i8], ptr %i.co, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.cx to i64
  %i.da = getelementptr [16 x i8], ptr %i.cp, i64 %.neg13.i.i.3
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  %i.dd = icmp ne ptr %i.cw, %i.db
  %i.de = icmp ne ptr %i.cu, %i.dc
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !244
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyB1i_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3q_.exit, !prof !244

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36, !noalias !245
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyB1i_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3q_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %.idx = mul nuw nsw i64 %1, 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr i8, ptr %.0.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.02, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit ] ; 5 uses
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.05, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit ] ; 4 uses
  %i.j = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.05, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.pn4) #35
  br i1 %i.j, label %bb.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(88) %.pn4, i64 88, i1 false)
  %i.k = icmp eq ptr %.pn4, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %i.m, %bb.c ], [ %.pn4, %bb.b ] ; 10 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !261, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.c, align 8, !noalias !261, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !267, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !267, !noundef !5
  %i.r = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.lr.ph5
  %i.s = load ptr, ptr %i.n, align 8, !noalias !268, !nonnull !5, !noundef !5
  %i.t = load i64, ptr %i.p, align 8, !noalias !268, !noundef !5
  %i.u = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc
  %i.v = call i8 @llvm.ucmp.i8.i64(i64 %i.r, i64 %i.u)
  %i.w = icmp eq i64 %i.r, %i.u
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc4
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.y = load i8, ptr %i.d, align 8, !range !274, !alias.scope !275, !noalias !276, !noundef !5 ; 3 uses
  %i.z = load i8, ptr %i.x, align 4, !range !274, !alias.scope !276, !noalias !275, !noundef !5 ; 2 uses
  %i.aa = call i8 @llvm.ucmp.i8.i8(i8 %i.y, i8 %i.z)
  %i.ab = icmp eq i8 %i.y, %i.z
  br i1 %i.ab, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.g, align 1, !alias.scope !275, !noalias !276, !noundef !5
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -63
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !276, !noalias !275, !noundef !5
  %i.af = call i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.ae)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.e, align 4, !range !277, !alias.scope !275, !noalias !276, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -60
  %i.ai = load i32, ptr %i.ah, align 4, !range !277, !alias.scope !276, !noalias !275, !noundef !5 ; 2 uses
  %i.aj = call i8 @llvm.ucmp.i8.i32(i32 %i.ag, i32 %i.ai)
  %i.ak = icmp eq i32 %i.ag, %i.ai
  br i1 %i.ak, label %bb.h, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.f, align 8, !alias.scope !275, !noalias !276, !noundef !5
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -56
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !276, !noalias !275, !noundef !5
  %i.ao = call i8 @llvm.ucmp.i8.i32(i32 %i.al, i32 %i.an)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i8 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %i.ao, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.aq = load i64, ptr %i.h, align 8, !alias.scope !283, !noalias !286, !noundef !5 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1                   ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !alias.scope !283, !noalias !286, !nonnull !5
  %i.at = load i64, ptr %i.i, align 8, !alias.scope !283, !noalias !286
  %.sink11.i.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.ar, i64 %i.at, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -72
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !288, !noalias !291, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !288, !noalias !291, !nonnull !5
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -80
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !288, !noalias !291
  %.sink11.i1.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.m
  %.sink10.i2.i.i.i = select i1 %i.aw, i64 %i.az, i64 %i.av
  %i.ba = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc4, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.v, %.noexc4 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.ba, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.bb = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.bb, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %bb.i, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit

bb.j:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc, %.lr.ph5
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !298
  resume { ptr, i32 } %i.bc

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %.idx = mul nuw nsw i64 %1, 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr i8, ptr %.0.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.02, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit ] ; 5 uses
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.05, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit ] ; 4 uses
  %i.j = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.05, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.pn4) #35
  br i1 %i.j, label %bb.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(88) %.pn4, i64 88, i1 false)
  %i.k = icmp eq ptr %.pn4, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %i.m, %bb.c ], [ %.pn4, %bb.b ] ; 10 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !308, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.c, align 8, !noalias !308, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !314, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !314, !noundef !5
  %i.r = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.lr.ph5
  %i.s = load ptr, ptr %i.n, align 8, !noalias !315, !nonnull !5, !noundef !5
  %i.t = load i64, ptr %i.p, align 8, !noalias !315, !noundef !5
  %i.u = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc
  %i.v = call i8 @llvm.ucmp.i8.i64(i64 %i.r, i64 %i.u)
  %i.w = icmp eq i64 %i.r, %i.u
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc4
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.y = load i8, ptr %i.d, align 8, !range !274, !alias.scope !321, !noalias !322, !noundef !5 ; 3 uses
  %i.z = load i8, ptr %i.x, align 4, !range !274, !alias.scope !322, !noalias !321, !noundef !5 ; 2 uses
  %i.aa = call i8 @llvm.ucmp.i8.i8(i8 %i.y, i8 %i.z)
  %i.ab = icmp eq i8 %i.y, %i.z
  br i1 %i.ab, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.g, align 1, !alias.scope !321, !noalias !322, !noundef !5
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -63
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !322, !noalias !321, !noundef !5
  %i.af = call i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.ae)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.e, align 4, !range !277, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -60
  %i.ai = load i32, ptr %i.ah, align 4, !range !277, !alias.scope !322, !noalias !321, !noundef !5 ; 2 uses
  %i.aj = call i8 @llvm.ucmp.i8.i32(i32 %i.ag, i32 %i.ai)
  %i.ak = icmp eq i32 %i.ag, %i.ai
  br i1 %i.ak, label %bb.h, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.f, align 8, !alias.scope !321, !noalias !322, !noundef !5
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -56
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !322, !noalias !321, !noundef !5
  %i.ao = call i8 @llvm.ucmp.i8.i32(i32 %i.al, i32 %i.an)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i8 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %i.ao, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.aq = load i64, ptr %i.h, align 8, !alias.scope !328, !noalias !331, !noundef !5 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1                   ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !alias.scope !328, !noalias !331, !nonnull !5
  %i.at = load i64, ptr %i.i, align 8, !alias.scope !328, !noalias !331
  %.sink11.i.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.ar, i64 %i.at, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -72
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !333, !noalias !336, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !333, !noalias !336, !nonnull !5
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -80
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !333, !noalias !336
  %.sink11.i1.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.m
  %.sink10.i2.i.i.i = select i1 %i.aw, i64 %i.az, i64 %i.av
  %i.ba = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc4, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.v, %.noexc4 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.ba, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.bb = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.bb, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %bb.i, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit

bb.j:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc, %.lr.ph5
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !343
  resume { ptr, i32 } %i.bc

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %.idx = mul nuw nsw i64 %1, 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.02 = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr i8, ptr %.0.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit
  %.sroa.0.05 = phi ptr [ %.sroa.0.02, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit ] ; 5 uses
  %.pn4 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.05, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit ] ; 4 uses
  %i.j = call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.05, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.pn4) #35
  br i1 %i.j, label %bb.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(88) %.pn4, i64 88, i1 false)
  %i.k = icmp eq ptr %.pn4, %0
  br i1 %i.k, label %._crit_edge6, label %.lr.ph5

bb.c:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge6, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.b, %bb.c
  %.sroa.0.0.i3 = phi ptr [ %i.m, %bb.c ], [ %.pn4, %bb.b ] ; 10 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !353, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.c, align 8, !noalias !353, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !359, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !359, !noundef !5
  %i.r = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.lr.ph5
  %i.s = load ptr, ptr %i.n, align 8, !noalias !360, !nonnull !5, !noundef !5
  %i.t = load i64, ptr %i.p, align 8, !noalias !360, !noundef !5
  %i.u = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc
  %i.v = call i8 @llvm.ucmp.i8.i64(i64 %i.r, i64 %i.u)
  %i.w = icmp eq i64 %i.r, %i.u
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc4
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.y = load i8, ptr %i.d, align 8, !range !274, !alias.scope !366, !noalias !367, !noundef !5 ; 3 uses
  %i.z = load i8, ptr %i.x, align 4, !range !274, !alias.scope !367, !noalias !366, !noundef !5 ; 2 uses
  %i.aa = call i8 @llvm.ucmp.i8.i8(i8 %i.y, i8 %i.z)
  %i.ab = icmp eq i8 %i.y, %i.z
  br i1 %i.ab, label %bb.e, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.y, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.f
    i8 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.g, align 1, !alias.scope !366, !noalias !367, !noundef !5
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -63
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !367, !noalias !366, !noundef !5
  %i.af = call i8 @llvm.ucmp.i8.i8(i8 %i.ac, i8 %i.ae)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.e, align 4, !range !277, !alias.scope !366, !noalias !367, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -60
  %i.ai = load i32, ptr %i.ah, align 4, !range !277, !alias.scope !367, !noalias !366, !noundef !5 ; 2 uses
  %i.aj = call i8 @llvm.ucmp.i8.i32(i32 %i.ag, i32 %i.ai)
  %i.ak = icmp eq i32 %i.ag, %i.ai
  br i1 %i.ak, label %bb.h, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.f, align 8, !alias.scope !366, !noalias !367, !noundef !5
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -56
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !367, !noalias !366, !noundef !5
  %i.ao = call i8 @llvm.ucmp.i8.i32(i32 %i.al, i32 %i.an)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i8 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %i.ao, %bb.h ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ap, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.aq = load i64, ptr %i.h, align 8, !alias.scope !373, !noalias !376, !noundef !5 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 1                   ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !alias.scope !373, !noalias !376, !nonnull !5
  %i.at = load i64, ptr %i.i, align 8, !alias.scope !373, !noalias !376
  %.sink11.i.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.ar, i64 %i.at, i64 %i.aq
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -72
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !378, !noalias !381, !noundef !5 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 1                   ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !378, !noalias !381, !nonnull !5
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.i3, i64 -80
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !378, !noalias !381
  %.sink11.i1.i.i.i = select i1 %i.aw, ptr %i.ax, ptr %i.m
  %.sink10.i2.i.i.i = select i1 %i.aw, i64 %i.az, i64 %i.av
  %i.ba = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc4, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.v, %.noexc4 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.ba, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.bb = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.bb, label %bb.c, label %._crit_edge6

._crit_edge6:                                     ; preds = %bb.c, %bb.i, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i3, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit

bb.j:                                             ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc, %.lr.ph5
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !388
  resume { ptr, i32 } %i.bc

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit: ; preds = %bb.a, %._crit_edge6
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyB1o_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3w_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit
  %.sroa.0.07 = phi ptr [ %i.n, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.07, align 8, !nonnull !5, !align !232, !noundef !5
  %.val10.i = load ptr, ptr %i.d, align 8
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val9.i, ptr %.val10.i) #35
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %.sroa.0.07, align 8, !nonnull !5, !align !232, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !393, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge21, label %.lr.ph20

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i18, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i18 = phi ptr [ %i.k, %bb.e ], [ %i.d, %bb.d ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i18, i64 -16 ; 4 uses
  %.val8.i = load ptr, ptr %i.k, align 8
  %i.l = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %i.f, ptr %.val8.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph20
  br i1 %i.l, label %bb.e, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i18, %bb.f ] ; 2 uses
  store ptr %i.f, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !394
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !394
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit

bb.g:                                             ; preds = %.lr.ph20
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %.sroa.0.0.i18, align 8, !noalias !399
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !399
  resume { ptr, i32 } %i.m

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3i_.exit: ; preds = %.lr.ph, %._crit_edge21
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyB1o_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3w_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3i_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3i_.exit
  %.sroa.0.07 = phi ptr [ %i.n, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3i_.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.07, align 8, !nonnull !5, !align !232, !noundef !5
  %.val10.i = load ptr, ptr %i.d, align 8
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.val9.i, ptr %.val10.i) #35
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyB1a_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3i_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %.sroa.0.07, align 8, !nonnull !5, !align !232, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !393, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge21, label %.lr.ph20

bb.e:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i18, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i18 = phi ptr [ %i.k, %bb.e ], [ %i.d, %bb.d ] ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3o_:bb.a
  %i.as = xor i1 %i.am, true
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.at ; 4 uses
  %i.av = select i1 %i.ap, i64 3, i64 2
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ap, i64 2, i64 3
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ax ; 3 uses
  %i.az = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ar) #35 ; 3 uses
  %i.ba = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.au) #35 ; 3 uses
  %i.bb = select i1 %i.az, ptr %i.aw, ptr %i.ar, !unpredictable !5
  %i.bc = select i1 %i.ba, ptr %i.au, ptr %i.ay, !unpredictable !5
  %i.bd = select i1 %i.ba, ptr %i.aw, ptr %i.au, !unpredictable !5
  %i.be = select i1 %i.az, ptr %i.ar, ptr %i.bd, !unpredictable !5 ; 3 uses
  %i.bf = select i1 %i.az, ptr %i.au, ptr %i.aw, !unpredictable !5
  %i.bg = select i1 %i.ba, ptr %i.ay, ptr %i.bf, !unpredictable !5 ; 3 uses
  %i.bh = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.be) #35 ; 2 uses
  %i.bi = select i1 %i.bh, ptr %i.bg, ptr %i.be, !unpredictable !5
  %i.bj = select i1 %i.bh, ptr %i.be, ptr %i.bg, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 88, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i64 88, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f
  %i.bo = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bo, ptr noundef nonnull align 8 dereferenceable(88) %i.bn, i64 88, i1 false)
  %.val32.pre = load ptr, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val31 = phi ptr [ %.val30, %bb.e ], [ %.val32.pre, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %.sroa.626.0..sroa_idx, align 8
  %i.bp = sub nsw i64 %1, %i.f
  %i.bq = getelementptr i8, ptr %.val31, i64 8    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

.loopexit57:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit, %bb.h
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit57
  %.not.i = phi i1 [ false, %bb.g ], [ true, %.loopexit57 ]
  %i.bx = phi i64 [ 0, %bb.g ], [ 1, %.loopexit57 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !414, !noundef !5 ; 3 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.bz ; 4 uses
  %i.cc = icmp eq i64 %i.bz, 0
  %.sroa.04.0 = select i1 %i.cc, i64 %i.f, i64 %i.bp ; 2 uses
  %i.cd = icmp ult i64 %.sroa.0.0, %.sroa.04.0
  br i1 %i.cd, label %.noexc50, label %.loopexit57

bb.i:                                             ; preds = %.loopexit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = add nsw i64 %1, -1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr [88 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -88
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ce
  br label %bb.j

._crit_edge.i:                                    ; preds = %.noexc33
  %i.cj = getelementptr i8, ptr %i.cy, i64 88     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cx, i64 88
  %i.cl = and i64 %1, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.noexc33, %bb.i
  %.sroa.0.010.i = phi ptr [ %0, %bb.i ], [ %i.cq, %.noexc33 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ 0, %bb.i ], [ %i.cn, %.noexc33 ]
  %.sroa.06.08.i = phi ptr [ %2, %bb.i ], [ %i.ct, %.noexc33 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.cg, %bb.i ], [ %i.cv, %.noexc33 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.ch, %bb.i ], [ %i.cy, %.noexc33 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cf, %bb.i ], [ %i.cx, %.noexc33 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ci, %bb.i ], [ %i.cz, %.noexc33 ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.co = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.011.07.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.06.08.i) #35
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.j
  %..i21.i = select i1 %i.co, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(88) %..i21.i, i64 88, i1 false), !noalias !417
  %i.cp = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.017.05.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.015.06.i) #35
          to label %.noexc33 unwind label %.loopexit ; 3 uses

.noexc33:                                         ; preds = %.noexc
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 88 ; 2 uses
  %i.cr = xor i1 %i.co, true
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [88 x i8], ptr %.sroa.06.08.i, i64 %i.cs ; 5 uses
  %i.cu = zext i1 %i.co to i64
  %i.cv = getelementptr inbounds nuw [88 x i8], ptr %.sroa.011.07.i, i64 %i.cu ; 4 uses
  %..i.i = select i1 %i.cp, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cw = xor i1 %i.cp, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(88) %..i.i, i64 88, i1 false), !noalias !421
  %.neg.i.i = sext i1 %i.cw to i64
  %i.cx = getelementptr [88 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cp to i64
  %i.cy = getelementptr [88 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -88
  %exitcond.not.i = icmp eq i64 %i.cn, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

bb.k:                                             ; preds = %._crit_edge.i
  %i.da = icmp ult ptr %i.ct, %i.cj               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.da, ptr %i.ct, ptr %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.06.0..sroa.011.0.i, i64 88, i1 false)
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [88 x i8], ptr %i.ct, i64 %i.db
  %i.dd = xor i1 %i.da, true
  %i.de = zext i1 %i.dd to i64
  %i.df = getelementptr inbounds nuw [88 x i8], ptr %i.cv, i64 %i.de
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cv, %._crit_edge.i ], [ %i.df, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.ct, %._crit_edge.i ], [ %i.dc, %bb.k ]
  %i.dg = icmp ne ptr %.sroa.06.1.i, %i.cj
  %i.dh = icmp ne ptr %.sroa.011.1.i, %i.ck
  %or.cond.i = select i1 %i.dg, i1 true, i1 %i.dh, !prof !244
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3c_.exit, !prof !244

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %bb.j, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.di = mul nuw nsw i64 %1, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.di, i1 false), !noalias !425
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3c_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.ab, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.gz, %bb.ab ]
  resume { ptr, i32 } %.pn

.noexc50:                                         ; preds = %bb.h, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit
  %.sroa.05.063 = phi i64 [ %i.ha, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %.sroa.05.063
  %.idx = mul nuw nsw i64 %.sroa.05.063, 88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx ; 19 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dj, i64 88, i1 false)
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -88 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %.val.i40 = load ptr, ptr %.val31, align 8, !noalias !435, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i41 = load ptr, ptr %i.bq, align 8, !noalias !435, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i40, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !441, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i40, i64 16 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !noalias !441, !noundef !5
  %i.dq = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.dr = load ptr, ptr %i.dm, align 8, !noalias !442, !nonnull !5, !noundef !5
  %i.ds = load i64, ptr %i.do, align 8, !noalias !442, !noundef !5
  %i.dt = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i64(i64 %i.dq, i64 %i.dt)
  %i.dv = icmp eq i64 %i.dq, %i.dt
  br i1 %i.dv, label %bb.o, label %.noexc36

bb.o:                                             ; preds = %.noexc50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dx = getelementptr inbounds i8, ptr %i.dk, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.dy = load i8, ptr %i.dw, align 8, !range !274, !alias.scope !448, !noalias !449, !noundef !5 ; 3 uses
  %i.dz = load i8, ptr %i.dx, align 8, !range !274, !alias.scope !449, !noalias !448, !noundef !5 ; 2 uses
  %i.ea = call i8 @llvm.ucmp.i8.i8(i8 %i.dy, i8 %i.dz)
  %i.eb = icmp eq i8 %i.dy, %i.dz
  br i1 %i.eb, label %bb.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.p:                                             ; preds = %bb.o
  switch i8 %i.dy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 [
    i8 1, label %bb.q
    i8 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 25
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !448, !noalias !449, !noundef !5
  %i.ee = getelementptr inbounds i8, ptr %i.dk, i64 -63
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !449, !noalias !448, !noundef !5
  %i.eg = call i8 @llvm.ucmp.i8.i8(i8 %i.ed, i8 %i.ef)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !range !277, !alias.scope !448, !noalias !449, !noundef !5 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.dk, i64 -60
  %i.ek = load i32, ptr %i.ej, align 4, !range !277, !alias.scope !449, !noalias !448, !noundef !5 ; 2 uses
  %i.el = call i8 @llvm.ucmp.i8.i32(i32 %i.ei, i32 %i.ek)
  %i.em = icmp eq i32 %i.ei, %i.ek
  br i1 %i.em, label %bb.s, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !alias.scope !448, !noalias !449, !noundef !5
  %i.ep = getelementptr inbounds i8, ptr %i.dk, i64 -56
  %i.eq = load i32, ptr %i.ep, align 8, !alias.scope !449, !noalias !448, !noundef !5
  %i.er = call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.eq)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i.i.i44 = phi i8 [ %i.ea, %bb.o ], [ %i.eg, %bb.q ], [ %i.er, %bb.s ], [ %i.el, %bb.r ] ; 2 uses
  %i.es = icmp eq i8 %.sroa.0.0.i.i.i44, 0
  br i1 %i.es, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, label %.noexc36

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !455, !noalias !458, !noundef !5 ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, 1                   ; 2 uses
  %i.ew = load ptr, ptr %i.dk, align 8, !alias.scope !455, !noalias !458, !nonnull !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !455, !noalias !458
  %.sink11.i.i.i.i46 = select i1 %i.ev, ptr %i.ew, ptr %i.dk
  %.sink10.i.i.i.i47 = select i1 %i.ev, i64 %i.ey, i64 %i.eu
  %i.ez = getelementptr inbounds i8, ptr %i.dk, i64 -72
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !460, !noalias !463, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 1                   ; 2 uses
  %i.fc = load ptr, ptr %i.dl, align 8, !alias.scope !460, !noalias !463, !nonnull !5
  %i.fd = getelementptr inbounds i8, ptr %i.dk, i64 -80
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !460, !noalias !463
  %.sink11.i1.i.i.i48 = select i1 %i.fb, ptr %i.fc, ptr %i.dl
  %.sink10.i2.i.i.i49 = select i1 %i.fb, i64 %i.fe, i64 %i.fa
  %i.ff = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i46, i64 noundef %.sink10.i.i.i.i47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i48, i64 noundef %.sink10.i2.i.i.i49)
  br label %.noexc36

.noexc36:                                         ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %.noexc50
  %.sroa.0.0.i.i42 = phi i8 [ %i.du, %.noexc50 ], [ %.sroa.0.0.i.i.i44, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43 ], [ %i.ff, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 ]
  %i.fg = icmp eq i8 %.sroa.0.0.i.i42, -1
  br i1 %i.fg, label %bb.t, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit

bb.t:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.dk, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 88, i1 false)
  %i.fh = icmp eq i64 %.sroa.05.063, 1
  br i1 %i.fh, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.fj, i64 88, i1 false)
  %i.fi = icmp eq ptr %i.fj, %i.cb
  br i1 %i.fi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.0.0.i3592 = phi ptr [ %i.fj, %bb.u ], [ %i.dl, %bb.t ] ; 10 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %.val.i = load ptr, ptr %.val31, align 8, !noalias !470, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.bq, align 8, !noalias !470, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !476, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !476, !noundef !5
  %i.fo = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc37 unwind label %bb.ab  ; 2 uses

.noexc37:                                         ; preds = %.lr.ph
  %i.fp = load ptr, ptr %i.fk, align 8, !noalias !477, !nonnull !5, !noundef !5
  %i.fq = load i64, ptr %i.fm, align 8, !noalias !477, !noundef !5
  %i.fr = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc38 unwind label %bb.ab  ; 2 uses

.noexc38:                                         ; preds = %.noexc37
  %i.fs = call i8 @llvm.ucmp.i8.i64(i64 %i.fo, i64 %i.fr)
  %i.ft = icmp eq i64 %i.fo, %i.fr
  br i1 %i.ft, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.noexc38
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.fv = load i8, ptr %i.br, align 8, !range !274, !alias.scope !483, !noalias !484, !noundef !5 ; 3 uses
  %i.fw = load i8, ptr %i.fu, align 4, !range !274, !alias.scope !484, !noalias !483, !noundef !5 ; 2 uses
  %i.fx = call i8 @llvm.ucmp.i8.i8(i8 %i.fv, i8 %i.fw)
  %i.fy = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fy, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.fv, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fz = load i8, ptr %i.bu, align 1, !alias.scope !483, !noalias !484, !noundef !5
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -63
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !484, !noalias !483, !noundef !5
  %i.gc = call i8 @llvm.ucmp.i8.i8(i8 %i.fz, i8 %i.gb)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.gd = load i32, ptr %i.bs, align 4, !range !277, !alias.scope !483, !noalias !484, !noundef !5 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -60
  %i.gf = load i32, ptr %i.ge, align 4, !range !277, !alias.scope !484, !noalias !483, !noundef !5 ; 2 uses
  %i.gg = call i8 @llvm.ucmp.i8.i32(i32 %i.gd, i32 %i.gf)
  %i.gh = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gh, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.gi = load i32, ptr %i.bt, align 8, !alias.scope !483, !noalias !484, !noundef !5
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -56
  %i.gk = load i32, ptr %i.gj, align 4, !alias.scope !484, !noalias !483, !noundef !5
  %i.gl = call i8 @llvm.ucmp.i8.i32(i32 %i.gi, i32 %i.gk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.sroa.0.0.i.i.i = phi i8 [ %i.fx, %bb.v ], [ %i.gc, %bb.x ], [ %i.gl, %bb.z ], [ %i.gg, %bb.y ] ; 2 uses
  %i.gm = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.gm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.aa

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.gn = load i64, ptr %i.bv, align 8, !alias.scope !490, !noalias !493, !noundef !5 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 1                   ; 2 uses
  %i.gp = load ptr, ptr %i.a, align 8, !alias.scope !490, !noalias !493, !nonnull !5
  %i.gq = load i64, ptr %i.bw, align 8, !alias.scope !490, !noalias !493
  %.sink11.i.i.i.i = select i1 %i.go, ptr %i.gp, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.go, i64 %i.gq, i64 %i.gn
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -72
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !495, !noalias !498, !noundef !5 ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 1                   ; 2 uses
  %i.gu = load ptr, ptr %i.fj, align 8, !alias.scope !495, !noalias !498, !nonnull !5
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -80
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !495, !noalias !498
  %.sink11.i1.i.i.i = select i1 %i.gt, ptr %i.gu, ptr %i.fj
  %.sink10.i2.i.i.i = select i1 %i.gt, i64 %i.gw, i64 %i.gs
  %i.gx = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc38, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.fs, %.noexc38 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.gx, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.gy = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.gy, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.aa, %bb.t
  %.sroa.0.0.i35.lcssa = phi ptr [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ %.sroa.0.0.i3592, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i35.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit

bb.ab:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc37, %.lr.ph
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !505
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB34_.exit: ; preds = %._crit_edge, %.noexc36
  %i.ha = add i64 %.sroa.05.063, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ha, %.sroa.04.0
  br i1 %exitcond.not, label %.loopexit57, label %.noexc50
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 16
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %1, 1                           ; 9 uses
  %i.g = icmp samesign ugt i64 %1, 7
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %.val30 = load ptr, ptr %4, align 8, !nonnull !5, !align !232, !noundef !5 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) #35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k) #35 ; 2 uses
  %i.m = zext i1 %i.i to i64
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = xor i1 %i.i, true
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.l, i64 3, i64 2
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.l, i64 2, i64 3
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n) #35 ; 3 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q) #35 ; 3 uses
  %i.x = select i1 %i.v, ptr %i.s, ptr %i.n, !unpredictable !5
  %i.y = select i1 %i.w, ptr %i.q, ptr %i.u, !unpredictable !5
  %i.z = select i1 %i.w, ptr %i.s, ptr %i.q, !unpredictable !5
  %i.aa = select i1 %i.v, ptr %i.n, ptr %i.z, !unpredictable !5 ; 3 uses
  %i.ab = select i1 %i.v, ptr %i.q, ptr %i.s, !unpredictable !5
  %i.ac = select i1 %i.w, ptr %i.u, ptr %i.ab, !unpredictable !5 ; 3 uses
  %i.ad = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aa) #35 ; 2 uses
  %i.ae = select i1 %i.ad, ptr %i.ac, ptr %i.aa, !unpredictable !5
  %i.af = select i1 %i.ad, ptr %i.aa, ptr %i.ac, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 88, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f ; 8 uses
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.f ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.am = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj) #35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.ap = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ao) #35 ; 2 uses
  %i.aq = zext i1 %i.am to i64
  %i.ar = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.aq ; 3 uses
  %i.as = xor i1 %i.am, true
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.at ; 4 uses
  %i.av = select i1 %i.ap, i64 3, i64 2
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ap, i64 2, i64 3
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ax ; 3 uses
  %i.az = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ar) #35 ; 3 uses
  %i.ba = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.au) #35 ; 3 uses
  %i.bb = select i1 %i.az, ptr %i.aw, ptr %i.ar, !unpredictable !5
  %i.bc = select i1 %i.ba, ptr %i.au, ptr %i.ay, !unpredictable !5
  %i.bd = select i1 %i.ba, ptr %i.aw, ptr %i.au, !unpredictable !5
  %i.be = select i1 %i.az, ptr %i.ar, ptr %i.bd, !unpredictable !5 ; 3 uses
  %i.bf = select i1 %i.az, ptr %i.au, ptr %i.aw, !unpredictable !5
  %i.bg = select i1 %i.ba, ptr %i.ay, ptr %i.bf, !unpredictable !5 ; 3 uses
  %i.bh = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.be) #35 ; 2 uses
  %i.bi = select i1 %i.bh, ptr %i.bg, ptr %i.be, !unpredictable !5
  %i.bj = select i1 %i.bh, ptr %i.be, ptr %i.bg, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 88, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i64 88, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f
  %i.bo = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bo, ptr noundef nonnull align 8 dereferenceable(88) %i.bn, i64 88, i1 false)
  %.val32.pre = load ptr, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val31 = phi ptr [ %.val30, %bb.e ], [ %.val32.pre, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %.sroa.626.0..sroa_idx, align 8
  %i.bp = sub nsw i64 %1, %i.f
  %i.bq = getelementptr i8, ptr %.val31, i64 8    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

.loopexit57:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit, %bb.h
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit57
  %.not.i = phi i1 [ false, %bb.g ], [ true, %.loopexit57 ]
  %i.bx = phi i64 [ 0, %bb.g ], [ 1, %.loopexit57 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !510, !noundef !5 ; 3 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.bz ; 4 uses
  %i.cc = icmp eq i64 %i.bz, 0
  %.sroa.04.0 = select i1 %i.cc, i64 %i.f, i64 %i.bp ; 2 uses
  %i.cd = icmp ult i64 %.sroa.0.0, %.sroa.04.0
  br i1 %i.cd, label %.noexc50, label %.loopexit57

bb.i:                                             ; preds = %.loopexit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = add nsw i64 %1, -1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr [88 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -88
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ce
  br label %bb.j

._crit_edge.i:                                    ; preds = %.noexc33
  %i.cj = getelementptr i8, ptr %i.cy, i64 88     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cx, i64 88
  %i.cl = and i64 %1, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.noexc33, %bb.i
  %.sroa.0.010.i = phi ptr [ %0, %bb.i ], [ %i.cq, %.noexc33 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ 0, %bb.i ], [ %i.cn, %.noexc33 ]
  %.sroa.06.08.i = phi ptr [ %2, %bb.i ], [ %i.ct, %.noexc33 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.cg, %bb.i ], [ %i.cv, %.noexc33 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.ch, %bb.i ], [ %i.cy, %.noexc33 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cf, %bb.i ], [ %i.cx, %.noexc33 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ci, %bb.i ], [ %i.cz, %.noexc33 ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.co = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.011.07.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.06.08.i) #35
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.j
  %..i21.i = select i1 %i.co, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(88) %..i21.i, i64 88, i1 false), !noalias !513
  %i.cp = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.017.05.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.015.06.i) #35
          to label %.noexc33 unwind label %.loopexit ; 3 uses

.noexc33:                                         ; preds = %.noexc
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 88 ; 2 uses
  %i.cr = xor i1 %i.co, true
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [88 x i8], ptr %.sroa.06.08.i, i64 %i.cs ; 5 uses
  %i.cu = zext i1 %i.co to i64
  %i.cv = getelementptr inbounds nuw [88 x i8], ptr %.sroa.011.07.i, i64 %i.cu ; 4 uses
  %..i.i = select i1 %i.cp, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cw = xor i1 %i.cp, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(88) %..i.i, i64 88, i1 false), !noalias !517
  %.neg.i.i = sext i1 %i.cw to i64
  %i.cx = getelementptr [88 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cp to i64
  %i.cy = getelementptr [88 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -88
  %exitcond.not.i = icmp eq i64 %i.cn, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

bb.k:                                             ; preds = %._crit_edge.i
  %i.da = icmp ult ptr %i.ct, %i.cj               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.da, ptr %i.ct, ptr %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.06.0..sroa.011.0.i, i64 88, i1 false)
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [88 x i8], ptr %i.ct, i64 %i.db
  %i.dd = xor i1 %i.da, true
  %i.de = zext i1 %i.dd to i64
  %i.df = getelementptr inbounds nuw [88 x i8], ptr %i.cv, i64 %i.de
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cv, %._crit_edge.i ], [ %i.df, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.ct, %._crit_edge.i ], [ %i.dc, %bb.k ]
  %i.dg = icmp ne ptr %.sroa.06.1.i, %i.cj
  %i.dh = icmp ne ptr %.sroa.011.1.i, %i.ck
  %or.cond.i = select i1 %i.dg, i1 true, i1 %i.dh, !prof !244
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3c_.exit, !prof !244

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %bb.j, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.di = mul nuw nsw i64 %1, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.di, i1 false), !noalias !521
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3c_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.ab, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.gz, %bb.ab ]
  resume { ptr, i32 } %.pn

.noexc50:                                         ; preds = %bb.h, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit
  %.sroa.05.063 = phi i64 [ %i.ha, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %.sroa.05.063
  %.idx = mul nuw nsw i64 %.sroa.05.063, 88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx ; 19 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dj, i64 88, i1 false)
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -88 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %.val.i40 = load ptr, ptr %.val31, align 8, !noalias !531, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i41 = load ptr, ptr %i.bq, align 8, !noalias !531, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i40, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !537, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i40, i64 16 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !noalias !537, !noundef !5
  %i.dq = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.dr = load ptr, ptr %i.dm, align 8, !noalias !538, !nonnull !5, !noundef !5
  %i.ds = load i64, ptr %i.do, align 8, !noalias !538, !noundef !5
  %i.dt = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i64(i64 %i.dq, i64 %i.dt)
  %i.dv = icmp eq i64 %i.dq, %i.dt
  br i1 %i.dv, label %bb.o, label %.noexc36

bb.o:                                             ; preds = %.noexc50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dx = getelementptr inbounds i8, ptr %i.dk, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.dy = load i8, ptr %i.dw, align 8, !range !274, !alias.scope !544, !noalias !545, !noundef !5 ; 3 uses
  %i.dz = load i8, ptr %i.dx, align 8, !range !274, !alias.scope !545, !noalias !544, !noundef !5 ; 2 uses
  %i.ea = call i8 @llvm.ucmp.i8.i8(i8 %i.dy, i8 %i.dz)
  %i.eb = icmp eq i8 %i.dy, %i.dz
  br i1 %i.eb, label %bb.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.p:                                             ; preds = %bb.o
  switch i8 %i.dy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 [
    i8 1, label %bb.q
    i8 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 25
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !544, !noalias !545, !noundef !5
  %i.ee = getelementptr inbounds i8, ptr %i.dk, i64 -63
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !545, !noalias !544, !noundef !5
  %i.eg = call i8 @llvm.ucmp.i8.i8(i8 %i.ed, i8 %i.ef)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !range !277, !alias.scope !544, !noalias !545, !noundef !5 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.dk, i64 -60
  %i.ek = load i32, ptr %i.ej, align 4, !range !277, !alias.scope !545, !noalias !544, !noundef !5 ; 2 uses
  %i.el = call i8 @llvm.ucmp.i8.i32(i32 %i.ei, i32 %i.ek)
  %i.em = icmp eq i32 %i.ei, %i.ek
  br i1 %i.em, label %bb.s, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !alias.scope !544, !noalias !545, !noundef !5
  %i.ep = getelementptr inbounds i8, ptr %i.dk, i64 -56
  %i.eq = load i32, ptr %i.ep, align 8, !alias.scope !545, !noalias !544, !noundef !5
  %i.er = call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.eq)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i.i.i44 = phi i8 [ %i.ea, %bb.o ], [ %i.eg, %bb.q ], [ %i.er, %bb.s ], [ %i.el, %bb.r ] ; 2 uses
  %i.es = icmp eq i8 %.sroa.0.0.i.i.i44, 0
  br i1 %i.es, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, label %.noexc36

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !551, !noalias !554, !noundef !5 ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, 1                   ; 2 uses
  %i.ew = load ptr, ptr %i.dk, align 8, !alias.scope !551, !noalias !554, !nonnull !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !551, !noalias !554
  %.sink11.i.i.i.i46 = select i1 %i.ev, ptr %i.ew, ptr %i.dk
  %.sink10.i.i.i.i47 = select i1 %i.ev, i64 %i.ey, i64 %i.eu
  %i.ez = getelementptr inbounds i8, ptr %i.dk, i64 -72
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !556, !noalias !559, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 1                   ; 2 uses
  %i.fc = load ptr, ptr %i.dl, align 8, !alias.scope !556, !noalias !559, !nonnull !5
  %i.fd = getelementptr inbounds i8, ptr %i.dk, i64 -80
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !556, !noalias !559
  %.sink11.i1.i.i.i48 = select i1 %i.fb, ptr %i.fc, ptr %i.dl
  %.sink10.i2.i.i.i49 = select i1 %i.fb, i64 %i.fe, i64 %i.fa
  %i.ff = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i46, i64 noundef %.sink10.i.i.i.i47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i48, i64 noundef %.sink10.i2.i.i.i49)
  br label %.noexc36

.noexc36:                                         ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %.noexc50
  %.sroa.0.0.i.i42 = phi i8 [ %i.du, %.noexc50 ], [ %.sroa.0.0.i.i.i44, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43 ], [ %i.ff, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 ]
  %i.fg = icmp eq i8 %.sroa.0.0.i.i42, -1
  br i1 %i.fg, label %bb.t, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit

bb.t:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.dk, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 88, i1 false)
  %i.fh = icmp eq i64 %.sroa.05.063, 1
  br i1 %i.fh, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.fj, i64 88, i1 false)
  %i.fi = icmp eq ptr %i.fj, %i.cb
  br i1 %i.fi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.0.0.i3592 = phi ptr [ %i.fj, %bb.u ], [ %i.dl, %bb.t ] ; 10 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %.val.i = load ptr, ptr %.val31, align 8, !noalias !566, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.bq, align 8, !noalias !566, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !572, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !572, !noundef !5
  %i.fo = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc37 unwind label %bb.ab  ; 2 uses

.noexc37:                                         ; preds = %.lr.ph
  %i.fp = load ptr, ptr %i.fk, align 8, !noalias !573, !nonnull !5, !noundef !5
  %i.fq = load i64, ptr %i.fm, align 8, !noalias !573, !noundef !5
  %i.fr = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc38 unwind label %bb.ab  ; 2 uses

.noexc38:                                         ; preds = %.noexc37
  %i.fs = call i8 @llvm.ucmp.i8.i64(i64 %i.fo, i64 %i.fr)
  %i.ft = icmp eq i64 %i.fo, %i.fr
  br i1 %i.ft, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.noexc38
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.fv = load i8, ptr %i.br, align 8, !range !274, !alias.scope !579, !noalias !580, !noundef !5 ; 3 uses
  %i.fw = load i8, ptr %i.fu, align 4, !range !274, !alias.scope !580, !noalias !579, !noundef !5 ; 2 uses
  %i.fx = call i8 @llvm.ucmp.i8.i8(i8 %i.fv, i8 %i.fw)
  %i.fy = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fy, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.fv, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fz = load i8, ptr %i.bu, align 1, !alias.scope !579, !noalias !580, !noundef !5
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -63
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !580, !noalias !579, !noundef !5
  %i.gc = call i8 @llvm.ucmp.i8.i8(i8 %i.fz, i8 %i.gb)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.gd = load i32, ptr %i.bs, align 4, !range !277, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -60
  %i.gf = load i32, ptr %i.ge, align 4, !range !277, !alias.scope !580, !noalias !579, !noundef !5 ; 2 uses
  %i.gg = call i8 @llvm.ucmp.i8.i32(i32 %i.gd, i32 %i.gf)
  %i.gh = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gh, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.gi = load i32, ptr %i.bt, align 8, !alias.scope !579, !noalias !580, !noundef !5
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -56
  %i.gk = load i32, ptr %i.gj, align 4, !alias.scope !580, !noalias !579, !noundef !5
  %i.gl = call i8 @llvm.ucmp.i8.i32(i32 %i.gi, i32 %i.gk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.sroa.0.0.i.i.i = phi i8 [ %i.fx, %bb.v ], [ %i.gc, %bb.x ], [ %i.gl, %bb.z ], [ %i.gg, %bb.y ] ; 2 uses
  %i.gm = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.gm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.aa

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.gn = load i64, ptr %i.bv, align 8, !alias.scope !586, !noalias !589, !noundef !5 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 1                   ; 2 uses
  %i.gp = load ptr, ptr %i.a, align 8, !alias.scope !586, !noalias !589, !nonnull !5
  %i.gq = load i64, ptr %i.bw, align 8, !alias.scope !586, !noalias !589
  %.sink11.i.i.i.i = select i1 %i.go, ptr %i.gp, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.go, i64 %i.gq, i64 %i.gn
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -72
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !591, !noalias !594, !noundef !5 ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 1                   ; 2 uses
  %i.gu = load ptr, ptr %i.fj, align 8, !alias.scope !591, !noalias !594, !nonnull !5
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -80
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !591, !noalias !594
  %.sink11.i1.i.i.i = select i1 %i.gt, ptr %i.gu, ptr %i.fj
  %.sink10.i2.i.i.i = select i1 %i.gt, i64 %i.gw, i64 %i.gs
  %i.gx = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc38, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.fs, %.noexc38 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.gx, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.gy = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.gy, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.aa, %bb.t
  %.sroa.0.0.i35.lcssa = phi ptr [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ %.sroa.0.0.i3592, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i35.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit

bb.ab:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc37, %.lr.ph
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !601
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB34_.exit: ; preds = %._crit_edge, %.noexc36
  %i.ha = add i64 %.sroa.05.063, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ha, %.sroa.04.0
  br i1 %exitcond.not, label %.loopexit57, label %.noexc50
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3o_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 16
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %1, 1                           ; 9 uses
  %i.g = icmp samesign ugt i64 %1, 7
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %.val30 = load ptr, ptr %4, align 8, !nonnull !5, !align !232, !noundef !5 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) #35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k) #35 ; 2 uses
  %i.m = zext i1 %i.i to i64
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = xor i1 %i.i, true
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.l, i64 3, i64 2
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.l, i64 2, i64 3
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n) #35 ; 3 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.q) #35 ; 3 uses
  %i.x = select i1 %i.v, ptr %i.s, ptr %i.n, !unpredictable !5
  %i.y = select i1 %i.w, ptr %i.q, ptr %i.u, !unpredictable !5
  %i.z = select i1 %i.w, ptr %i.s, ptr %i.q, !unpredictable !5
  %i.aa = select i1 %i.v, ptr %i.n, ptr %i.z, !unpredictable !5 ; 3 uses
  %i.ab = select i1 %i.v, ptr %i.q, ptr %i.s, !unpredictable !5
  %i.ac = select i1 %i.w, ptr %i.u, ptr %i.ab, !unpredictable !5 ; 3 uses
  %i.ad = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aa) #35 ; 2 uses
  %i.ae = select i1 %i.ad, ptr %i.ac, ptr %i.aa, !unpredictable !5
  %i.af = select i1 %i.ad, ptr %i.aa, ptr %i.ac, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.ae, i64 88, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f ; 8 uses
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.f ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.am = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aj) #35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %i.ap = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ao) #35 ; 2 uses
  %i.aq = zext i1 %i.am to i64
  %i.ar = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.aq ; 3 uses
  %i.as = xor i1 %i.am, true
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.at ; 4 uses
  %i.av = select i1 %i.ap, i64 3, i64 2
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ap, i64 2, i64 3
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ax ; 3 uses
  %i.az = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ar) #35 ; 3 uses
  %i.ba = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.au) #35 ; 3 uses
  %i.bb = select i1 %i.az, ptr %i.aw, ptr %i.ar, !unpredictable !5
  %i.bc = select i1 %i.ba, ptr %i.au, ptr %i.ay, !unpredictable !5
  %i.bd = select i1 %i.ba, ptr %i.aw, ptr %i.au, !unpredictable !5
  %i.be = select i1 %i.az, ptr %i.ar, ptr %i.bd, !unpredictable !5 ; 3 uses
  %i.bf = select i1 %i.az, ptr %i.au, ptr %i.aw, !unpredictable !5
  %i.bg = select i1 %i.ba, ptr %i.ay, ptr %i.bf, !unpredictable !5 ; 3 uses
  %i.bh = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.be) #35 ; 2 uses
  %i.bi = select i1 %i.bh, ptr %i.bg, ptr %i.be, !unpredictable !5
  %i.bj = select i1 %i.bh, ptr %i.be, ptr %i.bg, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i64 88, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i64 88, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.f
  %i.bo = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bo, ptr noundef nonnull align 8 dereferenceable(88) %i.bn, i64 88, i1 false)
  %.val32.pre = load ptr, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val31 = phi ptr [ %.val30, %bb.e ], [ %.val32.pre, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %.sroa.626.0..sroa_idx, align 8
  %i.bp = sub nsw i64 %1, %i.f
  %i.bq = getelementptr i8, ptr %.val31, i64 8    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

.loopexit57:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit, %bb.h
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit57
  %.not.i = phi i1 [ false, %bb.g ], [ true, %.loopexit57 ]
  %i.bx = phi i64 [ 0, %bb.g ], [ 1, %.loopexit57 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !606, !noundef !5 ; 3 uses
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.bz ; 4 uses
  %i.cc = icmp eq i64 %i.bz, 0
  %.sroa.04.0 = select i1 %i.cc, i64 %i.f, i64 %i.bp ; 2 uses
  %i.cd = icmp ult i64 %.sroa.0.0, %.sroa.04.0
  br i1 %i.cd, label %.noexc50, label %.loopexit57

bb.i:                                             ; preds = %.loopexit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = add nsw i64 %1, -1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %i.ce
  %i.cg = getelementptr [88 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -88
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.ce
  br label %bb.j

._crit_edge.i:                                    ; preds = %.noexc33
  %i.cj = getelementptr i8, ptr %i.cy, i64 88     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cx, i64 88
  %i.cl = and i64 %1, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.noexc33, %bb.i
  %.sroa.0.010.i = phi ptr [ %0, %bb.i ], [ %i.cq, %.noexc33 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ 0, %bb.i ], [ %i.cn, %.noexc33 ]
  %.sroa.06.08.i = phi ptr [ %2, %bb.i ], [ %i.ct, %.noexc33 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.cg, %bb.i ], [ %i.cv, %.noexc33 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.ch, %bb.i ], [ %i.cy, %.noexc33 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cf, %bb.i ], [ %i.cx, %.noexc33 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ci, %bb.i ], [ %i.cz, %.noexc33 ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.co = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.011.07.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.06.08.i) #35
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.j
  %..i21.i = select i1 %i.co, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(88) %..i21.i, i64 88, i1 false), !noalias !609
  %i.cp = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nonnull readonly %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.017.05.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.015.06.i) #35
          to label %.noexc33 unwind label %.loopexit ; 3 uses

.noexc33:                                         ; preds = %.noexc
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 88 ; 2 uses
  %i.cr = xor i1 %i.co, true
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [88 x i8], ptr %.sroa.06.08.i, i64 %i.cs ; 5 uses
  %i.cu = zext i1 %i.co to i64
  %i.cv = getelementptr inbounds nuw [88 x i8], ptr %.sroa.011.07.i, i64 %i.cu ; 4 uses
  %..i.i = select i1 %i.cp, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cw = xor i1 %i.cp, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(88) %..i.i, i64 88, i1 false), !noalias !613
  %.neg.i.i = sext i1 %i.cw to i64
  %i.cx = getelementptr [88 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cp to i64
  %i.cy = getelementptr [88 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -88
  %exitcond.not.i = icmp eq i64 %i.cn, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j

bb.k:                                             ; preds = %._crit_edge.i
  %i.da = icmp ult ptr %i.ct, %i.cj               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.da, ptr %i.ct, ptr %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.06.0..sroa.011.0.i, i64 88, i1 false)
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [88 x i8], ptr %i.ct, i64 %i.db
  %i.dd = xor i1 %i.da, true
  %i.de = zext i1 %i.dd to i64
  %i.df = getelementptr inbounds nuw [88 x i8], ptr %i.cv, i64 %i.de
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cv, %._crit_edge.i ], [ %i.df, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.ct, %._crit_edge.i ], [ %i.dc, %bb.k ]
  %i.dg = icmp ne ptr %.sroa.06.1.i, %i.cj
  %i.dh = icmp ne ptr %.sroa.011.1.i, %i.ck
  %or.cond.i = select i1 %i.dg, i1 true, i1 %i.dh, !prof !244
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3c_.exit, !prof !244

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %bb.j, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.di = mul nuw nsw i64 %1, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.di, i1 false), !noalias !617
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3c_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.ab, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.gz, %bb.ab ]
  resume { ptr, i32 } %.pn

.noexc50:                                         ; preds = %bb.h, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit
  %.sroa.05.063 = phi i64 [ %i.ha, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.ca, i64 %.sroa.05.063
  %.idx = mul nuw nsw i64 %.sroa.05.063, 88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx ; 19 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dj, i64 88, i1 false)
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -88 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %.val.i40 = load ptr, ptr %.val31, align 8, !noalias !627, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i41 = load ptr, ptr %i.bq, align 8, !noalias !627, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i40, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !633, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i40, i64 16 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !noalias !633, !noundef !5
  %i.dq = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.dr = load ptr, ptr %i.dm, align 8, !noalias !634, !nonnull !5, !noundef !5
  %i.ds = load i64, ptr %i.do, align 8, !noalias !634, !noundef !5
  %i.dt = call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i41) ; 2 uses
  %i.du = call i8 @llvm.ucmp.i8.i64(i64 %i.dq, i64 %i.dt)
  %i.dv = icmp eq i64 %i.dq, %i.dt
  br i1 %i.dv, label %bb.o, label %.noexc36

bb.o:                                             ; preds = %.noexc50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dx = getelementptr inbounds i8, ptr %i.dk, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.dy = load i8, ptr %i.dw, align 8, !range !274, !alias.scope !640, !noalias !641, !noundef !5 ; 3 uses
  %i.dz = load i8, ptr %i.dx, align 8, !range !274, !alias.scope !641, !noalias !640, !noundef !5 ; 2 uses
  %i.ea = call i8 @llvm.ucmp.i8.i8(i8 %i.dy, i8 %i.dz)
  %i.eb = icmp eq i8 %i.dy, %i.dz
  br i1 %i.eb, label %bb.p, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.p:                                             ; preds = %bb.o
  switch i8 %i.dy, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 [
    i8 1, label %bb.q
    i8 4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 25
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !640, !noalias !641, !noundef !5
  %i.ee = getelementptr inbounds i8, ptr %i.dk, i64 -63
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !641, !noalias !640, !noundef !5
  %i.eg = call i8 @llvm.ucmp.i8.i8(i8 %i.ed, i8 %i.ef)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.r:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.ei = load i32, ptr %i.eh, align 4, !range !277, !alias.scope !640, !noalias !641, !noundef !5 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.dk, i64 -60
  %i.ek = load i32, ptr %i.ej, align 4, !range !277, !alias.scope !641, !noalias !640, !noundef !5 ; 2 uses
  %i.el = call i8 @llvm.ucmp.i8.i32(i32 %i.ei, i32 %i.ek)
  %i.em = icmp eq i32 %i.ei, %i.ek
  br i1 %i.em, label %bb.s, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !alias.scope !640, !noalias !641, !noundef !5
  %i.ep = getelementptr inbounds i8, ptr %i.dk, i64 -56
  %i.eq = load i32, ptr %i.ep, align 8, !alias.scope !641, !noalias !640, !noundef !5
  %i.er = call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.eq)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43: ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i.i.i44 = phi i8 [ %i.ea, %bb.o ], [ %i.eg, %bb.q ], [ %i.er, %bb.s ], [ %i.el, %bb.r ] ; 2 uses
  %i.es = icmp eq i8 %.sroa.0.0.i.i.i44, 0
  br i1 %i.es, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, label %.noexc36

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !647, !noalias !650, !noundef !5 ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, 1                   ; 2 uses
  %i.ew = load ptr, ptr %i.dk, align 8, !alias.scope !647, !noalias !650, !nonnull !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !647, !noalias !650
  %.sink11.i.i.i.i46 = select i1 %i.ev, ptr %i.ew, ptr %i.dk
  %.sink10.i.i.i.i47 = select i1 %i.ev, i64 %i.ey, i64 %i.eu
  %i.ez = getelementptr inbounds i8, ptr %i.dk, i64 -72
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !652, !noalias !655, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 1                   ; 2 uses
  %i.fc = load ptr, ptr %i.dl, align 8, !alias.scope !652, !noalias !655, !nonnull !5
  %i.fd = getelementptr inbounds i8, ptr %i.dk, i64 -80
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !652, !noalias !655
  %.sink11.i1.i.i.i48 = select i1 %i.fb, ptr %i.fc, ptr %i.dl
  %.sink10.i2.i.i.i49 = select i1 %i.fb, i64 %i.fe, i64 %i.fa
  %i.ff = call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i46, i64 noundef %.sink10.i.i.i.i47, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i48, i64 noundef %.sink10.i2.i.i.i49)
  br label %.noexc36

.noexc36:                                         ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43, %.noexc50
  %.sroa.0.0.i.i42 = phi i8 [ %i.du, %.noexc50 ], [ %.sroa.0.0.i.i.i44, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i43 ], [ %i.ff, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i45 ]
  %i.fg = icmp eq i8 %.sroa.0.0.i.i42, -1
  br i1 %i.fg, label %bb.t, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit

bb.t:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.dk, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dk, ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 88, i1 false)
  %i.fh = icmp eq i64 %.sroa.05.063, 1
  br i1 %i.fh, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.fj, i64 88, i1 false)
  %i.fi = icmp eq ptr %i.fj, %i.cb
  br i1 %i.fi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.0.0.i3592 = phi ptr [ %i.fj, %bb.u ], [ %i.dl, %bb.t ] ; 10 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -88 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.val.i = load ptr, ptr %.val31, align 8, !noalias !662, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %.val1.i = load ptr, ptr %i.bq, align 8, !noalias !662, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !668, !nonnull !5, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !668, !noundef !5
  %i.fo = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc37 unwind label %bb.ab  ; 2 uses

.noexc37:                                         ; preds = %.lr.ph
  %i.fp = load ptr, ptr %i.fk, align 8, !noalias !669, !nonnull !5, !noundef !5
  %i.fq = load i64, ptr %i.fm, align 8, !noalias !669, !noundef !5
  %i.fr = invoke noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fp, i64 noundef %i.fq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i)
          to label %.noexc38 unwind label %bb.ab  ; 2 uses

.noexc38:                                         ; preds = %.noexc37
  %i.fs = call i8 @llvm.ucmp.i8.i64(i64 %i.fo, i64 %i.fr)
  %i.ft = icmp eq i64 %i.fo, %i.fr
  br i1 %i.ft, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.noexc38
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -64
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.fv = load i8, ptr %i.br, align 8, !range !274, !alias.scope !675, !noalias !676, !noundef !5 ; 3 uses
  %i.fw = load i8, ptr %i.fu, align 4, !range !274, !alias.scope !676, !noalias !675, !noundef !5 ; 2 uses
  %i.fx = call i8 @llvm.ucmp.i8.i8(i8 %i.fv, i8 %i.fw)
  %i.fy = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fy, label %bb.w, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.fv, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i [
    i8 1, label %bb.x
    i8 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fz = load i8, ptr %i.bu, align 1, !alias.scope !675, !noalias !676, !noundef !5
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -63
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !676, !noalias !675, !noundef !5
  %i.gc = call i8 @llvm.ucmp.i8.i8(i8 %i.fz, i8 %i.gb)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.gd = load i32, ptr %i.bs, align 4, !range !277, !alias.scope !675, !noalias !676, !noundef !5 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -60
  %i.gf = load i32, ptr %i.ge, align 4, !range !277, !alias.scope !676, !noalias !675, !noundef !5 ; 2 uses
  %i.gg = call i8 @llvm.ucmp.i8.i32(i32 %i.gd, i32 %i.gf)
  %i.gh = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gh, label %bb.z, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.gi = load i32, ptr %i.bt, align 8, !alias.scope !675, !noalias !676, !noundef !5
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -56
  %i.gk = load i32, ptr %i.gj, align 4, !alias.scope !676, !noalias !675, !noundef !5
  %i.gl = call i8 @llvm.ucmp.i8.i32(i32 %i.gi, i32 %i.gk)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.sroa.0.0.i.i.i = phi i8 [ %i.fx, %bb.v ], [ %i.gc, %bb.x ], [ %i.gl, %bb.z ], [ %i.gg, %bb.y ] ; 2 uses
  %i.gm = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.gm, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %bb.aa

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.gn = load i64, ptr %i.bv, align 8, !alias.scope !682, !noalias !685, !noundef !5 ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 1                   ; 2 uses
  %i.gp = load ptr, ptr %i.a, align 8, !alias.scope !682, !noalias !685, !nonnull !5
  %i.gq = load i64, ptr %i.bw, align 8, !alias.scope !682, !noalias !685
  %.sink11.i.i.i.i = select i1 %i.go, ptr %i.gp, ptr %i.a
  %.sink10.i.i.i.i = select i1 %i.go, i64 %i.gq, i64 %i.gn
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -72
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !687, !noalias !690, !noundef !5 ; 2 uses
  %i.gt = icmp ugt i64 %i.gs, 1                   ; 2 uses
  %i.gu = load ptr, ptr %i.fj, align 8, !alias.scope !687, !noalias !690, !nonnull !5
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0.0.i3592, i64 -80
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !687, !noalias !690
  %.sink11.i1.i.i.i = select i1 %i.gt, ptr %i.gu, ptr %i.fj
  %.sink10.i2.i.i.i = select i1 %i.gt, i64 %i.gw, i64 %i.gs
  %i.gx = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i.i, i64 noundef %.sink10.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i.i, i64 noundef %.sink10.i2.i.i.i)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %.noexc38, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ %i.fs, %.noexc38 ], [ %.sroa.0.0.i.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.gx, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ]
  %i.gy = icmp eq i8 %.sroa.0.0.i.i, -1
  br i1 %i.gy, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.aa, %bb.t
  %.sroa.0.0.i35.lcssa = phi ptr [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ %.sroa.0.0.i3592, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i35.lcssa, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit

bb.ab:                                            ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %.noexc37, %.lr.ph
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0.i3592, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !697
  br label %.body

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB34_.exit: ; preds = %._crit_edge, %.noexc36
  %i.ha = add i64 %.sroa.05.063, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ha, %.sroa.04.0
  br i1 %exitcond.not, label %.loopexit57, label %.noexc50
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyB1u_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3C_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyB1i_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyB1b_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3j_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB19_11sort_by_keyB1b_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3j_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i = load ptr, ptr %i.k, align 8, !nonnull !5, !align !232, !noundef !5
  %.val9.i = load ptr, ptr %0, align 8
  %i.l = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val8.i, ptr %.val9.i) #35 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load ptr, ptr %i.m, align 8, !nonnull !5, !align !232, !noundef !5
  %.val7.i = load ptr, ptr %i.n, align 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val6.i, ptr %.val7.i) #35 ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i = load ptr, ptr %i.v, align 8, !nonnull !5, !align !232, !noundef !5
  %.val5.i = load ptr, ptr %i.q, align 8
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val4.i, ptr %.val5.i) #35 ; 3 uses
  %.val2.i = load ptr, ptr %i.x, align 8, !nonnull !5, !align !232, !noundef !5
  %.val3.i = load ptr, ptr %i.t, align 8
  %i.z = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val2.i, ptr %.val3.i) #35 ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !5 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !5 ; 3 uses
  %.val.i = load ptr, ptr %i.af, align 8, !nonnull !5, !align !232, !noundef !5
  %.val1.i = load ptr, ptr %i.ad, align 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val.i, ptr %.val1.i) #35 ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !5
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val8.i30 = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !232, !noundef !5
  %.val9.i31 = load ptr, ptr %i.am, align 8
  %i.ap = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val8.i30, ptr %.val9.i31) #35 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val6.i32 = load ptr, ptr %i.aq, align 8, !nonnull !5, !align !232, !noundef !5
  %.val7.i33 = load ptr, ptr %i.ar, align 8
  %i.as = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val6.i32, ptr %.val7.i33) #35 ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34 = load ptr, ptr %i.az, align 8, !nonnull !5, !align !232, !noundef !5
  %.val5.i35 = load ptr, ptr %i.au, align 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val4.i34, ptr %.val5.i35) #35 ; 3 uses
  %.val2.i36 = load ptr, ptr %i.bb, align 8, !nonnull !5, !align !232, !noundef !5
  %.val3.i37 = load ptr, ptr %i.ax, align 8
  %i.bd = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val2.i36, ptr %.val3.i37) #35 ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !5
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !5
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !5
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !5 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !5
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !5 ; 3 uses
  %.val.i38 = load ptr, ptr %i.bj, align 8, !nonnull !5, !align !232, !noundef !5
  %.val1.i39 = load ptr, ptr %i.bh, align 8
  %i.bk = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr %.val.i38, ptr %.val1.i39) #35 ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !5
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  br label %bb.i
end_hunk_1
begin_hunk_2_@_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB4_IB4_INtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_fly0ENCB2X_s_0ENCB2X_s0_0ENtCscFGNKo4Sl5v_9itertools9Itertools9sorted_byNCB2X_s1_0EB33_:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0INtNtB2a_3vec3VecBZ_EEB2U_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.c, align 8, !range !1488, !noundef !5
  %i.m = icmp ult i64 %i.g, 104811045873349726
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB4_INtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_0ENCB2T_s_0ENtCscFGNKo4Sl5v_9itertools9Itertools9sorted_byNCB2T_s0_0EB2Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB2m_INtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterBU_ENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_0ENCB4c_s_0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !1489
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.h, align 8, !noalias !1489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1489
  store ptr %i.b, ptr %i.a, align 8, !noalias !1494
  %i.i = icmp samesign ult i64 %i.g, 2
  br i1 %i.i, label %bb.f, label %bb.b, !prof !1487

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.g, 21
  br i1 %i.j, label %bb.d, label %bb.c, !prof !1487

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0INtNtB2a_3vec3VecBZ_EEB2U_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.c, align 8, !range !1488, !noundef !5
  %i.m = icmp ult i64 %i.g, 104811045873349726
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB4_INtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_method0ENCB2T_s_0ENtCscFGNKo4Sl5v_9itertools9Itertools9sorted_byNCB2T_s0_0EB2Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB2m_INtNtNtCs3gqD4ldeioo_8indexmap3set4iter8IntoIterBU_ENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_method0ENCB4c_s_0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !1498
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.h, align 8, !noalias !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1498
  store ptr %i.b, ptr %i.a, align 8, !noalias !1503
  %i.i = icmp samesign ult i64 %i.g, 2
  br i1 %i.i, label %bb.f, label %bb.b, !prof !1487

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.g, 21
  br i1 %i.j, label %bb.d, label %bb.c, !prof !1487

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0INtNtB2a_3vec3VecBZ_EEB2U_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3i_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 104811045873349726) %i.g, ptr nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #34
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.c, align 8, !range !1488, !noundef !5
  %i.m = icmp ult i64 %i.g, 104811045873349726
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1512, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !1512, !noundef !5
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !1510 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !1512, !nonnull !5, !noundef !5
  %i.h = load i64, ptr %i.d, align 8, !noalias !1512, !noundef !5
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.n = load i8, ptr %i.l, align 8, !range !274, !alias.scope !1518, !noalias !1519, !noundef !5 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !274, !alias.scope !1519, !noalias !1518, !noundef !5 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1519, !noalias !1518, !noundef !5
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !277, !alias.scope !1518, !noalias !1519, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !277, !alias.scope !1519, !noalias !1518, !noundef !5 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !1519, !noalias !1518, !noundef !5
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1525, !noalias !1528, !noundef !5 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !1525, !noalias !1528, !nonnull !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1525, !noalias !1528
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1530, !noalias !1533, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !1530, !noalias !1533, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1530, !noalias !1533
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1540, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !1540, !noundef !5
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !1538 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !1540, !nonnull !5, !noundef !5
  %i.h = load i64, ptr %i.d, align 8, !noalias !1540, !noundef !5
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.n = load i8, ptr %i.l, align 8, !range !274, !alias.scope !1546, !noalias !1547, !noundef !5 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !274, !alias.scope !1547, !noalias !1546, !noundef !5 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1546, !noalias !1547, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1547, !noalias !1546, !noundef !5
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !277, !alias.scope !1546, !noalias !1547, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !277, !alias.scope !1547, !noalias !1546, !noundef !5 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1546, !noalias !1547, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !1547, !noalias !1546, !noundef !5
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1553, !noalias !1556, !noundef !5 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !1553, !noalias !1556, !nonnull !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1553, !noalias !1556
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1558, !noalias !1561, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !1558, !noalias !1561, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1558, !noalias !1561
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !232, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1568, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !1568, !noundef !5
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !1566 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !1568, !nonnull !5, !noundef !5
  %i.h = load i64, ptr %i.d, align 8, !noalias !1568, !noundef !5
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.n = load i8, ptr %i.l, align 8, !range !274, !alias.scope !1574, !noalias !1575, !noundef !5 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !274, !alias.scope !1575, !noalias !1574, !noundef !5 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1574, !noalias !1575, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1575, !noalias !1574, !noundef !5
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !277, !alias.scope !1574, !noalias !1575, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !277, !alias.scope !1575, !noalias !1574, !noundef !5 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !1574, !noalias !1575, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !1575, !noalias !1574, !noundef !5
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1581, !noalias !1584, !noundef !5 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !1581, !noalias !1584, !nonnull !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1581, !noalias !1584
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1586, !noalias !1589, !noundef !5 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !1586, !noalias !1589, !nonnull !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1586, !noalias !1589
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #34
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = and i64 %i.h, 1                          ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = and i64 %i.o, 1                          ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.s, i64 %spec.store.select.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.w)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = load atomic i64, ptr %i.z acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %.noexc9, !prof !19

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.z, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc10, %bb.c
  %.not.i.i.i.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12, label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit
  %i.ac = getelementptr i8, ptr %i.e, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.ac)
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = load atomic i64, ptr %i.af acquire, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.af, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, %bb.h
  %i.ai = icmp eq i32 %i.v, 0
  %i.aj = sub i64 %i.n, %i.u
  %i.ak = sext i32 %i.v to i64
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ak
  %i.al = icmp slt i64 %spec.select.i.i.i, 0
  ret i1 %i.al

bb.i:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #34
          to label %bb.j unwind label %bb.i
end_hunk_2
begin_hunk_3_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower34type_alias_bounds_with_diagnostics(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext15traits_in_scope(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type18into_future_output(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_14CompletionItem3newNtB6_18CompletionItemKindNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([360 x i8]) align 8 captures(none) dereferenceable(360), i8 noundef range(i8 0, 37), i32 noundef, i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder6detailReEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14impls_iterator(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB2F_4Type9autoderef0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldB2X_B2X_uINtNtNtBc_3ops12control_flow11ControlFlowB2X_ENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3dot12complete_dots4_0NCINvNvB3k_8find_map5checkB2X_B2X_NCB5j_s5_0E0E0B4x_EB5p_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl35descend_into_macros_exact_with_file(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_Cs33K2ylI4knu_10hir_expandNtB5_11MacroCallId20is_env_or_option_env(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext27macro_call_for_string_token(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl18resolve_macro_call(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsK_Cs8Xq8PKFYOms_3hirNtB5_5Macro20is_env_or_option_env(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB8_9token_ext8IsString13quote_offsetsCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([28 x i8]) align 4 captures(none) dereferenceable(28), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7ModPathINtNtCshzWfHUSfYae_4core7convert4FromNtNtB7_4name4NameE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7ModPath13from_segmentsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtB1d_4skip4SkipINtNtNtB1h_5slice4iter4IterNtNtB7_4name4NameEEEECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant17render_record_lit(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant16render_tuple_lit(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant20format_literal_label(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant21format_literal_lookup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMNtCsf8NQSppxkmK_14ide_completion6renderNtB2_13RenderContext12source_range(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder9lookup_byNtCs42xZ1oUXfIG_8smol_str7SmolStrEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder10set_detailNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder11insert_textNtNtCsbSS6DM8SDEO_5alloc6string6StringEB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder17set_documentation(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext9rebase_ty(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvNtCsf8NQSppxkmK_14ide_completion6render18compute_type_match(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder13set_relevance(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsf8NQSppxkmK_14ide_completion6render14path_ref_match(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(360)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs4core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext17process_all_names(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions31add_nameref_keywords_with_colon(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_super_keyword(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5scope(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions15add_crate_roots(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1X_Cs8Xq8PKFYOms_3hirNtB6_8FunctionNtB6_12HasContainer9container(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs8Xq8PKFYOms_3hir5TraituNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMsD_Cs8Xq8PKFYOms_3hirNtB5_5Trait8complete(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir8FunctionuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function4name(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB6_17CompletionContext10is_visibleNtCs8Xq8PKFYOms_3hir8FunctionEB8_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir8FunctionEE14insert_no_growCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtCs83ee1IJTiSq_6either6EitherINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB26_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2V_11SyntaxTokenB3h_EEReEEj1_NtB4_11PartialDrop12partial_dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCscAsMj0W7j8b_3std7process5abort() unnamed_addr #26

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtCsd9Lm8bEdjjY_5salsa7storageINtB5_7StorageNtCs6oosyzwIepl_6ide_db12RootDatabaseE13cancel_othersCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtCs83ee1IJTiSq_6either6EitherNtCsileJQcQObtj_7hir_def10FunctionIdNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdENtNtB1P_3mir7MirSpanNtB1P_11InferBodyIdEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs8K4cjrcxBsw_6hir_ty9consteval14ConstEvalErrorE13new_uninit_inCsf8NQSppxkmK_14ide_completion() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval12MirEvalErrorE13new_uninit_inCsf8NQSppxkmK_14ide_completion() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #22

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCs8Xq8PKFYOms_3hir5MacrouENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs8Xq8PKFYOms_3hir4TypeuEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs5R_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9ArrayExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs6l_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7AsmExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7v_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9AwaitExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7B_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10BecomeExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7H_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7BinExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7N_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9BlockExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7Z_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9BreakExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs85_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8CallExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs8b_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8CastExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs8F_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11ClosureExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs99_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_12ContinueExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs9V_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9FieldExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsaj_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7ForExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsaH_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_14FormatArgsExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsb5_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_6IfExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsbt_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_16IncludeBytesExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsbz_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9IndexExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsc9_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7LetExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXscD_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7LiteralNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXscP_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8LoopExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsd7_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MacroExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsdT_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9MatchExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXse5_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_14MethodCallExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXseL_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_12OffsetOfExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsf9_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9ParenExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsfD_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8PathExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsgd_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10PrefixExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsgp_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9RangeExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsgB_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10RecordExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXshn_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7RefExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXshX_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_10ReturnExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsjd_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7TryExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsjj_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9TupleExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXskt_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_14UnderscoreExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXslJ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9WhileExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXslV_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8YeetExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsm1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9YieldExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs1_1__NtB8_19FileSourceRootInput14source_root_idNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs2_1__NtB8_15SourceRootInput11source_rootNtCs6oosyzwIepl_6ide_db12RootDatabaseECsf8NQSppxkmK_14ide_completion(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs1_NtCsgIpRO4v45SJ_7base_db5inputNtB5_10SourceRoot12resolve_path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval10const_eval(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower16impl_trait_query(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower17field_types_query(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower18impl_self_ty_query(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8K4cjrcxBsw_6hir_ty6layout18layout_of_ty_query(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty8variance12variances_of(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty6layout3adt19layout_of_adt_query(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower14const_param_ty(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCs8K4cjrcxBsw_6hir_ty5lower14type_for_const(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8K4cjrcxBsw_6hir_ty9consteval15anon_const_eval(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0
end_hunk_3
