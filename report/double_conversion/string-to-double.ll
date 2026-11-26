Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
bb.u:                                             ; preds = %bb.s
  %.promoted.i245534 = ptrtoaddr ptr %i.bo to i64
  %or.cond400 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !23
  %i.bs = sext i8 %i.br to i32
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bs)
  br i1 %i.bt, label %.lr.ph437.preheader, label %.lr.ph.i247._crit_edge

.lr.ph437.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bu = add i64 %i.a, %i.g
  %i.bv = sub i64 %i.bu, %.promoted.i245534
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %.not.not.i251685 = icmp eq ptr %i.bw, %i.h
  br i1 %.not.not.i251685, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !0

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph437.preheader
  br label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph437
  %i.bx = phi ptr [ %i.bw, %.lr.ph.i247.lr.ph ], [ %i.cb, %.lr.ph437 ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  %i.bz = sext i8 %i.by to i32
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bz)
  br i1 %i.ca, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !0

.lr.ph437:                                        ; preds = %.lr.ph.i247
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.cb, %i.h
  br i1 %.not.not.i251, label %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !0

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !25
  br label %.thread

.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge: ; preds = %.lr.ph437
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252: ; preds = %.lr.ph437.preheader, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge, %bb.u
  %i.ce = phi ptr [ %i.bo, %bb.u ], [ %scevgep, %.lr.ph437._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252.loopexit_crit_edge ], [ %scevgep, %.lr.ph437.preheader ]
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre549 = phi ptr [ %.pre549.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.ck, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = load i8, ptr %.pre549, align 1, !tbaa !23 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cm = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.co = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %common.resume

bb.ab:                                            ; preds = %bb.aa
  %i.cq = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.ac unwind label %common.resume

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cq, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.cr

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cs = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.cs, i8 noundef signext %i.cl), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cw, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.cl, %bb.x ]
  %i.cx = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cy = icmp eq i8 %.sink.i253, %i.cx
  br i1 %i.cy, label %bb.ad, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre548 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !34
  %i.da = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S4_S3_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.cz, i1 noundef zeroext %i.p)
  br i1 %i.da, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.dd = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.dd, 0
  %i.de = load ptr, ptr %i.b, align 8             ; 6 uses
  %.not222 = icmp eq ptr %i.de, %i.h              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !25
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %.promoted.i257535 = ptrtoaddr ptr %i.de to i64
  %or.cond402 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond402, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ah
  %i.dh = load i8, ptr %i.de, align 1, !tbaa !23
  %i.di = sext i8 %i.dh to i32
  %i.dj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.di)
  br i1 %i.dj, label %.lr.ph442.preheader, label %.lr.ph.i259._crit_edge

.lr.ph442.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.dk = add i64 %i.a, %i.g
  %i.dl = sub i64 %i.dk, %.promoted.i257535
  %scevgep536 = getelementptr i8, ptr %i.de, i64 %i.dl ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.not.not.i263686 = icmp eq ptr %i.dm, %i.h
  br i1 %.not.not.i263686, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !0

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph442.preheader
  br label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph442
  %i.dn = phi ptr [ %i.dm, %.lr.ph.i259.lr.ph ], [ %i.dr, %.lr.ph442 ] ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %i.dp = sext i8 %i.do to i32
  %i.dq = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dp)
  br i1 %i.dq, label %.lr.ph442, label %.lr.ph.i259._crit_edge, !llvm.loop !0

.lr.ph442:                                        ; preds = %.lr.ph.i259
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.not.i263, label %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !0

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  br label %.thread

.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge: ; preds = %.lr.ph442
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264: ; preds = %.lr.ph442.preheader, %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge, %bb.ah
  %i.du = phi ptr [ %i.de, %bb.ah ], [ %scevgep536, %.lr.ph442._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264.loopexit_crit_edge ], [ %scevgep536, %.lr.ph442.preheader ]
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264
  br label %.thread

bb.aj:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dz = phi ptr [ %.pre548, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre549, %bb.w ] ; 4 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = icmp eq i8 %i.ea, 48                    ; 3 uses
  br i1 %i.eb, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !35 ; 3 uses
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %i.ef = icmp eq i16 %i.ed, 0                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 8 uses
  store ptr %i.eg, ptr %i.b, align 8, !tbaa !16
  %i.eh = icmp eq ptr %i.eg, %i.h                 ; 2 uses
  br i1 %i.ef, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.ak
  br i1 %i.eh, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.eh, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, label %bb.al

