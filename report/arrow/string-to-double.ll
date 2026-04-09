inline.NumInlined: 160
inline.NumDeleted: 32
begin_hunk_0_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 34 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [782 x i8], align 16              ; 11 uses
end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 45 uses
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.h = load i32, ptr %0, align 8, !tbaa !10     ; 9 uses
  %i.i = and i32 %i.h, 4
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

.lr.ph.i._crit_edge.thread:                       ; preds = %.lr.ph.i.preheader
  store ptr %1, ptr %i.a, align 8
  br label %._crit_edge531

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.w = phi ptr [ %i.v, %.lr.ph.i.lr.ph ], [ %i.aa, %.lr.ph ] ; 4 uses
end_hunk_2
begin_hunk_3_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  store ptr %i.w, ptr %i.a, align 8
  br i1 %.not212.not, label %bb.d, label %._crit_edge531

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  br label %.thread

._crit_edge531:                                   ; preds = %bb.c, %.lr.ph.i._crit_edge.thread, %.lr.ph.i._crit_edge
  %5 = phi i8 [ %i.x, %.lr.ph.i._crit_edge ], [ %.pre, %.lr.ph.i._crit_edge.thread ], [ %.pre, %bb.c ] ; 2 uses
  %6 = phi ptr [ %i.w, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph.i._crit_edge.thread ], [ %1, %bb.c ] ; 5 uses
  switch i8 %5, label %bb.j [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge531, %._crit_edge531
  %i.af = icmp eq i8 %5, 45
  %.ptr404 = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  store ptr %.ptr404, ptr %i.a, align 8, !tbaa !7
  %.not6.not.i238 = icmp eq ptr %.ptr404, %i.g
  br i1 %.not6.not.i238, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.e, %bb.f
  %.0338.idx = phi i64 [ %.0338.add, %bb.f ], [ 1, %bb.e ] ; 4 uses
  %.0338.ptr = getelementptr inbounds nuw i8, ptr %6, i64 %.0338.idx
  %i.ag = load i8, ptr %.0338.ptr, align 1, !tbaa !15
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.ah)
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i239
  %.0338.add = add nuw nsw i64 %.0338.idx, 1      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %6, i64 %.0338.add
  %.not.not.i243 = icmp eq ptr %.ptr, %i.g
  br i1 %.not.not.i243, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244, label %.lr.ph.i239, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit244: ; preds = %bb.f, %bb.e
end_hunk_3
begin_hunk_4_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %.0338.ptr.le = getelementptr inbounds nuw i8, ptr %6, i64 %.0338.idx ; 2 uses
  store ptr %.0338.ptr.le, ptr %i.a, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge531
  %i.an = phi ptr [ %.0338.ptr.le, %bb.i ], [ %6, %._crit_edge531 ] ; 2 uses
  %.0180 = phi i1 [ %i.af, %bb.i ], [ false, %._crit_edge531 ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %or.cond394 = select i1 %i.j, i1 true, i1 %.not224
  br i1 %or.cond394, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.preheader

end_hunk_5
begin_hunk_6_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.bo, label %.lr.ph434.preheader, label %.lr.ph.i247._crit_edge

.lr.ph434.preheader:                              ; preds = %.lr.ph.i247.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %.not.not.i251673 = icmp eq ptr %i.bp, %i.g
  br i1 %.not.not.i251673, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, label %.lr.ph.i247.lr.ph, !llvm.loop !16
end_hunk_6
begin_hunk_7_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252: ; preds = %.lr.ph434.preheader, %.lr.ph434._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, %bb.v
  %7 = phi ptr [ %i.bj, %bb.v ], [ %i.g, %.lr.ph434._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge ], [ %i.g, %.lr.ph434.preheader ]
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %1 to i64
  %i.bx = sub i64 %8, %9
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %4, align 4, !tbaa !3
  %spec.select395 = select i1 %.0180, double 0xFFF0000000000000, double 0x7FF0000000000000
end_hunk_7
begin_hunk_8_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %or.cond397 = select i1 %i.j, i1 true, i1 %.not222
  br i1 %or.cond397, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.preheader

end_hunk_8
begin_hunk_9_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.cz, label %.lr.ph439.preheader, label %.lr.ph.i259._crit_edge

.lr.ph439.preheader:                              ; preds = %.lr.ph.i259.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  %.not.not.i263674 = icmp eq ptr %i.da, %i.g
  br i1 %.not.not.i263674, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, label %.lr.ph.i259.lr.ph, !llvm.loop !16
end_hunk_9
begin_hunk_10_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264: ; preds = %.lr.ph439.preheader, %.lr.ph439._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge, %bb.ai
  %10 = phi ptr [ %i.cu, %bb.ai ], [ %i.g, %.lr.ph439._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit264.loopexit_crit_edge ], [ %i.g, %.lr.ph439.preheader ]
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %1 to i64
  %i.di = sub i64 %11, %12
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %4, align 4, !tbaa !3
  %spec.select398 = select i1 %.0180, double 0xFFF8000000000000, double 0x7FF8000000000000
end_hunk_10
begin_hunk_11_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.ez, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread
  %.promoted.i265 = load ptr, ptr %i.a, align 8   ; 5 uses
  %.not6.not.i266 = icmp eq ptr %.promoted.i265, %i.g
  %or.cond400 = select i1 %.not223, i1 true, i1 %.not6.not.i266
  br i1 %or.cond400, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, label %.lr.ph.i267.preheader
end_hunk_11
begin_hunk_12_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.fa = load i8, ptr %.promoted.i265, align 1, !tbaa !15
  %i.fb = sext i8 %i.fa to i32
  %i.fc = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fb)
  br i1 %i.fc, label %.lr.ph442.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272

