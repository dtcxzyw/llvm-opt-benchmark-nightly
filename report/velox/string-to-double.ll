Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  store i32 %i.cj, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252
  br label %.thread

bb.x:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre549 = phi ptr [ %.pre549.pre, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.cl, null
  br i1 %.not216, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load i8, ptr %.pre549, align 1, !tbaa !23 ; 2 uses
  br i1 %i.p, label %bb.z, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.z:                                             ; preds = %bb.y
  %i.cn = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.aa, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i255, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cr = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ad, %bb.aa, %bb.z
  %i.ct = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef signext i8 %i.cw(ptr noundef nonnull align 8 dereferenceable(570) %i.ct, i8 noundef signext %i.cm), !inline_history !1
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.y, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cx, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.cm, %bb.y ]
  %i.cy = load i8, ptr %i.cl, align 1, !tbaa !23
  %i.cz = icmp eq i8 %.sink.i253, %i.cy
  br i1 %i.cz, label %bb.af, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre548 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.al

bb.af:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.da = load ptr, ptr %i.ck, align 8, !tbaa !34
  %i.db = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.da, i1 noundef zeroext %i.p)
  br i1 %i.db, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !25
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.de = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.de, 0
  %i.df = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not222 = icmp eq ptr %i.df, %i.h              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !25
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %.promoted.i257535 = ptrtoaddr ptr %i.df to i64
  %or.cond402 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond402, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.aj
  %i.di = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dj = sext i8 %i.di to i32
  %i.dk = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dj)
  br i1 %i.dk, label %.lr.ph442.preheader, label %.lr.ph.i259._crit_edge

.lr.ph442.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.dl = add i64 %i.a, %i.g
  %i.dm = sub i64 %i.dl, %.promoted.i257535
  %scevgep536 = getelementptr i8, ptr %i.df, i64 %i.dm ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %.not.not.i263683 = icmp eq ptr %i.dn, %i.h
  br i1 %.not.not.i263683, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !0

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph442.preheader
  br label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph442
  %i.do = phi ptr [ %i.dn, %.lr.ph.i259.lr.ph ], [ %i.ds, %.lr.ph442 ] ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = sext i8 %i.dp to i32
  %i.dr = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dq)
  br i1 %i.dr, label %.lr.ph442, label %.lr.ph.i259._crit_edge, !llvm.loop !0

.lr.ph442:                                        ; preds = %.lr.ph.i259
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.ds, %i.h
  br i1 %.not.not.i263, label %.lr.ph442._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load double, ptr %i.dt, align 8, !tbaa !25
  br label %.thread

.lr.ph442._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge: ; preds = %.lr.ph442
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, !llvm.loop !0

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264: ; preds = %.lr.ph442.preheader, %.lr.ph442._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, %bb.aj
  %i.dv = phi ptr [ %i.df, %bb.aj ], [ %scevgep536, %.lr.ph442._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge ], [ %scevgep536, %.lr.ph442.preheader ]
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %1 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264
  br label %.thread

bb.al:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.x
  %i.ea = phi ptr [ %.pre548, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre549, %bb.x ] ; 4 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !23
  %i.ec = icmp eq i8 %i.eb, 48                    ; 3 uses
  br i1 %i.ec, label %bb.am, label %.critedge227

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 8, !tbaa !35 ; 3 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = icmp eq i16 %i.ee, 0                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 7 uses
  store ptr %i.eh, ptr %i.b, align 8, !tbaa !16
  %i.ei = icmp eq ptr %i.eh, %i.h                 ; 2 uses
  br i1 %i.eg, label %.split, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.am
  br i1 %i.ei, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.am
  br i1 %i.ei, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %bb.an