bb.al:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %i.h
  br i1 %i.ej, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !23  ; 2 uses
  %i.el = sext i8 %i.ek to i32
  %i.em = icmp eq i32 %i.el, %i.ee
  br i1 %i.em, label %bb.an, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.en = load i8, ptr %i.ei, align 1, !tbaa !23  ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %or.cond.i25.i = icmp ult i32 %i.ep, 10
  %i.eq = icmp ult i8 %i.en, 58
  %or.cond19.i26.i = and i1 %i.eq, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.an
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split
  %5 = ptrtoint ptr %i.eg to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %4, align 4, !tbaa !17
  %i.er = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split: ; preds = %.split, %bb.al, %_ZN17double_conversionL7isDigitEii.exit30.thread.i, %bb.an
  %.promoted448.ph = phi ptr [ %i.eg, %.split ], [ %i.eg, %bb.al ], [ %i.ei, %_ZN17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.eg, %bb.an ] ; 2 uses
  %.pre550.pr = load i8, ptr %.promoted448.ph, align 1, !tbaa !23
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split, %bb.am
  %.pre550 = phi i8 [ %.pre550.pr, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.ek, %bb.am ] ; 2 uses
  %.promoted448 = phi ptr [ %.promoted448.ph, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.eg, %bb.am ] ; 6 uses
  %i.es = load i32, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.et = and i32 %i.es, 128
  %.not218 = icmp eq i32 %i.et, 0
  %i.eu = and i32 %i.es, 129
  %or.cond225 = icmp eq i32 %i.eu, 0
  br i1 %or.cond225, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  switch i8 %.pre550, label %bb.av [
    i8 120, label %bb.ap
    i8 88, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 4 uses
  store ptr %i.ev, ptr %i.b, align 8, !tbaa !16
  %i.ew = icmp eq ptr %i.ev, %i.h
  br i1 %i.ew, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !25
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not218, label %.thread358, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL16IsHexFloatStringIPKcEEbT_S3_tb(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.h, i16 noundef zeroext %i.ed, i1 noundef zeroext %i.k)
  br i1 %i.ez, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %i.fa = load i8, ptr %i.ev, align 1, !tbaa !23  ; 3 uses
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48
  %or.cond.i = icmp ult i32 %i.fc, 10
  %i.fd = icmp ult i8 %i.fa, 64
  %or.cond19.i = and i1 %i.fd, %or.cond.i
  %i.fe = freeze i1 %or.cond19.i
  br i1 %i.fe, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.fa, -65            ; 2 uses
  %i.ff = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ff, label %switch.hole_check, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !25
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.hole_check, %.thread358, %bb.as
  %i.fi = phi i1 [ false, %.thread358 ], [ true, %bb.as ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.fj = load i16, ptr %i.ec, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !25
  %i.fm = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S3_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.fj, i1 noundef zeroext %i.fi, i1 noundef zeroext %i.k, double noundef %i.fl, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.fn = load i8, ptr %i.c, align 1, !tbaa !37, !range !38, !noundef !30
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.b, align 8   ; 7 uses
  %.promoted.i265537 = ptrtoaddr ptr %.promoted.i265 to i64
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.h
  %or.cond404 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond404, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.at
  %i.fp = load i8, ptr %.promoted.i265, align 1, !tbaa !23
  %i.fq = sext i8 %i.fp to i32
  %i.fr = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.fq)
  br i1 %i.fr, label %.lr.ph445.preheader, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272

.lr.ph445.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fs = add i64 %i.a, %i.g
  %i.ft = sub i64 %i.fs, %.promoted.i265537
  %scevgep538 = getelementptr i8, ptr %.promoted.i265, i64 %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271687 = icmp eq ptr %i.fu, %i.h
  br i1 %.not.not.i271687, label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge, label %.lr.ph.i267.lr.ph, !llvm.loop !0

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph445.preheader
  br label %.lr.ph.i267, !llvm.loop !0

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph445
  %i.fv = phi ptr [ %i.fu, %.lr.ph.i267.lr.ph ], [ %i.fz, %.lr.ph445 ] ; 3 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !23
  %i.fx = sext i8 %i.fw to i32
  %i.fy = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.fx)
  br i1 %i.fy, label %.lr.ph445, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272, !llvm.loop !0

.lr.ph445:                                        ; preds = %.lr.ph.i267
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.fz, %i.h
  br i1 %.not.not.i271, label %.lr.ph445.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge_crit_edge, label %.lr.ph.i267, !llvm.loop !0

.lr.ph445.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph445
  br label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge: ; preds = %.lr.ph445.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge_crit_edge, %.lr.ph445.preheader
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge, %bb.at
  %i.ga = phi ptr [ %.promoted.i265, %bb.at ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep538, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272.loopexit_crit_edge ], [ %i.fv, %.lr.ph.i267 ]
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %1 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = trunc i64 %i.gd to i32
  store i32 %i.ge, ptr %4, align 4, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272, %_ZN17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.av:                                            ; preds = %bb.ao, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  %.promoted448539 = ptrtoaddr ptr %.promoted448 to i64
  %i.gf = icmp eq i8 %.pre550, 48
  br i1 %i.gf, label %.lr.ph450, label %._crit_edge

.lr.ph450:                                        ; preds = %bb.av
  br i1 %i.ef, label %.split361.us.preheader, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277

.split361.us.preheader:                           ; preds = %.lr.ph450
  %i.gg = add i64 %i.a, %i.g
  %i.gh = sub i64 %i.gg, %.promoted448539
  %scevgep540 = getelementptr i8, ptr %.promoted448, i64 %i.gh ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.h
  br i1 %i.gj, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %.backedge415.us

