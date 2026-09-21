Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 141
loop-unroll.NumUnrolled: 386
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder42FindContinuationForPolymorphicPropertyLoadEv:bb.a
  %.sroa.034.0.insert.ext = and i64 %i.ck, 4294967295
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.435.0.insert.shift, %.sroa.034.0.insert.ext
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit.thread

_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit.thread: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit.thread.sink.split, %bb.f, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit24, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit26, %bb.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.b, %bb.a
  %.sroa.041.1 = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.m ], [ undef, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit ], [ undef, %bb.f ], [ undef, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit26 ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit24 ], [ undef, %bb.j ], [ undef, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ], [ undef, %bb.i ], [ %.sroa.034.0.insert.insert, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit.thread.sink.split ]
  %.sroa.5.1 = phi i8 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit ], [ 0, %bb.f ], [ 0, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit26 ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit24 ], [ 0, %bb.j ], [ 0, %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit ], [ 0, %bb.i ], [ 1, %_ZN2v88internal6maglev18MaglevGraphBuilder32IsOffsetAMergePointOrLoopHeapderEi.exit.thread.sink.split ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.041.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.5.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !55, !noundef !56
  store i8 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit, %bb.a
  %i.h = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = load i32, ptr %i.e, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.k, %i.m
  %i.o = sub i64 %i.j, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %1, align 4
  %i.r = icmp sgt i32 %i.q, %i.p
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.h, align 1
  %i.t = load i8, ptr %i.f, align 8
  %i.u = lshr i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.v
  %i.x = zext i8 %i.s to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aa ; 4 uses
  store ptr %i.ab, ptr %i.c, align 8
  %i.ac = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.d, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.ab, align 1             ; 2 uses
  %switch.selectcmp.i.i.i = icmp ult i8 %i.ad, 4
  br i1 %switch.selectcmp.i.i.i, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.ae = shl nuw nsw i8 %i.ad, 3
  %switch.shiftamt = zext nneg i8 %i.ae to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.f, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.af, ptr %i.c, align 8
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e, %switch.lookup
  %.sink.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.e ]
  store i32 %.sink.i.i, ptr %i.e, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit: ; preds = %bb.c, %.sink.split.i.i
  %i.ag = tail call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(953) %0)
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.f, label %bb.b, !llvm.loop !20

bb.f:                                             ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 2, %bb.b ]
  store i8 %i.b, ptr %i.a, align 8
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(953) initializes((40, 44)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::HandlerTable", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::maglev::MaglevGraphBuilder::HandlerTableEntry", align 8 ; 6 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 103
  %i.m = load i8, ptr %i.l, align 1, !range !55, !noundef !56
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.critedge, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @_ZSt4cout, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i64 %i.y, %i.ab
  %i.ad = sub i64 %i.x, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ae) #33
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.147, i64 noundef 3) #33 ; 0 uses
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = load i32, ptr %i.z, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal11interpreter15BytecodeDecoder6DecodeERSoPKhb(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.al, i1 noundef zeroext true) #33 ; 0 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #33, !inline_history !2 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add i64 %i.au, %i.ax
  %i.az = sub i64 %i.at, %i.ay                    ; 6 uses
  %i.ba = trunc i64 %i.az to i32                  ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp ne i32 %i.bd, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp eq i32 %i.bg, %i.ba
  %or.cond.i = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN2v88internal6maglev18MaglevGraphBuilder31UpdateSourceAndBytecodePositionEi.exit

bb.d:                                             ; preds = %.critedge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 2147483646
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 31
  %i.br = or disjoint i64 %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.br, ptr %i.bs, align 8
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bi) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder31UpdateSourceAndBytecodePositionEi.exit

_ZN2v88internal6maglev18MaglevGraphBuilder31UpdateSourceAndBytecodePositionEi.exit: ; preds = %.critedge, %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %sext = shl i64 %i.az, 32
  %i.bv = ashr exact i64 %sext, 32                ; 6 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8            ; 6 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.ac, label %bb.e, !prof !52

