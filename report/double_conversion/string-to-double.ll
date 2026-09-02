Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S3_btbbdbPb:bb.a

.backedge360:                                     ; preds = %.backedge360thread-pre-split, %bb.c
  %i.r = phi i8 [ %.pr, %.backedge360thread-pre-split ], [ %i.w, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %.ph, %.backedge360thread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %i.t = icmp eq i8 %i.r, 48
  br i1 %i.t, label %_ZN17double_conversionL7isDigitEii.exit.thread.i, label %.preheader358, !llvm.loop !58

bb.b:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 4 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %.backedge360thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %i.x = sext i8 %i.w to i32
  %i.y = icmp eq i32 %i.x, %i.c
  br i1 %i.y, label %bb.d, label %.backedge360

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.u, align 1, !tbaa !23    ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48
  %or.cond.i25.i = icmp ult i32 %i.ab, 10
  %i.ac = icmp ult i8 %i.z, 64
  %or.cond19.i26.i = and i1 %i.ac, %or.cond.i25.i
  %i.ad = freeze i1 %or.cond19.i26.i
  br i1 %i.ad, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %i.z, label %.backedge360thread-pre-split [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.u, ptr %0, align 8, !tbaa !16
  br label %.backedge360thread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %.split.us, %.split.us.preheader
  store i8 0, ptr %8, align 1, !tbaa !37
  %i.ae = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.e:                                             ; preds = %.preheader358, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175
  %i.af = phi i8 [ %.pre, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ %i.l, %.preheader358 ] ; 13 uses
  %.promoted389 = phi ptr [ %i.en, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ %.promoted385, %.preheader358 ] ; 10 uses
  %.0134 = phi i64 [ %.5139, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 22 uses
  %.0128 = phi i32 [ %.7, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 23 uses
  %.0123 = phi i8 [ %.5, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 ], [ 0, %.preheader358 ] ; 20 uses
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48
  %or.cond.i160 = icmp ult i32 %i.ah, 10          ; 3 uses
  %i.ai = icmp slt i8 %i.af, 64
  %i.aj = and i1 %i.ai, %or.cond.i160
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = sext i8 %i.af to i64
  %i.al = add nsw i64 %i.ak, -48
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp slt i8 %i.af, 97
  br i1 %.not.i, label %bb.i, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.g
  %i.am = icmp samesign ult i8 %i.af, 103
  br i1 %i.am, label %bb.h, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.h:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  %i.an = zext nneg i8 %i.af to i64
  %i.ao = add nsw i64 %i.an, -87
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ap = add i8 %i.af, -65
  %or.cond325 = icmp ult i8 %i.ap, 6
  br i1 %or.cond325, label %bb.j, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282

bb.j:                                             ; preds = %bb.i
  %i.aq = zext nneg i8 %i.af to i64
  %i.ar = add nsw i64 %i.aq, -55
  br label %bb.r

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282: ; preds = %bb.i, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  switch i8 %i.af, label %.critedge [
    i8 46, label %bb.l
    i8 112, label %.thread317
    i8 80, label %.thread317
  ]

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.promoted389, i64 1 ; 8 uses
  br i1 %i.m, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split, label %bb.m, !llvm.loop !59

bb.m:                                             ; preds = %bb.l
  store ptr %i.as, ptr %0, align 8, !tbaa !16
  %i.at = icmp ne ptr %i.as, %1
  %or.cond512.not = select i1 %or.cond.i160, i1 %i.at, i1 false
  br i1 %or.cond512.not, label %bb.n, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175, !llvm.loop !59

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.promoted389, i64 2 ; 15 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175, label %bb.o, !llvm.loop !59

bb.o:                                             ; preds = %bb.n
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !23
  %i.ax = sext i8 %i.aw to i32
  %i.ay = icmp eq i32 %i.c, %i.ax
  br i1 %i.ay, label %bb.p, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175, !llvm.loop !59

bb.p:                                             ; preds = %bb.o
  %i.az = load i8, ptr %i.au, align 1, !tbaa !23  ; 3 uses
  %i.ba = sext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -48
  %or.cond.i25.i170 = icmp ult i32 %i.bb, 10
  %i.bc = icmp ult i8 %i.az, 64
  %or.cond19.i26.i171 = and i1 %i.bc, %or.cond.i25.i170
  %i.bd = freeze i1 %or.cond19.i26.i171
  br i1 %i.bd, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split, label %switch.early.test349, !llvm.loop !59

switch.early.test349:                             ; preds = %bb.p
  switch i8 %i.az, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 [
    i8 102, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 101, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 100, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 99, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 98, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 97, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 70, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 69, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 68, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 67, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 66, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 65, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
  ], !llvm.loop !59

.critedge:                                        ; preds = %bb.k, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit162.thread282
  %.not6.not.i = icmp eq ptr %.promoted389, %1
  %or.cond326 = or i1 %5, %.not6.not.i
  br i1 %or.cond326, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.q
  %i.be = phi ptr [ %i.bi, %bb.q ], [ %.promoted389, %.critedge ] ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !23
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.bg)
  br i1 %i.bh, label %bb.q, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.q:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 4 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !16
  %.not.not.i = icmp eq ptr %i.bi, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %.lr.ph.i, !llvm.loop !0

bb.r:                                             ; preds = %bb.j, %bb.h, %bb.f
  %.0119 = phi i64 [ %i.ao, %bb.h ], [ %i.ar, %bb.j ], [ %i.al, %bb.f ]
  %i.bj = trunc nuw i8 %.0123 to i1
  %i.bk = add nsw i32 %.0128, -4
  %spec.select148 = select i1 %i.bj, i32 %i.bk, i32 %.0128 ; 22 uses
  %i.bl = shl nsw i64 %.0134, 4
  %i.bm = add nsw i64 %.0119, %i.bl               ; 24 uses
  %i.bn = ashr i64 %i.bm, %i.n
  %i.bo = trunc i64 %i.bn to i32                  ; 3 uses
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph388, label %._crit_edge

.lr.ph388:                                        ; preds = %.preheader, %.lr.ph388
  %.0117387 = phi i32 [ %i.bq, %.lr.ph388 ], [ 1, %.preheader ]
  %.0118386 = phi i32 [ %i.br, %.lr.ph388 ], [ %i.bo, %.preheader ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0117387, 1            ; 2 uses
  %i.br = lshr i32 %.0118386, 1
  %i.bs = icmp samesign ugt i32 %.0118386, 3
  br i1 %i.bs, label %.lr.ph388, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph388, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.bq, %.lr.ph388 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.bt = xor i32 %notmask, -1
  %i.bu = trunc i64 %i.bm to i32
  %i.bv = and i32 %i.bt, %i.bu                    ; 2 uses
  %i.bw = zext nneg i32 %.0117.lcssa to i64
  %i.bx = ashr i64 %i.bm, %i.bw                   ; 2 uses
  %i.by = add nsw i32 %.0117.lcssa, %spec.select148
  br label %bb.s

bb.s:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %i.bz = phi i8 [ %i.af, %._crit_edge ], [ %i.cz, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %i.ca = phi ptr [ %.promoted389, %._crit_edge ], [ %i.da, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.by, %._crit_edge ], [ %spec.select149, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select328, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.m, label %.split289, label %bb.t

.split289:                                        ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 4 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !16
  %i.cc = icmp eq ptr %i.cb, %1
  br i1 %i.cc, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread

bb.t:                                             ; preds = %bb.s
  %i.cd = sext i8 %i.bz to i32
  %i.ce = add nsw i32 %i.cd, -48
  %or.cond.i.i176 = icmp ult i32 %i.ce, 10
  %i.cf = icmp ult i8 %i.bz, 64
  %or.cond19.i.i177 = and i1 %i.cf, %or.cond.i.i176
  %i.cg = freeze i1 %or.cond19.i.i177
  br i1 %i.cg, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182, label %switch.early.test350

switch.early.test350:                             ; preds = %bb.t
  switch i8 %i.bz, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188 [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit.thread.i182
  ]

_ZN17double_conversionL7isDigitEii.exit.thread.i182: ; preds = %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %switch.early.test350, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 7 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !16
  %i.ci = icmp eq ptr %i.ch, %1
  br i1 %i.ci, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287, label %bb.u

bb.u:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i182
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, %1
  br i1 %i.ck, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cm = sext i8 %i.cl to i32
  %i.cn = icmp eq i32 %i.c, %i.cm
  br i1 %i.cn, label %bb.w, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.cj, align 1, !tbaa !23  ; 3 uses
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48
  %or.cond.i25.i183 = icmp ult i32 %i.cq, 10
  %i.cr = icmp ult i8 %i.co, 64
  %or.cond19.i26.i184 = and i1 %i.cr, %or.cond.i25.i183
  %i.cs = freeze i1 %or.cond19.i26.i184
  br i1 %i.cs, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.w
  switch i8 %i.co, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i187
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i187: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.w
  store ptr %i.cj, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188: ; preds = %switch.early.test350
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 4 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !16
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread: ; preds = %switch.early.test351, %bb.v, %_ZN17double_conversionL7isDigitEii.exit30.thread.i187, %bb.u, %.split289, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188
  %i.cv = phi ptr [ %i.ch, %switch.early.test351 ], [ %i.ch, %bb.v ], [ %i.cj, %_ZN17double_conversionL7isDigitEii.exit30.thread.i187 ], [ %i.ch, %bb.u ], [ %i.cb, %.split289 ], [ %i.ct, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188 ] ; 4 uses
  br i1 %4, label %bb.x, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split

bb.x:                                             ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23  ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 46
  br i1 %i.cx, label %bb.y, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split: ; preds = %bb.y, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread
  %.ph470 = phi ptr [ %i.cv, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread ], [ %i.cy, %bb.y ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread ], [ 1, %bb.y ]
  %.pr471 = load i8, ptr %.ph470, align 1, !tbaa !23
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split, %bb.x
  %i.cz = phi i8 [ %.pr471, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split ], [ %i.cw, %bb.x ] ; 5 uses
  %i.da = phi ptr [ %.ph470, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split ], [ %i.cv, %bb.x ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201thread-pre-split ], [ %.1124, %bb.x ] ; 2 uses
  %i.db = sext i8 %i.cz to i32
  %i.dc = add nsw i32 %i.db, -48
  %or.cond.i202 = icmp ult i32 %i.dc, 10
  %i.dd = icmp ult i8 %i.cz, 64
  %or.cond19.i = and i1 %i.dd, %or.cond.i202
  %i.de = freeze i1 %or.cond19.i
  br i1 %i.de, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test352

switch.early.test352:                             ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201
  switch i8 %i.cz, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287 [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit.thread
  ]

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit201
  %i.df = icmp eq i8 %i.cz, 48
  %spec.select328 = and i1 %.0116, %i.df
  %i.dg = trunc nuw i8 %.2125 to i1
  %i.dh = add nsw i32 %.2130, 4
  %spec.select149 = select i1 %i.dg, i32 %.2130, i32 %i.dh
  br label %bb.s, !llvm.loop !61

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287: ; preds = %switch.early.test352, %_ZN17double_conversionL7isDigitEii.exit.thread.i182, %.split289, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188
  %.promoted.i204 = phi ptr [ %i.da, %switch.early.test352 ], [ %i.ch, %_ZN17double_conversionL7isDigitEii.exit.thread.i182 ], [ %i.cb, %.split289 ], [ %i.ct, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188 ] ; 3 uses
  %.not6.not.i205 = icmp eq ptr %.promoted.i204, %1
  %i.di = or i1 %5, %.not6.not.i205
  %or.cond514 = or i1 %i.di, %4
  br i1 %or.cond514, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211, label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287, %bb.z
  %i.dj = phi ptr [ %i.dn, %bb.z ], [ %.promoted.i204, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287 ] ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = sext i8 %i.dk to i32
  %i.dm = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.dl)
  br i1 %i.dm, label %bb.z, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.z:                                             ; preds = %.lr.ph.i206
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 4 uses
  store ptr %i.dn, ptr %0, align 8, !tbaa !16
  %.not.not.i210 = icmp eq ptr %i.dn, %1
  br i1 %.not.not.i210, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211, label %.lr.ph.i206, !llvm.loop !0

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211: ; preds = %bb.z, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287
  %i.do = phi ptr [ %.promoted.i204, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit188.thread287 ], [ %i.dn, %bb.z ]
  %i.dp = add nsw i32 %.0117.lcssa, -1
  %i.dq = shl nuw i32 1, %i.dp                    ; 2 uses
  %i.dr = icmp sgt i32 %i.bv, %i.dq
  br i1 %i.dr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211
  %9 = icmp ne i32 %i.bv, %i.dq
  %10 = trunc i64 %i.bx to i1
  %11 = xor i1 %10, true
  %or.cond3 = select i1 %11, i1 %.0116, i1 false
  %or.cond151 = select i1 %9, i1 true, i1 %or.cond3
  %not.or.cond151 = xor i1 %or.cond151, true
  %12 = zext i1 %not.or.cond151 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211, %bb.aa
  %.sink = phi i64 [ %12, %bb.aa ], [ 1, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit211 ]
  %spec.select153 = add nsw i64 %i.bx, %.sink     ; 2 uses
  %i.ds = shl nuw nsw i64 1, %i.n
  %i.dt = and i64 %spec.select153, %i.ds
  %.not146 = icmp ne i64 %i.dt, 0                 ; 2 uses
  %i.du = zext i1 %.not146 to i64
  %.2136 = ashr i64 %spec.select153, %i.du
  %i.dv = zext i1 %.not146 to i32
  %.4132 = add nsw i32 %.2130, %i.dv
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread

bb.ac:                                            ; preds = %bb.r
  br i1 %i.m, label %.split299, label %bb.ad

.split299:                                        ; preds = %bb.ac
  %i.dw = getelementptr i8, ptr %.promoted389, i64 1 ; 4 uses
  store ptr %i.dw, ptr %0, align 8, !tbaa !16
  %i.dx = icmp eq ptr %i.dw, %1
  br i1 %i.dx, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175

bb.ad:                                            ; preds = %bb.ac
  %i.dy = icmp ult i8 %i.af, 64
  %or.cond19.i.i213 = and i1 %i.dy, %or.cond.i160
  %i.dz = icmp sgt i8 %i.af, 96
  %or.cond329 = or i1 %i.dz, %or.cond19.i.i213
  %i.ea = add i8 %i.af, -65
  %or.cond.i215 = icmp ult i8 %i.ea, 6
  %or.cond340 = or i1 %or.cond.i215, %or.cond329
  %i.eb = getelementptr i8, ptr %.promoted389, i64 1 ; 9 uses
  store ptr %i.eb, ptr %0, align 8, !tbaa !16
  %i.ec = icmp eq ptr %i.eb, %1                   ; 2 uses
  br i1 %or.cond340, label %_ZN17double_conversionL7isDigitEii.exit.thread.i218, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224

_ZN17double_conversionL7isDigitEii.exit.thread.i218: ; preds = %bb.ad
  br i1 %i.ec, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i218
  %i.ed = getelementptr inbounds nuw i8, ptr %.promoted389, i64 2 ; 15 uses
  %i.ee = icmp eq ptr %i.ed, %1
  br i1 %i.ee, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !23
  %i.eg = sext i8 %i.ef to i32
  %i.eh = icmp eq i32 %i.c, %i.eg
  br i1 %i.eh, label %bb.ag, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175

bb.ag:                                            ; preds = %bb.af
  %i.ei = load i8, ptr %i.ed, align 1, !tbaa !23  ; 3 uses
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add nsw i32 %i.ej, -48
  %or.cond.i25.i219 = icmp ult i32 %i.ek, 10
  %i.el = icmp ult i8 %i.ei, 64
  %or.cond19.i26.i220 = and i1 %i.el, %or.cond.i25.i219
  %i.em = freeze i1 %or.cond19.i26.i220
  br i1 %i.em, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split, label %switch.early.test353

switch.early.test353:                             ; preds = %bb.ag
  switch i8 %i.ei, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175 [
    i8 102, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 101, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 100, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 99, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 98, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 97, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 70, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 69, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 68, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 67, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 66, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
    i8 65, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split
  ]

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224: ; preds = %bb.ad
  br i1 %i.ec, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split: ; preds = %bb.ag, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %bb.p, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %switch.early.test349, %bb.l
  %.sink.a = phi ptr [ %i.au, %bb.p ], [ %i.as, %bb.l ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.au, %switch.early.test349 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %switch.early.test353 ], [ %i.ed, %bb.ag ] ; 2 uses
  %.5139.ph516 = phi i64 [ %.0134, %bb.p ], [ %.0134, %bb.l ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %.0134, %switch.early.test349 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %switch.early.test353 ], [ %i.bm, %bb.ag ]
  %.7.ph517 = phi i32 [ %.0128, %bb.p ], [ %.0128, %bb.l ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %.0128, %switch.early.test349 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %switch.early.test353 ], [ %spec.select148, %bb.ag ]
  %.5.ph = phi i8 [ 1, %bb.p ], [ 1, %bb.l ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ 1, %switch.early.test349 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %switch.early.test353 ], [ %.0123, %bb.ag ]
  store ptr %.sink.a, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split, %bb.m, %switch.early.test353, %switch.early.test349, %bb.af, %bb.ae, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224, %.split299, %bb.o, %bb.n
  %i.en = phi ptr [ %i.as, %bb.o ], [ %i.as, %switch.early.test349 ], [ %i.eb, %bb.ae ], [ %i.dw, %.split299 ], [ %i.eb, %bb.af ], [ %i.eb, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ], [ %i.as, %bb.m ], [ %i.as, %bb.n ], [ %i.eb, %switch.early.test353 ], [ %.sink.a, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split ] ; 2 uses
  %.5139 = phi i64 [ %.0134, %bb.o ], [ %.0134, %switch.early.test349 ], [ %i.bm, %bb.ae ], [ %i.bm, %.split299 ], [ %i.bm, %bb.af ], [ %i.bm, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ], [ %.0134, %bb.m ], [ %.0134, %bb.n ], [ %i.bm, %switch.early.test353 ], [ %.5139.ph516, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split ]
  %.7 = phi i32 [ %.0128, %bb.o ], [ %.0128, %switch.early.test349 ], [ %spec.select148, %bb.ae ], [ %spec.select148, %.split299 ], [ %spec.select148, %bb.af ], [ %spec.select148, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ], [ %.0128, %bb.m ], [ %.0128, %bb.n ], [ %spec.select148, %switch.early.test353 ], [ %.7.ph517, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split ]
  %.5 = phi i8 [ 1, %bb.o ], [ 1, %switch.early.test349 ], [ %.0123, %bb.ae ], [ %.0123, %.split299 ], [ %.0123, %bb.af ], [ %.0123, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ], [ 1, %bb.m ], [ 1, %bb.n ], [ %.0123, %switch.early.test353 ], [ %.5.ph, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.sink.split ]
  %.pre = load i8, ptr %i.en, align 1, !tbaa !23
  br label %bb.e

.thread317:                                       ; preds = %bb.k, %bb.k
  store i8 0, ptr %8, align 1, !tbaa !37
  br label %bb.ah

_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224, %.split299, %_ZN17double_conversionL7isDigitEii.exit.thread.i218, %bb.q, %.critedge, %bb.ab
  %i.eo = phi ptr [ %.promoted389, %.critedge ], [ %i.bi, %bb.q ], [ %i.do, %bb.ab ], [ %i.dw, %.split299 ], [ %i.eb, %_ZN17double_conversionL7isDigitEii.exit.thread.i218 ], [ %i.eb, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ]
  %.5139.ph = phi i64 [ %.0134, %.critedge ], [ %.0134, %bb.q ], [ %.2136, %bb.ab ], [ %i.bm, %_ZN17double_conversionL7isDigitEii.exit.thread.i218 ], [ %i.bm, %.split299 ], [ %i.bm, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ] ; 2 uses
  %.7.ph = phi i32 [ %.0128, %.critedge ], [ %.0128, %bb.q ], [ %.4132, %bb.ab ], [ %spec.select148, %_ZN17double_conversionL7isDigitEii.exit.thread.i218 ], [ %spec.select148, %.split299 ], [ %spec.select148, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit224 ] ; 2 uses
  store i8 0, ptr %8, align 1, !tbaa !37
  br i1 %4, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %.thread317, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread
  %i.ep = phi ptr [ %.promoted389, %.thread317 ], [ %i.eo, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread ] ; 5 uses
  %.7.ph322 = phi i32 [ %.0128, %.thread317 ], [ %.7.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread ]
  %.5139.ph321 = phi i64 [ %.0134, %.thread317 ], [ %.5139.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread ]
  br i1 %i.m, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.er = load i8, ptr %i.ep, align 1, !tbaa !23  ; 3 uses
  %i.es = sext i8 %i.er to i32
  %i.et = add nsw i32 %i.es, -48
  %or.cond.i.i225 = icmp ult i32 %i.et, 10
  %i.eu = icmp ult i8 %i.er, 64
  %or.cond19.i.i226 = and i1 %i.eu, %or.cond.i.i225
  %i.ev = freeze i1 %or.cond19.i.i226
  br i1 %i.ev, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231, label %switch.early.test354

switch.early.test354:                             ; preds = %bb.aj
  switch i8 %i.er, label %_ZN17double_conversionL7isDigitEii.exit.thread1.i229 [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit.thread.i231
  ]

_ZN17double_conversionL7isDigitEii.exit.thread1.i229: ; preds = %switch.early.test354
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split

_ZN17double_conversionL7isDigitEii.exit.thread.i231: ; preds = %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 7 uses
  store ptr %i.ex, ptr %0, align 8, !tbaa !16
  %i.ey = icmp eq ptr %i.ex, %1
  br i1 %i.ey, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split, label %bb.ak

bb.ak:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i231
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 2 ; 15 uses
  %i.fa = icmp eq ptr %i.ez, %1
  br i1 %i.fa, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !23  ; 2 uses
  %i.fc = sext i8 %i.fb to i32
  %i.fd = icmp eq i32 %i.c, %i.fc
  br i1 %i.fd, label %bb.am, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237

bb.am:                                            ; preds = %bb.al
  %i.fe = load i8, ptr %i.ez, align 1, !tbaa !23  ; 3 uses
  %i.ff = sext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -48
  %or.cond.i25.i232 = icmp ult i32 %i.fg, 10
  %i.fh = icmp ult i8 %i.fe, 64
  %or.cond19.i26.i233 = and i1 %i.fh, %or.cond.i25.i232
  %i.fi = freeze i1 %or.cond19.i26.i233
  br i1 %i.fi, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split, label %switch.early.test355

switch.early.test355:                             ; preds = %bb.am
  switch i8 %i.fe, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split [
    i8 102, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 101, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 100, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 99, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 98, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 97, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 70, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 69, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 68, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 67, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 66, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
    i8 65, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split
  ]

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split: ; preds = %bb.am, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %bb.ai, %_ZN17double_conversionL7isDigitEii.exit.thread1.i229
  %.sink518 = phi ptr [ %i.eq, %bb.ai ], [ %i.ew, %_ZN17double_conversionL7isDigitEii.exit.thread1.i229 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %switch.early.test355 ], [ %i.ez, %bb.am ] ; 2 uses
  store ptr %.sink518, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split, %bb.ak, %_ZN17double_conversionL7isDigitEii.exit.thread.i231, %switch.early.test355
  %.ph472 = phi ptr [ %i.ex, %switch.early.test355 ], [ %i.ex, %bb.ak ], [ %i.ex, %_ZN17double_conversionL7isDigitEii.exit.thread.i231 ], [ %.sink518, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split.sink.split ] ; 2 uses
  %.pr473 = load i8, ptr %.ph472, align 1, !tbaa !23
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split, %bb.al
  %i.fj = phi i8 [ %.pr473, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split ], [ %i.fb, %bb.al ]
  %i.fk = phi ptr [ %.ph472, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237thread-pre-split ], [ %i.ex, %bb.al ] ; 2 uses
  switch i8 %i.fj, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250 [
    i8 43, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250.sink.split
    i8 45, label %bb.an
  ]

bb.an:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250.sink.split

end_hunk_0
begin_hunk_1_@_ZN17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S3_btbbdbPb:bb.a
  %.016.lcssa.i.i = phi i64 [ %.5139.ph320, %bb.aw ], [ %i.gt, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.8, %bb.aw ], [ %i.gu, %.lr.ph.i.i ] ; 5 uses
  %i.gw = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.gw, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i
  %i.gx = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.gx, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax
  %i.gy = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.gz = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.ha = icmp eq i64 %i.gz, 0                    ; 2 uses
  %i.hb = and i1 %i.gy, %i.ha
  br i1 %i.hb, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.hd, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.hc, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.hc = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.hd = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.he = icmp sgt i32 %.124.i.i, -1073
  %i.hf = and i64 %.11723.i.i, 2251799813685248
  %i.hg = icmp eq i64 %i.hf, 0                    ; 2 uses
  %i.hh = select i1 %i.he, i1 %i.hg, i1 false
  br i1 %i.hh, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !5

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.hc, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.hd, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ha, %.preheader.i.i ], [ %i.hg, %.lr.ph25.i.i ]
  %i.hi = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.hi, i1 %.lcssa.i.i, i1 false
  %i.hj = add nsw i32 %.1.lcssa.i.i, 1075
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.hl
  %i.hm = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.hn = or disjoint i64 %.0.i.i, %i.hm
  %i.ho = bitcast i64 %i.hn to double
  br label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit

_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit:  ; preds = %._crit_edge.i.i, %bb.ax, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.ho, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.ax ] ; 2 uses
  %i.hp = fneg double %.018.i.i
  %i.hq = select i1 %2, double %i.hp, double %.018.i.i
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311: ; preds = %.lr.ph.i, %.lr.ph.i206, %bb.at, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, %bb.av, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  %.4 = phi double [ %i.ae, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread ], [ -0.000000e+00, %bb.at ], [ %i.hq, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit ], [ %i.gr, %bb.av ], [ %6, %.lr.ph.i206 ], [ %6, %.lr.ph.i ]
  ret double %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, double noundef %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %7, align 1, !tbaa !37
  %.promoted = load ptr, ptr %0, align 8, !tbaa !16 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !23 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader208

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %3 to i32
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %.lr.ph.split

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %.backedge.us

.split.us:                                        ; preds = %.backedge.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %.backedge.us, !llvm.loop !63

.backedge.us:                                     ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader208, !llvm.loop !63

.preheader208:                                    ; preds = %.backedge, %.backedge.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge.us ], [ %i.a, %bb.a ], [ %i.w, %.backedge ] ; 3 uses
  %.promoted225 = phi ptr [ %i.i, %.backedge.us ], [ %.promoted, %bb.a ], [ %i.x, %.backedge ] ; 2 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %or.cond.i226 = icmp ult i32 %i.n, 10
  %i.o = icmp slt i8 %i.l, 56
  %i.p = and i1 %i.o, %or.cond.i226
  br i1 %i.p, label %.lr.ph228, label %._crit_edge

.lr.ph228:                                        ; preds = %.preheader208
  %i.q = select i1 %6, i64 53, i64 24             ; 2 uses
  %i.r = zext i16 %3 to i32                       ; 2 uses
  %i.s = icmp eq i16 %3, 0                        ; 2 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.t = phi ptr [ %i.x, %.backedge ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 6 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !16
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %bb.b, !llvm.loop !63

.backedgethread-pre-split:                        ; preds = %.split178, %bb.b, %bb.d
  %.ph = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.b ], [ %i.z, %.split178 ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !23
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.c
  %i.w = phi i8 [ %.pr, %.backedgethread-pre-split ], [ %i.ab, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.ph, %.backedgethread-pre-split ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = icmp eq i8 %i.w, 48
  br i1 %i.y, label %.lr.ph.split, label %.preheader208, !llvm.loop !63

bb.b:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.backedgethread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !23   ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, %i.c
  br i1 %i.ad, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !23   ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48
  %or.cond.i25.i = icmp ult i32 %i.ag, 10
  %i.ah = icmp ult i8 %i.ae, 56
  %or.cond19.i26.i = and i1 %i.ah, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %.split178, label %.backedgethread-pre-split

.split178:                                        ; preds = %bb.d
  store ptr %i.z, ptr %0, align 8, !tbaa !16
  br label %.backedgethread-pre-split

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit: ; preds = %.lr.ph.split, %.split.us, %.split.us.preheader
  store i8 0, ptr %7, align 1, !tbaa !37
  %i.ai = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

._crit_edge:                                      ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit, %.preheader208
  %.0134.lcssa = phi i64 [ 0, %.preheader208 ], [ %i.as, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.lcssa214 = phi ptr [ %.promoted225, %.preheader208 ], [ %i.dd, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.not6.not.i = icmp eq ptr %.lcssa214, %1
  %or.cond.a = or i1 %4, %.not6.not.i
  br i1 %or.cond.a, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.aj = phi ptr [ %i.an, %bb.e ], [ %.lcssa214, %._crit_edge ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.al)
  br i1 %i.am, label %bb.e, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !16
  %.not.not.i = icmp eq ptr %i.an, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !64

bb.f:                                             ; preds = %.lr.ph228, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit
  %i.ao = phi i8 [ %i.l, %.lr.ph228 ], [ %i.de, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.0134227 = phi i64 [ 0, %.lr.ph228 ], [ %i.as, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ]
  %.promoted235 = phi ptr [ %.promoted225, %.lr.ph228 ], [ %i.dd, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 4 uses
  %i.ap = sext i8 %i.ao to i64
  %i.aq = shl nsw i64 %.0134227, 3
  %i.ar = add i64 %i.aq, -48
  %i.as = add i64 %i.ar, %i.ap                    ; 7 uses
  %i.at = ashr i64 %i.as, %i.q
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader, %.lr.ph232
  %.0117231 = phi i32 [ %i.aw, %.lr.ph232 ], [ 1, %.preheader ]
  %.0118230 = phi i32 [ %i.ax, %.lr.ph232 ], [ %i.au, %.preheader ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0117231, 1            ; 2 uses
  %i.ax = lshr i32 %.0118230, 1
  %i.ay = icmp samesign ugt i32 %.0118230, 3
  br i1 %i.ay, label %.lr.ph232, label %._crit_edge233, !llvm.loop !65

._crit_edge233:                                   ; preds = %.lr.ph232, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.aw, %.lr.ph232 ] ; 6 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.az = xor i32 %notmask, -1
  %i.ba = trunc i64 %i.as to i32
  %i.bb = and i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = zext nneg i32 %.0117.lcssa to i64
  %i.bd = ashr i64 %i.as, %i.bc                   ; 2 uses
  br i1 %i.s, label %.split.us236, label %.split

.split.us236:                                     ; preds = %._crit_edge233
  %i.be = getelementptr inbounds nuw i8, ptr %.promoted235, i64 1 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !16
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us: ; preds = %.split.us236, %.split183.us
  %i.bg = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ] ; 3 uses
  %.0116.us239 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ] ; 2 uses
  %.2130.us238 = phi i32 [ %i.bm, %.split183.us ], [ %.0117.lcssa, %.split.us236 ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !23  ; 3 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48
  %or.cond.i158.us = icmp ult i32 %i.bj, 10
  %i.bk = icmp ult i8 %i.bh, 56
  %or.cond19.i.us = and i1 %i.bk, %or.cond.i158.us
  br i1 %or.cond19.i.us, label %.split183.us, label %_ZN17double_conversionL7isDigitEii.exit

.split183.us:                                     ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us
  %i.bl = icmp eq i8 %i.bh, 48
  %spec.select206.us = and i1 %.0116.us239, %i.bl ; 2 uses
  %i.bm = add nuw nsw i32 %.2130.us238, 3         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !16
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us, !llvm.loop !66

.split:                                           ; preds = %._crit_edge233, %bb.k
  %i.bp = phi i8 [ %i.ce, %bb.k ], [ %i.ao, %._crit_edge233 ]
  %i.bq = phi ptr [ %i.cd, %bb.k ], [ %.promoted235, %._crit_edge233 ] ; 2 uses
  %.2130 = phi i32 [ %i.cj, %bb.k ], [ %.0117.lcssa, %._crit_edge233 ] ; 3 uses
  %.0116 = phi i1 [ %spec.select206, %bb.k ], [ true, %._crit_edge233 ] ; 3 uses
  %i.br = add i8 %i.bp, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.br, -8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 8 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !16
  %i.bt = icmp eq ptr %i.bs, %1                   ; 2 uses
  %brmerge.i151 = select i1 %or.cond19.i.not3.i150, i1 true, i1 %i.bt
  br i1 %brmerge.i151, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157, label %bb.g

bb.g:                                             ; preds = %.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, %1
  br i1 %i.bv, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bx = sext i8 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, %i.r
  br i1 %i.by, label %bb.i, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

bb.i:                                             ; preds = %bb.h
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !23  ; 2 uses
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48
  %or.cond.i25.i155 = icmp ult i32 %i.cb, 10
  %i.cc = icmp ult i8 %i.bz, 56
  %or.cond19.i26.i156 = and i1 %i.cc, %or.cond.i25.i155
  br i1 %or.cond19.i26.i156, label %bb.j, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.bu, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157: ; preds = %.split
  %not.or.cond19.i.not3.i152 = xor i1 %or.cond19.i.not3.i150, true
  %.mux.i153 = select i1 %not.or.cond19.i.not3.i152, i1 true, i1 %i.bt
  br i1 %.mux.i153, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157
  %i.cd = phi ptr [ %i.bu, %bb.j ], [ %i.bs, %bb.i ], [ %i.bs, %bb.g ], [ %i.bs, %bb.h ], [ %i.bs, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !23  ; 4 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48
  %or.cond.i158 = icmp ult i32 %i.cg, 10
  %i.ch = icmp ult i8 %i.ce, 56
  %or.cond19.i = and i1 %i.ch, %or.cond.i158
  br i1 %or.cond19.i, label %bb.k, label %_ZN17double_conversionL7isDigitEii.exit

bb.k:                                             ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread
  %i.ci = icmp eq i8 %i.ce, 48
  %spec.select206 = and i1 %.0116, %i.ci
  %i.cj = add nuw nsw i32 %.2130, 3
  br label %.split, !llvm.loop !66

_ZN17double_conversionL7isDigitEii.exit:          ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us, %.split183.us, %.split.us236
  %.promoted.i159 = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ], [ %i.bg, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %i.bs, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ], [ %i.cd, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ] ; 2 uses
  %.us-phi = phi i32 [ %i.bm, %.split183.us ], [ %.0117.lcssa, %.split.us236 ], [ %.2130.us238, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %.2130, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ], [ %.2130, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ]
  %.us-phi237 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ], [ %.0116.us239, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %.0116, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ], [ %.0116, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ]
  %.not6.not.i160 = icmp eq ptr %.promoted.i159, %1
  %or.cond323 = select i1 %4, i1 true, i1 %.not6.not.i160
  br i1 %or.cond323, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN17double_conversionL7isDigitEii.exit, %bb.l
  %i.ck = phi ptr [ %i.co, %bb.l ], [ %.promoted.i159, %_ZN17double_conversionL7isDigitEii.exit ] ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !23
  %i.cm = sext i8 %i.cl to i32
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.cm)
  br i1 %i.cn, label %bb.l, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

bb.l:                                             ; preds = %.lr.ph.i161
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !16
  %.not.not.i165 = icmp eq ptr %i.co, %1
  br i1 %.not.not.i165, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166, label %.lr.ph.i161, !llvm.loop !64

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166: ; preds = %bb.l, %_ZN17double_conversionL7isDigitEii.exit
  %i.cp = add nsw i32 %.0117.lcssa, -1
  %i.cq = shl nuw i32 1, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i32 %i.bb, %i.cq
  br i1 %i.cr, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166
  %8 = icmp ne i32 %i.bb, %i.cq
  %9 = trunc i64 %i.bd to i1
  %10 = xor i1 %9, true
  %or.cond3 = select i1 %10, i1 %.us-phi237, i1 false
  %or.cond = select i1 %8, i1 true, i1 %or.cond3
  %not.or.cond = xor i1 %or.cond, true
  %11 = zext i1 %not.or.cond to i64
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread

bb.n:                                             ; preds = %bb.f
  %i.cs = getelementptr i8, ptr %.promoted235, i64 1 ; 7 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !16
  %i.ct = icmp eq ptr %i.cs, %1                   ; 2 uses
  br i1 %i.s, label %.split189, label %bb.o

.split189:                                        ; preds = %bb.n
  br i1 %i.ct, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit

bb.o:                                             ; preds = %bb.n
  br i1 %i.ct, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %.promoted235, i64 2 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, %1
  br i1 %i.cv, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !23
  %i.cx = sext i8 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, %i.r
  br i1 %i.cy, label %bb.r, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit

bb.r:                                             ; preds = %bb.q
  %i.cz = load i8, ptr %i.cu, align 1, !tbaa !23  ; 2 uses
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48
  %or.cond.i25.i173 = icmp ult i32 %i.db, 10
  %i.dc = icmp ult i8 %i.cz, 56
  %or.cond19.i26.i174 = and i1 %i.dc, %or.cond.i25.i173
  br i1 %or.cond19.i26.i174, label %bb.s, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit

bb.s:                                             ; preds = %bb.r
  store ptr %i.cu, ptr %0, align 8, !tbaa !16
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.q, %.split189
  %i.dd = phi ptr [ %i.cu, %bb.s ], [ %i.cs, %bb.r ], [ %i.cs, %bb.p ], [ %i.cs, %bb.q ], [ %i.cs, %.split189 ] ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !23  ; 3 uses
  %i.df = sext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -48
  %or.cond.i = icmp ult i32 %i.dg, 10
  %i.dh = icmp slt i8 %i.de, 56
  %i.di = and i1 %i.dh, %or.cond.i
  br i1 %i.di, label %bb.f, label %._crit_edge

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread: ; preds = %bb.o, %.split189, %bb.e, %._crit_edge
  %.5139.ph.ph = phi i64 [ %.0134.lcssa, %._crit_edge ], [ %.0134.lcssa, %bb.e ], [ %i.as, %.split189 ], [ %i.as, %bb.o ] ; 2 uses
  store i8 0, ptr %7, align 1, !tbaa !37
  %i.dj = icmp eq i64 %.5139.ph.ph, 0
  br label %bb.t

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread: ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166, %bb.m
  %.sink = phi i64 [ %11, %bb.m ], [ 1, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166 ]
  %12 = add nsw i64 %i.bd, %.sink                 ; 2 uses
  %i.dk = shl nuw nsw i64 1, %i.q
  %i.dl = and i64 %12, %i.dk
  %.not146 = icmp ne i64 %i.dl, 0                 ; 2 uses
  %i.dm = zext i1 %.not146 to i64
  %.2136 = ashr i64 %12, %i.dm                    ; 5 uses
  %i.dn = zext i1 %.not146 to i32
  %.4132 = add nuw nsw i32 %.us-phi, %i.dn        ; 3 uses
  store i8 0, ptr %7, align 1, !tbaa !37
  %i.do = icmp eq i32 %.4132, 0
  %i.dp = icmp eq i64 %.2136, 0                   ; 2 uses
  %or.cond5 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond5, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread
  %i.dq = phi i1 [ %i.dj, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread ], [ %i.dp, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread ]
  %.5139.ph294 = phi i64 [ %.5139.ph.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread ], [ %.2136, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread ] ; 2 uses
  br i1 %2, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.dq, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = sub nsw i64 0, %.5139.ph294
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.6140 = phi i64 [ %i.dr, %bb.v ], [ %.5139.ph294, %bb.t ]
  %i.ds = sitofp i64 %.6140 to double
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

bb.x:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread
  %i.dt = icmp ugt i64 %.2136, 9007199254740991
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.dv, %.lr.ph.i.i ], [ %.4132, %bb.x ]
  %.01620.i.i = phi i64 [ %i.du, %.lr.ph.i.i ], [ %.2136, %bb.x ] ; 2 uses
  %i.du = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.dv = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.dw = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.dw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.x
  %.016.lcssa.i.i = phi i64 [ %.2136, %bb.x ], [ %i.du, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.4132, %bb.x ], [ %i.dv, %.lr.ph.i.i ] ; 5 uses
  %i.dx = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.dx, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.dy = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.dy, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.dz = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.ea = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.eb = icmp eq i64 %i.ea, 0                    ; 2 uses
  %i.ec = and i1 %i.dz, %i.eb
  br i1 %i.ec, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.ee, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.ed, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.ed = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.ee = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.ef = icmp sgt i32 %.124.i.i, -1073
  %i.eg = and i64 %.11723.i.i, 2251799813685248
  %i.eh = icmp eq i64 %i.eg, 0                    ; 2 uses
  %i.ei = select i1 %i.ef, i1 %i.eh, i1 false
  br i1 %i.ei, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !5

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.ed, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.ee, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.eb, %.preheader.i.i ], [ %i.eh, %.lr.ph25.i.i ]
  %i.ej = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.ej, i1 %.lcssa.i.i, i1 false
  %i.ek = add nsw i32 %.1.lcssa.i.i, 1075
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.em
  %i.en = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.eo = or disjoint i64 %.0.i.i, %i.en
  %i.ep = bitcast i64 %i.eo to double
  br label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit

_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit:  ; preds = %._crit_edge.i.i, %bb.y, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.ep, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.eq = fneg double %.018.i.i
  %i.er = select i1 %2, double %i.eq, double %.018.i.i
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201: ; preds = %.lr.ph.i161, %.lr.ph.i, %bb.u, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, %bb.w, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit
  %.4 = phi double [ %i.ai, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit ], [ -0.000000e+00, %bb.u ], [ %i.er, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit ], [ %i.ds, %bb.w ], [ %5, %.lr.ph.i ], [ %5, %.lr.ph.i161 ]
  ret double %.4
}

declare noundef double @_ZN17double_conversion13StrtodTrimmedENS_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

declare noundef float @_ZN17double_conversion13StrtofTrimmedENS_6VectorIKcEEi(ptr, i32, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef range(i32 -128, 65536) %0) unnamed_addr #5 {
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
define internal fastcc noundef zeroext i1 @_ZN17double_conversion12_GLOBAL__N_116ConsumeSubStringIPKtEEbPT_S4_PKcb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %3, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.a
  %.promoted = load ptr, ptr %0, align 8, !tbaa !40
  br label %.preheader13

.preheader:                                       ; preds = %bb.a, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit
  %.pn.i = phi ptr [ %.011.i, %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit ], [ %2, %bb.a ]
  %.011.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.a = load i8, ptr %.011.i, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.a, 0                    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40
  %i.d = icmp eq ptr %i.c, %1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %or.cond, label %_ZN17double_conversion12_GLOBAL__N_120ConsumeSubStringImplIPKtPFccEEEbPT_S6_PKcT0_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i16, ptr %i.c, align 2, !tbaa !41
  %i.f = trunc i16 %i.e to i8
  %i.g = load atomic i8, ptr @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion12_GLOBAL__N_17ToLowerEcE5cType) #8
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %_ZN17double_conversion12_GLOBAL__N_17ToLowerEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(570) ptr @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.g

end_hunk_1
begin_hunk_2_@_ZN17double_conversionL16IsHexFloatStringIPKtEEbT_S3_tb:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  %.not.not.i = icmp ne ptr %i.ea, %1
  %or.cond360.not = select i1 %i.dz, i1 %.not.not.i, i1 false
  br i1 %or.cond360.not, label %.lr.ph.i, label %_ZN17double_conversionL7isDigitEii.exit82, !llvm.loop !3

_ZN17double_conversionL7isDigitEii.exit82:        ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread1.i, %_ZN17double_conversionL7isDigitEii.exit.thread.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43, %_ZN17double_conversionL7isDigitEii.exit.thread.i45, %_ZN17double_conversionL7isDigitEii.exit38.thread.us, %.lr.ph.split, %.split113.us, %.lr.ph.i, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel, %bb.w, %switch.early.test.us.peel, %switch.early.test.peel, %_ZN17double_conversionL7isDigitEii.exit.thread.i58, %bb.x, %.split110, %_ZN17double_conversionL7isDigitEii.exit38.thread104, %.split103, %_ZN17double_conversionL7isDigitEii.exit87, %bb.y, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64, %bb.q, %.loopexit, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33
  %.010 = phi i1 [ false, %switch.early.test.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us.peel ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit33 ], [ false, %.loopexit ], [ false, %bb.q ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit64 ], [ false, %bb.w ], [ true, %bb.y ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i58 ], [ false, %switch.early.test.us.peel ], [ true, %_ZN17double_conversionL7isDigitEii.exit87 ], [ false, %bb.x ], [ false, %.split110 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread104 ], [ false, %_ZN17double_conversionL7isDigitEii.exit38.thread.us ], [ false, %.split103 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us.peel ], [ true, %.lr.ph.split ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i.peel ], [ %i.dz, %.lr.ph.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43.peel ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45.peel ], [ true, %.split113.us ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i43 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i45 ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread.i ], [ false, %_ZN17double_conversionL7isDigitEii.exit.thread1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi4EPKtEEdPT0_S3_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, double noundef %6, i1 noundef zeroext %7, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %8) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %8, align 1, !tbaa !37
  %.promoted = load ptr, ptr %0, align 8, !tbaa !40 ; 4 uses
  %i.a = load i16, ptr %.promoted, align 2, !tbaa !41 ; 2 uses
  %i.b = icmp eq i16 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader359

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i16 %3, 0
  br i1 %i.c, label %.split.us, label %_ZN17double_conversionL7isDigitEii.exit.thread.i

.split.us:                                        ; preds = %.lr.ph, %.backedge361.us
  %i.d = phi ptr [ %i.e, %.backedge361.us ], [ %.promoted, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 6 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us, label %.backedge361.us

.backedge361.us:                                  ; preds = %.split.us
  %i.g = load i16, ptr %i.e, align 2, !tbaa !41   ; 2 uses
  %i.h = icmp eq i16 %i.g, 48
  br i1 %i.h, label %.split.us, label %..preheader359_crit_edge.split.us, !llvm.loop !74

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us: ; preds = %.split.us
  store ptr %i.e, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread

..preheader359_crit_edge.split.us:                ; preds = %.backedge361.us
  store ptr %i.e, ptr %0, align 8, !tbaa !40
  br label %.preheader359

.preheader359:                                    ; preds = %.backedge361, %..preheader359_crit_edge.split.us, %bb.a
  %i.i = phi i16 [ %i.a, %bb.a ], [ %i.g, %..preheader359_crit_edge.split.us ], [ %i.o, %.backedge361 ]
  %.promoted388 = phi ptr [ %.promoted, %bb.a ], [ %i.e, %..preheader359_crit_edge.split.us ], [ %i.p, %.backedge361 ]
  %i.j = icmp eq i16 %3, 0                        ; 4 uses
  %i.k = select i1 %7, i64 53, i64 24             ; 2 uses
  br label %bb.e

_ZN17double_conversionL7isDigitEii.exit.thread.i: ; preds = %.lr.ph, %.backedge361
  %i.l = phi ptr [ %i.p, %.backedge361 ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 6 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !40
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread, label %bb.b

.backedge361thread-pre-split:                     ; preds = %_ZN17double_conversionL7isDigitEii.exit30.thread.i, %switch.early.test, %bb.b
  %.ph = phi ptr [ %i.m, %bb.b ], [ %i.m, %switch.early.test ], [ %i.r, %_ZN17double_conversionL7isDigitEii.exit30.thread.i ] ; 2 uses
  %.pr = load i16, ptr %.ph, align 2, !tbaa !41
  br label %.backedge361

.backedge361:                                     ; preds = %.backedge361thread-pre-split, %bb.c
  %i.o = phi i16 [ %.pr, %.backedge361thread-pre-split ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.ph, %.backedge361thread-pre-split ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = icmp eq i16 %i.o, 48
  br i1 %i.q, label %_ZN17double_conversionL7isDigitEii.exit.thread.i, label %.preheader359, !llvm.loop !74

bb.b:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %.backedge361thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.m, align 2, !tbaa !41   ; 2 uses
  %i.u = icmp eq i16 %i.t, %3
  br i1 %i.u, label %bb.d, label %.backedge361

bb.d:                                             ; preds = %bb.c
  %i.v = load i16, ptr %i.r, align 2, !tbaa !41
  %.fr401 = freeze i16 %i.v                       ; 2 uses
  %i.w = add i16 %.fr401, -48
  %or.cond19.i26.i = icmp ult i16 %i.w, 10
  br i1 %or.cond19.i26.i, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i16 %.fr401, label %.backedge361thread-pre-split [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i: ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  store ptr %i.r, ptr %0, align 8, !tbaa !40
  br label %.backedge361thread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread.split.us
  store i8 0, ptr %8, align 1, !tbaa !37
  %i.x = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.e:                                             ; preds = %.preheader359, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177
  %i.y = phi i16 [ %.pre, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %i.i, %.preheader359 ]
  %.promoted392 = phi ptr [ %i.da, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ %.promoted388, %.preheader359 ] ; 9 uses
  %.0134 = phi i64 [ %.5139, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 5 uses
  %.0128 = phi i32 [ %.7, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 6 uses
  %.0123 = phi i8 [ %.5, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 ], [ 0, %.preheader359 ] ; 20 uses
  %i.z = freeze i16 %i.y                          ; 9 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = add i16 %i.z, -48
  %i.ac = icmp ult i16 %i.ab, 10                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ult i16 %i.z, 97
  br i1 %.not.i, label %bb.g, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit: ; preds = %bb.f
  %i.ad = icmp ult i16 %i.z, 103
  br i1 %i.ad, label %bb.k, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i16 %i.z, -65
  %or.cond327 = icmp ult i16 %i.ae, 6
  br i1 %or.cond327, label %bb.k, label %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284

_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284: ; preds = %bb.g, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit
  br i1 %4, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  switch i16 %i.z, label %.critedge [
    i16 46, label %bb.i
    i16 112, label %.thread319
    i16 80, label %.thread319
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted392, i64 2
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split, !llvm.loop !75

.critedge:                                        ; preds = %bb.h, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit164.thread284
  %.not6.not.i = icmp eq ptr %.promoted392, %1
  %or.cond328 = or i1 %5, %.not6.not.i
  br i1 %or.cond328, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.j
  %i.ag = phi ptr [ %i.ak, %bb.j ], [ %.promoted392, %.critedge ] ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !41
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.ai)
  br i1 %i.aj, label %bb.j, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 4 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !40
  %.not.not.i = icmp eq ptr %i.ak, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %.lr.ph.i, !llvm.loop !3

bb.k:                                             ; preds = %bb.g, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit, %bb.e
  %.sink = phi i64 [ 4294967209, %_ZN17double_conversionL24IsCharacterDigitForRadixEiic.exit ], [ 4294967248, %bb.e ], [ 4294967241, %bb.g ]
  %i.al = add nuw nsw i64 %.sink, %i.aa
  %i.am = trunc nuw i8 %.0123 to i1
  %i.an = add nsw i32 %.0128, -4
  %spec.select150 = select i1 %i.am, i32 %i.an, i32 %.0128 ; 22 uses
  %i.ao = shl nsw i64 %.0134, 4
  %i.ap = and i64 %i.al, 4294967295
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 24 uses
  %i.ar = ashr i64 %i.aq, %i.k
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.lr.ph391, label %._crit_edge

.lr.ph391:                                        ; preds = %.preheader, %.lr.ph391
  %.0117390 = phi i32 [ %i.au, %.lr.ph391 ], [ 1, %.preheader ]
  %.0118389 = phi i32 [ %i.av, %.lr.ph391 ], [ %i.as, %.preheader ] ; 2 uses
  %i.au = add nuw nsw i32 %.0117390, 1            ; 2 uses
  %i.av = lshr i32 %.0118389, 1
  %i.aw = icmp samesign ugt i32 %.0118389, 3
  br i1 %i.aw, label %.lr.ph391, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph391, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.au, %.lr.ph391 ] ; 4 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.ax = xor i32 %notmask, -1
  %i.ay = trunc i64 %i.aq to i32
  %i.az = and i32 %i.ax, %i.ay                    ; 2 uses
  %i.ba = zext nneg i32 %.0117.lcssa to i64
  %i.bb = ashr i64 %i.aq, %i.ba                   ; 2 uses
  %i.bc = add nsw i32 %.0117.lcssa, %spec.select150
  br label %bb.l

bb.l:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread, %._crit_edge
  %.fr402 = phi i16 [ %i.z, %._crit_edge ], [ %.fr404, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %i.bd = phi ptr [ %.promoted392, %._crit_edge ], [ %i.bv, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 4 uses
  %.2130 = phi i32 [ %i.bc, %._crit_edge ], [ %spec.select151, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 3 uses
  %.1124 = phi i8 [ %.0123, %._crit_edge ], [ %.2125, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  %.0116 = phi i1 [ true, %._crit_edge ], [ %spec.select330, %_ZN17double_conversionL7isDigitEii.exit.thread ] ; 2 uses
  br i1 %i.j, label %.split291, label %bb.m

.split291:                                        ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !40
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

bb.m:                                             ; preds = %bb.l
  %or.cond19.i.i179 = icmp slt i16 %.fr402, 58
  br i1 %or.cond19.i.i179, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184, label %switch.early.test351

switch.early.test351:                             ; preds = %bb.m
  switch i16 %.fr402, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit.thread.i184
  ]

_ZN17double_conversionL7isDigitEii.exit.thread.i184: ; preds = %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %switch.early.test351, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 7 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !40
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %bb.n

bb.n:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, %1
  br i1 %i.bj, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i16, ptr %i.bg, align 2, !tbaa !41
  %i.bl = icmp eq i16 %i.bk, %3
  br i1 %i.bl, label %bb.p, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

bb.p:                                             ; preds = %bb.o
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !41
  %.fr403 = freeze i16 %i.bm                      ; 2 uses
  %i.bn = add i16 %.fr403, -48
  %or.cond19.i26.i186 = icmp ult i16 %i.bn, 10
  br i1 %or.cond19.i26.i186, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189, label %switch.early.test352

switch.early.test352:                             ; preds = %bb.p
  switch i16 %.fr403, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i189
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i189: ; preds = %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %switch.early.test352, %bb.p
  store ptr %i.bi, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190: ; preds = %switch.early.test351
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !40
  %i.bp = icmp eq ptr %i.bo, %1
  br i1 %i.bp, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread: ; preds = %switch.early.test352, %bb.o, %_ZN17double_conversionL7isDigitEii.exit30.thread.i189, %bb.n, %.split291, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190
  %i.bq = phi ptr [ %i.bg, %switch.early.test352 ], [ %i.bg, %bb.o ], [ %i.bi, %_ZN17double_conversionL7isDigitEii.exit30.thread.i189 ], [ %i.bg, %bb.n ], [ %i.be, %.split291 ], [ %i.bo, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 ] ; 4 uses
  br i1 %4, label %bb.q, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split

bb.q:                                             ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !41 ; 2 uses
  %i.bs = icmp eq i16 %i.br, 46
  br i1 %i.bs, label %bb.r, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split: ; preds = %bb.r, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread
  %.ph483 = phi ptr [ %i.bq, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread ], [ %i.bt, %bb.r ] ; 2 uses
  %.2125.ph = phi i8 [ %.1124, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread ], [ 1, %bb.r ]
  %.pr484 = load i16, ptr %.ph483, align 2, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split, %bb.q
  %i.bu = phi i16 [ %.pr484, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %i.br, %bb.q ]
  %i.bv = phi ptr [ %.ph483, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %i.bq, %bb.q ] ; 2 uses
  %.2125 = phi i8 [ %.2125.ph, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203thread-pre-split ], [ %.1124, %bb.q ] ; 2 uses
  %.fr404 = freeze i16 %i.bu                      ; 4 uses
  %i.bw = add i16 %.fr404, -48
  %or.cond19.i = icmp ult i16 %i.bw, 10
  br i1 %or.cond19.i, label %_ZN17double_conversionL7isDigitEii.exit.thread, label %switch.early.test353

switch.early.test353:                             ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203
  switch i16 %.fr404, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit.thread
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit.thread
  ]

_ZN17double_conversionL7isDigitEii.exit.thread:   ; preds = %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %switch.early.test353, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit203
  %i.bx = icmp eq i16 %.fr404, 48
  %spec.select330 = and i1 %.0116, %i.bx
  %i.by = trunc nuw i8 %.2125 to i1
  %i.bz = add nsw i32 %.2130, 4
  %spec.select151 = select i1 %i.by, i32 %.2130, i32 %i.bz
  br label %bb.l, !llvm.loop !77

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289: ; preds = %switch.early.test353, %_ZN17double_conversionL7isDigitEii.exit.thread.i184, %.split291, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190
  %.promoted.i206 = phi ptr [ %i.bv, %switch.early.test353 ], [ %i.bg, %_ZN17double_conversionL7isDigitEii.exit.thread.i184 ], [ %i.be, %.split291 ], [ %i.bo, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190 ] ; 3 uses
  %.not6.not.i207 = icmp eq ptr %.promoted.i206, %1
  %i.ca = or i1 %5, %.not6.not.i207
  %or.cond524 = or i1 %i.ca, %4
  br i1 %or.cond524, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213, label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289, %bb.s
  %i.cb = phi ptr [ %i.cf, %bb.s ], [ %.promoted.i206, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 ] ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !41
  %i.cd = zext i16 %i.cc to i32
  %i.ce = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.cd)
  br i1 %i.ce, label %bb.s, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.thread313

bb.s:                                             ; preds = %.lr.ph.i208
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 4 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !40
  %.not.not.i212 = icmp eq ptr %i.cf, %1
  br i1 %.not.not.i212, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213, label %.lr.ph.i208, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213: ; preds = %bb.s, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289
  %i.cg = phi ptr [ %.promoted.i206, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit190.thread289 ], [ %i.cf, %bb.s ]
  %i.ch = add nsw i32 %.0117.lcssa, -1
  %i.ci = shl nuw i32 1, %i.ch                    ; 2 uses
  %i.cj = icmp sgt i32 %i.az, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213
  %9 = icmp ne i32 %i.az, %i.ci
  %10 = trunc i64 %i.bb to i1
  %11 = xor i1 %10, true
  %or.cond3 = select i1 %11, i1 %.0116, i1 false
  %or.cond153 = select i1 %9, i1 true, i1 %or.cond3
  %not.or.cond153 = xor i1 %or.cond153, true
  %12 = zext i1 %not.or.cond153 to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213, %bb.t
  %.sink527 = phi i64 [ %12, %bb.t ], [ 1, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit213 ]
  %spec.select155 = add nsw i64 %i.bb, %.sink527  ; 2 uses
  %i.ck = shl nuw nsw i64 1, %i.k
  %i.cl = and i64 %spec.select155, %i.ck
  %.not148 = icmp ne i64 %i.cl, 0                 ; 2 uses
  %i.cm = zext i1 %.not148 to i64
  %.2136 = ashr i64 %spec.select155, %i.cm
  %i.cn = zext i1 %.not148 to i32
  %.4132 = add nsw i32 %.2130, %i.cn
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread

bb.v:                                             ; preds = %bb.k
  br i1 %i.j, label %.split301, label %bb.w

.split301:                                        ; preds = %bb.v
  %i.co = getelementptr i8, ptr %.promoted392, i64 2 ; 4 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !40
  %i.cp = icmp eq ptr %i.co, %1
  br i1 %i.cp, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177

bb.w:                                             ; preds = %bb.v
  %i.cq = icmp samesign ugt i16 %i.z, 96
  %or.cond331 = or i1 %i.cq, %i.ac
  %i.cr = add nsw i16 %i.z, -65
  %or.cond.i217 = icmp ult i16 %i.cr, 6
  %or.cond342 = select i1 %or.cond331, i1 true, i1 %or.cond.i217
  %i.cs = getelementptr i8, ptr %.promoted392, i64 2 ; 9 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !40
  %i.ct = icmp eq ptr %i.cs, %1                   ; 2 uses
  br i1 %or.cond342, label %_ZN17double_conversionL7isDigitEii.exit.thread.i220, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226

_ZN17double_conversionL7isDigitEii.exit.thread.i220: ; preds = %bb.w
  br i1 %i.ct, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i220
  %i.cu = getelementptr inbounds nuw i8, ptr %.promoted392, i64 4 ; 15 uses
  %i.cv = icmp eq ptr %i.cu, %1
  br i1 %i.cv, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = load i16, ptr %i.cs, align 2, !tbaa !41
  %i.cx = icmp eq i16 %i.cw, %3
  br i1 %i.cx, label %bb.z, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177

bb.z:                                             ; preds = %bb.y
  %i.cy = load i16, ptr %i.cu, align 2, !tbaa !41
  %.fr405 = freeze i16 %i.cy                      ; 2 uses
  %i.cz = add i16 %.fr405, -48
  %or.cond19.i26.i222 = icmp ult i16 %i.cz, 10
  br i1 %or.cond19.i26.i222, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split, label %switch.early.test354

switch.early.test354:                             ; preds = %bb.z
  switch i16 %.fr405, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177 [
    i16 102, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 101, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 100, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 99, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 98, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 97, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 70, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 69, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 68, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 67, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 66, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
    i16 65, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split
  ]

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226: ; preds = %bb.w
  br i1 %i.ct, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split: ; preds = %bb.z, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %switch.early.test354, %bb.i
  %.sink528 = phi ptr [ %i.af, %bb.i ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %switch.early.test354 ], [ %i.cu, %bb.z ] ; 2 uses
  %.5139.ph526 = phi i64 [ %.0134, %bb.i ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %bb.z ]
  %.7.ph527 = phi i32 [ %.0128, %bb.i ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %bb.z ]
  %.5.ph = phi i8 [ 1, %bb.i ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %switch.early.test354 ], [ %.0123, %bb.z ]
  store ptr %.sink528, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split, %switch.early.test354, %bb.y, %bb.x, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226, %.split301
  %i.da = phi ptr [ %i.cs, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ], [ %i.cs, %switch.early.test354 ], [ %i.cs, %bb.y ], [ %i.co, %.split301 ], [ %i.cs, %bb.x ], [ %.sink528, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split ] ; 2 uses
  %.5139 = phi i64 [ %i.aq, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ], [ %i.aq, %switch.early.test354 ], [ %i.aq, %bb.y ], [ %i.aq, %.split301 ], [ %i.aq, %bb.x ], [ %.5139.ph526, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split ]
  %.7 = phi i32 [ %spec.select150, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ], [ %spec.select150, %switch.early.test354 ], [ %spec.select150, %bb.y ], [ %spec.select150, %.split301 ], [ %spec.select150, %bb.x ], [ %.7.ph527, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split ]
  %.5 = phi i8 [ %.0123, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ], [ %.0123, %switch.early.test354 ], [ %.0123, %bb.y ], [ %.0123, %.split301 ], [ %.0123, %bb.x ], [ %.5.ph, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit177.sink.split ]
  %.pre = load i16, ptr %i.da, align 2, !tbaa !41
  br label %bb.e

.thread319:                                       ; preds = %bb.h, %bb.h
  store i8 0, ptr %8, align 1, !tbaa !37
  br label %bb.aa

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226, %.split301, %_ZN17double_conversionL7isDigitEii.exit.thread.i220, %bb.j, %.critedge, %bb.u
  %i.db = phi ptr [ %.promoted392, %.critedge ], [ %i.ak, %bb.j ], [ %i.cg, %bb.u ], [ %i.co, %.split301 ], [ %i.cs, %_ZN17double_conversionL7isDigitEii.exit.thread.i220 ], [ %i.cs, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ]
  %.5139.ph = phi i64 [ %.0134, %.critedge ], [ %.0134, %bb.j ], [ %.2136, %bb.u ], [ %i.aq, %_ZN17double_conversionL7isDigitEii.exit.thread.i220 ], [ %i.aq, %.split301 ], [ %i.aq, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ] ; 2 uses
  %.7.ph = phi i32 [ %.0128, %.critedge ], [ %.0128, %bb.j ], [ %.4132, %bb.u ], [ %spec.select150, %_ZN17double_conversionL7isDigitEii.exit.thread.i220 ], [ %spec.select150, %.split301 ], [ %spec.select150, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit226 ] ; 2 uses
  store i8 0, ptr %8, align 1, !tbaa !37
  br i1 %4, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %.thread319, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread
  %i.dc = phi ptr [ %.promoted392, %.thread319 ], [ %i.db, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread ] ; 5 uses
  %.7.ph324 = phi i32 [ %.0128, %.thread319 ], [ %.7.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread ]
  %.5139.ph323 = phi i64 [ %.0134, %.thread319 ], [ %.5139.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit.thread ]
  br i1 %i.j, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.de = load i16, ptr %i.dc, align 2, !tbaa !41
  %.fr406 = freeze i16 %i.de                      ; 2 uses
  %i.df = add i16 %.fr406, -48
  %or.cond19.i.i228 = icmp ult i16 %i.df, 10
  br i1 %or.cond19.i.i228, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233, label %switch.early.test355

switch.early.test355:                             ; preds = %bb.ac
  switch i16 %.fr406, label %_ZN17double_conversionL7isDigitEii.exit.thread1.i231 [
    i16 102, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 101, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 100, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 99, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 98, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 97, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 70, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 69, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 68, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 67, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 66, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
    i16 65, label %_ZN17double_conversionL7isDigitEii.exit.thread.i233
  ]

_ZN17double_conversionL7isDigitEii.exit.thread1.i231: ; preds = %switch.early.test355
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split

_ZN17double_conversionL7isDigitEii.exit.thread.i233: ; preds = %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %switch.early.test355, %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 7 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !40
  %i.di = icmp eq ptr %i.dh, %1
  br i1 %i.di, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split, label %bb.ad

bb.ad:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i233
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 15 uses
  %i.dk = icmp eq ptr %i.dj, %1
  br i1 %i.dk, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load i16, ptr %i.dh, align 2, !tbaa !41 ; 2 uses
  %i.dm = icmp eq i16 %i.dl, %3
  br i1 %i.dm, label %bb.af, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i16, ptr %i.dj, align 2, !tbaa !41
  %.fr407 = freeze i16 %i.dn                      ; 2 uses
  %i.do = add i16 %.fr407, -48
  %or.cond19.i26.i235 = icmp ult i16 %i.do, 10
  br i1 %or.cond19.i26.i235, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split, label %switch.early.test356

switch.early.test356:                             ; preds = %bb.af
  switch i16 %.fr407, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split [
    i16 102, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 101, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 100, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 99, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 98, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 97, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 70, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 69, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 68, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 67, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 66, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
    i16 65, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split
  ]

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split: ; preds = %bb.af, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %bb.ab, %_ZN17double_conversionL7isDigitEii.exit.thread1.i231
  %.sink529 = phi ptr [ %i.dd, %bb.ab ], [ %i.dg, %_ZN17double_conversionL7isDigitEii.exit.thread1.i231 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %switch.early.test356 ], [ %i.dj, %bb.af ] ; 2 uses
  store ptr %.sink529, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split, %bb.ad, %_ZN17double_conversionL7isDigitEii.exit.thread.i233, %switch.early.test356
  %.ph485 = phi ptr [ %i.dh, %switch.early.test356 ], [ %i.dh, %bb.ad ], [ %i.dh, %_ZN17double_conversionL7isDigitEii.exit.thread.i233 ], [ %.sink529, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split.sink.split ] ; 2 uses
  %.pr486 = load i16, ptr %.ph485, align 2, !tbaa !41
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split, %bb.ae
  %i.dp = phi i16 [ %.pr486, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split ], [ %i.dl, %bb.ae ]
  %i.dq = phi ptr [ %.ph485, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239thread-pre-split ], [ %i.dh, %bb.ae ] ; 2 uses
  switch i16 %i.dp, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252 [
    i16 43, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split
    i16 45, label %bb.ag
  ]

bb.ag:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239, %bb.ag
  %.0115.ph = phi i1 [ true, %bb.ag ], [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2 ; 2 uses
  store ptr %i.dr, ptr %0, align 8, !tbaa !40
  br label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252: ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239
  %.promoted393 = phi ptr [ %i.dq, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239 ], [ %i.dr, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split ] ; 2 uses
  %.0115 = phi i1 [ false, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit239 ], [ %.0115.ph, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit252.sink.split ]
  %i.ds = load i16, ptr %.promoted393, align 2, !tbaa !41 ; 2 uses
  %i.dt = add i16 %i.ds, -48
  %or.cond.i266394 = icmp ult i16 %i.dt, 10
  br i1 %or.cond.i266394, label %.lr.ph396, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit279.thread
end_hunk_2
