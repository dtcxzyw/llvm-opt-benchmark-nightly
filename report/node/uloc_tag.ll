inline.NumInlined: 452
inline.NumDeleted: 139
begin_hunk_0_@_Z25ulocimp_forLanguageTag_78PKciRN6icu_788ByteSinkEPiR10UErrorCode:bb.a
  %i.kq = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.01315.i = load ptr, ptr %i.kq, align 8        ; 2 uses
  %.not1416.i = icmp eq ptr %.01315.i, null
  br i1 %.not1416.i, label %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit, label %.lr.ph.i77

._crit_edge.i78:                                  ; preds = %bb.dc
  %.pre.i79 = load ptr, ptr %i.kq, align 8        ; 2 uses
  %.not.i80 = icmp eq ptr %.pre.i79, null
  br i1 %.not.i80, label %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit, label %.lr.ph21.i, !llvm.loop !24

.lr.ph.i77:                                       ; preds = %.lr.ph21.i, %bb.dc
  %.01317.i = phi ptr [ %.013.i, %bb.dc ], [ %.01315.i, %.lr.ph21.i ] ; 3 uses
  %i.kr = load ptr, ptr %.019.i, align 8          ; 2 uses
  %i.ks = load ptr, ptr %.01317.i, align 8        ; 2 uses
  %i.kt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kr, ptr noundef nonnull dereferenceable(1) %i.ks) #11
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i77
  store ptr %i.ks, ptr %.019.i, align 8
  store ptr %i.kr, ptr %.01317.i, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i77
  %i.kv = getelementptr inbounds nuw i8, ptr %.01317.i, i64 8
  %.013.i = load ptr, ptr %i.kv, align 8          ; 2 uses
  %.not14.i = icmp eq ptr %.013.i, null
  br i1 %.not14.i, label %._crit_edge.i78, label %.lr.ph.i77, !llvm.loop !25

_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit: ; preds = %.lr.ph21.i, %._crit_edge.i78
  %.05.i.pr = load ptr, ptr %i.ko, align 8        ; 2 uses
  %i.kw = icmp eq ptr %.05.i.pr, null
  br i1 %i.kw, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit, %.lr.ph.i81
  %indvars.iv = phi i32 [ %indvars.iv.next, %.lr.ph.i81 ], [ 1, %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit ] ; 2 uses
  %.07.i = phi ptr [ %.0.i, %.lr.ph.i81 ], [ %.05.i.pr, %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.0.i = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.ky = icmp eq ptr %.0.i, null
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.ky, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit, label %.lr.ph.i81, !llvm.loop !57

_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit: ; preds = %.lr.ph.i81
  br i1 %i.kc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit
  %i.kz = load ptr, ptr %2, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i32 noundef 1) #12
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit
  %.3 = phi i1 [ false, %bb.dd ], [ %.2, %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit ]
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge
  %.048244 = phi i32 [ 0, %bb.de ], [ %i.ls, %._crit_edge ] ; 3 uses
  %.0710.i = load ptr, ptr %i.ko, align 8         ; 3 uses
  %.not11.i = icmp eq ptr %.0710.i, null
  br i1 %.not11.i, label %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %bb.df
  %i.lc = icmp eq i32 %.048244, 0
  br i1 %i.lc, label %.lr.ph.i83._crit_edge, label %.lr.ph685

.lr.ph.i83:                                       ; preds = %.lr.ph685
  %i.ld = add nuw nsw i32 %.012.i684, 1           ; 2 uses
  %i.le = icmp eq i32 %i.ld, %.048244
  br i1 %i.le, label %.lr.ph.i83._crit_edge, label %.lr.ph685, !llvm.loop !58

.lr.ph.i83._crit_edge:                            ; preds = %.lr.ph.i83, %.lr.ph.i83.preheader
  %.0713.i.lcssa = phi ptr [ %.0710.i, %.lr.ph.i83.preheader ], [ %.07.i84, %.lr.ph.i83 ]
  %i.lf = load ptr, ptr %.0713.i.lcssa, align 8
  br label %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit

.lr.ph685:                                        ; preds = %.lr.ph.i83.preheader, %.lr.ph.i83
  %.012.i684 = phi i32 [ %i.ld, %.lr.ph.i83 ], [ 0, %.lr.ph.i83.preheader ]
  %.0713.i683 = phi ptr [ %.07.i84, %.lr.ph.i83 ], [ %.0710.i, %.lr.ph.i83.preheader ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.0713.i683, i64 8
  %.07.i84 = load ptr, ptr %i.lg, align 8         ; 3 uses
  %.not.i85 = icmp eq ptr %.07.i84, null
  br i1 %.not.i85, label %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit, label %.lr.ph.i83, !llvm.loop !58

_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit: ; preds = %.lr.ph685, %bb.df, %.lr.ph.i83._crit_edge
  %.08.i = phi ptr [ %i.lf, %.lr.ph.i83._crit_edge ], [ null, %bb.df ], [ null, %.lr.ph685 ] ; 2 uses
  %i.lh = load ptr, ptr %2, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i32 noundef 1) #12
  %i.lk = load i8, ptr %.08.i, align 1            ; 2 uses
  %.not59241 = icmp eq i8 %i.lk, 0
  br i1 %.not59241, label %._crit_edge, label %.lr.ph243

.lr.ph243:                                        ; preds = %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit, %.lr.ph243
  %i.ll = phi i8 [ %i.lr, %.lr.ph243 ], [ %i.lk, %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit ]
  %.1242 = phi ptr [ %i.lq, %.lr.ph243 ], [ %.08.i, %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.lm = call signext i8 @uprv_toupper_78(i8 noundef signext %i.ll) #12
  store i8 %i.lm, ptr %i.d, align 1
  %i.ln = load ptr, ptr %2, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.d, i32 noundef 1) #12
  %i.lq = getelementptr inbounds nuw i8, ptr %.1242, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.lr = load i8, ptr %i.lq, align 1             ; 2 uses
  %.not59 = icmp eq i8 %i.lr, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph243, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph243, %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit
  %i.ls = add nuw i32 %.048244, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ls, %indvars.iv
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread, label %bb.df, !llvm.loop !60

