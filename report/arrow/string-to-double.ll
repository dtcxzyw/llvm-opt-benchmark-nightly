inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.bl = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.bk, i1 noundef zeroext %i.p)
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bo = and i32 %i.i, 20
  %or.cond3.not = icmp ne i32 %i.bo, 0
  %i.bp = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bp, %i.h              ; 2 uses
  %or.cond393 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond393, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %.promoted.i245530 = ptrtoint ptr %i.bp to i64
  %or.cond394 = select i1 %i.k, i1 true, i1 %.not224
  br i1 %or.cond394, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.v
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.bt = sext i8 %i.bs to i32
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bt)
  br i1 %i.bu, label %.lr.ph433.preheader, label %.lr.ph.i247._crit_edge

.lr.ph433.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bv = add i64 %i.a, %i.g                      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %.not.not.i251683 = icmp eq ptr %i.bw, %i.h
  br i1 %.not.not.i251683, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !16

.lr.ph.i247.lr.ph:                                ; preds = %.lr.ph433.preheader
  br label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247:                                      ; preds = %.lr.ph.i247.lr.ph, %.lr.ph433
  %i.bx = phi ptr [ %i.bw, %.lr.ph.i247.lr.ph ], [ %i.cb, %.lr.ph433 ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = sext i8 %i.by to i32
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bz)
  br i1 %i.ca, label %.lr.ph433, label %.lr.ph.i247._crit_edge, !llvm.loop !16

.lr.ph433:                                        ; preds = %.lr.ph.i247
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %.not.not.i251 = icmp eq ptr %i.cb, %i.h
  br i1 %.not.not.i251, label %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, label %.lr.ph.i247, !llvm.loop !16

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !18
  br label %.thread

.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge: ; preds = %.lr.ph433
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252: ; preds = %.lr.ph433.preheader, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, %bb.v
  %.pre-phi559 = phi i64 [ %.promoted.i245530, %bb.v ], [ %i.bv, %.lr.ph433._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge ], [ %i.bv, %.lr.ph433.preheader ]
  %i.ce = sub i64 %.pre-phi559, %i.a
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %4, align 4, !tbaa !3
  %spec.select395 = select i1 %.0180, double -inf, double +inf
  br label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre545 = phi ptr [ %.pre545.pre, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.at, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %.not216 = icmp eq ptr %i.ch, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load i8, ptr %.pre545, align 1, !tbaa !15 ; 2 uses
  br i1 %i.p, label %bb.y, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cj = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i255, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cn, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cp = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext %i.ci), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.ct, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ci, %bb.x ]
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.cv = icmp eq i8 %.sink.i253, %i.cu
  br i1 %i.cv, label %bb.ae, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre544 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !28
  %i.cx = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b(ptr noundef %i.b, ptr noundef nonnull %i.h, ptr noundef %i.cw, i1 noundef zeroext %i.p)
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.da = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.da, 0
  %i.db = load ptr, ptr %i.b, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.db, %i.h              ; 2 uses
  %or.cond396 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond396, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %.promoted.i257531 = ptrtoint ptr %i.db to i64
  %or.cond397 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond397, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.de = load i8, ptr %i.db, align 1, !tbaa !15
  %i.df = sext i8 %i.de to i32
  %i.dg = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.df)
  br i1 %i.dg, label %.lr.ph438.preheader, label %.lr.ph.i259._crit_edge

.lr.ph438.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.dh = add i64 %i.a, %i.g                      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %.not.not.i263684 = icmp eq ptr %i.di, %i.h
  br i1 %.not.not.i263684, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !16

.lr.ph.i259.lr.ph:                                ; preds = %.lr.ph438.preheader
  br label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.lr.ph, %.lr.ph438
  %i.dj = phi ptr [ %i.di, %.lr.ph.i259.lr.ph ], [ %i.dn, %.lr.ph438 ] ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !15
  %i.dl = sext i8 %i.dk to i32
  %i.dm = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.dl)
  br i1 %i.dm, label %.lr.ph438, label %.lr.ph.i259._crit_edge, !llvm.loop !16

.lr.ph438:                                        ; preds = %.lr.ph.i259
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %.not.not.i263 = icmp eq ptr %i.dn, %i.h
  br i1 %.not.not.i263, label %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, label %.lr.ph.i259, !llvm.loop !16

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  br label %.thread

.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge: ; preds = %.lr.ph438
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264: ; preds = %.lr.ph438.preheader, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, %bb.ai
  %.pre-phi557 = phi i64 [ %.promoted.i257531, %bb.ai ], [ %i.dh, %.lr.ph438._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge ], [ %i.dh, %.lr.ph438.preheader ]
  %i.dq = sub i64 %.pre-phi557, %i.a
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %4, align 4, !tbaa !3
  %spec.select398 = select i1 %.0180, double -qnan, double +qnan
  br label %.thread

