inline.NumInlined: 437
inline.NumDeleted: 120
begin_hunk_0_@_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_:bb.a
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandES4_EEEbPjDpT_.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = icmp ult i64 %i.ag, 211
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = trunc nuw i64 %i.ag to i8
  %i.am = add nuw i8 %i.al, 45
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = add i64 %i.au, 1
  %i.ax = sub i64 %i.aw, %i.av
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.ax)
  %.pre.i.i.i = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i

_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i: ; preds = %bb.k, %bb.j
  %i.ay = phi ptr [ %i.ao, %bb.j ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.an, align 8
  store i8 %i.am, ptr %i.ay, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ba = trunc i64 %i.ag to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = add i64 %i.bi, 1
  %i.bl = sub i64 %i.bk, %i.bj
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.bl)
  %.pre.i.i.i.i = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i: ; preds = %bb.m, %bb.l
  %i.bm = phi ptr [ %i.bc, %bb.l ], [ %.pre.i.i.i.i, %bb.m ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %i.bb, align 8
  store i8 44, ptr %i.bm, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %i.ba, ptr noundef nonnull align 8 dereferenceable(133) %0)
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i, %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i
  store i64 0, ptr %i.af, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit

_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandES4_EEEbPjDpT_.exit.thread, %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_.exit, label %bb.o, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = add i64 %i.bv, 1
  %i.by = sub i64 %i.bx, %i.bw
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.by)
  %.pre.i.i.i12 = load ptr, ptr %i.bo, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_.exit

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_.exit: ; preds = %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit, %bb.o
  %i.bz = phi ptr [ %i.bp, %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit ], [ %.pre.i.i.i12, %bb.o ] ; 2 uses
  %i.ca = trunc nuw nsw i32 %1 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.cb, ptr %i.bo, align 8
  store i8 %i.ca, ptr %i.bz, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_113SignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %2, ptr noundef nonnull align 8 dereferenceable(133) %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %3, ptr noundef nonnull align 8 dereferenceable(133) %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %4, ptr noundef nonnull align 8 dereferenceable(133) %0)
  %i.cc = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandESC_EEERS3_DpOT_.exit, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 28
  %i.cq = add nsw i64 %i.cp, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef %i.cq)
  %.pre.i = load ptr, ptr %i.ce, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandESC_EEERS3_DpOT_.exit

_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandESC_EEERS3_DpOT_.exit: ; preds = %bb.p, %bb.q
  %i.cr = phi ptr [ %i.cf, %bb.p ], [ %.pre.i, %bb.q ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  store ptr %i.cs, ptr %i.ce, align 8
  store i32 %1, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %2, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %3, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %4, ptr %i.cv, align 4
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.i, i8 0, i64 12, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandES5_EEEvNS0_17TranslationOpcodeEDpT_.exit, %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandESC_EEERS3_DpOT_.exit, %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder39BeginJavaScriptBuiltinContinuationFrameENS0_14BytecodeOffsetEij(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandES4_NS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 2, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder48BeginJavaScriptBuiltinContinuationWithCatchFrameENS0_14BytecodeOffsetEij(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandES4_NS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 3, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder29BeginConstructCreateStubFrameEij(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder30AddRawToContentsForCompressionIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 4, i32 %1, i32 %2)
  br label %_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 28
  %i.p = icmp ult i64 %i.g, %i.o
  br i1 %i.p, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [28 x i8], ptr %i.k, i64 %i.g ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %3, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i

3:                                                ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.i, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i

_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.i: ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, %2
  br i1 %i.v, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.p

_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.i, %3, %bb.e, %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 5 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %i.aa, 211
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = trunc nuw i64 %i.aa to i8
  %i.ag = add nuw i8 %i.af, 45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %i.ao, 1
  %i.ar = sub i64 %i.aq, %i.ap
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.ar)
  %.pre.i.i.i.i = load ptr, ptr %i.ah, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i

_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i: ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %i.ai, %bb.h ], [ %.pre.i.i.i.i, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ah, align 8
  store i8 %i.ag, ptr %i.as, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.au = trunc i64 %i.aa to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = add i64 %i.bc, 1
  %i.bf = sub i64 %i.be, %i.bd
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.bf)
  %.pre.i.i.i.i.i = load ptr, ptr %i.av, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bg = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.av, align 8
  store i8 44, ptr %i.bg, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %i.au, ptr noundef nonnull align 8 dereferenceable(133) %0)
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i, %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i
  store i64 0, ptr %i.z, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i