_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread: ; preds = %._crit_edge, %.loopexit, %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit
  %.4 = phi i1 [ %.2, %.loopexit ], [ %.2, %_ZN12_GLOBAL__N_113_sortVariantsEPNS_16VariantListEntryE.exit ], [ %.3, %._crit_edge ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.9.i452.ph, i64 64 ; 3 uses
  %.05.i87 = load ptr, ptr %i.lt, align 8
  %i.lu = icmp eq ptr %.05.i87, null
  %i.lv = getelementptr i8, ptr %.9.i452.ph, i64 72 ; 2 uses
  br i1 %i.lu, label %bb.dg, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread
  br i1 %.4, label %bb.dh, label %.thread

bb.dg:                                            ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread
  %.val75 = load ptr, ptr %i.lv, align 8
  %char0 = load i8, ptr %.val75, align 1
  %.not58 = icmp ne i8 %char0, 0
  %i.lw = load i32, ptr %4, align 4
  %i.lx = icmp slt i32 %i.lw, 1
  %or.cond = select i1 %.not58, i1 %i.lx, i1 false
  br i1 %or.cond, label %bb.di, label %_ZN12_GLOBAL__N_115_appendKeywordsEPNS_12ULanguageTagERN6icu_788ByteSinkER10UErrorCode.exit.thread

bb.dh:                                            ; preds = %.lr.ph.i88.preheader
  %i.ly = load ptr, ptr %2, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZN12_GLOBAL__N_18LANG_UNDE, i32 noundef 3) #12
  br label %.thread

.thread:                                          ; preds = %bb.dh, %.lr.ph.i88.preheader
  %.old = load i32, ptr %4, align 4
  %.old694 = icmp slt i32 %.old, 1
  br i1 %.old694, label %bb.di, label %_ZN12_GLOBAL__N_115_appendKeywordsEPNS_12ULanguageTagERN6icu_788ByteSinkER10UErrorCode.exit.thread

bb.di:                                            ; preds = %bb.dg, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store i32 0, ptr %10, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 23 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.mc, ptr %i.mb, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 13 uses
  store i32 8, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 10 uses
  store i8 0, ptr %i.me, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store i32 0, ptr %11, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 18 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.mg, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  store i32 8, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 8 uses
  store i8 0, ptr %i.mi, align 4
  %.05.i.i = load ptr, ptr %i.lt, align 8         ; 2 uses
  %i.mj = icmp eq ptr %.05.i.i, null
  br i1 %i.mj, label %.loopexit228.thread469.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.di, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.i.i94, %.lr.ph.i.i ], [ %.05.i.i, %bb.di ]
  %.046.i.i = phi i32 [ %i.mk, %.lr.ph.i.i ], [ 0, %bb.di ] ; 2 uses
  %i.mk = add nuw nsw i32 %.046.i.i, 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %.0.i.i94 = load ptr, ptr %i.ml, align 8        ; 2 uses
  %i.mm = icmp eq ptr %.0.i.i94, null
  br i1 %i.mm, label %.lr.ph.i95, label %.lr.ph.i.i, !llvm.loop !61

