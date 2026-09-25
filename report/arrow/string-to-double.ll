Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S3_btbbdbPb:bb.a
.split:                                           ; preds = %._crit_edge233, %bb.k
  %i.bp = phi i8 [ %i.ce, %bb.k ], [ %i.ao, %._crit_edge233 ]
  %i.bq = phi ptr [ %i.cd, %bb.k ], [ %.promoted235, %._crit_edge233 ] ; 2 uses
  %.2130 = phi i32 [ %i.cj, %bb.k ], [ %.0117.lcssa, %._crit_edge233 ] ; 3 uses
  %.0116 = phi i1 [ %spec.select206, %bb.k ], [ true, %._crit_edge233 ] ; 3 uses
  %i.br = add i8 %i.bp, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.br, -8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 8 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !15
  %i.bt = icmp eq ptr %i.bs, %1                   ; 2 uses
  %brmerge.i151 = select i1 %or.cond19.i.not3.i150, i1 true, i1 %i.bt
  br i1 %brmerge.i151, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, label %bb.g

bb.g:                                             ; preds = %.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, %1
  br i1 %i.bv, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !21
  %i.bx = sext i8 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, %i.r
  br i1 %i.by, label %bb.i, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.i:                                             ; preds = %bb.h
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !21  ; 2 uses
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48
  %or.cond.i25.i155 = icmp ult i32 %i.cb, 10
  %i.cc = icmp ult i8 %i.bz, 56
  %or.cond19.i26.i156 = and i1 %i.cc, %or.cond.i25.i155
  br i1 %or.cond19.i26.i156, label %bb.j, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.bu, ptr %0, align 8, !tbaa !15
  br label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157: ; preds = %.split
  %not.or.cond19.i.not3.i152 = xor i1 %or.cond19.i.not3.i150, true
  %.mux.i153 = select i1 %not.or.cond19.i.not3.i152, i1 true, i1 %i.bt
  br i1 %.mux.i153, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, label %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread

_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157
  %i.cd = phi ptr [ %i.bu, %bb.j ], [ %i.bs, %bb.i ], [ %i.bs, %bb.g ], [ %i.bs, %bb.h ], [ %i.bs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21  ; 4 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48
  %or.cond.i158 = icmp ult i32 %i.cg, 10
  %i.ch = icmp ult i8 %i.ce, 56
  %or.cond19.i = and i1 %i.ch, %or.cond.i158
  br i1 %or.cond19.i, label %bb.k, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread
  %i.ci = icmp eq i8 %i.ce, 48
  %spec.select206 = and i1 %.0116, %i.ci
  %i.cj = add nuw nsw i32 %.2130, 3
  br label %.split, !llvm.loop !64

_ZN14arrow_vendored17double_conversionL7isDigitEii.exit: ; preds = %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us, %.split183.us, %.split.us236
  %.promoted.i159 = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ], [ %i.bg, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %i.bs, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ], [ %i.cd, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ] ; 2 uses
  %.us-phi = phi i32 [ %i.bm, %.split183.us ], [ %.0117.lcssa, %.split.us236 ], [ %.2130.us238, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.2130, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.2130, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.us-phi237 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ], [ %.0116.us239, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread.us ], [ %.0116, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157.thread ], [ %.0116, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit157 ]
  %.not6.not.i160 = icmp eq ptr %.promoted.i159, %1
  %or.cond323 = select i1 %4, i1 true, i1 %.not6.not.i160
  br i1 %or.cond323, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit, %bb.l
  %i.ck = phi ptr [ %i.co, %bb.l ], [ %.promoted.i159, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit ] ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !21
  %i.cm = sext i8 %i.cl to i32
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef %i.cm)
  br i1 %i.cn, label %bb.l, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.l:                                             ; preds = %.lr.ph.i161
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !15
  %.not.not.i165 = icmp eq ptr %i.co, %1
  br i1 %.not.not.i165, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166, label %.lr.ph.i161, !llvm.loop !62

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166: ; preds = %bb.l, %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit
  %i.cp = add nsw i32 %.0117.lcssa, -1
  %i.cq = shl nuw i32 1, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i32 %i.bb, %i.cq
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.cs = add nsw i64 %i.bd, 1
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit166
  %i.ct = icmp eq i32 %i.bb, %i.cq
  br i1 %i.ct, label %bb.o, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cu = and i64 %i.bd, 1
  %i.cv = icmp eq i64 %i.cu, 0
  %or.cond3 = select i1 %i.cv, i1 %.us-phi237, i1 false
  %not.or.cond3 = xor i1 %or.cond3, true
  %i.cw = zext i1 %not.or.cond3 to i64
  %spec.select = add nsw i64 %i.bd, %i.cw
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread

bb.p:                                             ; preds = %bb.f
  %i.cx = getelementptr i8, ptr %.promoted235, i64 1 ; 7 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !15
  %i.cy = icmp eq ptr %i.cx, %1                   ; 2 uses
  br i1 %i.s, label %.split189, label %bb.q