bb.e:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder31UpdateSourceAndBytecodePositionEi.exit
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 59), align 1, !range !55, !noundef !56
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = icmp eq i32 %i.cb, 1
  %i.cd = select i1 %i.bz, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp sgt i32 %i.ba, -1
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = lshr i64 %i.az, 6
  %i.ci = and i64 %i.ch, 33554431
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = and i64 %i.az, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.ck, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cp = phi i1 [ false, %bb.e ], [ %i.co, %bb.f ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 4
  %.not75 = icmp eq i32 %i.cs, 0
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr null, ptr %i.ct, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not51 = icmp eq ptr %i.cv, null
  br i1 %.not51, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = load i32, ptr %i.cq, align 4
  %i.cx = and i32 %i.cw, 7
  %or.cond.not = icmp eq i32 %i.cx, 1
  br i1 %or.cond.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 131), align 1, !range !55, !noundef !56
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 76), align 4, !range !55
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 true, i1 %i.db
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.bv
  store ptr %i.df, ptr %i.e, align 8
  %i.dg = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_16CheckpointedJumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.bv
  store ptr %i.dj, ptr %i.f, align 8
  %i.dk = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.046 = phi ptr [ %i.dk, %bb.m ], [ %i.dg, %bb.l ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.bx, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(52) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef %.046) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.do = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !55, !noundef !56
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.p, label %.critedge54

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 103
  %i.du = load i8, ptr %i.dt, align 1, !range !55, !noundef !56
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.q, label %.critedge54, !prof !53

bb.q:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.dx = and i32 %i.dw, 2
  %spec.select.i.not = icmp eq i32 %i.dx, 0
  %i.dy = and i32 %i.dw, 3
  %i.dz = icmp eq i32 %i.dy, 1
  %i.ea = select i1 %i.dz, ptr @.str.150, ptr @.str.151
  %i.eb = select i1 %spec.select.i.not, ptr %i.ea, ptr @.str.149 ; 2 uses
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.152, i64 noundef 14) #33 ; 0 uses
  %i.ed = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #33
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.eb, i64 noundef %i.ed) #33 ; 0 uses
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.153, i64 noundef 2) #33 ; 0 uses
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.bx) #33 ; 2 uses
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.154, i64 noundef 5) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ei = load ptr, ptr %i.dq, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit, !prof !53

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit: ; preds = %bb.q
  store ptr %i.ek, ptr %2, align 8
  %i.el = call ptr @_ZNK2v88internal8compiler21SharedFunctionInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.em = load i64, ptr %i.el, align 8
  store i64 %i.em, ptr %1, align 8
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %1) #33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.155, i64 noundef 2) #33 ; 0 uses
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #33, !inline_history !2 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder19PrintVirtualObjectsEv(ptr noundef nonnull align 8 dereferenceable(953) %0)
  br label %.critedge54

.critedge54:                                      ; preds = %bb.o, %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit, %bb.p
  %i.eq = load i32, ptr %i.cq, align 4            ; 3 uses
  %i.er = and i32 %i.eq, 2
  %spec.select.i55.not = icmp eq i32 %i.er, 0
  br i1 %spec.select.i55.not, label %bb.w, label %bb.s, !prof !52

bb.s:                                             ; preds = %.critedge54
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = and i64 %i.az, 4294967295
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.u, label %bb.t, !prof !52

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.156) #32
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.bv
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = icmp ne ptr %i.fb, null
  %i.fd = and i32 %i.eq, 3
  %i.fe = icmp eq i32 %i.fd, 2
  %or.cond74 = and i1 %i.fe, %i.fc
  br i1 %or.cond74, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder40ProcessMergePointAtExceptionHandlerStartEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %i.ba)
  br label %bb.y

