inline.NumInlined: 4099
inline.NumDeleted: 1620
begin_hunk_0_@_ZN2v88internal8baseline16BaselineCompilerC2EPNS0_12LocalIsolateENS0_6HandleINS0_18SharedFunctionInfoEEENS5_INS0_13BytecodeArrayEEE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #16, !inline_history !17
  br label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.j, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr %.sroa.0.0.copyload, i32 noundef 0) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 7
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, 32                      ; 2 uses
  %i.ao = icmp ult i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17
  unreachable

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit
  %i.ap = shl nuw nsw i64 %i.an, 3                ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = sub i64 %i.ar, %i.at
  %i.av = icmp ugt i64 %i.ap, %i.au
  br i1 %i.av, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.ap) #16
  %.pre.i.i = load i64, ptr %i.as, align 8
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %i.ax = phi i64 [ %.pre.i.i, %bb.d ], [ %i.at, %bb.c ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = add i64 %i.ax, %i.ap                    ; 3 uses
  store i64 %i.az, ptr %i.as, align 8
  store ptr %i.ay, ptr %i.ah, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bb = load i64, ptr %i.aw, align 8
  %i.bc = add i64 %i.bb, 7
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8
  %sh.diff = lshr i64 %i.be, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32         ; 2 uses
  %i.bf = and i32 %tr.sh.diff, -2
  store i32 %i.bf, ptr %i.ba, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %i.bj = add nsw i32 %tr.sh.diff, 62
  %i.bk = ashr i32 %i.bj, 6                       ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.e, label %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit
  %i.bm = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3                ; 4 uses
  %i.bo = load i64, ptr %i.aq, align 8
  %i.bp = sub i64 %i.bo, %i.az
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.f, label %.lr.ph.i.i.i.i.i, !prof !19

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.bn) #16
  %.pre.i.i.i = load i64, ptr %i.as, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.e
  %i.br = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.az, %bb.e ] ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bt = add i64 %i.br, %i.bn
  store i64 %i.bt, ptr %i.as, align 8
  store ptr %i.bs, ptr %i.bg, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bn, i1 false)
  %i.bu = load ptr, ptr %i.bg, align 8            ; 2 uses
  store ptr %i.bu, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bm
  store ptr %i.bv, ptr %i.bi, align 8
  %.pre25 = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit

_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit:    ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit, %.lr.ph.i.i.i.i.i
  %i.bw = phi ptr [ %i.aw, %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit ], [ %.pre25, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  store i64 %i.bx, ptr %6, align 8
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i64, ptr %i.bz monotonic, align 8
  %i.cb = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %i.ca) #16
  %i.cc = sdiv i32 %i.cb, 4
  %i.cd = add nsw i32 %i.cc, 16
  %i.ce = sext i32 %i.cd to i64
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ce, i64 1)
  %i.cf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.cg = sub nuw nsw i64 64, %i.cf
  %i.ch = shl nuw i64 1, %i.cg                    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cj = icmp eq i64 %i.cf, 1
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #17
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.ch
  br i1 %i.cq, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %_ZN2v88internal8baseline26BytecodeOffsetTableBuilder7ReserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.co                    ; 3 uses
  %i.cv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #18 ; 4 uses
  %i.cw = icmp sgt i64 %i.cu, 0
  br i1 %i.cw, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cm, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cp) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.cv, ptr %i.ci, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store ptr %i.cx, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ch
  store ptr %i.cy, ptr %i.ck, align 8
  br label %_ZN2v88internal8baseline26BytecodeOffsetTableBuilder7ReserveEm.exit

_ZN2v88internal8baseline26BytecodeOffsetTableBuilder7ReserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal11interpreter21BytecodeArrayIteratorC1ENS0_6HandleINS0_13BytecodeArrayEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler12GenerateCodeEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.690, align 8            ; 4 uses
  %2 = alloca %class.anon.690, align 8            ; 4 uses
  %3 = alloca %"class.v8::internal::HandlerTable", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.c) #16
  %i.d = call noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not20 = icmp ult ptr %i.j, %i.k
  br i1 %.not20, label %.lr.ph21, label %._crit_edge