.split189:                                        ; preds = %bb.p
  br i1 %i.cy, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.q:                                             ; preds = %bb.p
  br i1 %i.cy, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.promoted235, i64 2 ; 4 uses
  %i.da = icmp eq ptr %i.cz, %1
  br i1 %i.da, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !21
  %i.dc = sext i8 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, %i.r
  br i1 %i.dd, label %bb.t, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.t:                                             ; preds = %bb.s
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !21  ; 2 uses
  %i.df = sext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48
  %or.cond.i25.i173 = icmp ult i32 %i.dg, 10
  %i.dh = icmp ult i8 %i.de, 56
  %or.cond19.i26.i174 = and i1 %i.dh, %or.cond.i25.i173
  br i1 %or.cond19.i26.i174, label %bb.u, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.cz, ptr %0, align 8, !tbaa !15
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.s, %.split189
  %i.di = phi ptr [ %i.cz, %bb.u ], [ %i.cx, %bb.t ], [ %i.cx, %bb.r ], [ %i.cx, %bb.s ], [ %i.cx, %.split189 ] ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !21  ; 3 uses
  %i.dk = sext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -48
  %or.cond.i = icmp ult i32 %i.dl, 10
  %i.dm = icmp slt i8 %i.dj, 56
  %i.dn = and i1 %i.dm, %or.cond.i
  br i1 %i.dn, label %bb.f, label %._crit_edge

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread: ; preds = %bb.q, %.split189, %bb.e, %._crit_edge
  %.5139.ph.ph = phi i64 [ %.0134.lcssa, %._crit_edge ], [ %.0134.lcssa, %bb.e ], [ %i.as, %.split189 ], [ %i.as, %bb.q ] ; 2 uses
  store i8 0, ptr %7, align 1, !tbaa !35
  %i.do = icmp eq i64 %.5139.ph.ph, 0
  br label %bb.v

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread: ; preds = %bb.m, %bb.n, %bb.o
  %.1135 = phi i64 [ %i.cs, %bb.m ], [ %spec.select, %bb.o ], [ %i.bd, %bb.n ] ; 2 uses
  %i.dp = shl nuw nsw i64 1, %i.q
  %i.dq = and i64 %.1135, %i.dp
  %.not146 = icmp ne i64 %i.dq, 0                 ; 2 uses
  %i.dr = zext i1 %.not146 to i64
  %.2136 = ashr i64 %.1135, %i.dr                 ; 5 uses
  %i.ds = zext i1 %.not146 to i32
  %.4132 = add nuw nsw i32 %.us-phi, %i.ds        ; 3 uses
  store i8 0, ptr %7, align 1, !tbaa !35
  %i.dt = icmp eq i32 %.4132, 0
  %i.du = icmp eq i64 %.2136, 0                   ; 2 uses
  %or.cond5 = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond5, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread
  %i.dv = phi i1 [ %i.do, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread ], [ %i.du, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread ]
  %.5139.ph294 = phi i64 [ %.5139.ph.ph, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread.thread ], [ %.2136, %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread ] ; 2 uses
  br i1 %2, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %i.dv, label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = sub nsw i64 0, %.5139.ph294
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.6140 = phi i64 [ %i.dw, %bb.x ], [ %.5139.ph294, %bb.v ]
  %i.dx = sitofp i64 %.6140 to double
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

bb.z:                                             ; preds = %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread
  %i.dy = icmp ugt i64 %.2136, 9007199254740991
  br i1 %i.dy, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.ea, %.lr.ph.i.i ], [ %.4132, %bb.z ]
  %.01620.i.i = phi i64 [ %i.dz, %.lr.ph.i.i ], [ %.2136, %bb.z ] ; 2 uses
  %i.dz = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.ea = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.eb = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.eb, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.z
  %.016.lcssa.i.i = phi i64 [ %.2136, %bb.z ], [ %i.dz, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.4132, %bb.z ], [ %i.ea, %.lr.ph.i.i ] ; 5 uses
  %i.ec = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.ec, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ed = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.ed, label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aa
  %8 = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.ee = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.ef = icmp eq i64 %i.ee, 0                    ; 2 uses
  %9 = and i1 %8, %i.ef
  br i1 %9, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.eh, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.eg, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.eg = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.eh = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.ei = icmp sgt i32 %.124.i.i, -1073
  %i.ej = and i64 %.11723.i.i, 2251799813685248
  %i.ek = icmp eq i64 %i.ej, 0                    ; 2 uses
  %i.el = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %i.el, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !5

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.eg, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.eh, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ef, %.preheader.i.i ], [ %i.ek, %.lr.ph25.i.i ]
  %i.em = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.em, i1 %.lcssa.i.i, i1 false
  %i.en = add nsw i32 %.1.lcssa.i.i, 1075
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.ep
  %i.eq = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.er = or disjoint i64 %.0.i.i, %i.eq
  %i.es = bitcast i64 %i.er to double
  br label %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit

_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit: ; preds = %._crit_edge.i.i, %bb.aa, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.es, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.et = fneg double %.018.i.i
  %i.eu = select i1 %2, double %i.et, double %.018.i.i
  br label %_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201