bb.an:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 2 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, %i.h
  br i1 %i.ek, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !23  ; 2 uses
  %i.em = sext i8 %i.el to i32
  %i.en = icmp eq i32 %i.em, %i.ef
  br i1 %i.en, label %bb.ap, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !23  ; 2 uses
  %i.ep = sext i8 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, -48
  %or.cond.i25.i = icmp ult i32 %i.eq, 10
  %i.er = icmp ult i8 %i.eo, 58
  %or.cond19.i26.i = and i1 %i.er, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.ap
  store ptr %i.ej, ptr %i.b, align 8, !tbaa !16
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %.split
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.es = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %.split, %bb.an, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, %bb.ap
  %.promoted448.ph = phi ptr [ %i.eh, %.split ], [ %i.eh, %bb.an ], [ %i.ej, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.eh, %bb.ap ] ; 2 uses
  %.pre550.pr = load i8, ptr %.promoted448.ph, align 1, !tbaa !23
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.ao
  %.pre550 = phi i8 [ %.pre550.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.el, %bb.ao ] ; 2 uses
  %.promoted448 = phi ptr [ %.promoted448.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.eh, %bb.ao ] ; 5 uses
  %i.et = load i32, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.eu = and i32 %i.et, 128
  %.not218 = icmp eq i32 %i.eu, 0
  %i.ev = and i32 %i.et, 129
  %or.cond225 = icmp eq i32 %i.ev, 0
  br i1 %or.cond225, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  switch i8 %.pre550, label %._crit_edge [
    i8 120, label %bb.ar
    i8 88, label %bb.ar
    i8 48, label %.lr.ph450
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 4 uses
  store ptr %i.ew, ptr %i.b, align 8, !tbaa !16
  %i.ex = icmp eq ptr %i.ew, %i.h
  br i1 %i.ex, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !25
  br label %.thread

bb.at:                                            ; preds = %bb.ar
  br i1 %.not218, label %.thread358, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.h, i16 noundef zeroext %i.ee, i1 noundef zeroext %i.k)
  br i1 %i.fa, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.at, %bb.au
  %i.fb = load i8, ptr %i.ew, align 1, !tbaa !23  ; 3 uses
  %i.fc = sext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -48
  %or.cond.i = icmp ult i32 %i.fd, 10
  %i.fe = icmp ult i8 %i.fb, 64
  %or.cond19.i = and i1 %i.fe, %or.cond.i
  %i.ff = freeze i1 %or.cond19.i
  br i1 %i.ff, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.fb, -65            ; 2 uses
  %i.fg = icmp ult i8 %switch.tableidx, 38
  br i1 %i.fg, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !25
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.au
  %i.fj = phi i1 [ false, %.thread358 ], [ true, %bb.au ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.fk = load i16, ptr %i.ed, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !25
  %i.fn = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.fk, i1 noundef zeroext %i.fj, i1 noundef zeroext %i.k, double noundef %i.fm, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.fo = load i8, ptr %i.c, align 1, !tbaa !37, !range !38, !noundef !30
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.b, align 8   ; 7 uses
  %.promoted.i265537 = ptrtoaddr ptr %.promoted.i265 to i64
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.h
  %or.cond404 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond404, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.av
  %i.fq = load i8, ptr %.promoted.i265, align 1, !tbaa !23
  %i.fr = sext i8 %i.fq to i32
  %i.fs = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fr)
  br i1 %i.fs, label %.lr.ph445.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

.lr.ph445.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.ft = add i64 %i.a, %i.g
  %i.fu = sub i64 %i.ft, %.promoted.i265537
  %scevgep538 = getelementptr i8, ptr %.promoted.i265, i64 %i.fu
  %i.fv = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271684 = icmp eq ptr %i.fv, %i.h
  br i1 %.not.not.i271684, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267.lr.ph, !llvm.loop !0

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph445.preheader
  br label %.lr.ph.i267, !llvm.loop !0

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph445
  %i.fw = phi ptr [ %i.fv, %.lr.ph.i267.lr.ph ], [ %i.ga, %.lr.ph445 ] ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !23
  %i.fy = sext i8 %i.fx to i32
  %i.fz = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fy)
  br i1 %i.fz, label %.lr.ph445, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !0