_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i: ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandENS1_15UnsignedOperandEEEEbPjDpT_.exit.thread.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = add i64 %i.bp, 1
  %i.bs = sub i64 %i.br, %i.bq
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.bs)
  %.pre.i.i.i8.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i: ; preds = %bb.m, %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i
  %i.bt = phi ptr [ %i.bj, %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i ], [ %.pre.i.i.i8.i, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bi, align 8
  store i8 4, ptr %i.bt, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_113SignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %1, ptr noundef nonnull align 8 dereferenceable(133) %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %2, ptr noundef nonnull align 8 dereferenceable(133) %0)
  %i.bv = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ult ptr %i.by, %i.ca
  br i1 %i.cb, label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandEEEERS3_DpOT_.exit.i, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 28
  %i.cj = add nsw i64 %i.ci, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 noundef %i.cj)
  %.pre.i.i = load ptr, ptr %i.bx, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandEEEERS3_DpOT_.exit.i

_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandEEEERS3_DpOT_.exit.i: ; preds = %bb.o, %bb.n
  %i.ck = phi ptr [ %i.by, %bb.n ], [ %.pre.i.i, %bb.o ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store ptr %i.cl, ptr %i.bx, align 8
  store i32 4, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %2, ptr %i.cn, align 4
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i.i, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandERNS8_15UnsignedOperandEEEERS3_DpOT_.exit.i, %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit

_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandENS3_15UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit: ; preds = %bb.b, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder29BeginConstructInvokeStubFrameEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 5, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef range(i32 5, 43) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder30AddRawToContentsForCompressionIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1, i32 %2)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 28
  %i.p = icmp ult i64 %i.g, %i.o
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [28 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %1, %i.r
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.val = load i32, ptr %i.t, align 4
  %i.u = icmp eq i32 %.val, %2
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal23FrameTranslationBuilder29StoreUnsignedBigInt64RegisterENS0_8RegisterE:bb.a
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 35, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder19StoreUint32RegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 41, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder17StoreBoolRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 16, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder18StoreFloatRegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 27, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder19StoreDoubleRegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 20, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder24StoreHoleyDoubleRegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 23, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder20StoreSimd128RegisterENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(133) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %1 to i32
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_120SmallUnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 25, i32 %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder14StoreStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 40, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder19StoreInt32StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 30, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder20StoreIntPtrStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 32, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder19StoreInt64StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 32, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder28StoreSignedBigInt64StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 34, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder30StoreUnsignedBigInt64StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 36, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder20StoreUint32StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 42, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder18StoreBoolStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 17, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder19StoreFloatStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 28, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder20StoreDoubleStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 21, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder21StoreSimd128StackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 22, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder25StoreHoleyDoubleStackSlotEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 24, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder12StoreLiteralEi(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 38, i32 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder17StoreOptimizedOutEv(ptr noundef nonnull align 8 dereferenceable(133) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal23FrameTranslationBuilder3AddIJEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 37)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder17AddUpdateFeedbackEii(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 673), align 1, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder30AddRawToContentsForCompressionIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 43, i32 %1, i32 %2)
  br label %_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 28
  %i.p = icmp ult i64 %i.g, %i.o
  br i1 %i.p, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [28 x i8], ptr %i.k, i64 %i.g ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 43
  br i1 %i.s, label %3, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i

3:                                                ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.i, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i

_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.i: ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, %2
  br i1 %i.v, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.p

_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.i, %3, %bb.e, %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 5 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %i.aa, 211
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = trunc nuw i64 %i.aa to i8
  %i.ag = add nuw i8 %i.af, 45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %i.ao, 1
  %i.ar = sub i64 %i.aq, %i.ap
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.ar)
  %.pre.i.i.i.i = load ptr, ptr %i.ah, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i

