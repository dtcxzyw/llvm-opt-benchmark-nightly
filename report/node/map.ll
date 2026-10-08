Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/map?download=true
inline.NumInlined: 2716
inline.NumDeleted: 953
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal3Map7RawCopyEPNS0_7IsolateENS0_12DirectHandleIS1_EEii:bb.a
  %i.ah = add i64 %i.f, 13
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i8, ptr %i.ai monotonic, align 1
  %i.ak = add i64 %i.g, 13
  %i.al = inttoptr i64 %i.ak to ptr
  store atomic volatile i8 %i.aj, ptr %i.al monotonic, align 1
  %i.am = add i64 %i.f, 14
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i64 %i.g, 14
  %i.aq = inttoptr i64 %i.ap to ptr
  store i8 %i.ao, ptr %i.aq, align 1
  %i.ar = add i64 %i.f, 15
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.au = and i32 %i.at, -30408704
  %i.av = or disjoint i32 %i.au, 4195327          ; 2 uses
  %i.aw = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.ax = and i32 %i.aw, 2097152
  %.not = icmp eq i32 %i.ax, 0
  %i.ay = and i32 %i.av, -59767809
  %spec.select = select i1 %.not, i32 %i.ay, i32 %i.av
  %i.az = add i64 %i.g, 15
  %i.ba = inttoptr i64 %i.az to ptr
  store atomic volatile i32 %spec.select, ptr %i.ba monotonic, align 4
  %i.bb = add i64 %i.g, 19
  %i.bc = inttoptr i64 %i.bb to ptr
  store i32 0, ptr %i.bc, align 1
  %i.bd = load i64, ptr %1, align 8
  %i.be = add i64 %i.bd, 23
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load i64, ptr %i.bf, align 8            ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.h, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, !prof !10

bb.h:                                             ; preds = %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %i.bm = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %bb.h
  %.0.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bi, %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 4 uses
  %i.bn = ptrtoint ptr %.0.i.i to i64
  %i.bo = add i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  store ptr %i.bp, ptr %i.bh, align 8
  store i64 %i.bg, ptr %.0.i.i, align 8
  %i.bq = add i64 %i.bg, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
  %i.bw = icmp ugt i16 %i.bv, 302
  br i1 %i.bw, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit
  %i.bx = and i64 %i.bg, -262144
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 262144
  %i.ca = and i64 %i.bz, 1
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %bb.i, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

bb.i:                                             ; preds = %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  tail call void @_ZN2v88internal8JSObject19OptimizeAsPrototypeENS0_12DirectHandleIS1_EEb(ptr nonnull %.0.i.i, i1 noundef zeroext true) #16
  %.pre.i = load i64, ptr %.0.i.i, align 8
  br label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i: ; preds = %bb.i, %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit
  %i.cb = phi i64 [ %i.bg, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ], [ %i.bg, %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %.pre.i, %bb.i ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp ne i64 %i.cb, %i.cd
  %i.cf = load i64, ptr %i.e, align 8             ; 4 uses
  %i.cg = add i64 %i.cf, 23                       ; 3 uses
  %i.ch = inttoptr i64 %i.cg to ptr
  store atomic volatile i64 %i.cb, ptr %i.ch monotonic, align 8
  %i.ci = trunc i64 %i.cb to i1
  %or.cond.i.i.i = and i1 %i.ce, %i.ci
  br i1 %or.cond.i.i.i, label %bb.j, label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit

bb.j:                                             ; preds = %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i
  %i.cj = and i64 %i.cf, -262144
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 262144       ; 2 uses
  %i.cm = and i64 %i.cl, 32
  %.not.i.i.i.i = icmp eq i64 %i.cm, 0
  %i.cn = and i64 %i.cl, 25
  %.not38.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not38.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.co = and i64 %i.cb, -262144
  %i.cp = inttoptr i64 %i.co to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.cp, align 262144
  %i.cq = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cf, i64 noundef %i.cg, i64 %i.cb) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i, label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cf, i64 %i.cg, i64 %i.cb) #16
  br label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit

_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit: ; preds = %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i, %bb.m, %bb.n
  ret ptr %i.e
}