.lr.ph.i95:                                       ; preds = %.lr.ph.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i, %.lr.ph.i95
  %.052313.i = phi i32 [ 0, %.lr.ph.i95 ], [ %i.adz, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 6 uses
  %.0179312.i = phi i8 [ 0, %.lr.ph.i95 ], [ %.2.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 4 uses
  %.0181304.i = phi ptr [ null, %.lr.ph.i95 ], [ %.1182.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 13 uses
  %.0710.i.i = load ptr, ptr %i.lt, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %.not11.i.i = icmp eq i32 %.052313.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i62.i._crit_edge, label %.lr.ph688

.lr.ph.i62.i:                                     ; preds = %.lr.ph688
  %i.na = add nuw nsw i32 %.012.i.i687, 1         ; 2 uses
  %i.nb = icmp eq i32 %i.na, %.052313.i
  br i1 %i.nb, label %.lr.ph.i62.i._crit_edge, label %.lr.ph688, !llvm.loop !62

.lr.ph.i62.i._crit_edge:                          ; preds = %.lr.ph.i62.i, %bb.dj
  %.0713.i.i.lcssa = phi ptr [ %.0710.i.i, %bb.dj ], [ %.07.i63.i, %.lr.ph.i62.i ]
  %i.nc = load ptr, ptr %.0713.i.i.lcssa, align 8
  br label %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i

.lr.ph688:                                        ; preds = %bb.dj, %.lr.ph.i62.i
  %.012.i.i687 = phi i32 [ %i.na, %.lr.ph.i62.i ], [ 0, %bb.dj ]
  %.0713.i.i686 = phi ptr [ %.07.i63.i, %.lr.ph.i62.i ], [ %.0710.i.i, %bb.dj ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.0713.i.i686, i64 16
  %.07.i63.i = load ptr, ptr %i.nd, align 8       ; 3 uses
  %.not.i.i96 = icmp eq ptr %.07.i63.i, null
  br i1 %.not.i.i96, label %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i, label %.lr.ph.i62.i, !llvm.loop !62

_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i: ; preds = %.lr.ph688, %.lr.ph.i62.i._crit_edge
  %.08.i.i = phi ptr [ %i.nc, %.lr.ph.i62.i._crit_edge ], [ null, %.lr.ph688 ] ; 4 uses
  %i.ne = icmp eq i32 %.052313.i, 0
  br i1 %i.ne, label %.lr.ph.i66.i._crit_edge, label %.lr.ph692

.lr.ph.i66.i:                                     ; preds = %.lr.ph692
  %i.nf = add nuw nsw i32 %.012.i68.i691, 1       ; 2 uses
  %i.ng = icmp eq i32 %i.nf, %.052313.i
  br i1 %i.ng, label %.lr.ph.i66.i._crit_edge, label %.lr.ph692, !llvm.loop !63

.lr.ph.i66.i._crit_edge:                          ; preds = %.lr.ph.i66.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i
  %.0713.i67.i.lcssa = phi ptr [ %.0710.i.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ], [ %.07.i69.i, %.lr.ph.i66.i ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.0713.i67.i.lcssa, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  br label %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i

.lr.ph692:                                        ; preds = %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i, %.lr.ph.i66.i
  %.012.i68.i691 = phi i32 [ %i.nf, %.lr.ph.i66.i ], [ 0, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ]
  %.0713.i67.i690 = phi ptr [ %.07.i69.i, %.lr.ph.i66.i ], [ %.0710.i.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0713.i67.i690, i64 16
  %.07.i69.i = load ptr, ptr %i.nj, align 8       ; 3 uses
  %.not.i70.i = icmp eq ptr %.07.i69.i, null
  br i1 %.not.i70.i, label %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i, label %.lr.ph.i66.i, !llvm.loop !63

_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i: ; preds = %.lr.ph692, %.lr.ph.i66.i._crit_edge
  %.08.i71.i = phi ptr [ %i.ni, %.lr.ph.i66.i._crit_edge ], [ null, %.lr.ph692 ] ; 3 uses
  %i.nk = load i8, ptr %.08.i.i, align 1
  %i.nl = icmp eq i8 %i.nk, 117
  br i1 %i.nl, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i, label %bb.hm

_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i: ; preds = %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i
  %.05.i72.i = load ptr, ptr %i.ko, align 8
  %i.nm = icmp eq ptr %.05.i72.i, null
  %spec.select.i99 = select i1 %i.nm, i8 %.0179312.i, i8 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.nn = load i32, ptr %4, align 4
  %i.no = icmp slt i32 %i.nn, 1
  br i1 %i.no, label %bb.dk, label %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i

_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.dk:                                            ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i
  %i.np = trunc nuw i8 %spec.select.i99 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i32 0, ptr %5, align 8
  store ptr %i.mo, ptr %i.mn, align 8
  store i32 8, ptr %i.mp, align 8
  store i8 0, ptr %i.mq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 0, ptr %6, align 8
  store ptr %i.ms, ptr %i.mr, align 8
  store i32 8, ptr %i.mt, align 8
  store i8 0, ptr %i.mu, align 4
  %i.nq = load i8, ptr %.08.i71.i, align 1        ; 2 uses
  %.not121317.i.i = icmp eq i8 %i.nq, 0
  br i1 %.not121317.i.i, label %.critedge148.i.i, label %.preheader292.i.i

.preheader292.i.i:                                ; preds = %bb.dk, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i
  %i.nr = phi i8 [ %i.rc, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ %i.nq, %bb.dk ] ; 2 uses
  %.0238319.i.i = phi ptr [ %spec.select.i.i, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ %.08.i71.i, %bb.dk ] ; 6 uses
  %.0241318.i.i = phi ptr [ %.2243.i.i, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ null, %bb.dk ] ; 7 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dm, %.preheader292.i.i
  %i.ns = phi i8 [ %i.nr, %.preheader292.i.i ], [ %.pre.i.i106, %bb.dm ]
  %indvars.iv.i.i = phi i64 [ 0, %.preheader292.i.i ], [ %indvars.iv.next.i.i, %bb.dm ] ; 4 uses
  switch i8 %i.ns, label %bb.dm [
    i8 0, label %.critedge.i.i
    i8 45, label %.critedge.i.i
  ]

bb.dm:                                            ; preds = %bb.dl
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0238319.i.i, i64 %indvars.iv.next.i.i
  %.pre.i.i106 = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.dl, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.dl, %bb.dl
  %i.nt = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.nu = icmp eq i64 %indvars.iv.i.i, 2
  br i1 %i.nu, label %bb.dn, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i

bb.dn:                                            ; preds = %.critedge.i.i
  %i.nv = call noundef signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.nr) #12
  %.not.i.i.i105 = icmp eq i8 %i.nv, 0
  br i1 %.not.i.i.i105, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.nw = load i8, ptr %.0238319.i.i, align 1
  %i.nx = add i8 %i.nw, -48
  %i.ny = icmp ult i8 %i.nx, 10
  br i1 %i.ny, label %bb.dp, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.nz = getelementptr inbounds nuw i8, ptr %.0238319.i.i, i64 1
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = call noundef signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.oa) #12
  %.not8.i.i.i = icmp eq i8 %i.ob, 0
  br i1 %.not8.i.i.i, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i, label %._crit_edge.i.i

_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i:     ; preds = %bb.dp, %bb.do, %.critedge.i.i
  %.val.i.i.i = load i32, ptr %i.mt, align 8      ; 5 uses
  %i.oc = load i32, ptr %6, align 8
  %i.od = icmp eq i32 %i.oc, %.val.i.i.i
  br i1 %i.od, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i
  %i.oe = icmp eq i32 %.val.i.i.i, 8
  %i.of = shl nsw i32 %.val.i.i.i, 1
  %i.og = select i1 %i.oe, i32 32, i32 %i.of      ; 4 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %bb.dr, label %.critedge151.sink.split.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.oi = zext nneg i32 %i.og to i64
  %i.oj = shl nuw nsw i64 %i.oi, 3
  %i.ok = call noalias ptr @uprv_malloc_78(i64 noundef %i.oj) #13 ; 3 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i104, label %.critedge151.sink.split.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ol = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ol, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.om = load i32, ptr %i.mt, align 8
  %spec.select.i.i.i.i = call i32 @llvm.smin.i32(i32 %.val.i.i.i, i32 %i.om)
  %.1.i.i.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i.i, i32 %i.og)
  %i.on = load ptr, ptr %i.mr, align 8
  %i.oo = sext i32 %.1.i.i.i.i to i64
  %i.op = shl nsw i64 %i.oo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ok, ptr align 8 %i.on, i64 %i.op, i1 false)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.val19.i.i.i.i = load i8, ptr %i.mu, align 4
  %.not.i.i.i.i.i = icmp eq i8 %.val19.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118AttributeListEntryELi8EE6resizeEii.exit.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.val.i.i.i.i = load ptr, ptr %i.mr, align 8
  call void @uprv_free_78(ptr noundef %.val.i.i.i.i) #12
  br label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118AttributeListEntryELi8EE6resizeEii.exit.i.i.i

_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118AttributeListEntryELi8EE6resizeEii.exit.i.i.i: ; preds = %bb.dv, %bb.du
  store ptr %i.ok, ptr %i.mr, align 8
  store i32 %i.og, ptr %i.mt, align 8
  store i8 1, ptr %i.mu, align 4
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118AttributeListEntryELi8EE6resizeEii.exit.i.i.i, %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i
  %i.oq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #12 ; 8 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread246.i.i, label %bb.dx

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread246.i.i: ; preds = %bb.dw
  %i.os = load i32, ptr %6, align 8               ; 2 uses
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %6, align 8
  %i.ou = sext i32 %i.os to i64
  %.val8.i247.i.i = load ptr, ptr %i.mr, align 8
  %i.ov = getelementptr inbounds [8 x i8], ptr %.val8.i247.i.i, i64 %i.ou
  store ptr null, ptr %i.ov, align 8
  br label %.critedge151.sink.split.i.i

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, i8 0, i64 16, i1 false)
  %i.ow = load i32, ptr %6, align 8               ; 2 uses
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %6, align 8
  %i.oy = sext i32 %i.ow to i64
  %.val8.i.i.i = load ptr, ptr %i.mr, align 8
  %i.oz = getelementptr inbounds [8 x i8], ptr %.val8.i.i.i, i64 %i.oy
  store ptr %i.oq, ptr %i.oz, align 8
  %i.pa = load i32, ptr %i.mp, align 8            ; 5 uses
  %i.pb = load i32, ptr %5, align 8
  %i.pc = icmp eq i32 %i.pb, %i.pa
  br i1 %i.pc, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  %i.pd = icmp eq i32 %i.pa, 8
  %i.pe = shl nsw i32 %i.pa, 1
  %i.pf = select i1 %i.pd, i32 32, i32 %i.pe      ; 4 uses
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %bb.dz, label %.critedge151.sink.split.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.ph = zext nneg i32 %i.pf to i64
  %i.pi = shl nuw nsw i64 %i.ph, 3
  %i.pj = call noalias ptr @uprv_malloc_78(i64 noundef %i.pi) #13 ; 3 uses
  %.not.i.i162.i.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i162.i.i, label %.critedge151.sink.split.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.pk = icmp sgt i32 %i.pa, 0
  br i1 %i.pk, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.pl = load i32, ptr %i.mp, align 8
  %spec.select.i.i164.i.i = call i32 @llvm.smin.i32(i32 %i.pa, i32 %i.pl)
  %.1.i.i165.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i164.i.i, i32 %i.pf)
  %i.pm = load ptr, ptr %i.mn, align 8
  %i.pn = sext i32 %.1.i.i165.i.i to i64
  %i.po = shl nsw i64 %i.pn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.pj, ptr align 8 %i.pm, i64 %i.po, i1 false)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.pp = load i8, ptr %i.mq, align 4
  %.not.i.i.i163.i.i = icmp eq i8 %i.pp, 0
  br i1 %.not.i.i.i163.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pq = load ptr, ptr %i.mn, align 8
  call void @uprv_free_78(ptr noundef %i.pq) #12
  br label %_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.i.i.i