_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i: ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %i.ai, %bb.h ], [ %.pre.i.i.i.i, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ah, align 8
  store i8 %i.ag, ptr %i.as, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.au = trunc i64 %i.aa to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = add i64 %i.bc, 1
  %i.bf = sub i64 %i.be, %i.bd
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.bf)
  %.pre.i.i.i.i.i = load ptr, ptr %i.av, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bg = phi ptr [ %i.aw, %bb.j ], [ %.pre.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.av, align 8
  store i8 44, ptr %i.bg, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_115UnsignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %i.au, ptr noundef nonnull align 8 dereferenceable(133) %0)
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_115UnsignedOperandEEEEvNS0_17TranslationOpcodeEDpT_.exit.i.i, %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit.i.i
  store i64 0, ptr %i.z, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i

_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i: ; preds = %bb.l, %_ZN2v88internal12_GLOBAL__N_113OperandsEqualIJNS1_13SignedOperandES3_EEEbPjDpT_.exit.thread.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = add i64 %i.bp, 1
  %i.bs = sub i64 %i.br, %i.bq
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(133) %0, i64 noundef %i.bs)
  %.pre.i.i.i8.i = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit.i

_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit.i: ; preds = %bb.m, %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i
  %i.bt = phi ptr [ %i.bj, %_ZN2v88internal23FrameTranslationBuilder32FinishPendingInstructionIfNeededEv.exit.i ], [ %.pre.i.i.i8.i, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.bi, align 8
  store i8 43, ptr %i.bt, align 1
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_113SignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %1, ptr noundef nonnull align 8 dereferenceable(133) %0)
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_113SignedOperand8WriteVLQEPNS0_10ZoneVectorIhEE(i32 %2, ptr noundef nonnull align 8 dereferenceable(133) %0)
  %i.bv = load i8, ptr %i.c, align 4, !range !6, !noundef !7
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ult ptr %i.by, %i.ca
  br i1 %i.cb, label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandESA_EEERS3_DpOT_.exit.i, label %bb.o, !prof !5

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 28
  %i.cj = add nsw i64 %i.ci, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 noundef %i.cj)
  %.pre.i.i = load ptr, ptr %i.bx, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandESA_EEERS3_DpOT_.exit.i

_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandESA_EEERS3_DpOT_.exit.i: ; preds = %bb.o, %bb.n
  %i.ck = phi ptr [ %i.by, %bb.n ], [ %.pre.i.i, %bb.o ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  store ptr %i.cl, ptr %i.bx, align 8
  store i32 43, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %2, ptr %i.cn, align 4
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i.i, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_23FrameTranslationBuilder11InstructionEE12emplace_backIJRNS0_17TranslationOpcodeERNS0_12_GLOBAL__N_113SignedOperandESA_EEERS3_DpOT_.exit.i, %_ZN2v88internal23FrameTranslationBuilder16AddRawToContentsIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit.i, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8
  br label %_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit

_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandES4_EEEvNS0_17TranslationOpcodeEDpT_.exit: ; preds = %bb.b, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23FrameTranslationBuilder20StoreJSFrameFunctionEv(ptr noundef nonnull align 8 dereferenceable(133) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal23FrameTranslationBuilder3AddIJNS0_12_GLOBAL__N_113SignedOperandEEEEvNS0_17TranslationOpcodeEDpT_(ptr noundef nonnull align 8 dereferenceable(133) %0, i32 noundef 40, i32 3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = shl i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq i64 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.o, 7
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #10
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhA_hEEPT_m.exit

end_hunk_1
