Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/double-conversion-string-to-double?download=true
inline.NumInlined: 162
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_7817double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a

.lr.ph453._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge: ; preds = %.lr.ph453
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252, !llvm.loop !0

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252: ; preds = %.lr.ph453.preheader, %.lr.ph453._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge, %bb.q
  %i.bv = phi ptr [ %i.bb, %bb.q ], [ %scevgep559, %.lr.ph453._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252.loopexit_crit_edge ], [ %scevgep559, %.lr.ph453.preheader ]
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %1 to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32
  store i32 %i.bz, ptr %4, align 4, !tbaa !16
  br i1 %.0180, label %.thread, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit252
  br label %.thread

bb.s:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %.not216 = icmp eq ptr %i.cb, null
  br i1 %.not216, label %._crit_edge576, label %bb.t

._crit_edge576:                                   ; preds = %bb.s
  %.pre577 = load i8, ptr %i.as, align 1, !tbaa !22
  br label %bb.ab

.thread360:                                       ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %.not216361 = icmp eq ptr %i.cd, null
  br i1 %.not216361, label %bb.ab, label %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253

bb.t:                                             ; preds = %bb.s
  br i1 %.not420, label %._ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253_crit_edge, label %bb.u

._ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253_crit_edge: ; preds = %bb.t
  %.pre575 = load i8, ptr %i.as, align 1, !tbaa !22
  br label %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253

bb.u:                                             ; preds = %bb.t
  tail call void @abort() #8
  unreachable

_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253: ; preds = %._ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253_crit_edge, %.thread360
  %i.ce = phi i8 [ %.pre575, %._ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253_crit_edge ], [ %i.av, %.thread360 ] ; 2 uses
  %i.cf = phi ptr [ %i.cb, %._ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253_crit_edge ], [ %i.cd, %.thread360 ] ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22
  %i.ch = icmp eq i8 %i.ce, %i.cg
  br i1 %i.ch, label %.preheader.i254.preheader, label %bb.ab

.preheader.i254.preheader:                        ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253
  %i.ci = add i64 %i.a, %i.g
  br label %.preheader.i254

.preheader.i254:                                  ; preds = %.preheader.i254.preheader, %bb.w
  %i.cj = phi ptr [ %i.cl, %bb.w ], [ %i.as, %.preheader.i254.preheader ] ; 2 uses
  %.pn.i7.i255 = phi ptr [ %.011.i8.i256, %bb.w ], [ %i.cf, %.preheader.i254.preheader ]
  %.011.i8.i256 = getelementptr inbounds nuw i8, ptr %.pn.i7.i255, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.011.i8.i256, align 1, !tbaa !22 ; 2 uses
  %.not.i9.i257 = icmp eq i8 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 9 uses
  br i1 %.not.i9.i257, label %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit262, label %bb.v

bb.v:                                             ; preds = %.preheader.i254
  %i.cm = icmp eq ptr %i.cl, %i.h
  br i1 %i.cm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !22
  %.not13.i10.i258 = icmp eq i8 %i.cn, %i.ck
  br i1 %.not13.i10.i258, label %.preheader.i254, label %bb.x, !llvm.loop !36

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !24
  br label %.thread

_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit262: ; preds = %.preheader.i254
  store ptr %i.cl, ptr %i.b, align 8, !tbaa !15
  %i.cq = and i32 %i.i, 20
  %or.cond5.not = icmp ne i32 %i.cq, 0
  %.not222 = icmp eq ptr %i.cl, %i.h              ; 2 uses
  %or.cond413 = select i1 %or.cond5.not, i1 true, i1 %.not222
  br i1 %or.cond413, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit262
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24
  br label %.thread

bb.z:                                             ; preds = %_ZN6icu_7817double_conversion12_GLOBAL__N_116ConsumeSubStringIPKcEEbPT_S5_S4_b.exit262
  %.promoted.i263562 = ptrtoaddr ptr %i.cl to i64
  %or.cond414 = select i1 %i.k, i1 true, i1 %.not222
  br i1 %or.cond414, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270, label %.lr.ph.i265.preheader

.lr.ph.i265.preheader:                            ; preds = %bb.z
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cu = sext i8 %i.ct to i32
  %i.cv = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.cu)
  br i1 %i.cv, label %.lr.ph461.preheader, label %.lr.ph.i265._crit_edge