declare ptr @_ZN2v88internal7Factory6NewMapENS0_12DirectHandleINS0_10HeapObjectEEENS0_12InstanceTypeEiNS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal3Map9NormalizeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEENS0_25PropertyNormalizationModeEbPKc(ptr noundef %0, ptr %1, i8 noundef zeroext %2, ptr %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.695", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.a, 15
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i32, ptr %i.f acquire, align 4
  %i.h = and i32 %i.g, 1048576
  %.not = icmp eq i32 %i.h, 0
  %narrow = and i1 %5, %.not
  br i1 %narrow, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.d, 31
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, 1359
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load i64, ptr %i.o, align 8
  %.not123 = icmp eq i64 %i.n, %i.p
  br i1 %.not123, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.n, ptr %.0.i.i, align 8
  %i.z = add i64 %i.n, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = icmp eq ptr %3, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %1, align 8
  %i.ad = add i64 %i.ac, 23
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.010.0.in = phi ptr [ %i.ae, %bb.f ], [ %3, %bb.e ]
  %.sroa.010.0 = load i64, ptr %.sroa.010.0.in, align 8
  %i.af = tail call ptr @_ZN2v88internal18NormalizedMapCache3GetEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_12ElementsKindENS0_6TaggedINS0_10HeapObjectEEENS0_25PropertyNormalizationModeE(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext %2, i64 %.sroa.010.0, i32 noundef %4) ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1517), align 1, !range !12, !noundef !13
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !12
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 58736
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @_ZN2v88internal12V8FileLogger8MapEventEPKcNS0_12DirectHandleINS0_3MapEEES6_S3_NS4_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.am, ptr noundef nonnull @.str.6, ptr nonnull %1, ptr nonnull %i.af, ptr noundef %6, ptr null) #16
  br label %bb.u

_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %bb.b, %bb.a, %bb.g
  %i.an = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.b ]
  %.sroa.069.0115 = phi ptr [ %.0.i.i, %bb.g ], [ null, %bb.a ], [ null, %bb.b ]
  %i.ao = tail call ptr @_ZN2v88internal3Map14CopyNormalizedEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_25PropertyNormalizationModeE(ptr noundef %0, ptr nonnull %1, i32 noundef %4) ; 6 uses
  %i.ap = icmp ult i8 %2, 42
  br i1 %i.ap, label %_ZN2v88internal3Map17set_elements_kindENS0_12ElementsKindE.exit, label %bb.j, !prof !11

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37) #15
  unreachable

_ZN2v88internal3Map17set_elements_kindENS0_12ElementsKindE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_3MapEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 14
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = load i8, ptr %i.as, align 1
  %i.au = and i8 %i.at, 3
  %i.av = shl nuw i8 %2, 2
  %i.aw = or disjoint i8 %i.au, %i.av
  store i8 %i.aw, ptr %i.as, align 1
  %i.ax = icmp eq ptr %3, null
  br i1 %i.ax, label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal3Map17set_elements_kindENS0_12ElementsKindE.exit
  %i.ay = load i64, ptr %3, align 8               ; 4 uses
  %i.az = add i64 %i.ay, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = icmp ugt i16 %i.be, 302
  br i1 %i.bf, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.k
  %i.bg = and i64 %i.ay, -262144
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 262144
  %i.bj = and i64 %i.bi, 1
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

bb.l:                                             ; preds = %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  tail call void @_ZN2v88internal8JSObject19OptimizeAsPrototypeENS0_12DirectHandleIS1_EEb(ptr nonnull %3, i1 noundef zeroext true) #16
  %.pre.i = load i64, ptr %3, align 8
  br label %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i

_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i: ; preds = %bb.l, %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.k
  %i.bk = phi i64 [ %i.ay, %bb.k ], [ %i.ay, %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %.pre.i, %bb.l ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = icmp ne i64 %i.bk, %i.bm
  %i.bo = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.bp = add i64 %i.bo, 23                       ; 3 uses
  %i.bq = inttoptr i64 %i.bp to ptr
  store atomic volatile i64 %i.bk, ptr %i.bq monotonic, align 8
  %i.br = trunc i64 %i.bk to i1
  %or.cond.i.i.i = and i1 %i.bn, %i.br
  br i1 %or.cond.i.i.i, label %bb.m, label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit

bb.m:                                             ; preds = %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i
  %i.bs = and i64 %i.bo, -262144
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load i64, ptr %i.bt, align 262144       ; 2 uses
  %i.bv = and i64 %i.bu, 32
  %.not.i.i.i.i = icmp eq i64 %i.bv, 0
  %i.bw = and i64 %i.bu, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not38.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bx = and i64 %i.bk, -262144
  %i.by = inttoptr i64 %i.bx to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.by, align 262144
  %i.bz = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not39.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.bo, i64 noundef %i.bp, i64 %i.bk) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i, label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.bo, i64 %i.bp, i64 %i.bk) #16
  br label %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit

_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit: ; preds = %bb.q, %bb.p, %_ZN2v88internal37IsJSObjectThatCanBeTrackedAsPrototypeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread.i, %_ZN2v88internal3Map17set_elements_kindENS0_12ElementsKindE.exit
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit
  %i.ca = load i64, ptr %.sroa.069.0115, align 8
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  tail call void @_ZN2v88internal18NormalizedMapCache3SetEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEES6_(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, ptr noundef %0, ptr nonnull %1, ptr nonnull %i.ao)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN2v88internal3Map12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEEb.exit
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1517), align 1, !range !12, !noundef !13
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !12
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond122 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond122, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 58736
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void @_ZN2v88internal12V8FileLogger8MapEventEPKcNS0_12DirectHandleINS0_3MapEEES6_S3_NS4_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ci, ptr noundef nonnull @.str.7, ptr nonnull %1, ptr nonnull %i.ao, ptr noundef %6, ptr null) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.h, %bb.i
  %.sroa.081.0 = phi ptr [ %i.af, %bb.i ], [ %i.ao, %bb.s ], [ %i.af, %bb.h ], [ %i.ao, %bb.t ]
  %i.cj = load i64, ptr %1, align 8               ; 2 uses
  %i.ck = add i64 %i.cj, 15
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = load atomic volatile i32, ptr %i.cl acquire, align 4
  %i.cn = and i32 %i.cm, 33554432
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN2v88internal3Map25NotifyLeafMapLayoutChangeEPNS0_7IsolateE.exit

bb.v:                                             ; preds = %bb.u
  %i.co = load atomic volatile i32, ptr %i.cl monotonic, align 4
  %i.cp = or i32 %i.co, 33554432
  store atomic volatile i32 %i.cp, ptr %i.cl release, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.cq = add i64 %i.cj, 47
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i64, ptr %i.cr, align 8
  store i64 %i.cs, ptr %7, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %0, i32 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN2v88internal3Map25NotifyLeafMapLayoutChangeEPNS0_7IsolateE.exit

_ZN2v88internal3Map25NotifyLeafMapLayoutChangeEPNS0_7IsolateE.exit: ; preds = %bb.u, %bb.v
  ret ptr %.sroa.081.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal18NormalizedMapCache3GetEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_12ElementsKindENS0_6TaggedINS0_10HeapObjectEEENS0_25PropertyNormalizationModeE(ptr nofree noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i8 noundef zeroext %3, i64 %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.609", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.459", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10624
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %4, %i.f
  br i1 %i.g, label %_ZN2v88internal18NormalizedMapCache8GetIndexEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 %4, ptr %6, align 8
  %i.h = call i64 @_ZN2v88internal10JSReceiver23GetOrCreateIdentityHashEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1) #16
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN2v88internal18NormalizedMapCache8GetIndexEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEE.exit

_ZN2v88internal18NormalizedMapCache8GetIndexEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.k = add i64 %i.a, 14
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = xor i32 %.0.i.i, %i.n
  %i.p = srem i32 %i.o, 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 3 uses
  %i.u = and i64 %i.t, 3
  %i.v = icmp eq i64 %i.u, 3
  %i.w = and i64 %i.t, 4294967295
  %i.x = icmp ne i64 %i.w, 3
  %i.y = and i1 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal18NormalizedMapCache8GetIndexEPNS0_7IsolateENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEE.exit
  %i.z = and i64 %i.t, -3                         ; 3 uses
  %i.aa = add i64 %i.z, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = and i32 %i.ac, 2097152
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.z, ptr %7, align 8
  %i.ae = load i64, ptr %2, align 8
  %i.af = call noundef zeroext i1 @_ZNK2v88internal3Map28EquivalentToForNormalizationENS0_6TaggedIS1_EENS0_12ElementsKindENS2_INS0_10HeapObjectEEENS0_25PropertyNormalizationModeE(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 %i.ae, i8 noundef zeroext %3, i64 %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

end_hunk_0