.lr.ph21:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 596
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %i.p = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.019) #16 ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = and i32 %i.q, 62
  %i.s = or disjoint i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = icmp sgt i32 %i.p, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = lshr i32 %i.p, 5
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.u, %i.aa
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = add nuw nsw i32 %.019, 1                ; 2 uses
  %i.ad = call noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.b, label %.preheader, !llvm.loop !20

bb.c:                                             ; preds = %.lr.ph21, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.af = phi ptr [ %i.k, %.lr.ph21 ], [ %i.be, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %i.ag = phi ptr [ %i.j, %.lr.ph21 ], [ %i.bu, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %cond.i = icmp eq i8 %i.ah, -107
  br i1 %cond.i, label %bb.d, label %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #16 ; 4 uses
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.al = icmp sgt i32 %i.ai, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = lshr i32 %i.ai, 5
  %i.an = zext nneg i32 %i.am to i64              ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i32 %i.aj, 62                       ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 1, %i.ar                ; 2 uses
  %i.at = and i64 %i.as, %i.ap
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i

bb.e:                                             ; preds = %bb.d
  %4 = load ptr, ptr %i.m, align 8
  %i.au = zext nneg i32 %i.ai to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = or i64 %i.as, %i.ap
  store i64 %i.aw, ptr %i.ao, align 8
  store i64 0, ptr %i.av, align 4
  %.pre.i = load ptr, ptr %i.l, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.an
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i

_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i: ; preds = %bb.e, %bb.d
  %i.ax = phi i64 [ %i.ap, %bb.d ], [ %.pre1.i, %bb.e ]
  %i.ay = phi ptr [ %i.ak, %bb.d ], [ %.pre.i, %bb.e ]
  %i.az = or disjoint i32 %i.aq, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.an
  %i.bd = or i64 %i.ax, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %.pre28 = load i8, ptr %.pre, align 1
  %.pre29 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit

_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit: ; preds = %bb.c, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i
  %i.be = phi ptr [ %i.af, %bb.c ], [ %.pre29, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ] ; 3 uses
  %i.bf = phi i8 [ %i.ah, %bb.c ], [ %.pre28, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ]
  %i.bg = phi ptr [ %i.ag, %bb.c ], [ %.pre, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ]
  %i.bh = load i8, ptr %i.n, align 8
  %i.bi = lshr i8 %i.bh, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.bj
  %i.bl = zext i8 %i.bf to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bo ; 6 uses
  store ptr %i.bp, ptr %i.h, align 8
  %.not.i.i3 = icmp ult ptr %i.bp, %i.be
  br i1 %.not.i.i3, label %bb.f, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

bb.f:                                             ; preds = %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %switch.selectcmp.i.i.i = icmp ult i8 %i.bq, 4
  br i1 %switch.selectcmp.i.i.i, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.br = shl nuw nsw i8 %i.bq, 3
  %switch.shiftamt = zext nneg i8 %i.br to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.n, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.bs, ptr %i.h, align 8
  br label %.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.n, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %switch.lookup
  %i.bt = phi ptr [ %i.bs, %switch.lookup ], [ %i.bp, %bb.g ]
  %.sink.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.g ]
  store i32 %.sink.i.i, ptr %i.o, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit: ; preds = %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit, %.sink.split.i.i
  %i.bu = phi ptr [ %i.bp, %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit ], [ %i.bt, %.sink.split.i.i ] ; 2 uses
  %.not = icmp ult ptr %i.bu, %i.be
  br i1 %.not, label %bb.c, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %.preheader
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  call void @_ZN2v88internal14MacroAssembler9CodeEntryEv(ptr noundef nonnull align 8 dereferenceable(436) %i.bw) #16
  %i.bx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = add i64 %i.by, 47
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = add i64 %i.by, 53
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = zext i16 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 3
  %i.ch = add nsw i32 %i.cg, %i.cb
  %i.ci = load ptr, ptr %i.bv, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.ci, i8 6, i8 6) #16
  %i.cj = load ptr, ptr %i.bv, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.cj, i8 7, i8 7) #16
  call void @_ZN2v88internal8baseline6detail21ArgumentSettingHelperINS0_35BaselineOutOfLinePrologueDescriptorELi2ELb1EJNS0_8RegisterEiS5_NS0_6HandleINS0_13BytecodeArrayEEEEE3SetEPNS1_17BaselineAssemblerES5_iS5_S8_(ptr noundef nonnull %i.bv, i8 0, i32 noundef %i.ch, i8 2, ptr nonnull %i.bx)
  %i.ck = load ptr, ptr %i.bv, align 8
  call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %i.ck, i32 noundef 96) #16
  call void @_ZN2v88internal8baseline16BaselineCompiler17PrologueFillFrameEv(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.cm = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %sext.i = shl i64 %i.ct, 32
  %i.cu = ashr exact i64 %sext.i, 32
  %i.cv = load i64, ptr %i.cl, align 8
  %i.cw = sub i64 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.cy = trunc i64 %i.cw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.cx, ptr %2, align 8
  call void @_ZN2v84base17VLQEncodeUnsignedIZNS0_17VLQEncodeUnsignedISaIhEEEvPSt6vectorIhT_EjEUlhE_EEvOS5_j(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  store i64 %i.cu, ptr %i.cl, align 8
  %i.cz = load ptr, ptr %i.h, align 8
  %i.da = load ptr, ptr %i.i, align 8
  %.not1324 = icmp ult ptr %i.cz, %i.da
  br i1 %.not1324, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 596
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph26, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit12
  call void @_ZN2v88internal8baseline16BaselineCompiler19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.dd = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %sext.i4 = shl i64 %i.dk, 32
  %i.dl = ashr exact i64 %sext.i4, 32
  %i.dm = load i64, ptr %i.cl, align 8
  %i.dn = sub i64 %i.dk, %i.dm
  %i.do = trunc i64 %i.dn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.cx, ptr %1, align 8
  call void @_ZN2v84base17VLQEncodeUnsignedIZNS0_17VLQEncodeUnsignedISaIhEEEvPSt6vectorIhT_EjEUlhE_EEvOS5_j(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store i64 %i.dl, ptr %i.cl, align 8
  %i.dp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = load i8, ptr %i.db, align 8
  %i.ds = lshr i8 %i.dr, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.dt
  %i.dv = zext i8 %i.dq to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dy ; 5 uses
  store ptr %i.dz, ptr %i.h, align 8
  %i.ea = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i.i5 = icmp ult ptr %i.dz, %i.ea
  br i1 %.not.i.i5, label %bb.i, label %._crit_edge27

bb.i:                                             ; preds = %bb.h
  %i.eb = load i8, ptr %i.dz, align 1             ; 2 uses
  %switch.selectcmp.i.i.i6 = icmp ult i8 %i.eb, 4
  br i1 %switch.selectcmp.i.i.i6, label %switch.lookup42, label %bb.j

switch.lookup42:                                  ; preds = %bb.i
  %i.ec = shl nuw nsw i8 %i.eb, 3
  %switch.shiftamt44 = zext nneg i8 %i.ec to i32
  %switch.downshift45 = lshr i32 67240962, %switch.shiftamt44
  %switch.masked46 = trunc i32 %switch.downshift45 to i8
  store i8 %switch.masked46, ptr %i.db, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  store ptr %i.ed, ptr %i.h, align 8
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit12

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.db, align 8
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit12

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit12: ; preds = %switch.lookup42, %bb.j
  %i.ee = phi ptr [ %i.ed, %switch.lookup42 ], [ %i.dz, %bb.j ]
  %.sink.i.i8 = phi i32 [ 1, %switch.lookup42 ], [ 0, %bb.j ]
  store i32 %.sink.i.i8, ptr %i.dc, align 4
  %i.ef = icmp ult ptr %i.ee, %i.ea
  br i1 %i.ef, label %bb.h, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %bb.h, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit12, %._crit_edge
  ret void
}

declare void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16), i64) unnamed_addr #2