_ZN6icu_7815MaybeStackArrayIPNS_10CharStringELi8EE6resizeEii.exit.i.i.i: ; preds = %bb.ed, %bb.ec
  store ptr %i.pj, ptr %i.mn, align 8
  store i32 %i.pf, ptr %i.mp, align 8
  store i8 1, ptr %i.mq, align 4
  br label %bb.ee

end_hunk_0
begin_hunk_1_@_Z25ulocimp_forLanguageTag_78PKciRN6icu_788ByteSinkEPiR10UErrorCode:bb.a
  %i.abk = load ptr, ptr %i.abj, align 8          ; 4 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.sink.split.i, label %bb.he, !llvm.loop !68

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.sink.split.i: ; preds = %.thread.thread61.i184.i.i, %bb.he
  %i.abm = getelementptr inbounds nuw i8, ptr %.0466775.i183.i.i, i64 16
  store ptr %.094331.i.i, ptr %i.abm, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.i: ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.sink.split.i, %.preheader.i181.i.i, %.lr.ph333.i.i
  %.us-phi108.i186.i.sink.i = phi ptr [ null, %.lr.ph333.i.i ], [ %.5186.i, %.preheader.i181.i.i ], [ %i.abk, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.sink.split.i ]
  %.7188.ph.i = phi ptr [ %.094331.i.i, %.lr.ph333.i.i ], [ %.094331.i.i, %.preheader.i181.i.i ], [ %.5186.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.sink.split.i ]
  store ptr %.us-phi108.i186.i.sink.i, ptr %i.aax, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.i: ; preds = %.thread.i182.i.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.i
  %.7188.i = phi ptr [ %.7188.ph.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.sink.split.i ], [ %.5186.i, %.thread.i182.i.i ] ; 2 uses
  %.not146.i.i = icmp eq ptr %i.aay, null
  br i1 %.not146.i.i, label %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i, label %.lr.ph333.i.i, !llvm.loop !69

