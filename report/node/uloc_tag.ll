inline.NumInlined: 452
inline.NumDeleted: 139
begin_hunk_0_@_Z25ulocimp_forLanguageTag_78PKciRN6icu_788ByteSinkEPiR10UErrorCode:bb.a
  %i.jj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val73) #11
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jm = load ptr, ptr %2, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  tail call void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.jp = load i8, ptr %.val73, align 1
  %i.jq = tail call signext i8 @uprv_toupper_78(i8 noundef signext %i.jp) #12
  store i8 %i.jq, ptr %i.b, align 1
  %i.jr = load ptr, ptr %2, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.b, i32 noundef 1) #12
  %i.ju = getelementptr inbounds nuw i8, ptr %.val73, i64 1
  %i.jv = add nsw i32 %i.jk, -1
  %i.jw = load ptr, ptr %2, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ju, i32 noundef %i.jv) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.151 = phi i1 [ false, %bb.cy ], [ %.050, %bb.cx ]
  %i.jz = getelementptr i8, ptr %.9.i452.ph, i64 48
  %.val74 = load ptr, ptr %i.jz, align 8          ; 3 uses
  %i.ka = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val74) #11
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = icmp slt i32 %i.kb, 1                   ; 2 uses
  br i1 %i.kc, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kd = load ptr, ptr %2, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i32 noundef 1) #12
  %i.kg = load i8, ptr %.val74, align 1           ; 2 uses
  %.not57239 = icmp eq i8 %i.kg, 0
  br i1 %.not57239, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.da, %.lr.ph
  %i.kh = phi i8 [ %i.kn, %.lr.ph ], [ %i.kg, %bb.da ]
  %.049240 = phi ptr [ %i.km, %.lr.ph ], [ %.val74, %bb.da ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ki = call signext i8 @uprv_toupper_78(i8 noundef signext %i.kh) #12
  store i8 %i.ki, ptr %i.c, align 1
  %i.kj = load ptr, ptr %2, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c, i32 noundef 1) #12
  %i.km = getelementptr inbounds nuw i8, ptr %.049240, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.kn = load i8, ptr %i.km, align 1             ; 2 uses
  %.not57 = icmp eq i8 %i.kn, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph, !llvm.loop !55

.loopexit:                                        ; preds = %.lr.ph, %bb.da, %bb.cz
  %.2 = phi i1 [ %.151, %bb.cz ], [ false, %bb.da ], [ false, %.lr.ph ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.9.i452.ph, i64 56 ; 4 uses
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.kp, null
  br i1 %.not18.i, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.loopexit, %._crit_edge.i78
  %.019.i = phi ptr [ %.pre.i79, %._crit_edge.i78 ], [ %i.kp, %.loopexit ] ; 3 uses
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
  br i1 %i.ky, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit, label %.lr.ph.i81, !llvm.loop !56

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
  br i1 %i.le, label %.lr.ph.i83._crit_edge, label %.lr.ph685, !llvm.loop !57

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
  br i1 %.not.i85, label %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit, label %.lr.ph.i83, !llvm.loop !57

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
  br i1 %.not59, label %._crit_edge, label %.lr.ph243, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph243, %_ZN12_GLOBAL__N_116ultag_getVariantEPKNS_12ULanguageTagEi.exit
  %i.ls = add nuw i32 %.048244, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ls, %indvars.iv
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.thread, label %bb.df, !llvm.loop !59

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
  %.not58 = icmp eq i8 %char0, 0
  br i1 %.not58, label %_ZN12_GLOBAL__N_115_appendKeywordsEPNS_12ULanguageTagERN6icu_788ByteSinkER10UErrorCode.exit.thread, label %.thread

bb.dh:                                            ; preds = %.lr.ph.i88.preheader
  %i.lw = load ptr, ptr %2, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZN12_GLOBAL__N_18LANG_UNDE, i32 noundef 3) #12
  br label %.thread

.thread:                                          ; preds = %bb.dg, %bb.dh, %.lr.ph.i88.preheader
  %.old = load i32, ptr %4, align 4
  %.old695 = icmp slt i32 %.old, 1
  br i1 %.old695, label %bb.di, label %_ZN12_GLOBAL__N_115_appendKeywordsEPNS_12ULanguageTagERN6icu_788ByteSinkER10UErrorCode.exit.thread

bb.di:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store i32 0, ptr %10, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 23 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ma, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 13 uses
  store i32 8, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 10 uses
  store i8 0, ptr %i.mc, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store i32 0, ptr %11, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 18 uses
  %i.me = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.me, ptr %i.md, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  store i32 8, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 8 uses
  store i8 0, ptr %i.mg, align 4
  %.05.i.i = load ptr, ptr %i.lt, align 8         ; 2 uses
  %i.mh = icmp eq ptr %.05.i.i, null
  br i1 %i.mh, label %.loopexit228.thread469.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.di, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.i.i94, %.lr.ph.i.i ], [ %.05.i.i, %bb.di ]
  %.046.i.i = phi i32 [ %i.mi, %.lr.ph.i.i ], [ 0, %bb.di ] ; 2 uses
  %i.mi = add nuw nsw i32 %.046.i.i, 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %.0.i.i94 = load ptr, ptr %i.mj, align 8        ; 2 uses
  %i.mk = icmp eq ptr %.0.i.i94, null
  br i1 %i.mk, label %.lr.ph.i95, label %.lr.ph.i.i, !llvm.loop !60

