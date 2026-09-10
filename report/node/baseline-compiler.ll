Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/baseline-compiler?download=true
inline.NumInlined: 4099
inline.NumDeleted: 1620
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal8baseline16BaselineCompilerC2EPNS0_12LocalIsolateENS0_6HandleINS0_18SharedFunctionInfoEEENS5_INS0_13BytecodeArrayEEE:bb.a
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 7
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, 32                      ; 2 uses
  %i.ao = icmp ult i64 %i.an, 2305843009213693951
  br i1 %i.ao, label %bb.c, label %bb.b, !prof !10

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
  br i1 %i.av, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_5LabelEA_S3_EEPT_m.exit, !prof !11

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
  br i1 %i.bq, label %bb.f, label %.lr.ph.i.i.i.i.i, !prof !11

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
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.cj = icmp eq i64 %i.cf, 1
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #17
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal9BitVectorC2EiPNS0_4ZoneE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.ci, align 8
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.ch
  br i1 %i.cq, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, label %_ZN2v88internal8baseline26BytecodeOffsetTableBuilder7ReserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.co
  %i.cv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #18 ; 4 uses
  %i.cw = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cx = load ptr, ptr %i.cr, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cw, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.dc = load ptr, ptr %i.ck, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.de) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  store ptr %i.cv, ptr %i.ci, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store ptr %i.df, ptr %i.cr, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ch
  store ptr %i.dg, ptr %i.ck, align 8
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
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.b ] ; 2 uses
  %i.p = call noundef i32 @_ZNK2v88internal12HandlerTable15GetRangeHandlerEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.019) #16 ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 1
  %i.r = and i32 %i.q, 62
  %i.s = or disjoint i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = load ptr, ptr %i.f, align 8
  %4 = icmp sgt i32 %i.p, -1
  call void @llvm.assume(i1 %4)
  %i.w = lshr i32 %i.p, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = or i64 %i.u, %i.z
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = add nuw nsw i32 %.019, 1                ; 2 uses
  %i.ac = call noundef i32 @_ZNK2v88internal12HandlerTable20NumberOfRangeEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.b, label %.preheader, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph21, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  %i.ae = phi ptr [ %i.k, %.lr.ph21 ], [ %i.be, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ]
  %i.af = phi ptr [ %i.j, %.lr.ph21 ], [ %i.bu, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %cond.i = icmp eq i8 %i.ag, -107
  br i1 %cond.i, label %bb.d, label %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #16 ; 4 uses
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ak = icmp sgt i32 %i.ah, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = lshr i32 %i.ah, 5
  %i.am = zext nneg i32 %i.al to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i32 %i.ai, 62                       ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 1, %i.aq                ; 2 uses
  %i.as = and i64 %i.ar, %i.ao
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.m, align 8
  %i.au = zext nneg i32 %i.ah to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = or i64 %i.ar, %i.ao
  store i64 %i.aw, ptr %i.an, align 8
  store i64 0, ptr %i.av, align 4
  %.pre.i = load ptr, ptr %i.l, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.am
  %.pre1.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i

_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i: ; preds = %bb.e, %bb.d
  %i.ax = phi i64 [ %i.ao, %bb.d ], [ %.pre1.i, %bb.e ]
  %i.ay = phi ptr [ %i.aj, %bb.d ], [ %.pre.i, %bb.e ]
  %i.az = or disjoint i32 %i.ap, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.am
  %i.bd = or i64 %i.ax, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  %.pre28 = load i8, ptr %.pre, align 1
  %.pre29 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit

_ZN2v88internal8baseline16BaselineCompiler22PreVisitSingleBytecodeEv.exit: ; preds = %bb.c, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i
  %i.be = phi ptr [ %i.ae, %bb.c ], [ %.pre29, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ] ; 3 uses
  %i.bf = phi i8 [ %i.ag, %bb.c ], [ %.pre28, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ]
  %i.bg = phi ptr [ %i.af, %bb.c ], [ %.pre, %_ZN2v88internal8baseline16BaselineCompiler11EnsureLabelEiNS2_24MarkAsIndirectJumpTargetE.exit.i ]
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
  br i1 %.not, label %bb.c, label %._crit_edge, !llvm.loop !23

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
end_hunk_0