.lr.ph442.preheader:                              ; preds = %.lr.ph.i267.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %.promoted.i265, i64 1 ; 3 uses
  %.not.not.i271675 = icmp eq ptr %i.fd, %i.g
  br i1 %.not.not.i271675, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, label %.lr.ph.i267.lr.ph, !llvm.loop !16

.lr.ph.i267.lr.ph:                                ; preds = %.lr.ph442.preheader
  br label %.lr.ph.i267, !llvm.loop !16
end_hunk_12
begin_hunk_13_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !15
  %i.fg = sext i8 %i.ff to i32
  %i.fh = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.fg)
  br i1 %i.fh, label %.lr.ph442, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !16

.lr.ph442:                                        ; preds = %.lr.ph.i267
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 3 uses
  %.not.not.i271 = icmp eq ptr %i.fi, %i.g
  br i1 %.not.not.i271, label %.lr.ph442.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge.a, label %.lr.ph.i267, !llvm.loop !16

.lr.ph442.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge.a: ; preds = %.lr.ph442
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge: ; preds = %.lr.ph442.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge.a, %.lr.ph442.preheader
  %.lcssa666 = phi ptr [ %i.fi, %.lr.ph442.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge_crit_edge.a ], [ %i.fd, %.lr.ph442.preheader ]
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge, %bb.au
  %13 = phi ptr [ %.promoted.i265, %bb.au ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %.lcssa666, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit272.loopexit_crit_edge ], [ %i.fe, %.lr.ph.i267 ]
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %1 to i64
  %i.fj = sub i64 %14, %15
  %i.fk = trunc i64 %i.fj to i32
  store i32 %i.fk, ptr %4, align 4, !tbaa !3
  br label %bb.av
end_hunk_13
begin_hunk_14_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.dq, label %.lr.ph447.split.us.preheader, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277

.lr.ph447.split.us.preheader:                     ; preds = %.lr.ph447
  %i.fm = getelementptr inbounds nuw i8, ptr %.promoted445, i64 1 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, %i.g
  br i1 %i.fn, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge412.us

.lr.ph447.split.us:                               ; preds = %.backedge412.us
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, %i.g
  br i1 %i.fp, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %.backedge412.us, !llvm.loop !33