.split361.us:                                     ; preds = %.backedge415.us
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.h
  br i1 %i.gl, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %.backedge415.us, !llvm.loop !43

.backedge415.us:                                  ; preds = %.split361.us.preheader, %.split361.us
  %i.gm = phi ptr [ %i.gk, %.split361.us ], [ %i.gi, %.split361.us.preheader ] ; 3 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !23
  %i.go = icmp eq i8 %i.gn, 48
  br i1 %i.go, label %.split361.us, label %._crit_edge, !llvm.loop !43

_ZN17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph450, %.backedge415
  %i.gp = phi ptr [ %i.gt, %.backedge415 ], [ %.promoted448, %.lr.ph450 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 4 uses
  %i.gr = icmp eq ptr %i.gq, %i.h
  br i1 %i.gr, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %bb.aw

.backedge415:                                     ; preds = %bb.ax, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281
  %i.gs = phi i8 [ %.pre551.pre, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281 ], [ %i.gz, %bb.ax ]
  %i.gt = phi ptr [ %i.gq, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281 ], [ %i.gv, %bb.ax ] ; 2 uses
  %i.gu = icmp eq i8 %i.gs, 48
  br i1 %i.gu, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.aw:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 2 ; 3 uses
  %i.gw = icmp ne ptr %i.gv, %i.h
  %.pre551.pre = load i8, ptr %i.gq, align 1, !tbaa !23 ; 2 uses
  %i.gx = sext i8 %.pre551.pre to i32
  %i.gy = icmp eq i32 %i.gx, %i.ee
  %or.cond649 = select i1 %i.gw, i1 %i.gy, i1 false
  br i1 %or.cond649, label %bb.ax, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281

bb.ax:                                            ; preds = %bb.aw
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !23  ; 3 uses
  %i.ha = sext i8 %i.gz to i32
  %i.hb = add nsw i32 %i.ha, -48
  %or.cond.i25.i278 = icmp ult i32 %i.hb, 10
  %i.hc = icmp ult i8 %i.gz, 58
  %or.cond19.i26.i279 = and i1 %i.hc, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge415, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281: ; preds = %bb.ax, %bb.aw
  br label %.backedge415

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277, %.split361.us, %.split361.us.preheader
  %.us-phi = phi ptr [ %scevgep540, %.split361.us.preheader ], [ %scevgep540, %.split361.us ], [ %i.gq, %_ZN17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.hd = ptrtoint ptr %.us-phi to i64
  %i.he = ptrtoint ptr %1 to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = trunc i64 %i.hf to i32
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit: ; preds = %.lr.ph493._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit_crit_edge, %.lr.ph493.preheader
  store ptr %scevgep544, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit, %bb.cx
  %.promoted.i308545.pre-phi = phi i64 [ %i.nc, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted.i300543, %bb.cx ]
  %.promoted495 = phi ptr [ %scevgep544, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307.loopexit ], [ %.promoted490, %bb.cx ] ; 6 uses
  %.not6.not.i309 = icmp eq ptr %.promoted495, %i.h
  %or.cond407 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond407, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nm = load i8, ptr %.promoted495, align 1, !tbaa !23
  %i.nn = sext i8 %i.nm to i32
  %i.no = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nn)
  br i1 %i.no, label %.lr.ph496.preheader, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split

.lr.ph496.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.np = add i64 %i.a, %i.g
  %i.nq = sub i64 %i.np, %.promoted.i308545.pre-phi
  %scevgep546 = getelementptr i8, ptr %.promoted495, i64 %i.nq
  %i.nr = getelementptr inbounds nuw i8, ptr %.promoted495, i64 1 ; 2 uses
  %.not.not.i314689 = icmp eq ptr %i.nr, %i.h
  br i1 %.not.not.i314689, label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !0

.lr.ph.i310.lr.ph:                                ; preds = %.lr.ph496.preheader
  br label %.lr.ph.i310, !llvm.loop !0

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.lr.ph, %.lr.ph496
  %i.ns = phi ptr [ %i.nr, %.lr.ph.i310.lr.ph ], [ %i.nw, %.lr.ph496 ] ; 3 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !23
  %i.nu = sext i8 %i.nt to i32
  %i.nv = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.nu)
  br i1 %i.nv, label %.lr.ph496, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

.lr.ph496:                                        ; preds = %.lr.ph.i310
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 1 ; 2 uses
  %.not.not.i314 = icmp eq ptr %i.nw, %i.h
  br i1 %.not.not.i314, label %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390: ; preds = %bb.bm
  br i1 %.0174.lcssa, label %bb.cz, label %bb.da

.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph496
  br label %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge, !llvm.loop !0