bb.aj:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.ds = phi ptr [ %.pre544, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre545, %bb.w ] ; 4 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15  ; 2 uses
  %i.du = icmp eq i8 %i.dt, 48                    ; 3 uses
  br i1 %i.du, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !29 ; 3 uses
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = icmp eq i16 %i.dw, 0                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 7 uses
  store ptr %i.dz, ptr %i.b, align 8, !tbaa !7
  %i.ea = icmp eq ptr %i.dz, %i.h                 ; 2 uses
  br i1 %i.dy, label %bb.al, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  br i1 %i.ea, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.ea, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 2 ; 4 uses
  %i.ec = icmp eq ptr %i.eb, %i.h
  br i1 %i.ec, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !15  ; 2 uses
  %i.ee = sext i8 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, %i.dx
  br i1 %i.ef, label %bb.ao, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i8, ptr %i.eb, align 1, !tbaa !15  ; 2 uses
  %i.eh = sext i8 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, -48
  %or.cond.i25.i = icmp ult i32 %i.ei, 10
  %i.ej = icmp ult i8 %i.eg, 58
  %or.cond19.i26.i = and i1 %i.ej, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.ao
  store ptr %i.eb, ptr %i.b, align 8, !tbaa !7
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread356: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %bb.al
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ek = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.al, %bb.am, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i, %bb.ao
  %.promoted444.ph = phi ptr [ %i.dz, %bb.al ], [ %i.dz, %bb.am ], [ %i.eb, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread.i ], [ %i.dz, %bb.ao ] ; 2 uses
  %.pre546.pr = load i8, ptr %.promoted444.ph, align 1, !tbaa !15
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.an
  %.pre546 = phi i8 [ %.pre546.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ed, %bb.an ] ; 2 uses
  %.promoted444 = phi ptr [ %.promoted444.ph, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dz, %bb.an ] ; 5 uses
  %i.el = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.em = and i32 %i.el, 128
  %.not218 = icmp eq i32 %i.em, 0
  %i.en = and i32 %i.el, 129
  %or.cond225 = icmp eq i32 %i.en, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  switch i8 %.pre546, label %._crit_edge [
    i8 120, label %bb.aq
    i8 88, label %bb.aq
    i8 48, label %.lr.ph446
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 4 uses
  store ptr %i.eo, ptr %i.b, align 8, !tbaa !7
  %i.ep = icmp eq ptr %i.eo, %i.h
  br i1 %i.ep, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !18
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.es = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.eo, ptr noundef nonnull %i.h, i16 noundef zeroext %i.dw, i1 noundef zeroext %i.k)
  br i1 %i.es, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !15  ; 3 uses
  %i.eu = sext i8 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -48
  %or.cond.i = icmp ult i32 %i.ev, 10
  %i.ew = icmp ult i8 %i.et, 64
  %or.cond19.i = and i1 %i.ew, %or.cond.i
  %i.ex = freeze i1 %or.cond19.i
  br i1 %i.ex, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i8 %i.et, -65            ; 2 uses
  %i.ey = icmp ult i8 %switch.tableidx, 38
  br i1 %i.ey, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.at
  %i.fb = phi i1 [ false, %.thread358 ], [ true, %bb.at ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.fc = load i16, ptr %i.dv, align 8, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  %i.ff = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.fc, i1 noundef zeroext %i.fb, i1 noundef zeroext %i.k, double noundef %i.fe, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.fg = load i8, ptr %i.c, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.b, align 8   ; 6 uses
  %.promoted.i265533 = ptrtoint ptr %.promoted.i265 to i64 ; 2 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.h
  %or.cond400 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.au
  %i.fi = load i8, ptr %.promoted.i265, align 1, !tbaa !15
  %i.fj = sext i8 %i.fi to i32
  %i.fk = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fj)
  br i1 %i.fk, label %.lr.ph441.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit

.lr.ph441.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fl = add i64 %i.a, %i.g
  %i.fm = sub i64 %i.fl, %.promoted.i265533
  %scevgep534 = getelementptr i8, ptr %.promoted.i265, i64 %i.fm
  %i.fn = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 2 uses
  %.not.not.i271685 = icmp eq ptr %i.fn, %i.h
  br i1 %.not.not.i271685, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267.lr.ph, !llvm.loop !16

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph441.preheader
  br label %.lr.ph.i267, !llvm.loop !16

.lr.ph.i267:                                      ; preds = %.lr.ph.i267.lr.ph, %.lr.ph441
  %i.fo = phi ptr [ %i.fn, %.lr.ph.i267.lr.ph ], [ %i.fs, %.lr.ph441 ] ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = sext i8 %i.fp to i32
  %i.fr = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fq)
  br i1 %i.fr, label %.lr.ph441, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

.lr.ph441:                                        ; preds = %.lr.ph.i267
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  %.not.not.i271 = icmp eq ptr %i.fs, %i.h
  br i1 %.not.not.i271, label %.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, label %.lr.ph.i267, !llvm.loop !16

.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph441
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph441.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge, %.lr.ph441.preheader
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit: ; preds = %.lr.ph.i267, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, %.lr.ph.i267.preheader
  %i.ft = phi ptr [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %scevgep534, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fo, %.lr.ph.i267 ]
  %.pre555 = ptrtoint ptr %i.ft to i64
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit, %bb.au
  %.pre-phi = phi i64 [ %.pre555, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit ], [ %.promoted.i265533, %bb.au ]
  %i.fu = sub i64 %.pre-phi, %i.a
  %i.fv = trunc i64 %i.fu to i32
  store i32 %i.fv, ptr %4, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fw = icmp eq i8 %.pre546, 48
  br i1 %i.fw, label %.lr.ph446, label %._crit_edge

.lr.ph446:                                        ; preds = %bb.ap, %bb.aw
  br i1 %i.dy, label %.lr.ph446.split.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph446.split.us.preheader:                     ; preds = %.lr.ph446
  %i.fx = add i64 %i.a, %i.g                      ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.promoted444, i64 1 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.h
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us

.lr.ph446.split.us:                               ; preds = %.backedge411.us
  %i.ga = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.h
  br i1 %i.gb, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge411.us, !llvm.loop !33