bb.w:                                             ; preds = %.critedge54
  %7 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %8 = load i32, ptr %7, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %9 = load i32, ptr %i.ff, align 4
  %i.fg = and i32 %i.eq, 5
  %i.fh = icmp eq i32 %i.fg, 1
  %10 = icmp eq i32 %9, 1
  %i.fi = icmp eq i32 %8, 0
  %11 = and i1 %i.fi, %10
  %spec.select.i56 = select i1 %i.fh, i1 %11, i1 false
  br i1 %spec.select.i56, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder17ProcessMergePointEib(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %i.ba, i1 noundef zeroext %i.cp)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.fj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 620), align 4, !range !55, !noundef !56
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 76), align 4, !range !55
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %i.fn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fo = load i32, ptr %i.cq, align 4
  %i.fp = and i32 %i.fo, 3
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder16BeginLoopEffectsEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 poison)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %i.fr = load ptr, ptr %i.bt, align 8
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.bv
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.bv
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef null, ptr noundef %i.ft, ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
  br label %bb.ah

bb.ac:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder31UpdateSourceAndBytecodePositionEi.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.ad, label %bb.ah, !prof !53

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = and i64 %i.az, 4294967295
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  switch i32 %i.ge, label %bb.ag [
    i32 1, label %bb.ae
    i32 0, label %.thread
  ], !prof !147

bb.ae:                                            ; preds = %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gg = tail call noundef zeroext i1 @_ZNK2v88internal8compiler16BytecodeAnalysis12IsLoopHeaderEi(ptr noundef nonnull align 8 dereferenceable(140) %i.gf, i32 noundef %i.ba) #33
  br i1 %i.gg, label %.thread, label %bb.af, !prof !52

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.158) #32
  unreachable

bb.ag:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.156) #32
  unreachable

bb.ah:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ai, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit, !prof !53

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit: ; preds = %bb.ah
  store ptr %i.gk, ptr %3, align 8
  %i.gl = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef18handler_table_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %i.gm = icmp sgt i32 %i.gl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.gm, label %.preheader, label %bb.av

.preheader:                                       ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %.pre = load ptr, ptr %i.gn, align 8
  %.pre83 = load ptr, ptr %i.go, align 8
  %.pre84 = load ptr, ptr %i.gr, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader, %.thread66
  %i.gv = phi ptr [ %.pre84, %.preheader ], [ %i.il, %.thread66 ] ; 6 uses
  %i.gw = phi ptr [ %.pre83, %.preheader ], [ %storemerge.i.i, %.thread66 ] ; 3 uses
  %i.gx = phi ptr [ %.pre, %.preheader ], [ %i.im, %.thread66 ] ; 5 uses
  %i.gy = load ptr, ptr %i.gq, align 8
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3
  %i.hd = icmp ne ptr %i.gx, null
  %.neg.i.i.i.i = sext i1 %i.hd to i64
  %i.he = add nsw i64 %i.hc, %.neg.i.i.i.i
  %i.hf = shl nsw i64 %i.he, 6
  %i.hg = ptrtoint ptr %i.gw to i64
  %i.hh = ptrtoint ptr %i.gv to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 3
  %i.hk = add nsw i64 %i.hf, %i.hj
  %i.hl = load ptr, ptr %i.gs, align 8
  %i.hm = load ptr, ptr %i.gp, align 8
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3
  %i.hr = sub nsw i64 0, %i.hq
  %.not76 = icmp eq i64 %i.hk, %i.hr
  br i1 %.not76, label %.thread68, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hs = icmp eq ptr %i.gw, %i.gv
  br i1 %i.hs, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit: ; preds = %bb.ak
  %i.ht = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 504
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = icmp sgt i32 %i.hw, %i.ba
  br i1 %i.hx, label %.thread68, label %bb.al

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread: ; preds = %bb.ak
  %i.hy = getelementptr inbounds i8, ptr %i.gw, i64 -8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = icmp sgt i32 %i.hz, %i.ba
  br i1 %i.ia, label %.thread68, label %.thread66