.lr.ph461.preheader:                              ; preds = %.lr.ph.i265.preheader
  %i.cw = sub i64 %i.ci, %.promoted.i263562
  %scevgep563 = getelementptr i8, ptr %i.cl, i64 %i.cw ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  %.not.not.i269725 = icmp eq ptr %i.cx, %i.h
  br i1 %.not.not.i269725, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270, label %.lr.ph.i265.lr.ph, !llvm.loop !0

.lr.ph.i265.lr.ph:                                ; preds = %.lr.ph461.preheader
  br label %.lr.ph.i265, !llvm.loop !0

.lr.ph.i265:                                      ; preds = %.lr.ph.i265.lr.ph, %.lr.ph461
  %i.cy = phi ptr [ %i.cx, %.lr.ph.i265.lr.ph ], [ %i.dc, %.lr.ph461 ] ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %i.da = sext i8 %i.cz to i32
  %i.db = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.da)
  br i1 %i.db, label %.lr.ph461, label %.lr.ph.i265._crit_edge, !llvm.loop !0

.lr.ph461:                                        ; preds = %.lr.ph.i265
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 1 ; 2 uses
  %.not.not.i269 = icmp eq ptr %i.dc, %i.h
  br i1 %.not.not.i269, label %.lr.ph461._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270.loopexit_crit_edge, label %.lr.ph.i265, !llvm.loop !0

.lr.ph.i265._crit_edge:                           ; preds = %.lr.ph.i265, %.lr.ph.i265.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load double, ptr %i.dd, align 8, !tbaa !24
  br label %.thread

.lr.ph461._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270.loopexit_crit_edge: ; preds = %.lr.ph461
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270, !llvm.loop !0

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270: ; preds = %.lr.ph461.preheader, %.lr.ph461._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270.loopexit_crit_edge, %bb.z
  %i.df = phi ptr [ %i.cl, %bb.z ], [ %scevgep563, %.lr.ph461._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270.loopexit_crit_edge ], [ %scevgep563, %.lr.ph461.preheader ]
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %1 to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %4, align 4, !tbaa !16
  br i1 %.0180, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit270
  br label %.thread

bb.ab:                                            ; preds = %._crit_edge576, %.thread360, %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253
  %i.dk = phi i8 [ %.pre577, %._crit_edge576 ], [ %i.av, %.thread360 ], [ %i.ce, %_ZN6icu_7817double_conversion12_GLOBAL__N_121ConsumeFirstCharacterEcPKcb.exit253 ]
  %i.dl = icmp eq i8 %i.dk, 48                    ; 3 uses
  br i1 %i.dl, label %bb.ac, label %.critedge227

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 8, !tbaa !27 ; 3 uses
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = icmp eq i16 %i.dn, 0                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 7 uses
  store ptr %i.dq, ptr %i.b, align 8, !tbaa !15
  %i.dr = icmp eq ptr %i.dq, %i.h                 ; 2 uses
  br i1 %i.dp, label %.split, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i

.split:                                           ; preds = %bb.ac
  br i1 %i.dr, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread368, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i: ; preds = %bb.ac
  br i1 %i.dr, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread368, label %bb.ad