.backedge411.us:                                  ; preds = %.lr.ph446.split.us.preheader, %.lr.ph446.split.us
  %i.gc = phi ptr [ %i.ga, %.lr.ph446.split.us ], [ %i.fy, %.lr.ph446.split.us.preheader ] ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %i.ge = icmp eq i8 %i.gd, 48
  br i1 %i.ge, label %.lr.ph446.split.us, label %._crit_edge, !llvm.loop !33

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph446, %.backedge411
  %i.gf = phi ptr [ %i.gj, %.backedge411 ], [ %.promoted444, %.lr.ph446 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, %i.h
  br i1 %i.gh, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651, label %bb.ax

.backedge411:                                     ; preds = %bb.ay, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281
  %i.gi = phi i8 [ %.pre547.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gp, %bb.ay ]
  %i.gj = phi ptr [ %i.gg, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281 ], [ %i.gl, %bb.ay ] ; 2 uses
  %i.gk = icmp eq i8 %i.gi, 48
  br i1 %i.gk, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !33

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 3 uses
  %i.gm = icmp ne ptr %i.gl, %i.h
  %.pre547.pre = load i8, ptr %i.gg, align 1, !tbaa !15 ; 2 uses
  %i.gn = sext i8 %.pre547.pre to i32
  %i.go = icmp eq i32 %i.gn, %i.dx
  %or.cond649 = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond649, label %bb.ay, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

bb.ay:                                            ; preds = %bb.ax
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !15  ; 3 uses
  %i.gq = sext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -48
  %or.cond.i25.i278 = icmp ult i32 %i.gr, 10
  %i.gs = icmp ult i8 %i.gp, 58
  %or.cond19.i26.i279 = and i1 %i.gs, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge411, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281: ; preds = %bb.ay, %bb.ax
  br label %.backedge411

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gt = ptrtoint ptr %i.gg to i64
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %.lr.ph446.split.us, %.lr.ph446.split.us.preheader, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651
  %.us-phi = phi i64 [ %i.gt, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread.loopexit651 ], [ %i.fx, %.lr.ph446.split.us.preheader ], [ %i.fx, %.lr.ph446.split.us ]
  %i.gu = sub i64 %.us-phi, %i.a
  %i.gv = trunc i64 %i.gu to i32
  store i32 %i.gv, ptr %4, align 4, !tbaa !3
  %i.gw = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge411, %.backedge411.us, %bb.ap, %bb.aw
  %.lcssa445 = phi ptr [ %.promoted444, %bb.aw ], [ %.promoted444, %bb.ap ], [ %i.gc, %.backedge411.us ], [ %i.gj, %.backedge411 ] ; 3 uses
  store ptr %.lcssa445, ptr %i.b, align 8
  %i.gx = trunc i32 %i.el to i8
  %i.gy = lshr i8 %i.gx, 1
  %.pre549 = load i8, ptr %.lcssa445, align 1, !tbaa !15
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %5 = phi i8 [ %i.dt, %bb.aj ], [ %.pre549, %._crit_edge ] ; 3 uses
  %.promoted451 = phi ptr [ %i.ds, %bb.aj ], [ %.lcssa445, %._crit_edge ] ; 2 uses
  %i.gz = phi i8 [ 0, %bb.aj ], [ %i.gy, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ha = add i8 %5, -48
  %or.cond228453 = icmp ult i8 %i.ha, 10
  br i1 %or.cond228453, label %.lr.ph459, label %.critedge

.lr.ph459:                                        ; preds = %.critedge227
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !29 ; 2 uses
  %i.hd = zext i16 %i.hc to i32
  %i.he = icmp eq i16 %i.hc, 0
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph459, %.backedge410
  %i.hf = phi i8 [ %5, %.lr.ph459 ], [ %i.hx, %.backedge410 ] ; 2 uses
  %.0165458 = phi i32 [ 0, %.lr.ph459 ], [ %.1166, %.backedge410 ] ; 3 uses
  %.0170457 = phi i32 [ 0, %.lr.ph459 ], [ %.1171, %.backedge410 ] ; 2 uses
  %.0173456 = phi i1 [ false, %.lr.ph459 ], [ %.1174, %.backedge410 ] ; 2 uses
  %.0182455 = phi i8 [ %i.gz, %.lr.ph459 ], [ %i.ht, %.backedge410 ]
  %.0185454 = phi i32 [ 0, %.lr.ph459 ], [ %.1186, %.backedge410 ] ; 3 uses
  %i.hg = phi ptr [ %.promoted451, %.lr.ph459 ], [ %i.hw, %.backedge410 ] ; 5 uses
  %i.hh = icmp slt i32 %.0165458, 772
  br i1 %i.hh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hi = add nsw i32 %.0185454, 1
  %i.hj = sext i32 %.0185454 to i64
  %i.hk = getelementptr inbounds i8, ptr %i.d, i64 %i.hj
  store i8 %i.hf, ptr %i.hk, align 1, !tbaa !15
  %i.hl = add nsw i32 %.0165458, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hm = add nsw i32 %.0170457, 1
  %i.hn = icmp ne i8 %i.hf, 48
  %i.ho = or i1 %.0173456, %i.hn
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1186 = phi i32 [ %i.hi, %bb.ba ], [ %.0185454, %bb.bb ] ; 5 uses
  %.1174 = phi i1 [ %.0173456, %bb.ba ], [ %i.ho, %bb.bb ] ; 5 uses
  %.1171 = phi i32 [ %.0170457, %bb.ba ], [ %i.hm, %bb.bb ] ; 5 uses
  %.1166 = phi i32 [ %i.hl, %bb.ba ], [ %.0165458, %bb.bb ] ; 2 uses
  %i.hp = trunc i8 %.0182455 to i1
  br i1 %i.hp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hq = load i8, ptr %i.hg, align 1, !tbaa !15
  %i.hr = icmp slt i8 %i.hq, 56
  %i.hs = zext i1 %i.hr to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ht = phi i8 [ 0, %bb.bc ], [ %i.hs, %bb.bd ] ; 5 uses
  br i1 %i.he, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.h
  br i1 %i.hv, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

.backedge410:                                     ; preds = %bb.bk, %bb.bf, %bb.bh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290
  %i.hw = phi ptr [ %i.hu, %bb.bf ], [ %i.id, %bb.bh ], [ %i.id, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290 ], [ %i.if, %bb.bk ] ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !15  ; 3 uses
  %i.hy = add i8 %i.hx, -48
  %or.cond228 = icmp ult i8 %i.hy, 10
  br i1 %or.cond228, label %bb.az, label %.critedge, !llvm.loop !34

bb.bg:                                            ; preds = %bb.be
  %i.hz = load i8, ptr %i.hg, align 1, !tbaa !15  ; 2 uses
  %i.ia = sext i8 %i.hz to i32
  %i.ib = add nsw i32 %i.ia, -48
  %or.cond.i.i282 = icmp ult i32 %i.ib, 10
  %i.ic = icmp ult i8 %i.hz, 58
  %or.cond19.i.i283 = and i1 %i.ic, %or.cond.i.i282
  %i.id = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 6 uses
  %i.ie = icmp eq ptr %i.id, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ie, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %.backedge410

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.ie, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, label %bb.bi

bb.bi:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.if = getelementptr inbounds nuw i8, ptr %i.hg, i64 2 ; 3 uses
  %i.ig = icmp eq ptr %i.if, %i.h
  br i1 %i.ig, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !15
  %i.ii = sext i8 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, %i.hd
  br i1 %i.ij, label %bb.bk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

bb.bk:                                            ; preds = %bb.bj
  %i.ik = load i8, ptr %i.if, align 1, !tbaa !15  ; 2 uses
  %i.il = sext i8 %i.ik to i32
  %i.im = add nsw i32 %i.il, -48
  %or.cond.i25.i287 = icmp ult i32 %i.im, 10
  %i.in = icmp ult i8 %i.ik, 58
  %or.cond19.i26.i288 = and i1 %i.in, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit290: ; preds = %bb.bk, %bb.bi, %bb.bj
  br label %.backedge410

.critedge:                                        ; preds = %.backedge410, %.critedge227
  %.lcssa452 = phi ptr [ %.promoted451, %.critedge227 ], [ %i.hw, %.backedge410 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge410 ] ; 6 uses
  %.0182.lcssa = phi i8 [ %i.gz, %.critedge227 ], [ %i.ht, %.backedge410 ]
  %.0173.lcssa = phi i1 [ false, %.critedge227 ], [ %.1174, %.backedge410 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge410 ] ; 10 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge410 ] ; 5 uses
  %.lcssa = phi i8 [ %5, %.critedge227 ], [ %i.hx, %.backedge410 ]
  store ptr %.lcssa452, ptr %i.b, align 8
  %i.io = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.io, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.ip = icmp eq i8 %.lcssa, 46
  br i1 %i.ip, label %bb.bl, label %.critedge11

bb.bl:                                            ; preds = %.critedge
  %i.iq = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.iq, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.is = load double, ptr %i.ir, align 8, !tbaa !18
  br label %.thread364

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.iq, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iu = load i16, ptr %i.it, align 8, !tbaa !29 ; 4 uses
  %i.iv = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.iu, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.iv, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.iw = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.du, %i.iw
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !18
  br label %.thread364

bb.br:                                            ; preds = %bb.bo
  %.promoted470.pre = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %i.iz = load i8, ptr %.promoted470.pre, align 1, !tbaa !15 ; 2 uses
  %i.ja = icmp eq i8 %i.iz, 48
  %or.cond650 = select i1 %i.io, i1 %i.ja, i1 false
  br i1 %or.cond650, label %.lr.ph468, label %.loopexit

.lr.ph468:                                        ; preds = %bb.br, %bb.bt
  %.0156467 = phi i32 [ %i.jh, %bb.bt ], [ 0, %bb.br ]
  %i.jb = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.iu, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jb, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph468
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = sub i64 %i.jd, %i.a
  %i.jf = trunc i64 %i.je to i32
  store i32 %i.jf, ptr %4, align 4, !tbaa !3
  %i.jg = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread364

bb.bt:                                            ; preds = %.lr.ph468
  %i.jh = add nsw i32 %.0156467, -1               ; 2 uses
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !15  ; 2 uses
  %i.jk = icmp eq i8 %i.jj, 48
  br i1 %i.jk, label %.lr.ph468, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.bt, %bb.br
  %i.jl = phi i8 [ %i.iz, %bb.br ], [ %i.jj, %bb.bt ] ; 2 uses
  %.promoted470 = phi ptr [ %.promoted470.pre, %bb.br ], [ %i.ji, %bb.bt ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.br ], [ %i.jh, %bb.bt ] ; 2 uses
  %i.jm = add i8 %i.jl, -48
  %or.cond229472 = icmp ult i8 %i.jm, 10
  br i1 %or.cond229472, label %.lr.ph478, label %.critedge11.loopexit

.lr.ph478:                                        ; preds = %.loopexit
  %i.jn = zext i16 %i.iu to i32
  %i.jo = icmp eq i16 %i.iu, 0
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph478, %.backedge
  %i.jp = phi i8 [ %i.jl, %.lr.ph478 ], [ %i.kc, %.backedge ] ; 2 uses
  %.2158476 = phi i32 [ %.1157, %.lr.ph478 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167475 = phi i32 [ %.0165.lcssa, %.lr.ph478 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175474 = phi i1 [ %.0173.lcssa, %.lr.ph478 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187473 = phi i32 [ %.0185.lcssa, %.lr.ph478 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jq = phi ptr [ %.promoted470, %.lr.ph478 ], [ %i.kb, %.backedge ] ; 4 uses
  %i.jr = icmp slt i32 %.2167475, 772
  br i1 %i.jr, label %bb.bv, label %bb.bw
end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i: ; preds = %bb.p, %bb.m, %bb.l
  %i.ba = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext %i.at), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit: ; preds = %bb.k, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i
  %.sink.i = phi i8 [ %i.be, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i ], [ %i.at, %bb.k ]
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !15
  %i.bg = icmp eq i8 %.sink.i, %i.bf
  br i1 %i.bg, label %bb.r, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %.pre533.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.w

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !19
  %i.bi = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.bh, i1 noundef zeroext %i.o)
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bl = and i32 %i.h, 20
  %or.cond3.not = icmp ne i32 %i.bl, 0
  %i.bm = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not224 = icmp eq ptr %i.bm, %i.g              ; 2 uses
  %or.cond393 = select i1 %or.cond3.not, i1 true, i1 %.not224
  br i1 %or.cond393, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %or.cond394 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond394, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

.lr.ph.i247.preheader:                            ; preds = %bb.v
  %i.bp = load i16, ptr %i.bm, align 2, !tbaa !41
  %i.bq = zext i16 %i.bp to i32
  %i.br = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bq)
  br i1 %i.br, label %.lr.ph433, label %.lr.ph.i247._crit_edge

.lr.ph.i247:                                      ; preds = %.lr.ph433
  %i.bs = load i16, ptr %i.bw, align 2, !tbaa !41
  %i.bt = zext i16 %i.bs to i32
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.bt)
  br i1 %i.bu, label %.lr.ph433, label %.lr.ph.i247._crit_edge, !llvm.loop !42

.lr.ph433:                                        ; preds = %.lr.ph.i247.preheader, %.lr.ph.i247
  %i.bv = phi ptr [ %i.bw, %.lr.ph.i247 ], [ %i.bm, %.lr.ph.i247.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 3 uses
  %.not.not.i251 = icmp eq ptr %i.bw, %i.g
  br i1 %.not.not.i251, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252, label %.lr.ph.i247, !llvm.loop !42

.lr.ph.i247._crit_edge:                           ; preds = %.lr.ph.i247, %.lr.ph.i247.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  br label %.thread

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit252: ; preds = %.lr.ph433, %bb.v
  %i.bz = phi ptr [ %i.bm, %bb.v ], [ %i.g, %.lr.ph433 ]
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 1
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %4, align 4, !tbaa !3
  %spec.select395 = select i1 %.0180, double -inf, double +inf
  br label %.thread

bb.w:                                             ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge, %bb.j
  %.pre533 = phi ptr [ %.pre533.pre, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit._crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28 ; 2 uses
  %.not216 = icmp eq ptr %i.cg, null
  br i1 %.not216, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i16, ptr %.pre533, align 2, !tbaa !41
  %i.ci = trunc i16 %i.ch to i8                   ; 2 uses
  br i1 %i.o, label %bb.y, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

bb.y:                                             ; preds = %bb.x
  %i.cj = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, !prof !20

bb.z:                                             ; preds = %bb.y
  %i.cl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i.i255 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i255, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cn, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254: ; preds = %bb.ac, %bb.z, %bb.y
  %i.cp = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !21, !nonnull !23, !align !24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext %i.ci), !inline_history !27
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256: ; preds = %bb.x, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254
  %.sink.i253 = phi i8 [ %i.ct, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit.i254 ], [ %i.ci, %bb.x ]
  %i.cu = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.cv = icmp eq i8 %.sink.i253, %i.cu
  br i1 %i.cv, label %bb.ae, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge: ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %.pre532 = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !28
  %i.cx = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr noundef %i.a, ptr noundef nonnull %i.g, ptr noundef %i.cw, i1 noundef zeroext %i.o)
  br i1 %i.cx, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.da = and i32 %i.h, 20
  %or.cond5.not = icmp ne i32 %i.da, 0
  %i.db = load ptr, ptr %i.a, align 8             ; 4 uses
  %.not222 = icmp eq ptr %i.db, %i.g              ; 2 uses
  %or.cond396 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond396, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %or.cond397 = select i1 %i.j, i1 true, i1 %.not222
  br i1 %or.cond397, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.ai
  %i.de = load i16, ptr %i.db, align 2, !tbaa !41
  %i.df = zext i16 %i.de to i32
  %i.dg = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.df)
  br i1 %i.dg, label %.lr.ph438, label %.lr.ph.i259._crit_edge