.critedge151.sink.split.i.i:                      ; preds = %bb.dz, %bb.dy, %bb.dr, %bb.dq, %bb.fc, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJEEEPS1_DpOT_.exit.thread210.i, %bb.es, %bb.er, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit161.thread207.i, %bb.ek, %bb.ej, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJRPKcRiR10UErrorCodeEEEPS1_DpOT_.exit.thread250.i.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread246.i.i
  %.sink428.i.i = phi i32 [ 7, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit161.thread207.i ], [ 7, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJEEEPS1_DpOT_.exit.thread210.i ], [ 7, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EE6createIJRPKcRiR10UErrorCodeEEEPS1_DpOT_.exit.thread250.i.i ], [ 7, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread246.i.i ], [ 7, %bb.ej ], [ 7, %bb.ek ], [ 7, %bb.es ], [ 7, %bb.er ], [ 1, %bb.fc ], [ 7, %bb.dq ], [ 7, %bb.dr ], [ 7, %bb.dy ], [ 7, %bb.dz ]
  store i32 %.sink428.i.i, ptr %4, align 4
  br label %.critedge151.i.i

.critedge151.i.i:                                 ; preds = %bb.ef, %.critedge151.sink.split.i.i, %bb.fb
  %i.abn = load i32, ptr %6, align 8              ; 2 uses
  %i.abo = icmp sgt i32 %i.abn, 0
  br i1 %i.abo, label %.lr.ph.i195.i.i, label %._crit_edge.i191.i.i

._crit_edge.i191.i.i:                             ; preds = %bb.hh, %.critedge151.i.i
  %.val5.i192.i.i = load i8, ptr %i.mu, align 4
  %.not.i.i.i193.i.i = icmp eq i8 %.val5.i192.i.i, 0
  br i1 %.not.i.i.i193.i.i, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge.i191.i.i
  %.val4.i194.i.i = load ptr, ptr %i.mr, align 8
  call void @uprv_free_78(ptr noundef %.val4.i194.i.i) #12
  br label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i

.lr.ph.i195.i.i:                                  ; preds = %.critedge151.i.i, %bb.hh
  %i.abp = phi i32 [ %i.abt, %bb.hh ], [ %i.abn, %.critedge151.i.i ]
  %indvars.iv.i196.i.i = phi i64 [ %indvars.iv.next.i199.i.i, %bb.hh ], [ 0, %.critedge151.i.i ] ; 2 uses
  %.val.i197.i.i = load ptr, ptr %i.mr, align 8
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %.val.i197.i.i, i64 %indvars.iv.i196.i.i
  %i.abr = load ptr, ptr %i.abq, align 8          ; 2 uses
  %i.abs = icmp eq ptr %i.abr, null
  br i1 %i.abs, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i195.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.abr) #12
  %.pre.i198.i.i = load i32, ptr %6, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph.i195.i.i
  %i.abt = phi i32 [ %i.abp, %.lr.ph.i195.i.i ], [ %.pre.i198.i.i, %bb.hg ] ; 2 uses
  %indvars.iv.next.i199.i.i = add nuw nsw i64 %indvars.iv.i196.i.i, 1 ; 2 uses
  %i.abu = sext i32 %i.abt to i64
  %i.abv = icmp slt i64 %indvars.iv.next.i199.i.i, %i.abu
  br i1 %i.abv, label %.lr.ph.i195.i.i, label %._crit_edge.i191.i.i, !llvm.loop !40

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i: ; preds = %bb.hf, %._crit_edge.i191.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.abw = load i32, ptr %5, align 8              ; 2 uses
  %i.abx = icmp sgt i32 %i.abw, 0
  br i1 %i.abx, label %.lr.ph.i203.i.i, label %._crit_edge.i201.i.i

._crit_edge.i201.i.i:                             ; preds = %bb.hl, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i
  %i.aby = load i8, ptr %i.mq, align 4
  %.not.i.i.i202.i.i = icmp eq i8 %i.aby, 0
  br i1 %.not.i.i.i202.i.i, label %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i, label %bb.hi

bb.hi:                                            ; preds = %._crit_edge.i201.i.i
  %i.abz = load ptr, ptr %i.mn, align 8
  call void @uprv_free_78(ptr noundef %i.abz) #12
  br label %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i

.lr.ph.i203.i.i:                                  ; preds = %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i, %bb.hl
  %i.aca = phi i32 [ %i.aci, %bb.hl ], [ %i.abw, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i ]
  %indvars.iv.i204.i.i = phi i64 [ %indvars.iv.next.i208.i.i, %bb.hl ], [ 0, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118AttributeListEntryELi8EED2Ev.exit200.i.i ] ; 2 uses
  %i.acb = load ptr, ptr %i.mn, align 8
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %indvars.iv.i204.i.i
  %i.acd = load ptr, ptr %i.acc, align 8          ; 4 uses
  %i.ace = icmp eq ptr %i.acd, null
  br i1 %i.ace, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %.lr.ph.i203.i.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 12
  %i.acg = load i8, ptr %i.acf, align 4
  %.not.i.i.i.i205.i.i = icmp eq i8 %i.acg, 0
  br i1 %.not.i.i.i.i205.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i206.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ach = load ptr, ptr %i.acd, align 8
  call void @uprv_free_78(ptr noundef %i.ach) #12
  br label %_ZN6icu_7810CharStringD2Ev.exit.i206.i.i

_ZN6icu_7810CharStringD2Ev.exit.i206.i.i:         ; preds = %bb.hk, %bb.hj
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.acd) #12
  %.pre.i207.i.i = load i32, ptr %5, align 8
  br label %bb.hl

bb.hl:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i206.i.i, %.lr.ph.i203.i.i
  %i.aci = phi i32 [ %i.aca, %.lr.ph.i203.i.i ], [ %.pre.i207.i.i, %_ZN6icu_7810CharStringD2Ev.exit.i206.i.i ] ; 2 uses
  %indvars.iv.next.i208.i.i = add nuw nsw i64 %indvars.iv.i204.i.i, 1 ; 2 uses
  %i.acj = sext i32 %i.aci to i64
  %i.ack = icmp slt i64 %indvars.iv.next.i208.i.i, %i.acj
  br i1 %i.ack, label %.lr.ph.i203.i.i, label %._crit_edge.i201.i.i, !llvm.loop !38