._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge: ; preds = %.lr.ph496.._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph496.preheader
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295, %.split368, %.split367
  %i.nx = phi ptr [ %i.kk, %.split367 ], [ %i.kt, %.split368 ], [ %i.kt, %_ZN17double_conversionL7isDigitEii.exit.thread.i295 ]
  store ptr %i.nx, ptr %i.b, align 8
  %i.ny = add nsw i32 %.3160, %.0171.lcssa        ; 2 uses
  br i1 %.3177, label %bb.cz, label %bb.da

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286, %.split365, %.split364, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.ns, %.lr.ph.i310 ], [ %.promoted495, %.lr.ph.i310.preheader ], [ %scevgep546, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.ip, %.split365 ], [ %i.ig, %.split364 ], [ %i.ip, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.2194.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %i.if, %.split364 ], [ %i.if, %.split365 ], [ %i.if, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1186, %.split364 ], [ %.1186, %.split365 ], [ %.1186, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5179.ph = phi i1 [ %.4178, %.lr.ph.i310 ], [ %.4178, %.lr.ph.i310.preheader ], [ %.4178, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1175, %.split364 ], [ %.1175, %.split365 ], [ %.1175, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2173.ph = phi i32 [ %.0171.lcssa, %.lr.ph.i310 ], [ %.0171.lcssa, %.lr.ph.i310.preheader ], [ %.0171.lcssa, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ %.1172, %.split364 ], [ %.1172, %.split365 ], [ %.1172, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.8165.ph = phi i32 [ %.7164, %.lr.ph.i310 ], [ %.7164, %.lr.ph.i310.preheader ], [ %.7164, %._ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.loopexit_crit_edge ], [ 0, %.split364 ], [ 0, %.split365 ], [ 0, %_ZN17double_conversionL7isDigitEii.exit.thread.i286 ]
  store ptr %.sink, ptr %i.b, align 8
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307
  %i.nz = phi ptr [ %.promoted495, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.sink, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2194 = phi i8 [ %spec.select, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2194.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.5190 = phi i32 [ %.4189, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5190.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ] ; 3 uses
  %.5179 = phi i1 [ %.4178, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.5179.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.2173 = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.2173.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %.8165 = phi i32 [ %.7164, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit307 ], [ %.8165.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split ]
  %i.oa = trunc i8 %.2194 to i1
  br i1 %i.oa, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cy

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread: ; preds = %bb.cd, %bb.bk, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.ob = phi ptr [ %i.nz, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %i.le, %bb.cd ], [ %.lcssa456, %bb.bk ]
  %.5190387 = phi i32 [ %.5190, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315 ], [ %.4189, %bb.cd ], [ %.0185.lcssa, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !16
  %i.oc = sext i32 %.5190387 to i64
  %i.od = getelementptr inbounds i8, ptr %i.d, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.of = load i16, ptr %i.oe, align 8, !tbaa !35
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oh = load double, ptr %i.og, align 8, !tbaa !25
  %i.oi = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr noundef %i.f, ptr noundef %i.od, i1 noundef zeroext %.0180, i16 noundef zeroext %i.of, i1 noundef zeroext %i.k, double noundef %i.oh, i1 noundef zeroext %3, ptr noundef %i.e)
  %i.oj = ptrtoint ptr %i.ob to i64
  %i.ok = ptrtoint ptr %1 to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = trunc i64 %i.ol to i32
  store i32 %i.om, ptr %4, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread370

bb.cy:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315
  %i.on = add nsw i32 %.8165, %.2173              ; 2 uses
  br i1 %.5179, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.cy
  %.5190396611 = phi i32 [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.5190, %bb.cy ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 2 uses
  %i.oo = phi i32 [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.on, %bb.cy ], [ %i.ny, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lp, %.split612 ], [ %i.lv, %.split613 ], [ %i.md, %.split614 ]
  %i.op = add nsw i32 %.5190396611, 1
  %i.oq = sext i32 %.5190396611 to i64
  %i.or = getelementptr inbounds i8, ptr %i.d, i64 %i.oq
  store i8 49, ptr %i.or, align 1, !tbaa !23
  %i.os = add nsw i32 %i.oo, -1
  br label %bb.da

bb.da:                                            ; preds = %.split614, %.split613, %.split612, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, %bb.cz, %bb.cy
  %.6191 = phi i32 [ %i.op, %bb.cz ], [ %.5190, %bb.cy ], [ %.0185.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %.3188, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %.4189, %.split612 ], [ %.4189, %.split613 ], [ %.4189, %.split614 ] ; 5 uses
  %.9 = phi i32 [ %i.os, %bb.cz ], [ %i.on, %bb.cy ], [ %.0171.lcssa, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390 ], [ %i.ny, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread605 ], [ %i.lp, %.split612 ], [ %i.lv, %.split613 ], [ %i.md, %.split614 ]
  %i.ot = sext i32 %.6191 to i64
  %i.ou = getelementptr inbounds i8, ptr %i.d, i64 %i.ot
  store i8 0, ptr %i.ou, align 1, !tbaa !23
  %i.ov = icmp sgt i32 %.6191, 0
  br i1 %i.ov, label %.lr.ph692, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit

.lr.ph692:                                        ; preds = %bb.da
  %i.ow = zext nneg i32 %.6191 to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %i.ox = trunc nuw i64 %i.pa to i32              ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, 0
  br i1 %i.oy, label %bb.dc, label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

bb.dc:                                            ; preds = %.lr.ph692, %bb.db
  %i.oz = phi i32 [ %.6191, %.lr.ph692 ], [ %i.ox, %bb.db ]
  %indvars.iv.i690 = phi i64 [ %i.ow, %.lr.ph692 ], [ %i.pa, %bb.db ]
  %i.pa = add nsw i64 %indvars.iv.i690, -1        ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.pc, 48
  br i1 %.not.i, label %bb.db, label %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, !llvm.loop !2

._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693: ; preds = %bb.dc
  br label %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit, !llvm.loop !2

_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit: ; preds = %bb.db, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693, %bb.da
  %.sroa.3.1.i = phi i32 [ 0, %bb.da ], [ %i.oz, %._ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit_crit_edge693 ], [ 0, %bb.db ] ; 3 uses
  %i.pd = sub nsw i32 %.6191, %.sroa.3.1.i
  %i.pe = add nsw i32 %i.pd, %.9                  ; 2 uses
  br i1 %3, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pf = call noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  br label %bb.df

bb.de:                                            ; preds = %_ZN17double_conversion17TrimTrailingZerosENS_6VectorIKcEE.exit
  %i.pg = call noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr nonnull %i.d, i32 %.sroa.3.1.i, i32 noundef %i.pe)
  %i.ph = fpext float %i.pg to double
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0153 = phi double [ %i.pf, %bb.dd ], [ %i.ph, %bb.de ] ; 2 uses
  %i.pi = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %1 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = trunc i64 %i.pl to i32
  store i32 %i.pm, ptr %4, align 4, !tbaa !17
  %i.pn = fneg double %.0153
  %i.po = select i1 %.0180, double %i.pn, double %.0153
  br label %.thread370

.thread370:                                       ; preds = %bb.co, %bb.ck, %bb.cg, %bb.df, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, %.lr.ph.i302._crit_edge, %bb.cw, %bb.cc, %bb.bz, %bb.bp, %bb.bn, %bb.bj
  %.5 = phi double [ %i.oi, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread ], [ %i.po, %bb.df ], [ %i.jj, %bb.bn ], [ %i.jr, %bb.bp ], [ %i.li, %bb.bz ], [ %i.je, %bb.bj ], [ %i.nl, %.lr.ph.i302._crit_edge ], [ %i.my, %bb.cw ], [ %i.lm, %bb.cc ], [ %i.mf, %bb.co ], [ %i.lx, %bb.ck ], [ %i.lr, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

.thread:                                          ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244, %bb.h, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252, %bb.r, %bb.t, %.lr.ph.i247._crit_edge, %bb.ae, %bb.ag, %.lr.ph.i259._crit_edge, %bb.v, %bb.ai, %_ZN17double_conversionL7isDigitEii.exit.thread359, %bb.au, %.thread370, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, %bb.aq, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356, %bb.d, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit, %bb.b
  %.8 = phi double [ %i.s, %bb.b ], [ %i.ad, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit ], [ %i.ag, %bb.d ], [ -qnan, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit264 ], [ %i.cd, %.lr.ph.i247._crit_edge ], [ %i.bq, %bb.t ], [ %i.bm, %bb.r ], [ +inf, %bb.v ], [ %i.dt, %.lr.ph.i259._crit_edge ], [ %i.dg, %bb.ag ], [ %i.dc, %bb.ae ], [ +qnan, %bb.ai ], [ %i.fh, %_ZN17double_conversionL7isDigitEii.exit.thread359 ], [ -inf, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit252 ], [ %i.er, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread356 ], [ %i.ey, %bb.aq ], [ %.5, %.thread370 ], [ %i.hh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread ], [ %i.fm, %bb.au ], [ %i.aq, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit244 ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret double %.8
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 31 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.f = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.f, 1
  %i.g = getelementptr i8, ptr %1, i64 %.idx      ; 35 uses
  store i32 0, ptr %4, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 8, !tbaa !21     ; 9 uses
  %i.i = and i32 %i.h, 4
  %i.j = icmp ne i32 %i.i, 0                      ; 11 uses
  %i.k = and i32 %i.h, 8
  %.not212.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.h, 16
  %.not223 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.m = and i32 %i.h, 32
  %.not211 = icmp ne i32 %i.m, 0
  %i.n = and i32 %i.h, 64
  %i.o = icmp ne i32 %i.n, 0                      ; 4 uses
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !22
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %i.h, 24
  %or.cond.not = icmp eq i32 %i.s, 0
  %.pre = load i16, ptr %1, align 2, !tbaa !41    ; 3 uses
  br i1 %or.cond.not, label %._crit_edge535, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = zext i16 %.pre to i32
  %i.u = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.t)
  br i1 %i.u, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %.not.not.i687 = icmp eq i32 %2, 1
  br i1 %.not.not.i687, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, label %.lr.ph.i.lr.ph, !llvm.loop !3

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.lr.ph.i, !llvm.loop !3

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge535

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.y)
  br i1 %i.z, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.not.i, label %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, label %.lr.ph.i, !llvm.loop !3

.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge: ; preds = %.lr.ph
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit: ; preds = %.lr.ph._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit_crit_edge, %.lr.ph.preheader
  store i32 %2, ptr %4, align 4, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  br label %.thread

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge535

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !25
  br label %.thread

._crit_edge535:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %i.af = phi i16 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 3 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i16 %i.af, label %bb.j [
    i16 43, label %bb.e
    i16 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge535, %._crit_edge535
  %i.ah = icmp eq i16 %i.af, 45
  %.ptr408 = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.not6.not.i238 = icmp eq ptr %.ptr408, %i.g
  br i1 %.not6.not.i238, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 2, %bb.e ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx
  %i.ai = load i16, ptr %.0338.ptr, align 2, !tbaa !41 ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.aj)
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw nsw i64 %.0338.idx, 2      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.add
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244, label %.lr.ph.i239, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit244: ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !25
  br label %.thread

bb.g:                                             ; preds = %.lr.ph.i239
  %.not214 = icmp eq i64 %.0338.idx, 2
  %or.cond398 = or i1 %.not211, %.not214
  br i1 %or.cond398, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !25
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge535
  %i.ap = phi i16 [ %i.ai, %bb.i ], [ %i.af, %._crit_edge535 ]
  %i.aq = phi ptr [ %.0338.ptr.le, %bb.i ], [ %i.ag, %._crit_edge535 ]
  %.0180 = phi i1 [ %i.ah, %bb.i ], [ false, %._crit_edge535 ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %.not215 = icmp eq ptr %i.as, null
  br i1 %.not215, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = trunc i16 %i.ap to i8                   ; 2 uses
  br i1 %i.o, label %bb.l, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

bb.l:                                             ; preds = %bb.k
  %i.au = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.m, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.o unwind label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.ay = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %common.resume

bb.p:                                             ; preds = %bb.o
  store ptr %i.ay, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.az = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.az, i8 noundef signext %i.at), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.bd, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.be = load i8, ptr %i.as, align 1, !tbaa !23
  %i.bf = icmp eq i8 %.sink.i, %i.be
  br i1 %i.bf, label %bb.q, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre537.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.w

bb.q:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bh = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bg, i1 noundef zeroext %i.o)
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bk = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bk, 0
  %i.bl = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bl, %i.g              ; 2 uses
  %or.cond399 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond399, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !25
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %or.cond400 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond400, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.u
  %i.bo = load i16, ptr %i.bl, align 2, !tbaa !41
  %i.bp = zext i16 %i.bo to i32
  %i.bq = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bp)
  br i1 %i.bq, label %.lr.ph437, label %.lr.ph.i247._crit_edge

.lr.ph.i247:                                      ; preds = %.lr.ph437
  %i.br = load i16, ptr %i.bv, align 2, !tbaa !41
  %i.bs = zext i16 %i.br to i32
  %i.bt = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bs)
  br i1 %i.bt, label %.lr.ph437, label %.lr.ph.i247._crit_edge, !llvm.loop !3

.lr.ph437:                                        ; preds = %.lr.ph.i247.preheader, %.lr.ph.i247
  %i.bu = phi ptr [ %i.bv, %.lr.ph.i247 ], [ %i.bl, %.lr.ph.i247.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 4 uses
  %.not.not.i251 = icmp eq ptr %i.bv, %i.g
  br i1 %.not.not.i251, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252, label %.lr.ph.i247, !llvm.loop !3

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !25
  br label %.thread

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252: ; preds = %.lr.ph437, %bb.u
  %i.by = phi ptr [ %i.bl, %bb.u ], [ %i.bv, %.lr.ph437 ]
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %1 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 1
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.v

bb.v:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit252
  br label %.thread

bb.w:                                             ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre537 = phi ptr [ %.pre537.pre, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !34 ; 2 uses
  %.not216 = icmp eq ptr %i.cf, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load i16, ptr %.pre537, align 2, !tbaa !41
  %i.ch = trunc i16 %i.cg to i8                   ; 2 uses
  br i1 %i.o, label %bb.y, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.ci = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !27

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i255, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %common.resume

bb.ab:                                            ; preds = %bb.aa
  %i.cm = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.ac unwind label %common.resume

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cm, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.ab, %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.cn

_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.co = load ptr, ptr @_ZZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !29, !nonnull !30, !align !31 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext %i.ch), !inline_history !1
  br label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.cs, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ch, %bb.x ]
  %i.ct = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.cu = icmp eq i8 %.sink.i253, %i.ct
  br i1 %i.cu, label %bb.ad, label %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre536 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cv = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.cw = call fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.cv, i1 noundef zeroext %i.o)
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !25
  br label %.thread

bb.af:                                            ; preds = %bb.ad
  %i.cz = and i32 %i.h, 20
  %or.cond5.not = icmp ne i32 %i.cz, 0
  %i.da = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.da, %i.g              ; 2 uses
  %or.cond401 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond401, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %or.cond402 = select i1 %i.j, i1 true, i1 %.not222
  br i1 %or.cond402, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ah
  %i.dd = load i16, ptr %i.da, align 2, !tbaa !41
  %i.de = zext i16 %i.dd to i32
  %i.df = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.de)
  br i1 %i.df, label %.lr.ph442, label %.lr.ph.i259._crit_edge

.lr.ph.i259:                                      ; preds = %.lr.ph442
  %i.dg = load i16, ptr %i.dk, align 2, !tbaa !41
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dh)
  br i1 %i.di, label %.lr.ph442, label %.lr.ph.i259._crit_edge, !llvm.loop !3