end_hunk_14
begin_hunk_15_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.ft = phi ptr [ %i.fx, %.backedge412 ], [ %.promoted445, %.lr.ph447 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 4 uses
  %i.fv = icmp eq ptr %i.fu, %i.g
  br i1 %i.fv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread, label %bb.ax

.backedge412:                                     ; preds = %bb.ay, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a
  %i.fw = phi i8 [ %.pre535.pre, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a ], [ %i.gd, %bb.ay ]
  %i.fx = phi ptr [ %i.fu, %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a ], [ %i.fz, %bb.ay ] ; 2 uses
  %i.fy = icmp eq i8 %i.fw, 48
  br i1 %i.fy, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !33

end_hunk_15
begin_hunk_16_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.gb = sext i8 %.pre535.pre to i32
  %i.gc = icmp eq i32 %i.gb, %i.dp
  %or.cond636 = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %or.cond636, label %bb.ay, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a

bb.ay:                                            ; preds = %bb.ax
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !15  ; 3 uses
end_hunk_16
begin_hunk_17_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %or.cond.i25.i278 = icmp ult i32 %i.gf, 10
  %i.gg = icmp ult i8 %i.gd, 58
  %or.cond19.i26.i279 = and i1 %i.gg, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge412, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.a: ; preds = %bb.ay, %bb.ax
  br label %.backedge412

_ZN14arrow_vendored17double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit281.thread: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277, %.lr.ph447.split.us, %.lr.ph447.split.us.preheader
  %.us-phi = phi ptr [ %i.fo, %.lr.ph447.split.us ], [ %i.fm, %.lr.ph447.split.us.preheader ], [ %i.fu, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i277 ]
  %16 = ptrtoint ptr %.us-phi to i64
  %17 = ptrtoint ptr %1 to i64
  %i.gh = sub i64 %16, %17
  %i.gi = trunc i64 %i.gh to i32
  store i32 %i.gi, ptr %4, align 4, !tbaa !3
  %i.gj = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
end_hunk_17
begin_hunk_18_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.bs:                                            ; preds = %.lr.ph469
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !7
  %18 = ptrtoint ptr %i.ir to i64
  %i.is = ptrtoint ptr %1 to i64
  %i.it = sub i64 %18, %i.is
  %i.iu = trunc i64 %i.it to i32
  store i32 %i.iu, ptr %4, align 4, !tbaa !3
  %i.iv = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
end_hunk_18
begin_hunk_19_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread364

bb.cq:                                            ; preds = %bb.cm, %bb.cn
  %.promoted485 = phi ptr [ %i.kx, %bb.cn ], [ %i.ks, %bb.cm ] ; 3 uses
  %.0192 = phi i8 [ %i.kw, %bb.cn ], [ 43, %bb.cm ]
  %i.lb = icmp eq ptr %.promoted485, %i.g
  br i1 %i.lb, label %bb.cs, label %bb.cr
end_hunk_19
begin_hunk_20_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.lc = load i8, ptr %.promoted485, align 1, !tbaa !15 ; 2 uses
  %i.ld = add i8 %i.lc, -58
  %or.cond230 = icmp ult i8 %i.ld, -10
  br i1 %or.cond230, label %bb.cs, label %.preheader.a

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  br i1 %i.j, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread384.sink.split, label %bb.ct
end_hunk_20
begin_hunk_21_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.lf = load double, ptr %i.le, align 8, !tbaa !18
  br label %.thread364

.preheader.a:                                     ; preds = %bb.cr, %bb.cx
  %i.lg = phi i8 [ %i.lq, %bb.cx ], [ %i.lc, %bb.cr ] ; 2 uses
  %i.lh = phi ptr [ %i.lp, %bb.cx ], [ %.promoted485, %bb.cr ]
  %.0193 = phi i32 [ %.1194, %bb.cx ], [ 0, %bb.cr ] ; 3 uses
  %i.li = zext nneg i8 %i.lg to i32
  %i.lj = icmp sgt i32 %.0193, 107374181
  br i1 %i.lj, label %bb.cu, label %bb.cv
end_hunk_21
begin_hunk_22_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %.1194 = phi i32 [ %i.lo, %bb.cv ], [ 1073741823, %bb.cu ] ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 5 uses
  %.not219 = icmp eq ptr %i.lp, %i.g
  br i1 %.not219, label %bb.cy, label %bb.cx

end_hunk_22
begin_hunk_23_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %or.cond231, label %.preheader.a, label %bb.cy, !llvm.loop !37

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  store ptr %i.lp, ptr %i.a, align 8, !tbaa !7
  %i.ls = icmp eq i8 %.0192, 45
  %i.lt = sub nsw i32 0, %.1194
  %i.lu = select i1 %i.ls, i32 %i.lt, i32 %.1194
end_hunk_23
begin_hunk_24_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cf
  %.promoted487 = phi ptr [ %i.lp, %bb.cy ], [ %i.kj, %bb.cf ] ; 4 uses
  %.7163 = phi i32 [ %i.lv, %bb.cy ], [ %.4160, %bb.cf ] ; 4 uses
  %i.lw = and i32 %i.h, 20
  %or.cond25.not = icmp ne i32 %i.lw, 0
end_hunk_24
begin_hunk_25_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %.thread364

bb.db:                                            ; preds = %bb.cz
  %or.cond402 = or i1 %i.j, %.not220
  br i1 %or.cond402, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307, label %.lr.ph.i302.preheader

end_hunk_25
begin_hunk_26_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.mb, label %.lr.ph490.preheader, label %.lr.ph.i302._crit_edge

.lr.ph490.preheader:                              ; preds = %.lr.ph.i302.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %.promoted487, i64 1 ; 3 uses
  %.not.not.i306677 = icmp eq ptr %i.mc, %i.g
  br i1 %.not.not.i306677, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, label %.lr.ph.i302.lr.ph, !llvm.loop !16

end_hunk_26
begin_hunk_27_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.mg, label %.lr.ph490, label %.lr.ph.i302._crit_edge, !llvm.loop !16

.lr.ph490:                                        ; preds = %.lr.ph.i302
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 1 ; 3 uses
  %.not.not.i306 = icmp eq ptr %i.mh, %i.g
  br i1 %.not.not.i306, label %.lr.ph490._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, label %.lr.ph.i302, !llvm.loop !16

end_hunk_27
begin_hunk_28_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit: ; preds = %.lr.ph490._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge, %.lr.ph490.preheader
  %.lcssa642 = phi ptr [ %i.mh, %.lr.ph490._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit_crit_edge ], [ %i.mc, %.lr.ph490.preheader ] ; 2 uses
  store ptr %.lcssa642, ptr %i.a, align 8
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307: ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit, %bb.db
  %.promoted492 = phi ptr [ %.lcssa642, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit307.loopexit ], [ %.promoted487, %bb.db ] ; 5 uses
  %.not6.not.i309 = icmp eq ptr %.promoted492, %i.g
  %or.cond403 = or i1 %.not223, %.not6.not.i309
  br i1 %or.cond403, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315, label %.lr.ph.i310.preheader
end_hunk_28
begin_hunk_29_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.mm, label %.lr.ph493.preheader, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split

.lr.ph493.preheader:                              ; preds = %.lr.ph.i310.preheader
  %i.mn = getelementptr inbounds nuw i8, ptr %.promoted492, i64 1 ; 3 uses
  %.not.not.i314679 = icmp eq ptr %i.mn, %i.g
  br i1 %.not.not.i314679, label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, label %.lr.ph.i310.lr.ph, !llvm.loop !16

end_hunk_29
begin_hunk_30_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br i1 %i.mr, label %.lr.ph493, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

.lr.ph493:                                        ; preds = %.lr.ph.i310
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 3 uses
  %.not.not.i314 = icmp eq ptr %i.ms, %i.g
  br i1 %.not.not.i314, label %.lr.ph493.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, label %.lr.ph.i310, !llvm.loop !16

end_hunk_30
begin_hunk_31_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge, !llvm.loop !16

._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge: ; preds = %.lr.ph493.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge, %.lr.ph493.preheader
  %.lcssa640 = phi ptr [ %i.ms, %.lr.ph493.._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge_crit_edge ], [ %i.mn, %.lr.ph493.preheader ]
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split, !llvm.loop !16

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.thread593: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i295, %bb.ca, %bb.by
end_hunk_31
begin_hunk_32_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %bb.dc

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.sink.split: ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286, %bb.bh, %bb.bf, %.lr.ph.i310, %.lr.ph.i310.preheader, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge
  %.sink = phi ptr [ %i.mo, %.lr.ph.i310 ], [ %.promoted492, %.lr.ph.i310.preheader ], [ %.lcssa640, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hs, %bb.bh ], [ %i.hj, %bb.bf ], [ %i.hs, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ] ; 2 uses
  %.5190.ph = phi i32 [ %.4189, %.lr.ph.i310 ], [ %.4189, %.lr.ph.i310.preheader ], [ %.4189, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1186, %bb.bf ], [ %.1186, %bb.bh ], [ %.1186, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.2184.ph = phi i8 [ %spec.select, %.lr.ph.i310 ], [ %spec.select, %.lr.ph.i310.preheader ], [ %spec.select, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %i.hi, %bb.bf ], [ %i.hi, %bb.bh ], [ %i.hi, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
  %.5178.ph687 = phi i8 [ %.4177, %.lr.ph.i310 ], [ %.4177, %.lr.ph.i310.preheader ], [ %.4177, %._ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit315.loopexit_crit_edge ], [ %.1174, %bb.bf ], [ %.1174, %bb.bh ], [ %.1174, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread.i286 ]
end_hunk_32
begin_hunk_33_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !18
  %i.ng = call fastcc noundef double @_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb(ptr noundef %i.e, ptr noundef %i.nb, i1 noundef zeroext %.0180, i16 noundef zeroext %i.nd, i1 noundef zeroext %i.j, double noundef %i.nf, i1 noundef zeroext %3, ptr noundef %i.d)
  %19 = ptrtoint ptr %i.mz to i64
  %i.nh = ptrtoint ptr %1 to i64
  %i.ni = sub i64 %19, %i.nh
  %i.nj = trunc i64 %i.ni to i32
  store i32 %i.nj, ptr %4, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
end_hunk_33
begin_hunk_34_@_ZNK14arrow_vendored17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.0179 = phi double [ %i.oc, %bb.dh ], [ %i.oe, %bb.di ] ; 2 uses
  %i.of = load ptr, ptr %i.a, align 8, !tbaa !7
  %20 = ptrtoint ptr %i.of to i64
  %i.og = ptrtoint ptr %1 to i64
  %i.oh = sub i64 %20, %i.og
  %i.oi = trunc i64 %i.oh to i32
  store i32 %i.oi, ptr %4, align 4, !tbaa !3
  %i.oj = fneg double %.0179
end_hunk_34