_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i: ; preds = %bb.hi, %._crit_edge.i201.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i

_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i: ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.i, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i, %.critedge157.i.i, %.critedge159.i.i
  %.4185.ph.i = phi ptr [ %.0181304.i, %.critedge157.i.i ], [ %.0181304.i, %.critedge159.i.i ], [ %.0181304.i, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i ], [ %.7188.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.i ] ; 2 uses
  %.4.ph.i = phi i8 [ %.7.i, %.critedge157.i.i ], [ %.5.i, %.critedge159.i.i ], [ 0, %_ZN6icu_7810MemoryPoolINS_10CharStringELi8EED2Ev.exit209.i.i ], [ %.7.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit190.i.i ] ; 2 uses
  %.pre.pr.i = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.acl = icmp slt i32 %.pre.pr.i, 1
  br i1 %i.acl, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.hm:                                            ; preds = %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i
  %.val.i.i = load i32, ptr %i.md, align 8        ; 5 uses
  %i.acm = load i32, ptr %10, align 8
  %i.acn = icmp eq i32 %i.acm, %.val.i.i
  br i1 %i.acn, label %bb.hn, label %bb.ht

bb.hn:                                            ; preds = %bb.hm
  %i.aco = icmp eq i32 %.val.i.i, 8
  %i.acp = shl nsw i32 %.val.i.i, 1
  %i.acq = select i1 %i.aco, i32 32, i32 %i.acp   ; 4 uses
  %i.acr = icmp sgt i32 %i.acq, 0
  br i1 %i.acr, label %bb.ho, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i

bb.ho:                                            ; preds = %bb.hn
  %i.acs = zext nneg i32 %i.acq to i64
  %i.act = shl nuw nsw i64 %i.acs, 3
  %i.acu = call noalias ptr @uprv_malloc_78(i64 noundef %i.act) #13 ; 3 uses
  %.not.i.i82.i = icmp eq ptr %i.acu, null
  br i1 %.not.i.i82.i, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.acv = icmp sgt i32 %.val.i.i, 0
  br i1 %i.acv, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.acw = load i32, ptr %i.md, align 8
  %spec.select.i.i.i = call i32 @llvm.smin.i32(i32 %.val.i.i, i32 %i.acw)
  %.1.i.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i.i, i32 %i.acq)
  %i.acx = load ptr, ptr %i.mb, align 8
  %i.acy = sext i32 %.1.i.i.i to i64
  %i.acz = shl nsw i64 %i.acy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.acu, ptr align 8 %i.acx, i64 %i.acz, i1 false)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.val19.i.i.i = load i8, ptr %i.me, align 4
  %.not.i.i.i83.i = icmp eq i8 %.val19.i.i.i, 0
  br i1 %.not.i.i.i83.i, label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.val.i.i84.i = load ptr, ptr %i.mb, align 8
  call void @uprv_free_78(ptr noundef %.val.i.i84.i) #12
  br label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i.i

_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i.i: ; preds = %bb.hs, %bb.hr
  store ptr %i.acu, ptr %i.mb, align 8
  store i32 %i.acq, ptr %i.md, align 8
  store i8 1, ptr %i.me, align 4
  br label %bb.ht

bb.ht:                                            ; preds = %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i.i, %bb.hm
  %i.ada = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #12 ; 9 uses
  %i.adb = icmp eq ptr %i.ada, null
  br i1 %i.adb, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread219.i, label %bb.hu

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread219.i: ; preds = %bb.ht
  %i.adc = load i32, ptr %10, align 8             ; 2 uses
  %i.add = add nsw i32 %i.adc, 1
  store i32 %i.add, ptr %10, align 8
  %i.ade = sext i32 %i.adc to i64
  %.val8.i220.i = load ptr, ptr %i.mb, align 8
  %i.adf = getelementptr inbounds [8 x i8], ptr %.val8.i220.i, i64 %i.ade
  store ptr null, ptr %i.adf, align 8
  br label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i: ; preds = %bb.ho, %bb.hn, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread219.i
  store i32 7, ptr %4, align 4
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ada, i8 0, i64 24, i1 false)
  %i.adg = load i32, ptr %10, align 8             ; 2 uses
  %i.adh = add nsw i32 %i.adg, 1
  store i32 %i.adh, ptr %10, align 8
  %i.adi = sext i32 %i.adg to i64
  %.val8.i.i = load ptr, ptr %i.mb, align 8
  %i.adj = getelementptr inbounds [8 x i8], ptr %.val8.i.i, i64 %i.adi
  store ptr %i.ada, ptr %i.adj, align 8
  store ptr %.08.i.i, ptr %i.ada, align 8
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store ptr %.08.i71.i, ptr %i.adk, align 8
  %i.adl = icmp eq ptr %.0181304.i, null
  br i1 %i.adl, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i, label %.preheader.i85.i

.preheader.i85.i:                                 ; preds = %bb.hu
  %i.adm = load ptr, ptr %.0181304.i, align 8
  %i.adn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08.i.i, ptr noundef nonnull dereferenceable(1) %i.adm) #11 ; 2 uses
  %i.ado = icmp slt i32 %i.adn, 0
  br i1 %i.ado, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i, label %.thread.i86.i

bb.hv:                                            ; preds = %.thread.thread61.i.i
  %i.adp = load ptr, ptr %i.adv, align 8
  %i.adq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08.i.i, ptr noundef nonnull dereferenceable(1) %i.adp) #11 ; 2 uses
  %i.adr = icmp slt i32 %i.adq, 0
  br i1 %i.adr, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i, label %.thread.i86.i, !llvm.loop !68

.thread.i86.i:                                    ; preds = %.preheader.i85.i, %bb.hv
  %i.ads = phi i32 [ %i.adq, %bb.hv ], [ %i.adn, %.preheader.i85.i ]
  %.0466775.i.i = phi ptr [ %i.adv, %bb.hv ], [ %.0181304.i, %.preheader.i85.i ] ; 2 uses
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.i, label %.thread.thread61.i.i