bb.al:                                            ; preds = %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit
  %i.ib = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not.i.i.i.i.i.i57 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i.i57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.id, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 64, ptr %i.ie, align 8
  %i.if = load ptr, ptr %i.gt, align 8
  store ptr %i.if, ptr %i.gv, align 8
  store ptr %i.gv, ptr %i.gt, align 8
  %.pre85 = load ptr, ptr %i.gn, align 8
  br label %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i

_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i: ; preds = %bb.an, %bb.am
  %i.ig = phi ptr [ %.pre85, %bb.an ], [ %i.gx, %bb.am ]
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8 ; 3 uses
  store ptr %i.ih, ptr %i.gn, align 8
  %i.ii = load ptr, ptr %i.ih, align 8            ; 4 uses
  store ptr %i.ii, ptr %i.gr, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 512
  store ptr %i.ij, ptr %i.gu, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 504
  br label %.thread66

.thread66:                                        ; preds = %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread, %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i
  %i.il = phi ptr [ %i.ii, %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i ], [ %i.gv, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread ]
  %i.im = phi ptr [ %i.ih, %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i ], [ %i.gx, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread ]
  %storemerge.i.i = phi ptr [ %i.ik, %_ZNSt5dequeIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE15_M_pop_back_auxEv.exit.i.i ], [ %i.hy, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.go, align 8
  br label %bb.aj

.thread68:                                        ; preds = %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit.thread, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.in = load ptr, ptr %i.gh, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i58, label %bb.ao, label %_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit59, !prof !53

bb.ao:                                            ; preds = %.thread68
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder8bytecodeEv.exit59: ; preds = %.thread68
  store ptr %i.ip, ptr %5, align 8
  %i.iq = call ptr @_ZNK2v88internal8compiler16BytecodeArrayRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  %i.ir = load i64, ptr %i.iq, align 8
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.ir) #33
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder32VisitJumpIfToBooleanTrueConstantEv:bb.a
  %i.y = load i8, ptr %i.x, align 1, !noalias !351
  %i.z = zext i8 %i.y to i32
  %i.aa = add i32 %i.l, %i.p
  %i.ab = add i32 %i.aa, %i.z
  store i32 %i.d, ptr %i.b, align 8, !alias.scope !351
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !alias.scope !351
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.ad, align 8, !alias.scope !351
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i32 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildBranchIfToBooleanTrueERNS2_13BranchBuilderEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ah) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder24VisitJumpIfToBooleanTrueEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::BranchBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  store ptr %0, ptr %1, align 8, !alias.scope !354
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #33, !noalias !354
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !noalias !354 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load ptr, ptr %i.g, align 8, !noalias !354
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.l = load i32, ptr %i.k, align 4, !noalias !354 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = sub i64 %i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i8, ptr %i.f, align 1, !noalias !354
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.s = load i8, ptr %i.r, align 8, !noalias !354
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.u
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !354
  %i.z = zext i8 %i.y to i32
  %i.aa = add i32 %i.l, %i.p
  %i.ab = add i32 %i.aa, %i.z
  store i32 %i.d, ptr %i.b, align 8, !alias.scope !354
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ab, ptr %i.ac, align 4, !alias.scope !354
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.ad, align 8, !alias.scope !354
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i32 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildBranchIfToBooleanTrueERNS2_13BranchBuilderEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ah) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33VisitJumpIfToBooleanFalseConstantEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::BranchBuilder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  store ptr %0, ptr %1, align 8, !alias.scope !357
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.a, align 8, !alias.scope !357
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.b, align 8, !alias.scope !357
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.c, align 4, !alias.scope !357
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #33, !noalias !357
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !noalias !357 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !noalias !357
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.n = load i32, ptr %i.m, align 4, !noalias !357 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.l, %i.o
  %i.q = sub i64 %i.k, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i8, ptr %i.h, align 1, !noalias !357
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load i8, ptr %i.t, align 8, !noalias !357
  %i.v = lshr i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.w
  %i.y = zext i8 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !357
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.n, %i.r
  %i.ad = add i32 %i.ac, %i.ab
  store i32 %i.f, ptr %i.d, align 8, !alias.scope !357
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ad, ptr %i.ae, align 4, !alias.scope !357
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.af, align 8, !alias.scope !357
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -64
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildBranchIfToBooleanTrueERNS2_13BranchBuilderEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.aj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder25VisitJumpIfToBooleanFalseEv(ptr noundef nonnull align 8 dereferenceable(953) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::BranchBuilder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  store ptr %0, ptr %1, align 8, !alias.scope !360
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.a, align 8, !alias.scope !360
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.b, align 8, !alias.scope !360
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.c, align 4, !alias.scope !360
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator19GetJumpTargetOffsetEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #33, !noalias !360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !noalias !360 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.j = load ptr, ptr %i.i, align 8, !noalias !360
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.n = load i32, ptr %i.m, align 4, !noalias !360 ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add i64 %i.l, %i.o
  %i.q = sub i64 %i.k, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i8, ptr %i.h, align 1, !noalias !360
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load i8, ptr %i.t, align 8, !noalias !360
  %i.v = lshr i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.w
  %i.y = zext i8 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !360
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.n, %i.r
  %i.ad = add i32 %i.ac, %i.ab
  store i32 %i.f, ptr %i.d, align 8, !alias.scope !360
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ad, ptr %i.ae, align 4, !alias.scope !360
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.af, align 8, !alias.scope !360
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -64
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildBranchIfToBooleanTrueERNS2_13BranchBuilderEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.aj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 2
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler16BytecodeAnalysis12IsLoopHeaderEi(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder23MergeDeadIntoFrameStateEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState25ReducePhiPredecessorCountEj(ptr noundef nonnull align 8 dereferenceable(312) %i.e, i32 noundef 1) #33
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 4
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.c
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %3 = load i32, ptr %2, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %4 = load i32, ptr %i.o, align 4
  %i.p = and i32 %3, 7
  %i.q = icmp eq i32 %i.p, 1
  %5 = icmp eq i32 %4, 1
  %i.r = icmp eq i32 %i.n, 0
  %6 = and i1 %i.r, %5
  %spec.select.i = select i1 %i.q, i1 %6, i1 false
  br i1 %spec.select.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !55, !noundef !56
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 103
  %i.x = load i8, ptr %i.w, align 1, !range !55, !noundef !56
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %.critedge, !prof !53

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.141, i64 noundef 31) #33 ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1) #33
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #33, !inline_history !2 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.d
  %i.ac = phi ptr [ %i.j, %bb.c ], [ %.pre, %bb.e ], [ %i.j, %bb.d ]
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.c
  store ptr null, ptr %i.ad, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = zext i32 %1 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i, label %bb.h, !prof !52

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2
  %i.az = add nsw i64 %i.ay, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.az)
  %.pre.i.i.i = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i