.lr.ph442:                                        ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i259 ], [ %i.da, %.lr.ph.i259.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 4 uses
  %.not.not.i263 = icmp eq ptr %i.dk, %i.g
  br i1 %.not.not.i263, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264, label %.lr.ph.i259, !llvm.loop !3

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !25
  br label %.thread

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264: ; preds = %.lr.ph442, %bb.ah
  %i.dn = phi ptr [ %i.da, %bb.ah ], [ %i.dk, %.lr.ph442 ]
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %1 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = lshr exact i64 %i.dq, 1
  %i.ds = trunc i64 %i.dr to i32
  store i32 %i.ds, ptr %4, align 4, !tbaa !17
  br i1 %.0180, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit264
  br label %.thread

bb.aj:                                            ; preds = %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.dt = phi ptr [ %.pre536, %_ZN17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre537, %bb.w ] ; 4 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !41
  %i.dv = icmp eq i16 %i.du, 48                   ; 3 uses
  br i1 %i.dv, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 8, !tbaa !35 ; 4 uses
  %i.dy = icmp eq i16 %i.dx, 0                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 6 uses
  %i.ea = icmp eq ptr %i.dz, %i.g                 ; 2 uses
  br i1 %i.dy, label %.split, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.ak
  br i1 %i.ea, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.ea, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356, label %bb.al

bb.al:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, %i.g
  br i1 %i.ec, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = load i16, ptr %i.dz, align 2, !tbaa !41 ; 2 uses
  %i.ee = icmp eq i16 %i.ed, %i.dx
  br i1 %i.ee, label %bb.an, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.ef = load i16, ptr %i.eb, align 2, !tbaa !41 ; 2 uses
  %i.eg = add i16 %i.ef, -48
  %or.cond19.i26.i = icmp ult i16 %i.eg, 10
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread356: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split
  %5 = ptrtoint ptr %i.dz to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = lshr exact i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, ptr %4, align 4, !tbaa !17
  %i.eh = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split: ; preds = %.split, %bb.al, %bb.an
  %.pre538.pr = load i16, ptr %i.dz, align 2, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread: ; preds = %bb.an, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split, %bb.am
  %.pre538 = phi i16 [ %.pre538.pr, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.ed, %bb.am ], [ %i.ef, %bb.an ] ; 2 uses
  %.promoted448 = phi ptr [ %i.dz, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.threadthread-pre-split ], [ %i.dz, %bb.am ], [ %i.eb, %bb.an ] ; 5 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.ej = and i32 %i.ei, 128
  %.not218 = icmp eq i32 %i.ej, 0
  %i.ek = and i32 %i.ei, 129
  %or.cond225 = icmp eq i32 %i.ek, 0
  br i1 %or.cond225, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread
  switch i16 %.pre538, label %._crit_edge [
    i16 120, label %bb.ap
    i16 88, label %bb.ap
    i16 48, label %.lr.ph450
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %.promoted448, i64 2 ; 4 uses
  store ptr %i.el, ptr %i.a, align 8, !tbaa !40
  %i.em = icmp eq ptr %i.el, %i.g
  br i1 %i.em, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !25
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not218, label %.thread358, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ep = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL16IsHexFloatStringIPKtEEbT_S3_tb(ptr noundef nonnull %i.el, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dx, i1 noundef zeroext %i.j)
  br i1 %i.ep, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %i.eq = load i16, ptr %i.el, align 2, !tbaa !41
  %.fr499 = freeze i16 %i.eq                      ; 2 uses
  %i.er = add i16 %.fr499, -48
  %or.cond19.i = icmp ult i16 %i.er, 10
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i16 %.fr499, -65         ; 2 uses
  %i.es = icmp ult i16 %switch.tableidx, 38
  br i1 %i.es, label %switch.hole_check, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load double, ptr %i.et, align 8, !tbaa !25
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %_ZN17double_conversionL7isDigitEii.exit.thread359

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.hole_check, %.thread358, %bb.as
  %i.ev = phi i1 [ false, %.thread358 ], [ true, %bb.as ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ew = load i16, ptr %i.dw, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !25
  %i.ez = call fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S3_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ew, i1 noundef zeroext %i.ev, i1 noundef zeroext %i.j, double noundef %i.ey, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.fa = load i8, ptr %i.b, align 1, !tbaa !37, !range !38, !noundef !30
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond404 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond404, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.at
  %i.fc = load i16, ptr %.promoted.i265, align 2, !tbaa !41
  %i.fd = zext i16 %i.fc to i32
  %i.fe = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.fd)
  br i1 %i.fe, label %.lr.ph445, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272

.lr.ph.i267:                                      ; preds = %.lr.ph445
  %i.ff = load i16, ptr %i.fj, align 2, !tbaa !41
  %i.fg = zext i16 %i.ff to i32
  %i.fh = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.fg)
  br i1 %i.fh, label %.lr.ph445, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, !llvm.loop !3

.lr.ph445:                                        ; preds = %.lr.ph.i267.preheader, %.lr.ph.i267
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i267 ], [ %.promoted.i265, %.lr.ph.i267.preheader ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2 ; 5 uses
  %.not.not.i271 = icmp eq ptr %i.fj, %i.g
  br i1 %.not.not.i271, label %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge, label %.lr.ph.i267, !llvm.loop !3

._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge: ; preds = %.lr.ph445
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge, %bb.at
  %i.fk = phi ptr [ %.promoted.i265, %bb.at ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %i.fj, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge ], [ %i.fj, %.lr.ph.i267 ]
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %1 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = lshr exact i64 %i.fn, 1
  %i.fp = trunc i64 %i.fo to i32
  store i32 %i.fp, ptr %4, align 4, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, %_ZN17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.av:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread
  %i.fq = icmp eq i16 %.pre538, 48
  br i1 %i.fq, label %.lr.ph450, label %._crit_edge

.lr.ph450:                                        ; preds = %bb.ao, %bb.av
  br i1 %i.dy, label %.split361.us, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277

.split361.us:                                     ; preds = %.lr.ph450, %.backedge415.us
  %i.fr = phi ptr [ %i.fs, %.backedge415.us ], [ %.promoted448, %.lr.ph450 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 2 ; 5 uses
  %i.ft = icmp eq ptr %i.fs, %i.g
  br i1 %i.ft, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread, label %.backedge415.us

.backedge415.us:                                  ; preds = %.split361.us
  %i.fu = load i16, ptr %i.fs, align 2, !tbaa !41
  %i.fv = icmp eq i16 %i.fu, 48
  br i1 %i.fv, label %.split361.us, label %._crit_edge, !llvm.loop !48

_ZN17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph450, %.backedge415
  %i.fw = phi ptr [ %i.ga, %.backedge415 ], [ %.promoted448, %.lr.ph450 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, %i.g
  br i1 %i.fy, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread, label %bb.aw

.backedge415:                                     ; preds = %bb.ax, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281
  %i.fz = phi i16 [ %.pre539.pre, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281 ], [ %i.gf, %bb.ax ]
  %i.ga = phi ptr [ %i.fx, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281 ], [ %i.gc, %bb.ax ] ; 2 uses
  %i.gb = icmp eq i16 %i.fz, 48
  br i1 %i.gb, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !48

bb.aw:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 3 uses
  %i.gd = icmp ne ptr %i.gc, %i.g
  %.pre539.pre = load i16, ptr %i.fx, align 2, !tbaa !41 ; 2 uses
  %i.ge = icmp eq i16 %.pre539.pre, %i.dx
  %or.cond647 = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond647, label %bb.ax, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281

bb.ax:                                            ; preds = %bb.aw
  %i.gf = load i16, ptr %i.gc, align 2, !tbaa !41 ; 2 uses
  %i.gg = add i16 %i.gf, -48
  %or.cond19.i26.i279 = icmp ult i16 %i.gg, 10
  br i1 %or.cond19.i26.i279, label %.backedge415, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281: ; preds = %bb.ax, %bb.aw
  br label %.backedge415

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277, %.split361.us
  %.us-phi = phi ptr [ %i.fs, %.split361.us ], [ %i.fx, %_ZN17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.gh = ptrtoint ptr %.us-phi to i64
  %i.gi = ptrtoint ptr %1 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = lshr exact i64 %i.gj, 1
  %i.gl = trunc i64 %i.gk to i32
  store i32 %i.gl, ptr %4, align 4, !tbaa !17
  %i.gm = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge415, %.backedge415.us, %bb.ao, %bb.av
  %.lcssa449 = phi ptr [ %.promoted448, %bb.av ], [ %.promoted448, %bb.ao ], [ %i.fs, %.backedge415.us ], [ %i.ga, %.backedge415 ] ; 2 uses
  store ptr %.lcssa449, ptr %i.a, align 8
  %i.gn = trunc i32 %i.ei to i8
  %i.go = lshr i8 %i.gn, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %.promoted455 = phi ptr [ %i.dt, %bb.aj ], [ %.lcssa449, %._crit_edge ] ; 3 uses
  %i.gp = phi i8 [ 0, %bb.aj ], [ %i.go, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gq = load i16, ptr %.promoted455, align 2, !tbaa !41 ; 3 uses
  %i.gr = add i16 %i.gq, -48
  %or.cond228457 = icmp ult i16 %i.gr, 10
  br i1 %or.cond228457, label %.lr.ph463, label %.critedge

.lr.ph463:                                        ; preds = %.critedge227
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !35 ; 2 uses
  %i.gu = icmp eq i16 %i.gt, 0
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph463, %.backedge414
  %i.gv = phi i16 [ %i.gq, %.lr.ph463 ], [ %i.ho, %.backedge414 ] ; 2 uses
  %.0166462 = phi i32 [ 0, %.lr.ph463 ], [ %.1167, %.backedge414 ] ; 3 uses
end_hunk_1