.thread.thread61.i.i:                             ; preds = %.thread.i86.i
  %i.adu = getelementptr inbounds nuw i8, ptr %.0466775.i.i, i64 16
  %i.adv = load ptr, ptr %i.adu, align 8          ; 4 uses
  %i.adw = icmp eq ptr %i.adv, null
  br i1 %i.adw, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i, label %bb.hv, !llvm.loop !68

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.i: ; preds = %.thread.i86.i
  store i32 1, ptr %4, align 4
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i: ; preds = %.thread.thread61.i.i, %bb.hv
  %i.adx = getelementptr inbounds nuw i8, ptr %.0466775.i.i, i64 16
  store ptr %i.ada, ptr %i.adx, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i: ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i, %.preheader.i85.i, %bb.hu
  %.us-phi108.i.sink.i = phi ptr [ null, %bb.hu ], [ %.0181304.i, %.preheader.i85.i ], [ %i.adv, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i ]
  %.1182.ph.i = phi ptr [ %i.ada, %bb.hu ], [ %i.ada, %.preheader.i85.i ], [ %.0181304.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.sink.split.i ]
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store ptr %.us-phi108.i.sink.i, ptr %i.ady, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i
  %.1182.i = phi ptr [ %.4185.ph.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i ], [ %.1182.ph.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i ] ; 3 uses
  %.2.i = phi i8 [ %.4.ph.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i ], [ %.0179312.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.sink.split.i ] ; 3 uses
  %i.adz = add nuw nsw i32 %.052313.i, 1
  %exitcond.not.i = icmp eq i32 %.052313.i, %.046.i.i
  br i1 %exitcond.not.i, label %.loopexit228.i, label %bb.dj, !llvm.loop !70

.loopexit228.i:                                   ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i
  %.pre374.pre.i = load i32, ptr %4, align 4
  %i.aea = icmp sgt i32 %.pre374.pre.i, 0
  br i1 %i.aea, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i, label %.loopexit228.thread469.i

.loopexit228.thread469.i:                         ; preds = %.loopexit228.i, %bb.di
  %.3473.i = phi i8 [ %.2.i, %.loopexit228.i ], [ 0, %bb.di ] ; 6 uses
  %.2183472.i = phi ptr [ %.1182.i, %.loopexit228.i ], [ null, %bb.di ] ; 9 uses
  %.val.i = load ptr, ptr %i.lv, align 8          ; 2 uses
  %i.aeb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val.i) #11
  %i.aec = trunc i64 %i.aeb to i32
  %i.aed = icmp sgt i32 %i.aec, 0
  br i1 %i.aed, label %bb.hw, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.hw:                                            ; preds = %.loopexit228.thread469.i
  %.val.i87.i = load i32, ptr %i.md, align 8      ; 5 uses
  %i.aee = load i32, ptr %10, align 8
  %i.aef = icmp eq i32 %i.aee, %.val.i87.i
  br i1 %i.aef, label %bb.hx, label %bb.id

bb.hx:                                            ; preds = %bb.hw
  %i.aeg = icmp eq i32 %.val.i87.i, 8
  %i.aeh = shl nsw i32 %.val.i87.i, 1
  %i.aei = select i1 %i.aeg, i32 32, i32 %i.aeh   ; 4 uses
  %i.aej = icmp sgt i32 %i.aei, 0
  br i1 %i.aej, label %bb.hy, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i

bb.hy:                                            ; preds = %bb.hx
  %i.aek = zext nneg i32 %i.aei to i64
  %i.ael = shl nuw nsw i64 %i.aek, 3
  %i.aem = call noalias ptr @uprv_malloc_78(i64 noundef %i.ael) #13 ; 3 uses
  %.not.i.i90.i = icmp eq ptr %i.aem, null
  br i1 %.not.i.i90.i, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aen = icmp sgt i32 %.val.i87.i, 0
  br i1 %i.aen, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.aeo = load i32, ptr %i.md, align 8
  %spec.select.i.i95.i = call i32 @llvm.smin.i32(i32 %.val.i87.i, i32 %i.aeo)
  %.1.i.i96.i = call i32 @llvm.smin.i32(i32 %spec.select.i.i95.i, i32 %i.aei)
  %i.aep = load ptr, ptr %i.mb, align 8
  %i.aeq = sext i32 %.1.i.i96.i to i64
  %i.aer = shl nsw i64 %i.aeq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aem, ptr align 8 %i.aep, i64 %i.aer, i1 false)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.val19.i.i91.i = load i8, ptr %i.me, align 4
  %.not.i.i.i92.i = icmp eq i8 %.val19.i.i91.i, 0
  br i1 %.not.i.i.i92.i, label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i94.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %.val.i.i93.i = load ptr, ptr %i.mb, align 8
  call void @uprv_free_78(ptr noundef %.val.i.i93.i) #12
  br label %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i94.i

_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i94.i: ; preds = %bb.ic, %bb.ib
  store ptr %i.aem, ptr %i.mb, align 8
  store i32 %i.aei, ptr %i.md, align 8
  store i8 1, ptr %i.me, align 4
  br label %bb.id

bb.id:                                            ; preds = %_ZN6icu_7815MaybeStackArrayIPN12_GLOBAL__N_118ExtensionListEntryELi8EE6resizeEii.exit.i94.i, %bb.hw
  %i.aes = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #12 ; 12 uses
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread224.i, label %bb.ie

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread224.i: ; preds = %bb.id
  %i.aeu = load i32, ptr %10, align 8             ; 2 uses
  %i.aev = add nsw i32 %i.aeu, 1
  store i32 %i.aev, ptr %10, align 8
  %i.aew = sext i32 %i.aeu to i64
  %.val8.i88225.i = load ptr, ptr %i.mb, align 8
  %i.aex = getelementptr inbounds [8 x i8], ptr %.val8.i88225.i, i64 %i.aew
  store ptr null, ptr %i.aex, align 8
  br label %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i

