inline.NumInlined: 580
inline.NumDeleted: 391
begin_hunk_0_@_ZN2v88internal9ParseInfo12CreateScriptINS0_12LocalIsolateEEENS0_6HandleINS0_6ScriptEEEPT_NS0_12DirectHandleINS0_6StringEEENS0_17MaybeDirectHandleINS0_10FixedArrayEEENS_19ScriptOriginOptionsENS0_11NativesFlagE:bb.a
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 17179869184, %bb.b ], [ 4294967296, %bb.a ]
  %i.j = add i64 %i.i, 47
  %i.k = inttoptr i64 %i.j to ptr
  store atomic volatile i64 %.sink, ptr %i.k monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.l = add i64 %i.i, 103
  %i.m = inttoptr i64 %i.l to ptr                 ; 6 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = lshr i64 %i.n, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, -121
  %i.r = shl i32 %4, 3
  %i.s = or i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 32
  store atomic volatile i64 %i.u, ptr %i.m monotonic, align 8
  %i.v = load i32, ptr %0, align 8
  %i.w = and i32 %i.v, 2097152
  %i.x = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.y = and i64 %i.x, -21474836480
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw nsw i64 %i.z, 13
  %i.ab = or disjoint i64 %i.aa, %i.y
  store atomic volatile i64 %i.ab, ptr %i.m monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 4
  br i1 %i.ae, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.af = icmp eq ptr %3, null
  br i1 %i.af, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #15
  unreachable

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit: ; preds = %bb.d
  %i.ag = load i64, ptr %3, align 8               ; 5 uses
  %i.ah = add i64 %i.i, 71                        ; 3 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  store atomic volatile i64 %i.ag, ptr %i.ai monotonic, align 8
  %i.aj = trunc i64 %i.ag to i1
  br i1 %i.aj, label %bb.f, label %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit
  %i.ak = and i64 %i.i, -262144
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 262144       ; 2 uses
  %i.an = and i64 %i.am, 32
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  %i.ao = and i64 %i.am, 25
  %.not38.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not38.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = and i64 %i.ag, -262144
  %i.aq = inttoptr i64 %i.ap to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.aq, align 262144
  %i.ar = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not39.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.i, i64 noundef %i.ah, i64 %i.ag) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i, label %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.i, i64 %i.ah, i64 %i.ag) #14
  br label %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

bb.k:                                             ; preds = %bb.c
  %i.as = load i32, ptr %0, align 8
  %i.at = and i32 %i.as, 4
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.av = and i64 %i.au, -8589934592
  %i.aw = or disjoint i64 %i.av, 4294967296
  store atomic volatile i64 %i.aw, ptr %i.m monotonic, align 8
  br label %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.j, %bb.i, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit, %bb.k, %bb.l
  %i.ax = add i64 %i.i, 71
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %bb.m, label %_ZN2v88internal9ParseInfo38CheckFlagsForToplevelCompileFromScriptENS0_6TaggedINS0_6ScriptEEE.exit

bb.m:                                             ; preds = %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.bb = add nsw i64 %i.az, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 11
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2 ; 0 uses
  br label %_ZN2v88internal9ParseInfo38CheckFlagsForToplevelCompileFromScriptENS0_6TaggedINS0_6ScriptEEE.exit