_ZN14arrow_vendored17double_conversionL17AdvanceToNonspaceIPcEEbPT_S3_.exit.thread201: ; preds = %.lr.ph.i161, %.lr.ph.i, %bb.w, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit, %bb.y, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit
  %.4 = phi double [ %i.ai, %_ZN14arrow_vendored17double_conversionL7AdvanceIPcEEbPT_tiRS3_.exit ], [ -0.000000e+00, %bb.w ], [ %i.eu, %_ZN14arrow_vendored17double_conversion6DoubleC2ENS0_5DiyFpE.exit ], [ %i.dx, %bb.y ], [ %5, %.lr.ph.i ], [ %5, %.lr.ph.i161 ]
  ret double %.4
}

declare noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

declare noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12isWhitespaceEi(i32 noundef range(i32 -128, 65536) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %.preheader.preheader, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %bb.a
  switch i32 %0, label %bb.b [
    i32 160, label %.thread
    i32 8232, label %.thread
    i32 8233, label %.thread
    i32 5760, label %.thread
    i32 6158, label %.thread
    i32 8192, label %.thread
    i32 8193, label %.thread
    i32 8194, label %.thread
    i32 8195, label %.thread
    i32 8196, label %.thread
    i32 8197, label %.thread
    i32 8198, label %.thread
    i32 8199, label %.thread
    i32 8200, label %.thread
    i32 8201, label %.thread
    i32 8202, label %.thread
    i32 8239, label %.thread
    i32 8287, label %.thread
    i32 12288, label %.thread
    i32 65279, label %.thread
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 33
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader20.preheader
  br label %.thread

switch.lookup:                                    ; preds = %.preheader.preheader
  %switch.cast = zext nneg i32 %0 to i33
  %switch.downshift = lshr i33 -4294951424, %switch.cast
  %switch.masked = trunc i33 %switch.downshift to i1
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %.preheader20.preheader, %bb.b
  %.2 = phi i1 [ %switch.masked, %switch.lookup ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ false, %bb.b ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ], [ true, %.preheader20.preheader ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S5_PKcb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !38
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i16, ptr %i.c, align 2, !tbaa !39
  %i.f = trunc i16 %i.e to i8
  %i.g = load atomic i8, ptr @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !25

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !27
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  br label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  resume { ptr, i32 } %i.l

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit: ; preds = %bb.b, %bb.c, %bb.f
  %i.m = load ptr, ptr @_ZZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEcE5cType, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext %i.f), !inline_history !65
  %i.r = load i8, ptr %.011.i, align 1, !tbaa !21
  %.not13.i = icmp eq i8 %i.q, %i.r
  br i1 %.not13.i, label %.preheader, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit, !llvm.loop !66

.preheader13:                                     ; preds = %.preheader13.preheader, %bb.h
  %i.s = phi ptr [ %i.u, %bb.h ], [ %.promoted, %.preheader13.preheader ]
  %.pn.i7 = phi ptr [ %.011.i8, %bb.h ], [ %2, %.preheader13.preheader ]
  %.011.i8 = getelementptr inbounds nuw i8, ptr %.pn.i7, i64 1 ; 3 uses
  %i.t = load i8, ptr %.011.i8, align 1, !tbaa !21
  %.not.i9 = icmp eq i8 %i.t, 0                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !38
  %i.v = icmp eq ptr %i.u, %1
  %or.cond21 = select i1 %.not.i9, i1 true, i1 %i.v
  br i1 %or.cond21, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit, label %bb.h

bb.h:                                             ; preds = %.preheader13
  %i.w = load i16, ptr %i.u, align 2, !tbaa !39
  %i.x = trunc i16 %i.w to i8
  %i.y = load i8, ptr %.011.i8, align 1, !tbaa !21
  %.not13.i10 = icmp eq i8 %i.y, %i.x
  br i1 %.not13.i10, label %.preheader13, label %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit, !llvm.loop !66

_ZN14arrow_vendored17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S7_PKcT0_.exit: ; preds = %bb.h, %.preheader13, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit, %.preheader
  %.0 = phi i1 [ %.not.i, %_ZN14arrow_vendored17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %.not.i, %.preheader ], [ %.not.i9, %.preheader13 ], [ %.not.i9, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL7AdvanceIPKtEEbPT_tiRS4_(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i32 noundef range(i32 10, 17) %2, ptr nofree readnone captures(address) %.0.val) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  %i.d = icmp eq ptr %i.c, %.0.val
  br label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit30.thread2

bb.c:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 2, !tbaa !39   ; 4 uses
  %i.f = zext i16 %i.e to i32                     ; 3 uses
  %i.g = add i16 %i.e, -48
  %or.cond.i = icmp ult i16 %i.g, 10
  %i.h = add nuw nsw i32 %2, 48                   ; 2 uses
  %i.i = icmp samesign ugt i32 %i.h, %i.f
  %or.cond19.i = select i1 %or.cond.i, i1 %i.i, i1 false
  br i1 %or.cond19.i, label %_ZN14arrow_vendored17double_conversionL7isDigitEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