_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i: ; preds = %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread224.i, %bb.hy, %bb.hx
  store i32 7, ptr %4, align 4
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.ie:                                            ; preds = %bb.id
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aes, i8 0, i64 24, i1 false)
  %i.aey = load i32, ptr %10, align 8             ; 2 uses
  %i.aez = add nsw i32 %i.aey, 1
  store i32 %i.aez, ptr %10, align 8
  %i.afa = sext i32 %i.aey to i64
  %.val8.i88.i = load ptr, ptr %i.mb, align 8
  %i.afb = getelementptr inbounds [8 x i8], ptr %.val8.i88.i, i64 %i.afa
  store ptr %i.aes, ptr %i.afb, align 8
  store ptr @_ZN12_GLOBAL__N_114PRIVATEUSE_KEYE, ptr %i.aes, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  store ptr %.val.i, ptr %i.afc, align 8
  %i.afd = icmp eq ptr %.2183472.i, null
  br i1 %i.afd, label %bb.if, label %.preheader.i98.i

.preheader.i98.i:                                 ; preds = %bb.ie
  %i.afe = load ptr, ptr %.2183472.i, align 8
  %i.aff = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @_ZN12_GLOBAL__N_114PRIVATEUSE_KEYE, ptr noundef nonnull dereferenceable(1) %i.afe) #11 ; 2 uses
  %i.afg = icmp slt i32 %i.aff, 0
  br i1 %i.afg, label %.thread57.thread.i106.i, label %.thread.i99.i

bb.if:                                            ; preds = %bb.ie
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  store ptr null, ptr %i.afh, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

.split.us.i105.i:                                 ; preds = %.thread.thread61.i101.i
  %i.afi = getelementptr inbounds nuw i8, ptr %.0466775.i100.i, i64 16
  store ptr %i.aes, ptr %i.afi, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  store ptr null, ptr %i.afj, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.ig:                                            ; preds = %.thread.thread61.i101.i
  %i.afk = load ptr, ptr %i.afs, align 8
  %i.afl = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @_ZN12_GLOBAL__N_114PRIVATEUSE_KEYE, ptr noundef nonnull dereferenceable(1) %i.afk) #11 ; 2 uses
  %i.afm = icmp slt i32 %i.afl, 0
  br i1 %i.afm, label %.thread57.thread110.i102.i, label %.thread.i99.i, !llvm.loop !68

.thread57.thread110.i102.i:                       ; preds = %bb.ig
  %i.afn = getelementptr inbounds nuw i8, ptr %.0466775.i100.i, i64 16
  store ptr %i.aes, ptr %i.afn, align 8
  br label %.thread57.thread.i106.i

.thread57.thread.i106.i:                          ; preds = %.thread57.thread110.i102.i, %.preheader.i98.i
  %.11.i = phi ptr [ %.2183472.i, %.thread57.thread110.i102.i ], [ %i.aes, %.preheader.i98.i ]
  %.us-phi108.i103.i = phi ptr [ %i.afs, %.thread57.thread110.i102.i ], [ %.2183472.i, %.preheader.i98.i ]
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  store ptr %.us-phi108.i103.i, ptr %i.afo, align 8
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

.thread.i99.i:                                    ; preds = %.preheader.i98.i, %bb.ig
  %i.afp = phi i32 [ %i.afl, %bb.ig ], [ %i.aff, %.preheader.i98.i ]
  %.0466775.i100.i = phi ptr [ %i.afs, %bb.ig ], [ %.2183472.i, %.preheader.i98.i ] ; 3 uses
  %i.afq = icmp eq i32 %i.afp, 0
  br i1 %i.afq, label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.i, label %.thread.thread61.i101.i

.thread.thread61.i101.i:                          ; preds = %.thread.i99.i
  %i.afr = getelementptr inbounds nuw i8, ptr %.0466775.i100.i, i64 16
  %i.afs = load ptr, ptr %i.afr, align 8          ; 4 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %.split.us.i105.i, label %bb.ig, !llvm.loop !68

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.i: ; preds = %.thread.i99.i
  store i32 1, ptr %4, align 4
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i: ; preds = %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.i, %.thread57.thread.i106.i, %.split.us.i105.i, %bb.if, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i, %.loopexit228.thread469.i, %.loopexit228.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread462.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i
  %.3468.i = phi i8 [ %.2.i, %.loopexit228.i ], [ %.3473.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i ], [ %.3473.i, %.loopexit228.thread469.i ], [ %.3473.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.i ], [ %.3473.i, %.split.us.i105.i ], [ %.3473.i, %.thread57.thread.i106.i ], [ %.3473.i, %bb.if ], [ %.5.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread462.i ], [ %.0179312.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.i ], [ %spec.select.i99, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i ], [ %.0179312.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i ], [ %.4.ph.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i ]
  %.3184.i = phi ptr [ %.1182.i, %.loopexit228.i ], [ %.2183472.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit97.thread.i ], [ %.2183472.i, %.loopexit228.thread469.i ], [ %.2183472.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.i ], [ %.2183472.i, %.split.us.i105.i ], [ %.11.i, %.thread57.thread.i106.i ], [ %i.aes, %bb.if ], [ %.0181304.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread462.i ], [ %.0181304.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.i ], [ %.0181304.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i ], [ %.0181304.i, %_ZN6icu_7810MemoryPoolIN12_GLOBAL__N_118ExtensionListEntryELi8EE6createIJEEEPS2_DpOT_.exit.thread.i ], [ %.4185.ph.i, %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.i ] ; 4 uses
  %i.afu = load i32, ptr %4, align 4              ; 2 uses
  %i.afv = icmp slt i32 %i.afu, 1
  %i.afw = trunc nuw i8 %.3468.i to i1
  %or.cond.i97 = select i1 %i.afv, i1 %i.afw, i1 false
  br i1 %or.cond.i97, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i
  %i.afx = load ptr, ptr %2, align 8
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
end_hunk_1