.lr.ph.i259:                                      ; preds = %.lr.ph438
  %i.dh = load i16, ptr %i.dl, align 2, !tbaa !41
  %i.di = zext i16 %i.dh to i32
  %i.dj = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.di)
  br i1 %i.dj, label %.lr.ph438, label %.lr.ph.i259._crit_edge, !llvm.loop !42

.lr.ph438:                                        ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i259 ], [ %i.db, %.lr.ph.i259.preheader ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 3 uses
  %.not.not.i263 = icmp eq ptr %i.dl, %i.g
  br i1 %.not.not.i263, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit264, label %.lr.ph.i259, !llvm.loop !42

.lr.ph.i259._crit_edge:                           ; preds = %.lr.ph.i259, %.lr.ph.i259.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18
  br label %.thread

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit264: ; preds = %.lr.ph438, %bb.ai
  %i.do = phi ptr [ %i.db, %bb.ai ], [ %i.g, %.lr.ph438 ]
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %1 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 1
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %4, align 4, !tbaa !3
  %spec.select398 = select i1 %.0180, double -qnan, double +qnan
  br label %.thread

bb.aj:                                            ; preds = %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge, %bb.w
  %i.du = phi ptr [ %.pre532, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit256._crit_edge ], [ %.pre533, %bb.w ] ; 4 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !41 ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 48                   ; 3 uses
  br i1 %i.dw, label %bb.ak, label %.critedge227

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 8, !tbaa !29 ; 4 uses
  %i.dz = icmp eq i16 %i.dy, 0                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 5 uses
  %i.eb = icmp eq ptr %i.ea, %i.g                 ; 2 uses
  br i1 %i.dz, label %bb.al, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  br i1 %i.eb, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread356, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ak
  br i1 %i.eb, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread356, label %bb.am

bb.am:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, %i.g
  br i1 %i.ed, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = load i16, ptr %i.ea, align 2, !tbaa !41 ; 2 uses
  %i.ef = icmp eq i16 %i.ee, %i.dy
  br i1 %i.ef, label %bb.ao, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.eg = load i16, ptr %i.ec, align 2, !tbaa !41 ; 2 uses
  %i.eh = add i16 %i.eg, -48
  %or.cond19.i26.i = icmp ult i16 %i.eh, 10
  br i1 %or.cond19.i26.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread356: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i, %bb.al
  store i32 %2, ptr %4, align 4, !tbaa !3
  %i.ei = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %bb.al, %bb.am, %bb.ao
  %.pre534.pr = load i16, ptr %i.ea, align 2, !tbaa !41
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread: ; preds = %bb.ao, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.an
  %.pre534 = phi i16 [ %.pre534.pr, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ee, %bb.an ], [ %i.eg, %bb.ao ] ; 2 uses
  %.promoted444 = phi ptr [ %i.ea, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.ea, %bb.an ], [ %i.ec, %bb.ao ] ; 5 uses
  %i.ej = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ek = and i32 %i.ej, 128
  %.not218 = icmp eq i32 %i.ek, 0
  %i.el = and i32 %i.ej, 129
  %or.cond225 = icmp eq i32 %i.el, 0
  br i1 %or.cond225, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  switch i16 %.pre534, label %._crit_edge [
    i16 120, label %bb.aq
    i16 88, label %bb.aq
    i16 48, label %.lr.ph446
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.em = getelementptr inbounds nuw i8, ptr %.promoted444, i64 2 ; 4 uses
  store ptr %i.em, ptr %i.a, align 8, !tbaa !39
  %i.en = icmp eq ptr %i.em, %i.g
  br i1 %i.en, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  br i1 %.not218, label %.thread358, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eq = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL16IsHexFloatStringIPKtEEbT_S4_tb(ptr noundef nonnull %i.em, ptr noundef nonnull %i.g, i16 noundef zeroext %i.dy, i1 noundef zeroext %i.j)
  br i1 %i.eq, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %.thread358

.thread358:                                       ; preds = %bb.as, %bb.at
  %i.er = load i16, ptr %i.em, align 2, !tbaa !41
  %.fr495 = freeze i16 %i.er                      ; 2 uses
  %i.es = add i16 %.fr495, -48
  %or.cond19.i = icmp ult i16 %i.es, 10
  br i1 %or.cond19.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread358
  %switch.tableidx = add i16 %.fr495, -65         ; 2 uses
  %i.et = icmp ult i16 %switch.tableidx, 38
  br i1 %i.et, label %switch.hole_check, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359: ; preds = %switch.hole_check, %switch.early.test
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread359

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread358, %bb.at
  %i.ew = phi i1 [ false, %.thread358 ], [ true, %bb.at ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ex = load i16, ptr %i.dx, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !18
  %i.fa = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S4_btbbdbPb(ptr noundef %i.a, ptr noundef nonnull %i.g, i1 noundef zeroext %.0180, i16 noundef zeroext %i.ex, i1 noundef zeroext %i.ew, i1 noundef zeroext %i.j, double noundef %i.ez, i1 noundef zeroext %3, ptr noundef %i.b)
  %i.fb = load i8, ptr %i.b, align 1, !tbaa !30, !range !32, !noundef !23
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond400 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, label %.lr.ph.i267.preheader

.lr.ph.i267.preheader:                            ; preds = %bb.au
  %i.fd = load i16, ptr %.promoted.i265, align 2, !tbaa !41
  %i.fe = zext i16 %i.fd to i32
  %i.ff = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fe)
  br i1 %i.ff, label %.lr.ph441, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272

.lr.ph.i267:                                      ; preds = %.lr.ph441
  %i.fg = load i16, ptr %i.fk, align 2, !tbaa !41
  %i.fh = zext i16 %i.fg to i32
  %i.fi = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fh)
  br i1 %i.fi, label %.lr.ph441, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, !llvm.loop !42

.lr.ph441:                                        ; preds = %.lr.ph.i267.preheader, %.lr.ph.i267
  %i.fj = phi ptr [ %i.fk, %.lr.ph.i267 ], [ %.promoted.i265, %.lr.ph.i267.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2 ; 5 uses
  %.not.not.i271 = icmp eq ptr %i.fk, %i.g
  br i1 %.not.not.i271, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267, !llvm.loop !42

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph441
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, !llvm.loop !42

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge, %bb.au
  %i.fl = phi ptr [ %.promoted.i265, %bb.au ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %i.fk, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fk, %.lr.ph.i267 ]
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 1
  %i.fq = trunc i64 %i.fp to i32
  store i32 %i.fq, ptr %4, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit272, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.aw:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit.thread
  %i.fr = icmp eq i16 %.pre534, 48
  br i1 %i.fr, label %.lr.ph446, label %._crit_edge

.lr.ph446:                                        ; preds = %bb.ap, %bb.aw
  br i1 %i.dz, label %.lr.ph446.split.us, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph446.split.us:                               ; preds = %.lr.ph446, %.backedge411.us
  %i.fs = phi ptr [ %i.ft, %.backedge411.us ], [ %.promoted444, %.lr.ph446 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, %i.g
  br i1 %i.fu, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, label %.backedge411.us

.backedge411.us:                                  ; preds = %.lr.ph446.split.us
  %i.fv = load i16, ptr %i.ft, align 2, !tbaa !41
  %i.fw = icmp eq i16 %i.fv, 48
  br i1 %i.fw, label %.lr.ph446.split.us, label %._crit_edge, !llvm.loop !43

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph446, %.backedge411
  %i.fx = phi ptr [ %i.gb, %.backedge411 ], [ %.promoted444, %.lr.ph446 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, %i.g
  br i1 %i.fz, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread, label %bb.ax

.backedge411:                                     ; preds = %bb.ay, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281
  %i.ga = phi i16 [ %.pre535.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gg, %bb.ay ]
  %i.gb = phi ptr [ %i.fy, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281 ], [ %i.gd, %bb.ay ] ; 2 uses
  %i.gc = icmp eq i16 %i.ga, 48
  br i1 %i.gc, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.ax:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 3 uses
  %i.ge = icmp ne ptr %i.gd, %i.g
  %.pre535.pre = load i16, ptr %i.fy, align 2, !tbaa !41 ; 2 uses
  %i.gf = icmp eq i16 %.pre535.pre, %i.dy
  %or.cond641 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond641, label %bb.ay, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

bb.ay:                                            ; preds = %bb.ax
  %i.gg = load i16, ptr %i.gd, align 2, !tbaa !41 ; 2 uses
  %i.gh = add i16 %i.gg, -48
  %or.cond19.i26.i279 = icmp ult i16 %i.gh, 10
  br i1 %or.cond19.i26.i279, label %.backedge411, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281: ; preds = %bb.ay, %bb.ax
  br label %.backedge411

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit281.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, %.lr.ph446.split.us
  %.us-phi = phi ptr [ %i.ft, %.lr.ph446.split.us ], [ %i.fy, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.gi = ptrtoint ptr %.us-phi to i64
  %i.gj = ptrtoint ptr %1 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 1
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %4, align 4, !tbaa !3
  %i.gn = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge411, %.backedge411.us, %bb.ap, %bb.aw
  %.lcssa445 = phi ptr [ %.promoted444, %bb.aw ], [ %.promoted444, %bb.ap ], [ %i.ft, %.backedge411.us ], [ %i.gb, %.backedge411 ] ; 3 uses
  store ptr %.lcssa445, ptr %i.a, align 8
  %i.go = trunc i32 %i.ej to i8
  %i.gp = lshr i8 %i.go, 1
  %.pre537 = load i16, ptr %.lcssa445, align 2, !tbaa !41
  br label %.critedge227

.critedge227:                                     ; preds = %bb.aj, %._crit_edge
  %5 = phi i16 [ %i.dv, %bb.aj ], [ %.pre537, %._crit_edge ] ; 3 uses
  %.promoted451 = phi ptr [ %i.du, %bb.aj ], [ %.lcssa445, %._crit_edge ] ; 2 uses
  %i.gq = phi i8 [ 0, %bb.aj ], [ %i.gp, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gr = add i16 %5, -48
  %or.cond228453 = icmp ult i16 %i.gr, 10
  br i1 %or.cond228453, label %.lr.ph459, label %.critedge

.lr.ph459:                                        ; preds = %.critedge227
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !29 ; 2 uses
  %i.gu = icmp eq i16 %i.gt, 0
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph459, %.backedge410
  %i.gv = phi i16 [ %5, %.lr.ph459 ], [ %i.ho, %.backedge410 ] ; 2 uses
  %.0165458 = phi i32 [ 0, %.lr.ph459 ], [ %.1166, %.backedge410 ] ; 3 uses
  %.0170457 = phi i32 [ 0, %.lr.ph459 ], [ %.1171, %.backedge410 ] ; 2 uses
  %.0173456 = phi i1 [ false, %.lr.ph459 ], [ %.1174, %.backedge410 ] ; 2 uses
  %.0182455 = phi i8 [ %i.gq, %.lr.ph459 ], [ %i.hk, %.backedge410 ]
  %.0185454 = phi i32 [ 0, %.lr.ph459 ], [ %.1186, %.backedge410 ] ; 3 uses
  %i.gw = phi ptr [ %.promoted451, %.lr.ph459 ], [ %i.hn, %.backedge410 ] ; 5 uses
  %i.gx = icmp slt i32 %.0165458, 772
  br i1 %i.gx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gy = trunc nuw nsw i16 %i.gv to i8
  %i.gz = add nsw i32 %.0185454, 1
  %i.ha = sext i32 %.0185454 to i64
  %i.hb = getelementptr inbounds i8, ptr %i.c, i64 %i.ha
  store i8 %i.gy, ptr %i.hb, align 1, !tbaa !15
  %i.hc = add nsw i32 %.0165458, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hd = add nsw i32 %.0170457, 1
  %i.he = icmp ne i16 %i.gv, 48
  %i.hf = or i1 %.0173456, %i.he
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1186 = phi i32 [ %i.gz, %bb.ba ], [ %.0185454, %bb.bb ] ; 5 uses
  %.1174 = phi i1 [ %.0173456, %bb.ba ], [ %i.hf, %bb.bb ] ; 5 uses
  %.1171 = phi i32 [ %.0170457, %bb.ba ], [ %i.hd, %bb.bb ] ; 5 uses
  %.1166 = phi i32 [ %i.hc, %bb.ba ], [ %.0165458, %bb.bb ] ; 2 uses
  %i.hg = trunc i8 %.0182455 to i1
  br i1 %i.hg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hh = load i16, ptr %i.gw, align 2, !tbaa !41
  %i.hi = icmp ult i16 %i.hh, 56
  %i.hj = zext i1 %i.hi to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hk = phi i8 [ 0, %bb.bc ], [ %i.hj, %bb.bd ] ; 5 uses
  br i1 %i.gu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 3 uses
  %i.hm = icmp eq ptr %i.hl, %i.g
  br i1 %i.hm, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge410

.backedge410:                                     ; preds = %bb.bk, %bb.bf, %bb.bh, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290
  %i.hn = phi ptr [ %i.hl, %bb.bf ], [ %i.hs, %bb.bh ], [ %i.hs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290 ], [ %i.hu, %bb.bk ] ; 3 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !41 ; 3 uses
  %i.hp = add i16 %i.ho, -48
  %or.cond228 = icmp ult i16 %i.hp, 10
  br i1 %or.cond228, label %bb.az, label %.critedge, !llvm.loop !44

bb.bg:                                            ; preds = %bb.be
  %i.hq = load i16, ptr %i.gw, align 2, !tbaa !41
  %i.hr = add i16 %i.hq, -48
  %or.cond19.i.i283 = icmp ult i16 %i.hr, 10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 6 uses
  %i.ht = icmp eq ptr %i.hs, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ht, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %.backedge410

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.ht, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.sink.split, label %bb.bi

bb.bi:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, %i.g
  br i1 %i.hv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !41
  %i.hx = icmp eq i16 %i.hw, %i.gt
  br i1 %i.hx, label %bb.bk, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

bb.bk:                                            ; preds = %bb.bj
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !41
  %i.hz = add i16 %i.hy, -48
  %or.cond19.i26.i288 = icmp ult i16 %i.hz, 10
  br i1 %or.cond19.i26.i288, label %.backedge410, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290

_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_.exit290: ; preds = %bb.bk, %bb.bi, %bb.bj
  br label %.backedge410

.critedge:                                        ; preds = %.backedge410, %.critedge227
  %.lcssa452 = phi ptr [ %.promoted451, %.critedge227 ], [ %i.hn, %.backedge410 ] ; 3 uses
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge410 ] ; 6 uses
  %.0182.lcssa = phi i8 [ %i.gq, %.critedge227 ], [ %i.hk, %.backedge410 ]
  %.0173.lcssa = phi i1 [ false, %.critedge227 ], [ %.1174, %.backedge410 ] ; 4 uses
  %.0170.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1171, %.backedge410 ] ; 10 uses
  %.0165.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1166, %.backedge410 ] ; 5 uses
  %.lcssa = phi i16 [ %5, %.critedge227 ], [ %i.ho, %.backedge410 ]
  store ptr %.lcssa452, ptr %i.a, align 8
  %i.ia = icmp eq i32 %.0165.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.ia, i8 0, i8 %.0182.lcssa ; 6 uses
  %i.ib = icmp eq i16 %.lcssa, 46
  br i1 %i.ib, label %bb.bl, label %.critedge11

bb.bl:                                            ; preds = %.critedge
  %i.ic = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.ic, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  br label %.thread364

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.ic, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ig = load i16, ptr %i.if, align 8, !tbaa !29 ; 4 uses
  %i.ih = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ih, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ii = icmp ne i32 %.0165.lcssa, 0
  %or.cond9 = or i1 %i.dw, %i.ii
  br i1 %or.cond9, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S4_.exit315.thread384, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !18
  br label %.thread364

bb.br:                                            ; preds = %bb.bo
  %.promoted470.pre = load ptr, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.il = load i16, ptr %.promoted470.pre, align 2, !tbaa !41 ; 2 uses
  %i.im = icmp eq i16 %i.il, 48
  %or.cond642 = select i1 %i.ia, i1 %i.im, i1 false
  br i1 %or.cond642, label %.lr.ph468, label %.loopexit

.lr.ph468:                                        ; preds = %bb.br, %bb.bt
  %.0156467 = phi i32 [ %i.iv, %bb.bt ], [ 0, %bb.br ]
  %i.in = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.in, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph468
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %1 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = lshr exact i64 %i.ir, 1
  %i.it = trunc i64 %i.is to i32
  store i32 %i.it, ptr %4, align 4, !tbaa !3
  %i.iu = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread364

bb.bt:                                            ; preds = %.lr.ph468
  %i.iv = add nsw i32 %.0156467, -1               ; 2 uses
  %i.iw = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !41 ; 2 uses
  %i.iy = icmp eq i16 %i.ix, 48
  br i1 %i.iy, label %.lr.ph468, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bt, %bb.br
  %i.iz = phi i16 [ %i.il, %bb.br ], [ %i.ix, %bb.bt ] ; 2 uses
  %.promoted470 = phi ptr [ %.promoted470.pre, %bb.br ], [ %i.iw, %bb.bt ] ; 2 uses
  %.1157 = phi i32 [ 0, %bb.br ], [ %i.iv, %bb.bt ] ; 2 uses
  %i.ja = add i16 %i.iz, -48
  %or.cond229472 = icmp ult i16 %i.ja, 10
  br i1 %or.cond229472, label %.lr.ph478, label %.critedge11.loopexit

.lr.ph478:                                        ; preds = %.loopexit
  %i.jb = icmp eq i16 %i.ig, 0
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph478, %.backedge
  %i.jc = phi i16 [ %i.iz, %.lr.ph478 ], [ %i.jq, %.backedge ] ; 2 uses
  %.2158476 = phi i32 [ %.1157, %.lr.ph478 ], [ %.3159, %.backedge ] ; 2 uses
  %.2167475 = phi i32 [ %.0165.lcssa, %.lr.ph478 ], [ %.3168, %.backedge ] ; 3 uses
  %.2175474 = phi i1 [ %.0173.lcssa, %.lr.ph478 ], [ %.3176, %.backedge ] ; 2 uses
  %.2187473 = phi i32 [ %.0185.lcssa, %.lr.ph478 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jd = phi ptr [ %.promoted470, %.lr.ph478 ], [ %i.jp, %.backedge ] ; 4 uses
  %i.je = icmp slt i32 %.2167475, 772
  br i1 %i.je, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jf = trunc nuw nsw i16 %i.jc to i8
  %i.jg = add nsw i32 %.2187473, 1
  %i.jh = sext i32 %.2187473 to i64
  %i.ji = getelementptr inbounds i8, ptr %i.c, i64 %i.jh
end_hunk_1