bb.ad:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, %i.h
  br i1 %i.dt, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !22  ; 2 uses
  %i.dv = sext i8 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, %i.do
  br i1 %i.dw, label %bb.af, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dx = load i8, ptr %i.ds, align 1, !tbaa !22  ; 2 uses
  %i.dy = sext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -48
  %or.cond.i25.i = icmp ult i32 %i.dz, 10
  %i.ea = icmp ult i8 %i.dx, 58
  %or.cond19.i26.i = and i1 %i.ea, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i: ; preds = %bb.af
  store ptr %i.ds, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread368: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i, %.split
  store i32 %2, ptr %4, align 4, !tbaa !16
  %i.eb = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split: ; preds = %.split, %bb.ad, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i, %bb.af
  %.promoted467.ph = phi ptr [ %i.dq, %.split ], [ %i.dq, %bb.ad ], [ %i.ds, %_ZN6icu_7817double_conversionL7isDigitEii.exit30.thread.i ], [ %i.dq, %bb.af ] ; 2 uses
  %.pre578.pr = load i8, ptr %.promoted467.ph, align 1, !tbaa !22
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread: ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split, %bb.ae
  %.pre578 = phi i8 [ %.pre578.pr, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.du, %bb.ae ] ; 2 uses
  %.promoted467 = phi ptr [ %.promoted467.ph, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.threadthread-pre-split ], [ %i.dq, %bb.ae ] ; 5 uses
  %i.ec = and i32 %i.i, 128
  %.not218 = icmp eq i32 %i.ec, 0
  %i.ed = and i32 %i.i, 129
  %or.cond225 = icmp eq i32 %i.ed, 0
  br i1 %or.cond225, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  switch i8 %.pre578, label %._crit_edge [
    i8 120, label %bb.ah
    i8 88, label %bb.ah
    i8 48, label %.lr.ph469
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %.promoted467, i64 1 ; 4 uses
  store ptr %i.ee, ptr %i.b, align 8, !tbaa !15
  %i.ef = icmp eq ptr %i.ee, %i.h
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  br i1 %.not218, label %.thread370, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL16IsHexFloatStringIPKcEEbT_S4_tb(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.h, i16 noundef zeroext %i.dn, i1 noundef zeroext %i.k)
  br i1 %i.ei, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %.thread370

.thread370:                                       ; preds = %bb.aj, %bb.ak
  %i.ej = load i8, ptr %i.ee, align 1, !tbaa !22  ; 3 uses
  %i.ek = sext i8 %i.ej to i32
  %i.el = add nsw i32 %i.ek, -48
  %or.cond.i = icmp ult i32 %i.el, 10
  %i.em = icmp ult i8 %i.ej, 64
  %or.cond19.i = and i1 %i.em, %or.cond.i
  %i.en = freeze i1 %or.cond19.i
  br i1 %i.en, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %.thread370
  %switch.tableidx = add i8 %i.ej, -65            ; 2 uses
  %i.eo = icmp ult i8 %switch.tableidx, 38
  br i1 %i.eo, label %switch.hole_check, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371: ; preds = %switch.hole_check, %switch.early.test
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24
  br label %.thread

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread371

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread: ; preds = %switch.hole_check, %.thread370, %bb.ak
  %i.er = phi i1 [ false, %.thread370 ], [ true, %bb.ak ], [ false, %switch.hole_check ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.es = load i16, ptr %i.dm, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = call fastcc noundef double @_ZN6icu_7817double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S4_btbbdbPb(ptr noundef %i.b, ptr noundef nonnull %i.h, i1 noundef zeroext %.0180, i16 noundef zeroext %i.es, i1 noundef zeroext %i.er, i1 noundef zeroext %i.k, double noundef %i.eu, i1 noundef zeroext %3, ptr noundef %i.c)
  %i.ew = load i8, ptr %i.c, align 1, !tbaa !29, !range !30, !noundef !31
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  %.promoted.i272 = load ptr, ptr %i.b, align 8   ; 7 uses
  %.promoted.i272564 = ptrtoaddr ptr %.promoted.i272 to i64
  %.not6.not.i273 = icmp eq ptr %.promoted.i272, %i.h
  %or.cond416 = select i1 %.not223, i1 true, i1 %.not6.not.i273
  br i1 %or.cond416, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, label %.lr.ph.i274.preheader

.lr.ph.i274.preheader:                            ; preds = %bb.al
  %i.ey = load i8, ptr %.promoted.i272, align 1, !tbaa !22
  %i.ez = sext i8 %i.ey to i32
  %i.fa = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.ez)
  br i1 %i.fa, label %.lr.ph464.preheader, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279

.lr.ph464.preheader:                              ; preds = %.lr.ph.i274.preheader
  %i.fb = add i64 %i.a, %i.g
  %i.fc = sub i64 %i.fb, %.promoted.i272564
  %scevgep565 = getelementptr i8, ptr %.promoted.i272, i64 %i.fc
  %i.fd = getelementptr inbounds nuw i8, ptr %.promoted.i272, i64 1 ; 2 uses
  %.not.not.i278726 = icmp eq ptr %i.fd, %i.h
  br i1 %.not.not.i278726, label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, label %.lr.ph.i274.lr.ph, !llvm.loop !0

.lr.ph.i274.lr.ph:                                ; preds = %.lr.ph464.preheader
  br label %.lr.ph.i274, !llvm.loop !0

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.lr.ph, %.lr.ph464
  %i.fe = phi ptr [ %i.fd, %.lr.ph.i274.lr.ph ], [ %i.fi, %.lr.ph464 ] ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !22
  %i.fg = sext i8 %i.ff to i32
  %i.fh = tail call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL12isWhitespaceEi(i32 noundef %i.fg)
  br i1 %i.fh, label %.lr.ph464, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, !llvm.loop !0

.lr.ph464:                                        ; preds = %.lr.ph.i274
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %.not.not.i278 = icmp eq ptr %i.fi, %i.h
  br i1 %.not.not.i278, label %.lr.ph464.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge, label %.lr.ph.i274, !llvm.loop !0

.lr.ph464.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph464
  br label %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, !llvm.loop !0

._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge: ; preds = %.lr.ph464.._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge_crit_edge, %.lr.ph464.preheader
  br label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, !llvm.loop !0

_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279: ; preds = %.lr.ph.i274, %.lr.ph.i274.preheader, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge, %bb.al
  %i.fj = phi ptr [ %.promoted.i272, %bb.al ], [ %.promoted.i272, %.lr.ph.i274.preheader ], [ %scevgep565, %._ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279.loopexit_crit_edge ], [ %i.fe, %.lr.ph.i274 ]
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %1 to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %4, align 4, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit279, %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread

bb.an:                                            ; preds = %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit.thread
  %i.fo = icmp eq i8 %.pre578, 48
  br i1 %i.fo, label %.lr.ph469, label %._crit_edge

.lr.ph469:                                        ; preds = %bb.ag, %bb.an
  br i1 %i.dp, label %.split373.us.preheader, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284

.split373.us.preheader:                           ; preds = %.lr.ph469
  %i.fp = add i64 %i.a, %i.g                      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.promoted467, i64 1 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.h
  br i1 %i.fr, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread, label %.backedge428.us

.split373.us:                                     ; preds = %.backedge428.us
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fu, i64 1 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.h
  br i1 %i.ft, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread, label %.backedge428.us, !llvm.loop !37

.backedge428.us:                                  ; preds = %.split373.us.preheader, %.split373.us
  %i.fu = phi ptr [ %i.fs, %.split373.us ], [ %i.fq, %.split373.us.preheader ] ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !22
  %i.fw = icmp eq i8 %i.fv, 48
  br i1 %i.fw, label %.split373.us, label %._crit_edge, !llvm.loop !37

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284: ; preds = %.lr.ph469, %.backedge428
  %i.fx = phi ptr [ %i.gb, %.backedge428 ], [ %.promoted467, %.lr.ph469 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, %i.h
  br i1 %i.fz, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit688, label %bb.ao

.backedge428:                                     ; preds = %bb.ap, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288
  %i.ga = phi i8 [ %.pre579.pre, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288 ], [ %i.gh, %bb.ap ]
  %i.gb = phi ptr [ %i.fy, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288 ], [ %i.gd, %bb.ap ] ; 2 uses
  %i.gc = icmp eq i8 %i.ga, 48
  br i1 %i.gc, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284, label %._crit_edge, !llvm.loop !37

bb.ao:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 3 uses
  %i.ge = icmp ne ptr %i.gd, %i.h
  %.pre579.pre = load i8, ptr %i.fy, align 1, !tbaa !22 ; 2 uses
  %i.gf = sext i8 %.pre579.pre to i32
  %i.gg = icmp eq i32 %i.gf, %i.do
  %or.cond686 = select i1 %i.ge, i1 %i.gg, i1 false
  br i1 %or.cond686, label %bb.ap, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288

bb.ap:                                            ; preds = %bb.ao
  %i.gh = load i8, ptr %i.gd, align 1, !tbaa !22  ; 3 uses
  %i.gi = sext i8 %i.gh to i32
  %i.gj = add nsw i32 %i.gi, -48
  %or.cond.i25.i285 = icmp ult i32 %i.gj, 10
  %i.gk = icmp ult i8 %i.gh, 58
  %or.cond19.i26.i286 = and i1 %i.gk, %or.cond.i25.i285
  br i1 %or.cond19.i26.i286, label %.backedge428, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288: ; preds = %bb.ap, %bb.ao
  br label %.backedge428

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit688: ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i284
  %5 = ptrtoint ptr %i.fy to i64
  br label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread: ; preds = %.split373.us, %.split373.us.preheader, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit688
  %.us-phi = phi i64 [ %5, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit288.thread.loopexit688 ], [ %i.fp, %.split373.us.preheader ], [ %i.fp, %.split373.us ]
  %i.gl = ptrtoint ptr %1 to i64
  %i.gm = sub i64 %.us-phi, %i.gl
  %i.gn = trunc i64 %i.gm to i32
  store i32 %i.gn, ptr %4, align 4, !tbaa !16
  %i.go = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge428, %.backedge428.us, %bb.ag, %bb.an
  %.lcssa468 = phi ptr [ %.promoted467, %bb.an ], [ %.promoted467, %bb.ag ], [ %i.fu, %.backedge428.us ], [ %i.gb, %.backedge428 ] ; 2 uses
  store ptr %.lcssa468, ptr %i.b, align 8
  %i.gp = trunc i32 %i.i to i8
  %i.gq = lshr i8 %i.gp, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.ab, %._crit_edge
  %.promoted474 = phi ptr [ %i.as, %bb.ab ], [ %.lcssa468, %._crit_edge ] ; 3 uses
  %i.gr = phi i8 [ 0, %bb.ab ], [ %i.gq, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.gs = load i8, ptr %.promoted474, align 1, !tbaa !22 ; 3 uses
  %i.gt = add i8 %i.gs, -48
  %or.cond228476 = icmp ult i8 %i.gt, 10
  br i1 %or.cond228476, label %.lr.ph482, label %.critedge

.lr.ph482:                                        ; preds = %.critedge227
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gv = load i16, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %i.gw = zext i16 %i.gv to i32
  %i.gx = icmp eq i16 %i.gv, 0
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph482, %.backedge427
  %i.gy = phi i8 [ %i.gs, %.lr.ph482 ], [ %i.hq, %.backedge427 ] ; 2 uses
  %.0166481 = phi i32 [ 0, %.lr.ph482 ], [ %.1167, %.backedge427 ] ; 3 uses
  %.0171480 = phi i32 [ 0, %.lr.ph482 ], [ %.1172, %.backedge427 ] ; 2 uses
  %.0174479 = phi i1 [ false, %.lr.ph482 ], [ %.1175, %.backedge427 ] ; 2 uses
  %.0185478 = phi i32 [ 0, %.lr.ph482 ], [ %.1186, %.backedge427 ] ; 3 uses
  %.0192477 = phi i8 [ %i.gr, %.lr.ph482 ], [ %i.hm, %.backedge427 ]
  %i.gz = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.hp, %.backedge427 ] ; 5 uses
  %i.ha = icmp slt i32 %.0166481, 772
  br i1 %i.ha, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hb = add nsw i32 %.0185478, 1
  %i.hc = sext i32 %.0185478 to i64
  %i.hd = getelementptr inbounds i8, ptr %i.d, i64 %i.hc
  store i8 %i.gy, ptr %i.hd, align 1, !tbaa !22
  %i.he = add nsw i32 %.0166481, 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.hf = add nsw i32 %.0171480, 1
  %i.hg = icmp ne i8 %i.gy, 48
  %i.hh = or i1 %.0174479, %i.hg
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1186 = phi i32 [ %i.hb, %bb.ar ], [ %.0185478, %bb.as ] ; 5 uses
  %.1175 = phi i1 [ %.0174479, %bb.ar ], [ %i.hh, %bb.as ] ; 5 uses
  %.1172 = phi i32 [ %.0171480, %bb.ar ], [ %i.hf, %bb.as ] ; 5 uses
  %.1167 = phi i32 [ %i.he, %bb.ar ], [ %.0166481, %bb.as ] ; 2 uses
  %i.hi = trunc i8 %.0192477 to i1
  br i1 %i.hi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hj = load i8, ptr %i.gz, align 1, !tbaa !22
  %i.hk = icmp slt i8 %i.hj, 56
  %i.hl = zext i1 %i.hk to i8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hm = phi i8 [ 0, %bb.at ], [ %i.hl, %bb.au ] ; 5 uses
  br i1 %i.gx, label %.split376, label %bb.aw

.split376:                                        ; preds = %bb.av
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, %i.h
  br i1 %i.ho, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %.backedge427

.backedge427:                                     ; preds = %bb.az, %.split376, %.split377, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297
  %i.hp = phi ptr [ %i.hn, %.split376 ], [ %i.hw, %.split377 ], [ %i.hw, %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297 ], [ %i.hy, %bb.az ] ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !22  ; 3 uses
  %i.hr = add i8 %i.hq, -48
  %or.cond228 = icmp ult i8 %i.hr, 10
  br i1 %or.cond228, label %bb.aq, label %.critedge, !llvm.loop !38

bb.aw:                                            ; preds = %bb.av
  %i.hs = load i8, ptr %i.gz, align 1, !tbaa !22  ; 2 uses
  %i.ht = sext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48
  %or.cond.i.i289 = icmp ult i32 %i.hu, 10
  %i.hv = icmp ult i8 %i.hs, 58
  %or.cond19.i.i290 = and i1 %i.hv, %or.cond.i.i289
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 6 uses
  %i.hx = icmp eq ptr %i.hw, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i290, label %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293, label %.split377

.split377:                                        ; preds = %bb.aw
  br i1 %i.hx, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %.backedge427

_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293: ; preds = %bb.aw
  br i1 %i.hx, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.sink.split, label %bb.ax

bb.ax:                                            ; preds = %_ZN6icu_7817double_conversionL7isDigitEii.exit.thread.i293
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 3 uses
  %i.hz = icmp eq ptr %i.hy, %i.h
  br i1 %i.hz, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !22
  %i.ib = sext i8 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, %i.gw
  br i1 %i.ic, label %bb.az, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297

bb.az:                                            ; preds = %bb.ay
  %i.id = load i8, ptr %i.hy, align 1, !tbaa !22  ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48
  %or.cond.i25.i294 = icmp ult i32 %i.if, 10
  %i.ig = icmp ult i8 %i.id, 58
  %or.cond19.i26.i295 = and i1 %i.ig, %or.cond.i25.i294
  br i1 %or.cond19.i26.i295, label %.backedge427, label %_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297

_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_.exit297: ; preds = %bb.az, %bb.ax, %bb.ay
  br label %.backedge427

.critedge:                                        ; preds = %.backedge427, %.critedge227
  %.lcssa475 = phi ptr [ %.promoted474, %.critedge227 ], [ %i.hp, %.backedge427 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.gr, %.critedge227 ], [ %i.hm, %.backedge427 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge427 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge427 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge427 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge427 ] ; 5 uses
  %.lcssa = phi i8 [ %i.gs, %.critedge227 ], [ %i.hq, %.backedge427 ]
  store ptr %.lcssa475, ptr %i.b, align 8
  %i.ih = icmp eq i32 %.0166.lcssa, 0             ; 2 uses
  %spec.select = select i1 %i.ih, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.ii = icmp eq i8 %.lcssa, 46
  br i1 %i.ii, label %bb.ba, label %.critedge11

bb.ba:                                            ; preds = %.critedge
  %i.ij = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.ij, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load double, ptr %i.ik, align 8, !tbaa !24
  br label %.thread382

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.ij, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.in = load i16, ptr %i.im, align 8, !tbaa !27 ; 4 uses
  %i.io = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.in, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.io, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ip = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.dl, %i.ip
  br i1 %or.cond9, label %_ZN6icu_7817double_conversionL17AdvanceToNonspaceIPKcEEbPT_S4_.exit322.thread402, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !24
  br label %.thread382

bb.bg:                                            ; preds = %bb.bd
  %.promoted493.pre = load ptr, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.is = load i8, ptr %.promoted493.pre, align 1, !tbaa !22 ; 2 uses
  %i.it = icmp eq i8 %i.is, 48
  %or.cond687 = select i1 %i.ih, i1 %i.it, i1 false
  br i1 %or.cond687, label %.lr.ph491, label %.loopexit

.lr.ph491:                                        ; preds = %bb.bg, %bb.bi
  %.0157490 = phi i32 [ %i.jb, %bb.bi ], [ 0, %bb.bg ]
  %i.iu = call fastcc noundef zeroext i1 @_ZN6icu_7817double_conversionL7AdvanceIPKcEEbPT_tiRS4_(ptr noundef %i.b, i16 noundef zeroext %i.in, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.iu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph491
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %1 to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %4, align 4, !tbaa !16
  %i.ja = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread382

bb.bi:                                            ; preds = %.lr.ph491
  %i.jb = add nsw i32 %.0157490, -1               ; 2 uses
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !22  ; 2 uses
  %i.je = icmp eq i8 %i.jd, 48
  br i1 %i.je, label %.lr.ph491, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %bb.bi, %bb.bg
  %i.jf = phi i8 [ %i.is, %bb.bg ], [ %i.jd, %bb.bi ] ; 2 uses
  %.promoted493 = phi ptr [ %.promoted493.pre, %bb.bg ], [ %i.jc, %bb.bi ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bg ], [ %i.jb, %bb.bi ] ; 2 uses
  %i.jg = add i8 %i.jf, -48
  %or.cond229495 = icmp ult i8 %i.jg, 10
  br i1 %or.cond229495, label %.lr.ph501, label %.critedge11.loopexit

.lr.ph501:                                        ; preds = %.loopexit
  %i.jh = zext i16 %i.in to i32
  %i.ji = icmp eq i16 %i.in, 0
end_hunk_0