declare noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i8, ptr %i.b, align 1
  %cond = icmp eq i8 %i.c, -107
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #16 ; 4 uses
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp sgt i32 %i.e, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = lshr i32 %i.e, 5
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i32 %i.f, 62                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = and i64 %i.p, %i.m
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %2 = load ptr, ptr %1, align 8
  %i.r = zext nneg i32 %i.e to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %i.t = or i64 %i.p, %i.m
  store i64 %i.t, ptr %i.l, align 8
  store i64 0, ptr %i.s, align 4
  %.pre = load ptr, ptr %i.g, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.k
  %.pre1 = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit

_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit: ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.m, %bb.b ], [ %.pre1, %bb.c ]
  %i.v = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ]
  %i.w = or disjoint i32 %i.n, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw i64 1, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.k
  %i.aa = or i64 %i.u, %i.y
  store i64 %i.aa, ptr %i.z, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit
  ret void
}

declare void @_ZN2v88internal11interpreter21BytecodeArrayIterator5ResetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler11AddPositionEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.690, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %sext = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = load i64, ptr %i.a, align 8
  %i.m = sub i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.o = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.n, ptr %1, align 8
  call void @_ZN2v84base17VLQEncodeUnsignedIZNS0_17VLQEncodeUnsignedISaIhEEEvPSt6vectorIhT_EjEUlhE_EEvOS5_j(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  store i64 %i.k, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %i.f, %i.i
  %i.k = sub i64 %i.e, %i.j                       ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.l, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = lshr i64 %i.k, 5
  %i.r = and i64 %i.q, 67108863                   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.m, 62                         ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 1, %i.v
  %i.x = and i64 %i.w, %i.t
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = and i64 %i.k, 2147483647
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.y, align 8
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.ad, ptr noundef %i.ac) #16
  %.pre = load ptr, ptr %i.n, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.r
  %.pre7 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i64 [ %.pre7, %bb.b ], [ %i.t, %bb.a ]
  %i.af = or disjoint i32 %i.u, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ae, %i.ah
  %.not4 = icmp eq i64 %i.ai, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408) %i.ak) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = load i8, ptr %i.al, align 1
  switch i8 %i.am, label %bb.hj [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 10, label %bb.p
    i8 11, label %bb.q
    i8 12, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
    i8 16, label %bb.v
    i8 17, label %bb.w
    i8 18, label %bb.x
    i8 19, label %bb.y
    i8 20, label %bb.z
    i8 21, label %bb.aa
    i8 22, label %bb.ab
    i8 23, label %bb.ac
    i8 24, label %bb.ad
    i8 25, label %bb.ae
    i8 26, label %bb.af
    i8 27, label %bb.ag
    i8 28, label %bb.ah
    i8 29, label %bb.ai
    i8 30, label %bb.aj
    i8 31, label %bb.ak
    i8 32, label %bb.al
    i8 33, label %bb.am
    i8 34, label %bb.an
    i8 35, label %bb.ao
    i8 36, label %bb.ap
    i8 37, label %bb.aq
    i8 38, label %bb.ar
    i8 39, label %bb.as
    i8 40, label %bb.at
    i8 41, label %bb.au
    i8 42, label %bb.av
    i8 43, label %bb.aw
    i8 44, label %bb.ax
    i8 45, label %bb.ay
    i8 46, label %bb.az
    i8 47, label %bb.ba
    i8 48, label %bb.bb
    i8 49, label %bb.bc
    i8 50, label %bb.bd
    i8 51, label %bb.be
    i8 52, label %bb.bf
    i8 53, label %bb.bg
    i8 54, label %bb.bh
    i8 55, label %bb.bi
    i8 56, label %bb.bj
    i8 57, label %bb.bk
    i8 58, label %bb.bl
    i8 59, label %bb.bm
    i8 60, label %bb.bn
    i8 61, label %bb.bo
    i8 62, label %bb.bp
    i8 63, label %bb.bq
    i8 64, label %bb.br
    i8 65, label %bb.bs
    i8 66, label %bb.bt
    i8 67, label %bb.bu
    i8 68, label %bb.bv
    i8 69, label %bb.bw
    i8 70, label %bb.bx
    i8 71, label %bb.by
    i8 72, label %bb.bz
    i8 73, label %bb.ca
    i8 74, label %bb.cb
    i8 75, label %bb.cc
    i8 76, label %bb.cd
    i8 77, label %bb.ce
    i8 78, label %bb.cf
    i8 79, label %bb.cg
    i8 80, label %bb.ch
    i8 81, label %bb.ci
    i8 82, label %bb.cj
    i8 83, label %bb.ck
    i8 84, label %bb.cl
end_hunk_0