.lr.ph445:                                        ; preds = %.lr.ph.i267
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.ga, %i.h
  br i1 %.not.not.i271, label %.lr.ph445.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, label %.lr.ph.i267, !llvm.loop !0

.lr.ph445.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph445
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, !llvm.loop !0

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph445.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, %.lr.ph445.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !0

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, %bb.av
  %i.gb = phi ptr [ %.promoted.i265, %bb.av ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep538, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fw, %.lr.ph.i267 ]
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %1 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %4, align 4, !tbaa !17
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.gg = icmp eq i8 %.pre550, 48
  br i1 %i.gg, label %.lr.ph450, label %._crit_edge

.lr.ph450:                                        ; preds = %bb.aq, %bb.ax
  br i1 %i.eg, label %.split361.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.split361.us.preheader:                           ; preds = %.lr.ph450
  %i.gh = add i64 %i.a, %i.g                      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.h
  br i1 %i.gj, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge415.us

.split361.us:                                     ; preds = %.backedge415.us
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.h
  br i1 %i.gl, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge415.us, !llvm.loop !43

.backedge415.us:                                  ; preds = %.split361.us.preheader, %.split361.us
  %i.gm = phi ptr [ %i.gk, %.split361.us ], [ %i.gi, %.split361.us.preheader ] ; 3 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !23
  %i.go = icmp eq i8 %i.gn, 48
  br i1 %i.go, label %.split361.us, label %._crit_edge, !llvm.loop !43

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph450, %.backedge415
  %i.gp = phi ptr [ %i.gt, %.backedge415 ], [ %.promoted448, %.lr.ph450 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 4 uses
  %i.gr = icmp eq ptr %i.gq, %i.h
  br i1 %i.gr, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit650, label %bb.ay

.backedge415:                                     ; preds = %bb.az, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281
  %i.gs = phi i8 [ %.pre551.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gz, %bb.az ]
  %i.gt = phi ptr [ %i.gq, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gv, %bb.az ] ; 2 uses
  %i.gu = icmp eq i8 %i.gs, 48
  br i1 %i.gu, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.ay:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 2 ; 3 uses
  %i.gw = icmp ne ptr %i.gv, %i.h
  %.pre551.pre = load i8, ptr %i.gq, align 1, !tbaa !23 ; 2 uses
  %i.gx = sext i8 %.pre551.pre to i32
  %i.gy = icmp eq i32 %i.gx, %i.ef
  %or.cond648 = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond648, label %bb.az, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.az:                                            ; preds = %bb.ay
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !23  ; 3 uses
  %i.ha = sext i8 %i.gz to i32
  %i.hb = add nsw i32 %i.ha, -48
  %or.cond.i25.i278 = icmp ult i32 %i.hb, 10
  %i.hc = icmp ult i8 %i.gz, 58
  %or.cond19.i26.i279 = and i1 %i.hc, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge415, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.az, %bb.ay
  br label %.backedge415

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit650: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %5 = ptrtoint ptr %i.gq to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.split361.us, %.split361.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit650
  %.us-phi = phi i64 [ %5, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit650 ], [ %i.gh, %.split361.us.preheader ], [ %i.gh, %.split361.us ]
  %i.hd = ptrtoint ptr %1 to i64
  %i.he = sub i64 %.us-phi, %i.hd
  %i.hf = trunc i64 %i.he to i32
  store i32 %i.hf, ptr %4, align 4, !tbaa !17
  %i.hg = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge415, %.backedge415.us, %bb.aq, %bb.ax
  %.lcssa449 = phi ptr [ %.promoted448, %bb.ax ], [ %.promoted448, %bb.aq ], [ %i.gm, %.backedge415.us ], [ %i.gt, %.backedge415 ] ; 2 uses
  store ptr %.lcssa449, ptr %i.b, align 8
  %i.hh = trunc i32 %i.et to i8
  %i.hi = lshr i8 %i.hh, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.al, %._crit_edge
  %.promoted455 = phi ptr [ %i.ea, %bb.al ], [ %.lcssa449, %._crit_edge ] ; 3 uses
  %i.hj = phi i8 [ 0, %bb.al ], [ %i.hi, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.hk = load i8, ptr %.promoted455, align 1, !tbaa !23 ; 3 uses
  %i.hl = add i8 %i.hk, -48
  %or.cond228457 = icmp ult i8 %i.hl, 10
  br i1 %or.cond228457, label %.lr.ph463, label %.critedge

.lr.ph463:                                        ; preds = %.critedge227
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hn = load i16, ptr %i.hm, align 8, !tbaa !35 ; 2 uses
  %i.ho = zext i16 %i.hn to i32
  %i.hp = icmp eq i16 %i.hn, 0
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph463, %.backedge414
  %i.hq = phi i8 [ %i.hk, %.lr.ph463 ], [ %i.ii, %.backedge414 ] ; 2 uses
  %.0166462 = phi i32 [ 0, %.lr.ph463 ], [ %.1167, %.backedge414 ] ; 3 uses
  %.0171461 = phi i32 [ 0, %.lr.ph463 ], [ %.1172, %.backedge414 ] ; 2 uses
  %.0174460 = phi i1 [ false, %.lr.ph463 ], [ %.1175, %.backedge414 ] ; 2 uses
  %.0185459 = phi i32 [ 0, %.lr.ph463 ], [ %.1186, %.backedge414 ] ; 3 uses
  %.0192458 = phi i8 [ %i.hj, %.lr.ph463 ], [ %i.ie, %.backedge414 ]
  %i.hr = phi ptr [ %.promoted455, %.lr.ph463 ], [ %i.ih, %.backedge414 ] ; 5 uses
  %i.hs = icmp slt i32 %.0166462, 772
  br i1 %i.hs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ht = add nsw i32 %.0185459, 1
  %i.hu = sext i32 %.0185459 to i64
  %i.hv = getelementptr inbounds i8, ptr %i.d, i64 %i.hu
  store i8 %i.hq, ptr %i.hv, align 1, !tbaa !23
  %i.hw = add nsw i32 %.0166462, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hx = add nsw i32 %.0171461, 1
  %i.hy = icmp ne i8 %i.hq, 48
  %i.hz = or i1 %.0174460, %i.hy
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1186 = phi i32 [ %i.ht, %bb.bb ], [ %.0185459, %bb.bc ] ; 5 uses
  %.1175 = phi i1 [ %.0174460, %bb.bb ], [ %i.hz, %bb.bc ] ; 5 uses
  %.1172 = phi i32 [ %.0171461, %bb.bb ], [ %i.hx, %bb.bc ] ; 5 uses
  %.1167 = phi i32 [ %i.hw, %bb.bb ], [ %.0166462, %bb.bc ] ; 2 uses
  %i.ia = trunc i8 %.0192458 to i1
  br i1 %i.ia, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ib = load i8, ptr %i.hr, align 1, !tbaa !23
  %i.ic = icmp slt i8 %i.ib, 56
  %i.id = zext i1 %i.ic to i8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ie = phi i8 [ 0, %bb.bd ], [ %i.id, %bb.be ] ; 5 uses
  br i1 %i.hp, label %.split364, label %bb.bg

.split364:                                        ; preds = %bb.bf
  %i.if = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 3 uses
  %i.ig = icmp eq ptr %i.if, %i.h
  br i1 %i.ig, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge414

.backedge414:                                     ; preds = %bb.bj, %.split364, %.split365, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.ih = phi ptr [ %i.if, %.split364 ], [ %i.io, %.split365 ], [ %i.io, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.iq, %bb.bj ] ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !23  ; 3 uses
  %i.ij = add i8 %i.ii, -48
  %or.cond228 = icmp ult i8 %i.ij, 10
  br i1 %or.cond228, label %bb.ba, label %.critedge, !llvm.loop !44

bb.bg:                                            ; preds = %bb.bf
  %i.ik = load i8, ptr %i.hr, align 1, !tbaa !23  ; 2 uses
  %i.il = sext i8 %i.ik to i32
  %i.im = add nsw i32 %i.il, -48
  %or.cond.i.i282 = icmp ult i32 %i.im, 10
  %i.in = icmp ult i8 %i.ik, 58
  %or.cond19.i.i283 = and i1 %i.in, %or.cond.i.i282
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 6 uses
  %i.ip = icmp eq ptr %i.io, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %.split365

.split365:                                        ; preds = %bb.bg
  br i1 %i.ip, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge414

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.ip, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bh

bb.bh:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hr, i64 2 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, %i.h
  br i1 %i.ir, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.is = load i8, ptr %i.io, align 1, !tbaa !23
  %i.it = sext i8 %i.is to i32
  %i.iu = icmp eq i32 %i.it, %i.ho
  br i1 %i.iu, label %bb.bj, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bj:                                            ; preds = %bb.bi
  %i.iv = load i8, ptr %i.iq, align 1, !tbaa !23  ; 2 uses
  %i.iw = sext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.iw, -48
  %or.cond.i25.i287 = icmp ult i32 %i.ix, 10
  %i.iy = icmp ult i8 %i.iv, 58
  %or.cond19.i26.i288 = and i1 %i.iy, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge414, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bj, %bb.bh, %bb.bi
  br label %.backedge414

.critedge:                                        ; preds = %.backedge414, %.critedge227
  %.lcssa456 = phi ptr [ %.promoted455, %.critedge227 ], [ %i.ih, %.backedge414 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.hj, %.critedge227 ], [ %i.ie, %.backedge414 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge414 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge414 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge414 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge414 ] ; 5 uses
  %.lcssa = phi i8 [ %i.hk, %.critedge227 ], [ %i.ii, %.backedge414 ]
  store ptr %.lcssa456, ptr %i.b, align 8
  %i.iz = icmp eq i32 %.0166.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.iz, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.ja = icmp eq i8 %.lcssa, 46
  br i1 %i.ja, label %bb.bk, label %.critedge11

bb.bk:                                            ; preds = %.critedge
  %i.jb = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.jb, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !25
  br label %.thread370

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.jb, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jf = load i16, ptr %i.je, align 8, !tbaa !35 ; 4 uses
  %i.jg = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.jf, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jg, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.jh = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.ec, %i.jh
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %i.jk = load i8, ptr %.promoted474.pre, align 1, !tbaa !23 ; 2 uses
  %i.jl = icmp eq i8 %i.jk, 48
  %or.cond649 = select i1 %i.iz, i1 %i.jl, i1 false
  br i1 %or.cond649, label %.lr.ph472, label %.loopexit

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.jt, %bb.bs ], [ 0, %bb.bq ]
  %i.jm = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.jf, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.jn = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %1 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  store i32 %i.jr, ptr %4, align 4, !tbaa !17
  %i.js = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.jt = add nsw i32 %.0157471, -1               ; 2 uses
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !23  ; 2 uses
  %i.jw = icmp eq i8 %i.jv, 48
  br i1 %i.jw, label %.lr.ph472, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.jx = phi i8 [ %i.jk, %bb.bq ], [ %i.jv, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.ju, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.jt, %bb.bs ] ; 2 uses
  %i.jy = add i8 %i.jx, -48
  %or.cond229476 = icmp ult i8 %i.jy, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.jz = zext i16 %i.jf to i32
  %i.ka = icmp eq i16 %i.jf, 0
end_hunk_0