.lr.ph.i95:                                       ; preds = %.lr.ph.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i, %.lr.ph.i95
  %.052313.i = phi i32 [ 0, %.lr.ph.i95 ], [ %i.ady, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 6 uses
  %.0179312.i = phi i8 [ 0, %.lr.ph.i95 ], [ %.2.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 4 uses
  %.0181304.i = phi ptr [ null, %.lr.ph.i95 ], [ %.1182.i, %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit.thread.i ] ; 13 uses
  %.0710.i.i = load ptr, ptr %i.lt, align 8, !nonnull !33, !noundef !33 ; 4 uses
  %i.my = icmp eq i32 %.052313.i, 0
  br i1 %i.my, label %.lr.ph.i62.i._crit_edge, label %.lr.ph689

.lr.ph.i62.i:                                     ; preds = %.lr.ph689
  %i.mz = add nuw nsw i32 %.012.i.i687, 1         ; 2 uses
  %i.na = icmp eq i32 %i.mz, %.052313.i
  br i1 %i.na, label %.lr.ph.i62.i._crit_edge, label %.lr.ph689, !llvm.loop !61

.lr.ph.i62.i._crit_edge:                          ; preds = %.lr.ph.i62.i, %bb.dj
  %.0713.i.i.lcssa = phi ptr [ %.0710.i.i, %bb.dj ], [ %.07.i63.i, %.lr.ph.i62.i ]
  %i.nb = load ptr, ptr %.0713.i.i.lcssa, align 8
  br label %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i

.lr.ph689:                                        ; preds = %bb.dj, %.lr.ph.i62.i
  %.012.i.i687 = phi i32 [ %i.mz, %.lr.ph.i62.i ], [ 0, %bb.dj ]
  %.0713.i.i686 = phi ptr [ %.07.i63.i, %.lr.ph.i62.i ], [ %.0710.i.i, %bb.dj ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.0713.i.i686, i64 16
  %.07.i63.i = load ptr, ptr %i.nc, align 8       ; 3 uses
  %.not.i.i96 = icmp eq ptr %.07.i63.i, null
  br i1 %.not.i.i96, label %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i, label %.lr.ph.i62.i, !llvm.loop !61

_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i: ; preds = %.lr.ph689, %.lr.ph.i62.i._crit_edge
  %.08.i.i = phi ptr [ %i.nb, %.lr.ph.i62.i._crit_edge ], [ null, %.lr.ph689 ] ; 4 uses
  %i.nd = icmp eq i32 %.052313.i, 0
  br i1 %i.nd, label %.lr.ph.i66.i._crit_edge, label %.lr.ph693

.lr.ph.i66.i:                                     ; preds = %.lr.ph693
  %i.ne = add nuw nsw i32 %.012.i68.i692, 1       ; 2 uses
  %i.nf = icmp eq i32 %i.ne, %.052313.i
  br i1 %i.nf, label %.lr.ph.i66.i._crit_edge, label %.lr.ph693, !llvm.loop !62

.lr.ph.i66.i._crit_edge:                          ; preds = %.lr.ph.i66.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i
  %.0713.i67.i.lcssa = phi ptr [ %.0710.i.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ], [ %.07.i69.i, %.lr.ph.i66.i ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.0713.i67.i.lcssa, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8
  br label %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i

.lr.ph693:                                        ; preds = %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i, %.lr.ph.i66.i
  %.012.i68.i692 = phi i32 [ %i.ne, %.lr.ph.i66.i ], [ 0, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ]
  %.0713.i67.i691 = phi ptr [ %.07.i69.i, %.lr.ph.i66.i ], [ %.0710.i.i, %_ZN12_GLOBAL__N_121ultag_getExtensionKeyEPKNS_12ULanguageTagEi.exit.i ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.0713.i67.i691, i64 16
  %.07.i69.i = load ptr, ptr %i.ni, align 8       ; 3 uses
  %.not.i70.i = icmp eq ptr %.07.i69.i, null
  br i1 %.not.i70.i, label %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i, label %.lr.ph.i66.i, !llvm.loop !62

_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i: ; preds = %.lr.ph693, %.lr.ph.i66.i._crit_edge
  %.08.i71.i = phi ptr [ %i.nh, %.lr.ph.i66.i._crit_edge ], [ null, %.lr.ph693 ] ; 3 uses
  %i.nj = load i8, ptr %.08.i.i, align 1
  %i.nk = icmp eq i8 %i.nj, 117
  br i1 %i.nk, label %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i, label %bb.hm

_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i: ; preds = %_ZN12_GLOBAL__N_123ultag_getExtensionValueEPKNS_12ULanguageTagEi.exit.i
  %.05.i72.i = load ptr, ptr %i.ko, align 8
  %i.nl = icmp eq ptr %.05.i72.i, null
  %spec.select.i99 = select i1 %i.nl, i8 %.0179312.i, i8 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.nm = load i32, ptr %4, align 4
  %i.nn = icmp slt i32 %i.nm, 1
  br i1 %i.nn, label %bb.dk, label %_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i

_ZN12_GLOBAL__N_130_appendLDMLExtensionAsKeywordsEPKcPPNS_18ExtensionListEntryERN6icu_7810MemoryPoolIS2_Li8EEERNS6_INS5_10CharStringELi8EEERbR10UErrorCode.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN12_GLOBAL__N_119_addExtensionToListEPPNS_18ExtensionListEntryES1_b.exit107.thread.i

bb.dk:                                            ; preds = %_ZN12_GLOBAL__N_121ultag_getVariantsSizeEPKNS_12ULanguageTagE.exit.i
  %i.no = trunc nuw i8 %spec.select.i99 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store i32 0, ptr %5, align 8
  store ptr %i.mm, ptr %i.ml, align 8
  store i32 8, ptr %i.mn, align 8
  store i8 0, ptr %i.mo, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 0, ptr %6, align 8
  store ptr %i.mq, ptr %i.mp, align 8
  store i32 8, ptr %i.mr, align 8
  store i8 0, ptr %i.ms, align 4
  %i.np = load i8, ptr %.08.i71.i, align 1        ; 2 uses
  %.not121317.i.i = icmp eq i8 %i.np, 0
  br i1 %.not121317.i.i, label %.critedge148.i.i, label %.preheader292.i.i

.preheader292.i.i:                                ; preds = %bb.dk, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i
  %i.nq = phi i8 [ %i.rb, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ %i.np, %bb.dk ] ; 2 uses
  %.0238319.i.i = phi ptr [ %spec.select.i.i, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ %.08.i71.i, %bb.dk ] ; 6 uses
  %.0241318.i.i = phi ptr [ %.2243.i.i, %_ZN12_GLOBAL__N_119_addAttributeToListEPPNS_18AttributeListEntryES1_.exit.i.i ], [ null, %bb.dk ] ; 7 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dm, %.preheader292.i.i
  %i.nr = phi i8 [ %i.nq, %.preheader292.i.i ], [ %.pre.i.i106, %bb.dm ]
  %indvars.iv.i.i = phi i64 [ 0, %.preheader292.i.i ], [ %indvars.iv.next.i.i, %bb.dm ] ; 4 uses
  switch i8 %i.nr, label %bb.dm [
    i8 0, label %.critedge.i.i
    i8 45, label %.critedge.i.i
  ]

bb.dm:                                            ; preds = %bb.dl
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0238319.i.i, i64 %indvars.iv.next.i.i
  %.pre.i.i106 = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.dl, !llvm.loop !63

.critedge.i.i:                                    ; preds = %bb.dl, %bb.dl
  %i.ns = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.nt = icmp eq i64 %indvars.iv.i.i, 2
  br i1 %i.nt, label %bb.dn, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i

bb.dn:                                            ; preds = %.critedge.i.i
  %i.nu = call noundef signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.nq) #12
  %.not.i.i.i105 = icmp eq i8 %i.nu, 0
  br i1 %.not.i.i.i105, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.nv = load i8, ptr %.0238319.i.i, align 1
  %i.nw = add i8 %i.nv, -48
  %i.nx = icmp ult i8 %i.nw, 10
  br i1 %i.nx, label %bb.dp, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ny = getelementptr inbounds nuw i8, ptr %.0238319.i.i, i64 1
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = call noundef signext i8 @uprv_isASCIILetter_78(i8 noundef signext %i.nz) #12
  %.not8.i.i.i = icmp eq i8 %i.oa, 0
  br i1 %.not8.i.i.i, label %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i, label %._crit_edge.i.i

_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i:     ; preds = %bb.dp, %bb.do, %.critedge.i.i
  %.val.i.i.i = load i32, ptr %i.mr, align 8      ; 5 uses
  %i.ob = load i32, ptr %6, align 8
  %i.oc = icmp eq i32 %i.ob, %.val.i.i.i
  br i1 %i.oc, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %_Z27ultag_isUnicodeLocaleKey_78PKci.exit.i.i
  %i.od = icmp eq i32 %.val.i.i.i, 8
  %i.oe = shl nsw i32 %.val.i.i.i, 1
  %i.of = select i1 %i.od, i32 32, i32 %i.oe      ; 4 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.dr, label %.critedge151.sink.split.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.oh = zext nneg i32 %i.of to i64
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = call noalias ptr @uprv_malloc_78(i64 noundef %i.oi) #13 ; 3 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i104, label %.critedge151.sink.split.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ok = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ok, label %bb.dt, label %bb.du
end_hunk_0