_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i: ; preds = %bb.h, %bb.g
  %i.ba = phi ptr [ %i.ao, %bb.g ], [ %.pre.i.i.i, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.an, align 8
  store i32 %1, ptr %i.ba, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit

_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit: ; preds = %bb.f, %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder27MergeDeadLoopIntoFrameStateEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 620), align 4, !range !55, !noundef !56
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 76), align 4, !range !55
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.m, i1 true, i1 %i.o
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %2 = load i32, ptr %i.q, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i32, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %4 = load i32, ptr %i.s, align 4
  %i.t = and i32 %2, 7
  %i.u = icmp eq i32 %i.t, 1
  %5 = icmp eq i32 %4, 1
  %i.v = icmp eq i32 %i.r, 0
  %6 = and i1 %i.v, %5
  %spec.select.i = select i1 %i.u, i1 %6, i1 false
  br i1 %spec.select.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder14EndLoopEffectsEi(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %1)
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.c
  %.pre8 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = phi ptr [ %.pre8, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  tail call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState25ReducePhiPredecessorCountEj(ptr noundef nonnull align 8 dereferenceable(312) %i.w, i32 noundef 1) #33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, -8
  store i32 %i.ac, ptr %i.aa, align 4
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8 ; 2 uses
  %.pre11 = zext i32 %1 to i64                    ; 2 uses
  %.phi.trans.insert12 = getelementptr inbounds nuw [4 x i8], ptr %.pre10, i64 %.pre11
  %.pre13 = load i32, ptr %.phi.trans.insert12, align 4
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f
  %i.ad = phi i32 [ %i.j, %bb.b ], [ %.pre13, %bb.f ]
  %.pre-phi = phi i64 [ %i.h, %bb.b ], [ %.pre11, %bb.f ]
  %i.ae = phi ptr [ %i.g, %bb.b ], [ %.pre10, %bb.f ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.pre-phi
  %i.ag = add i32 %i.ad, -1
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit

bb.g:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ult ptr %i.al, %i.an
  br i1 %i.ao, label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i, label %bb.h, !prof !52

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = add nsw i64 %i.av, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.aw)
  %.pre.i.i.i = load ptr, ptr %i.ak, align 8
  br label %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i

_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i: ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ %i.al, %bb.g ], [ %.pre.i.i.i, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.ak, align 8
  store i32 %1, ptr %i.ax, align 4
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit

_ZN2v88internal6maglev18MaglevGraphBuilder44DecrementDeadPredecessorAndAccountForPeelingEj.exit: ; preds = %_ZN2v88internal10ZoneVectorIiE9push_backEOi.exit.i, %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder32MergeIntoInlinedReturnFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZNK2v88internal6maglev18MaglevGraphBuilder18inline_exit_offsetEv.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev18MaglevGraphBuilder18inline_exit_offsetEv.exit: ; preds = %bb.a
  store ptr %i.d, ptr %2, align 8
  %i.e = call noundef i32 @_ZNK2v88internal8compiler16BytecodeArrayRef6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder18inline_exit_offsetEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %i.q, %i.t
  %i.v = sub i64 %i.p, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = call noundef ptr @_ZNK2v88internal8compiler16BytecodeAnalysis16GetInLivenessForEi(ptr noundef nonnull align 8 dereferenceable(140) %i.x, i32 noundef %i.w) #33
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext i32 %i.e to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef %i.e, i32 noundef %i.af, ptr noundef %1, ptr noundef %i.y) #33
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.h
  store ptr %i.ag, ptr %i.ai, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNK2v88internal6maglev18MaglevGraphBuilder18inline_exit_offsetEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.j, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %1) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal6maglev18MaglevGraphBuilder27BuildBranchIfReferenceEqualERNS2_13BranchBuilderEPNS1_9ValueNodeES6_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca [2 x ptr], align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, 65535                      ; 2 uses
  %i.o = icmp ne i64 %i.n, 225
  %.not.not60 = icmp eq ptr %3, null              ; 2 uses
  %.not.not = or i1 %.not.not60, %i.o
  br i1 %.not.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.q = load i16, ptr %i.p, align 4
  store i16 %i.q, ptr %i.h, align 2
  %i.r = load ptr, ptr %1, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i.i = icmp eq ptr %i.w, null            ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i, label %.thread9.i, label %bb.f

.thread9.i:                                       ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.ac, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre71 = sext i32 %.pre to i64
  br label %.thread8.i

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder13BranchBuilder11true_targetEv.exit.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder13BranchBuilder11true_targetEv.exit.thread6.i

_ZN2v88internal6maglev18MaglevGraphBuilder13BranchBuilder11true_targetEv.exit.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4
end_hunk_1