_ZN2v88internal9ParseInfo38CheckFlagsForToplevelCompileFromScriptENS0_6TaggedINS0_6ScriptEEE.exit: ; preds = %_ZN2v88internal6Script21set_wrapped_argumentsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.m
  ret ptr %i.h
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewScriptWithIdENS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEiNS0_15ScriptEventTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi(ptr noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 10), (12, 16)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 2, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 59176 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %.not = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not, i32 0, i32 512          ; 3 uses
  store i32 %i.g, ptr %0, align 4
  %i.h = load atomic i32, ptr %i.e monotonic, align 4
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit: ; preds = %bb.a
  %i.j = load atomic i32, ptr %i.e monotonic, align 4
  %.fr = freeze i32 %i.j
  %i.k = icmp eq i32 %.fr, 4
  br i1 %i.k, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread, label %bb.b

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit
  %i.l = or disjoint i32 %i.g, 1024
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread
  %i.m = phi i32 [ %i.l, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread ], [ %i.g, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit ] ; 2 uses
  store i32 %i.m, ptr %0, align 4
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !7, !noundef !8
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = add nuw nsw i32 %i.p, %i.m
  %i.r = add nuw nsw i32 %i.q, 131072             ; 2 uses
  store i32 %i.r, ptr %0, align 4
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 323), align 1, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #14
  %spec.select = select i1 %i.u, i32 1048576, i32 0
  %.in.pre = load i32, ptr %0, align 4
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.in = phi i32 [ %.in.pre, %bb.c ], [ %i.r, %bb.b ]
  %i.v = phi i32 [ %spec.select, %bb.c ], [ 1048576, %bb.b ]
  %i.w = and i32 %.in, -1048577
  %i.x = or disjoint i32 %i.w, %i.v               ; 2 uses
  store i32 %i.x, ptr %0, align 4
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1453), align 1, !range !7, !noundef !8
  %i.z = and i32 %i.x, -262145
  %i.aa = zext nneg i8 %i.y to i32
  %i.ab = shl nuw nsw i32 %i.aa, 18
  %i.ac = or disjoint i32 %i.ab, %i.z             ; 2 uses
  store i32 %i.ac, ptr %0, align 4
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1454), align 2, !range !7, !noundef !8
  %i.ae = and i32 %i.ac, -524289
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = shl nuw nsw i32 %i.af, 19
  %i.ah = or disjoint i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %0, align 4
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags18ForFunctionCompileEPNS0_7IsolateENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = add i64 %1, 39
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 3 uses
  %i.d = add i64 %i.c, 63
  %i.e = inttoptr i64 %i.d to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %3 = load i32, ptr %.shift.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 59176 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not.i, i32 0, i32 512        ; 2 uses
  %i.i = load atomic i32, ptr %i.f monotonic, align 4
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i: ; preds = %bb.a
  %i.k = load atomic i32, ptr %i.f monotonic, align 4
  %.fr.i = freeze i32 %i.k
  %i.l = icmp eq i32 %.fr.i, 4
  br i1 %i.l, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %bb.b

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i: ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i, %bb.a
  %i.m = or disjoint i32 %i.h, 1024
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i
  %i.n = phi i32 [ %i.m, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i ], [ %i.h, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i ] ; 2 uses
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !7, !noundef !8
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 323), align 1, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  %spec.select.i = select i1 %i.r, i32 1048576, i32 0
  br label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i32 [ %spec.select.i, %bb.c ], [ 1048576, %bb.b ]
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1453), align 1, !range !7, !noundef !8
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1454), align 2, !range !7, !noundef !8
  %i.v = add i64 %i.c, 103
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.z = and i32 %i.n, 1024
  %.not.i4 = icmp eq i32 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br i1 %.not.i4, label %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit
  store i64 %i.c, ptr %2, align 8
  %i.aa = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %spec.select.i5 = select i1 %i.aa, i32 1024, i32 0
  br label %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit

_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit: ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit, %bb.d
  %i.ab = phi i32 [ %spec.select.i5, %bb.d ], [ 0, %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit ]
  %i.ac = zext nneg i8 %i.o to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = add nuw nsw i32 %i.n, 131072
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  %i.ag = zext nneg i8 %i.t to i32
  %i.ah = shl nuw nsw i32 %i.ag, 18
  %i.ai = zext nneg i8 %i.u to i32
  %i.aj = shl nuw nsw i32 %i.ai, 19
  %i.ak = lshr i64 %i.y, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = and i32 %i.al, 64
  %i.an = lshr i64 %i.x, 30
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 4
  %.masked33 = and i32 %i.af, -3997142
  %.masked32 = or disjoint i32 %.masked33, %i.s
  %.masked = or disjoint i32 %i.ah, %.masked32
  %i.aq = or disjoint i32 %.masked, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ar = add i64 %1, 55
  %i.as = inttoptr i64 %i.ar to ptr               ; 7 uses
  %i.at = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.au = lshr i32 %i.at, 2
  %i.av = and i32 %i.au, 16
  %i.aw = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.ax = and i32 %i.aw, 31
  %i.ay = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.az = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.ba = lshr i32 %i.az, 9
  %i.bb = and i32 %i.ba, 16384
  %i.bc = add i64 %1, 54
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.bf = trunc i8 %i.be to i1
  %i.bg = select i1 %i.bf, i32 4096, i32 0
  %i.bh = and i8 %i.be, 2
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 14
  %i.bk = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = and i32 %i.bl, 8192
  %i.bn = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.bo = lshr i32 %i.bn, 27
  %.lobit.i = and i32 %i.bo, 1
  %i.bp = load atomic volatile i32, ptr %i.as monotonic, align 4
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 2048
  %i.bs = load atomic volatile i64, ptr %i.w monotonic, align 8
  %.masked34.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i32 %i.ap, %i.aq
  %.masked36.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i32 %i.am, %.masked34.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked
  %i.bt = lshr i64 %i.bs, 13
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 2097152
  %.masked38.masked.masked.masked.masked.masked.masked.masked.masked = or i32 %.masked36.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ab
  %.masked40.masked.masked.masked.masked.masked.masked.masked = or i32 %.masked38.masked.masked.masked.masked.masked.masked.masked.masked, %i.av
  %.masked42.masked.masked.masked.masked.masked.masked = or i32 %.masked40.masked.masked.masked.masked.masked.masked.masked, %i.bb
  %.masked44.masked.masked.masked.masked.masked = or i32 %.masked42.masked.masked.masked.masked.masked.masked, %i.bg
  %.masked46.masked.masked.masked.masked = or i32 %.masked44.masked.masked.masked.masked.masked, %i.bj
  %.masked48.masked.masked.masked = or i32 %.masked46.masked.masked.masked.masked, %i.bm
  %.masked52 = or i32 %.masked48.masked.masked.masked, %.lobit.i
  %i.bw = or i32 %.masked52, %i.br
  %i.bx = or i32 %i.bw, %i.bv
  %i.by = or i32 %i.bx, 384
  %.sroa.29.0.insert.ext = zext i32 %3 to i64
  %.sroa.29.0.insert.shift = shl nuw i64 %.sroa.29.0.insert.ext, 32
  %.sroa.017.0.insert.ext = zext nneg i32 %i.by to i64
  %.sroa.017.0.insert.insert = or disjoint i64 %.sroa.29.0.insert.shift, %.sroa.017.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.017.0.insert.insert, 0
  %i.bz = shl i32 %i.ay, 1
  %i.ca = and i32 %i.bz, 1792
  %.sroa.33.8.insert.insert54 = or disjoint i32 %i.ca, %i.ax
  %.sroa.33.8.insert.insert = zext nneg i32 %.sroa.33.8.insert.insert54 to i64
  %.sroa.30.8.insert.insert = or disjoint i64 %.sroa.33.8.insert.insert, 4294967296
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.30.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE(ptr noundef nonnull align 4 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = add i64 %1, 103
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = load i32, ptr %0, align 4                ; 2 uses
  %i.e = and i32 %i.d, -5
  %i.f = lshr i64 %i.c, 30
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 4
  %i.i = or disjoint i32 %i.h, %i.e               ; 2 uses
  store i32 %i.i, ptr %0, align 4
  %i.j = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.k = and i32 %i.i, -65
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = and i32 %i.m, 64
  %i.o = or disjoint i32 %i.n, %i.k               ; 2 uses
  store i32 %i.o, ptr %0, align 4
  %i.p = and i32 %i.d, 1024
  %.not = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %2, align 8
  %i.q = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %spec.select = select i1 %i.q, i32 1024, i32 0
  %.in.pre = load i32, ptr %0, align 4
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %.in.pre, %bb.b ], [ %i.o, %bb.a ]
  %i.r = phi i32 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  %i.s = and i32 %.in, -1025
  %i.t = or disjoint i32 %i.s, %i.r
  store i32 %i.t, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags16ForScriptCompileEPNS0_7IsolateENS0_6TaggedINS0_6ScriptEEE(ptr noundef %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = add i64 %1, 63
  %i.b = inttoptr i64 %i.a to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %4 = load i32, ptr %.shift.i, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 59176 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not.i, i32 0, i32 512        ; 2 uses
  %i.f = load atomic i32, ptr %i.c monotonic, align 4
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i: ; preds = %bb.a
  %i.h = load atomic i32, ptr %i.c monotonic, align 4
  %.fr.i = freeze i32 %i.h
  %i.i = icmp eq i32 %.fr.i, 4
  br i1 %i.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %bb.b

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i: ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i, %bb.a
  %i.j = or disjoint i32 %i.e, 1024
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i
  %i.k = phi i32 [ %i.j, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i ], [ %i.e, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i ] ; 2 uses
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !7, !noundef !8
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 323), align 1, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  %spec.select.i = select i1 %i.o, i32 1048576, i32 0
  br label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %spec.select.i, %bb.c ], [ 1048576, %bb.b ]
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1453), align 1, !range !7, !noundef !8
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1454), align 2, !range !7, !noundef !8
  %i.s = add i64 %1, 103
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = load atomic volatile i64, ptr %i.t monotonic, align 8 ; 0 uses
  %i.w = and i32 %i.k, 1024
  %.not.i1 = icmp eq i32 %i.w, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br i1 %.not.i1, label %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit
  store i64 %1, ptr %2, align 8
  %i.x = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  br label %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit

_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit: ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit, %bb.d
  %i.y = phi i1 [ %i.x, %bb.d ], [ false, %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %1, ptr %3, align 8
  %i.z = call noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %i.aa = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.ab = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1429), align 1, !range !7, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ad = add i64 %1, 71
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZNK2v88internal6Script10is_wrappedEv.exit, label %_ZNK2v88internal6Script10is_wrappedEv.exit.thread

_ZNK2v88internal6Script10is_wrappedEv.exit:       ; preds = %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = add i16 %i.am, -205
  %i.ao = icmp ult i16 %i.an, 13
  %i.ap = select i1 %i.ao, i64 4294968320, i64 4294967808
  br label %_ZNK2v88internal6Script10is_wrappedEv.exit.thread

_ZNK2v88internal6Script10is_wrappedEv.exit.thread: ; preds = %_ZNK2v88internal6Script10is_wrappedEv.exit, %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit
  %.sroa.20.0 = phi i64 [ 4294967808, %_ZN2v88internal23UnoptimizedCompileFlags29SetFlagsForFunctionFromScriptENS0_6TaggedINS0_6ScriptEEE.exit ], [ %i.ap, %_ZNK2v88internal6Script10is_wrappedEv.exit ]
  %i.aq = and i64 %i.aa, 17179869184
  %.not = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not, i32 1, i32 2097153
  %i.as = and i64 %i.ab, 274877906944
  %.not34 = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not34, i32 1, i32 64
  %i.au = trunc nuw i8 %i.ac to i1
  %i.av = select i1 %i.au, i32 131200, i32 0
  %i.aw = lshr i64 %i.u, 30
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 4
  %i.az = zext nneg i8 %i.q to i32
  %i.ba = shl nuw nsw i32 %i.az, 18
  %i.bb = zext nneg i8 %i.r to i32
  %i.bc = shl nuw nsw i32 %i.bb, 19
  %i.bd = zext nneg i8 %i.l to i32
  %i.be = shl nuw nsw i32 %i.bd, 16
  %i.bf = add nuw nsw i32 %i.k, 131072
  %i.bg = add nuw nsw i32 %i.bf, %i.be
  %.masked31 = and i32 %i.bg, -4064470
  %i.bh = and i1 %i.y, %i.z
  %i.bi = select i1 %i.bh, i32 1024, i32 0
  %i.bj = or disjoint i32 %i.p, %.masked31
  %i.bk = or disjoint i32 %i.bj, %i.ba
  %i.bl = or disjoint i32 %i.ay, %i.bc
  %.masked30 = or disjoint i32 %i.bl, %i.bi
  %i.bm = or disjoint i32 %.masked30, %i.ar
  %i.bn = or i32 %i.bm, %i.at
  %i.bo = or disjoint i32 %i.bn, %i.av
  %i.bp = or i32 %i.bo, %i.bk
  %.sroa.17.0.insert.ext = zext i32 %4 to i64
  %.sroa.17.0.insert.shift = shl nuw i64 %.sroa.17.0.insert.ext, 32
  %.sroa.016.0.insert.ext = zext nneg i32 %i.bp to i64
  %.sroa.016.0.insert.insert = or disjoint i64 %.sroa.17.0.insert.shift, %.sroa.016.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.016.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.20.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal23UnoptimizedCompileFlags26SetFlagsForToplevelCompileEbNS0_12LanguageModeENS0_8REPLModeENS_10ScriptTypeEb(ptr noundef nonnull align 4 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, -2229458
  %i.c = select i1 %5, i32 131200, i32 0
  %i.d = and i32 %i.a, 16
  %i.e = icmp ne i32 %i.d, 0
  %i.f = or i1 %2, %i.e
  %i.g = select i1 %i.f, i32 16, i32 0
  %i.h = icmp eq i32 %3, 0
  %i.i = icmp eq i32 %4, 1
  %i.j = select i1 %i.i, i32 64, i32 1
  %i.k = and i32 %i.a, 1024
  %i.l = icmp ne i32 %i.k, 0
  %i.m = and i1 %1, %i.l
  %i.n = select i1 %i.m, i32 1024, i32 0
  %i.o = select i1 %i.h, i32 2097153, i32 1
  %i.p = or i32 %i.o, %i.j
  %i.q = or disjoint i32 %i.p, %i.c
  %i.r = or disjoint i32 %i.q, %i.b
  %i.s = or disjoint i32 %i.r, %i.g
  %i.t = or disjoint i32 %i.s, %i.n
  store i32 %i.t, ptr %0, align 4
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal6Script16IsUserJavaScriptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags18ForToplevelCompileEPNS0_7IsolateEbNS0_12LanguageModeENS0_8REPLModeENS_10ScriptTypeEb(ptr noundef nonnull %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal7Isolate15GetNextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 59176 ; 3 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i, i32 0, i32 512        ; 2 uses
  %i.e = load atomic i32, ptr %i.b monotonic, align 4
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i: ; preds = %bb.a
  %i.g = load atomic i32, ptr %i.b monotonic, align 4
  %.fr.i = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr.i, 4
  br i1 %i.h, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %bb.b

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i: ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i, %bb.a
  %i.i = or disjoint i32 %i.d, 1024
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i
  %i.j = phi i32 [ %i.i, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i ], [ %i.d, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i ] ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !7, !noundef !8
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 323), align 1, !range !7, !noundef !8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  %spec.select.i = select i1 %i.n, i32 1048576, i32 0
  br label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %spec.select.i, %bb.c ], [ 1048576, %bb.b ]
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1453), align 1, !range !7, !noundef !8
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1454), align 2, !range !7, !noundef !8
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1833), align 1, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 58736
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @_ZN2v88internal12V8FileLogger11ScriptEventENS0_15ScriptEventTypeEi(ptr noundef nonnull align 8 dereferenceable(168) %i.u, i32 noundef 0, i32 noundef %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit, %bb.d
  %i.v = icmp eq i32 %3, 0
  %i.w = select i1 %i.v, i32 2097153, i32 1
  %i.x = icmp eq i32 %4, 1
  %i.y = select i1 %i.x, i32 64, i32 1
  %i.z = select i1 %5, i32 131200, i32 0
  %i.aa = zext nneg i8 %i.p to i32
  %i.ab = shl nuw nsw i32 %i.aa, 18
  %i.ac = zext nneg i8 %i.q to i32
  %i.ad = shl nuw nsw i32 %i.ac, 19
  %i.ae = zext nneg i8 %i.k to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = add nuw nsw i32 %i.j, 131072
  %i.ah = add nuw nsw i32 %i.ag, %i.af
  %.masked8 = and i32 %i.ah, -4064466
  %i.ai = select i1 %2, i32 16, i32 0
  %i.aj = and i32 %i.j, 1024
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = and i1 %1, %i.ak
  %i.am = select i1 %i.al, i32 1024, i32 0
  %i.an = or disjoint i32 %i.w, %i.ai
  %.masked = or i32 %i.an, %i.y
  %i.ao = or disjoint i32 %.masked, %i.z
  %i.ap = or disjoint i32 %i.ao, %i.am
  %i.aq = or disjoint i32 %i.ap, %.masked8
  %i.ar = or i32 %i.aq, %i.o
  %i.as = or i32 %i.ar, %i.ab
  %i.at = or i32 %i.as, %i.ad
  %.sroa.11.0.insert.ext = zext i32 %i.a to i64
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.at to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 4294967808, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN2v88internal7Isolate15GetNextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #2

declare void @_ZN2v88internal12V8FileLogger11ScriptEventENS0_15ScriptEventTypeEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags19ForToplevelFunctionES1_PKNS0_15FunctionLiteralE(i64 %0, i64 %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.12.0.extract.shift = and i64 %0, -4294967296
  %.sroa.16.8.extract.shift = and i64 %1, -65536
  %i.a = tail call noundef zeroext i1 @_ZNK2v88internal15FunctionLiteral13language_modeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.b = and i32 %.sroa.0.0.extract.trunc, -61458
  %i.c = select i1 %i.a, i32 16, i32 0
  %i.d = or disjoint i32 %i.c, %i.b
  %i.e = tail call noundef zeroext i8 @_ZNK2v88internal15FunctionLiteral4kindEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = shl i32 %i.g, 2
  %i.i = and i32 %i.h, 16384
  %i.j = or disjoint i32 %i.d, %i.i
  %i.k = tail call noundef zeroext i1 @_ZNK2v88internal15FunctionLiteral29class_scope_has_private_brandEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.l = select i1 %i.k, i32 4096, i32 0
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = load i32, ptr %i.f, align 4
  %i.o = shl i32 %i.n, 2
  %i.p = and i32 %i.o, 32768
  %i.q = or disjoint i32 %i.m, %i.p
  %i.r = tail call noundef zeroext i1 @_ZNK2v88internal15FunctionLiteral37private_name_lookup_skips_outer_classEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #14
  %i.s = select i1 %i.r, i32 8192, i32 0
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 0
  %i.w = or disjoint i32 %i.q, %i.s
  %i.x = zext i1 %i.v to i32
  %i.y = or disjoint i32 %i.w, %i.x
  %.sroa.0.0.insert.ext = zext i32 %i.y to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.0.extract.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %i.z = shl i32 %i.g, 1
  %i.aa = and i32 %i.z, 1792
  %.sroa.15.8.insert.shift = zext nneg i32 %i.aa to i64
  %.sroa.124.8.insert.ext = zext i8 %i.e to i64
  %.sroa.15.8.insert.insert = or disjoint i64 %.sroa.16.8.extract.shift, %.sroa.124.8.insert.ext
  %.sroa.124.8.insert.insert = or disjoint i64 %.sroa.15.8.insert.insert, %.sroa.15.8.insert.shift
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.124.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZN2v88internal23UnoptimizedCompileFlags7ForTestEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59176 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, i32 0, i32 512        ; 2 uses
  %i.d = load atomic i32, ptr %i.a monotonic, align 4
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i: ; preds = %bb.a
  %i.f = load atomic i32, ptr %i.a monotonic, align 4
  %.fr.i = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr.i, 4
  br i1 %i.g, label %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, label %bb.b

_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i: ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i, %bb.a
  %i.h = or disjoint i32 %i.c, 1024
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i
  %i.i = phi i32 [ %i.h, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.thread.i ], [ %i.c, %_ZNK2v88internal7Isolate22is_block_code_coverageEv.exit.i ]
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1519), align 1, !range !7, !noundef !8
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 323), align 1, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZN2v88internal23UnoptimizedCompileFlagsC2EPNS0_7IsolateEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZNK2v88internal7Isolate34NeedsDetailedOptimizedCodeLineInfoEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  %spec.select.i = select i1 %i.m, i32 1048576, i32 0
end_hunk_0
