inline.NumInlined: 8933
inline.NumDeleted: 4075
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal7Isolate21SetUseCounterCallbackEPFvPNS_7IsolateENS2_17UseCounterFeatureEE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63560
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate10CountUsageENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56008
  %i.c = load atomic i32, ptr %i.b monotonic, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8
  %i.f = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 63560 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  %.idx = shl nuw nsw i64 %2, 2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not714 = icmp eq i64 %2, 0
  br i1 %.not714, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  store ptr %i.j, ptr %i.i, align 8
  store i32 %i.n, ptr %i.m, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr %i.m, align 8
  %.pre16 = load ptr, ptr %i.k, align 8
  %i.q = add nsw i32 %.pre, -1
  %i.r = icmp eq ptr %.pre16, %i.l
  store ptr %i.j, ptr %i.i, align 8
  store i32 %i.q, ptr %i.m, align 8
  br i1 %i.r, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.e, !prof !28

bb.e:                                             ; preds = %._crit_edge
  store ptr %i.l, ptr %i.k, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.015 = phi ptr [ %i.u, %.lr.ph ], [ %1, %bb.d ] ; 2 uses
  %i.s = load i32, ptr %.015, align 4
  %i.t = load ptr, ptr %i.g, align 8
  tail call void %i.t(ptr noundef nonnull %0, i32 noundef %i.s) #46
  %i.u = getelementptr inbounds nuw i8, ptr %.015, i64 4 ; 2 uses
  %.not7 = icmp eq ptr %i.u, %i.p
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal4Heap23IncrementDeferredCountsENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.a, ptr %1, i64 %2) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %._crit_edge.thread, %._crit_edge, %bb.e, %bb.c, %.critedge
  ret void
}

declare void @_ZN2v88internal4Heap23IncrementDeferredCountsENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(2992), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal7Isolate15GetNextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = tail call noundef i32 @_ZN2v88internal4Heap12NextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.a) #46
  ret i32 %i.b
}

declare noundef i32 @_ZN2v88internal4Heap12NextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate18AddDetachedContextENS0_12DirectHandleINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9664
  %i.i = tail call ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull %0, ptr nonnull %i.h, i32 0, ptr %1, i64 0) #46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.k = load i64, ptr %i.i, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = add i64 %i.l, -55464
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9664
  store i64 %i.k, ptr %i.o, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef, ptr, i32, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate28CheckDetachedContextsAfterGCEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9664 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 15
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32                        ; 3 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 8 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i64, ptr %i.h, align 8
  %.pre129 = add i64 %.pre, 15
  %.pre130 = inttoptr i64 %.pre129 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi131 = phi ptr [ %.pre130, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %.028.lcssa = phi i32 [ %.1, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 4 uses
  %i.q = sext i32 %.028.lcssa to i64              ; 3 uses
  %i.r = shl nsw i64 %i.q, 32
  store atomic volatile i64 %i.r, ptr %.pre-phi131 monotonic, align 8
  %i.s = icmp slt i32 %.028.lcssa, %i.n
  br i1 %i.s, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %._crit_edge
  %i.t = sub i32 %i.n, %.028.lcssa
  %i.u = freeze i32 %i.t                          ; 2 uses
  %i.v = add i32 %i.u, -1
  %xtraiter = and i32 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol

.lr.ph114.prol:                                   ; preds = %.lr.ph114.preheader, %.lr.ph114.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph114.prol ], [ %i.q, %.lr.ph114.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph114.prol ], [ 0, %.lr.ph114.preheader ]
  %i.w = load i64, ptr %i.h, align 8
  %i.x = shl nsw i64 %indvars.iv122.prol, 3
  %i.y = add nsw i64 %i.x, 23
  %i.z = add i64 %i.y, %i.w
  %i.aa = inttoptr i64 %i.z to ptr
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %indvars.iv.next123.prol = add nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol, !llvm.loop !281

.lr.ph114.prol.loopexit:                          ; preds = %.lr.ph114.prol, %.lr.ph114.preheader
  %indvars.iv122.unr = phi i64 [ %i.q, %.lr.ph114.preheader ], [ %indvars.iv.next123.prol, %.lr.ph114.prol ]
  %i.ab = icmp ult i32 %i.v, 3
  br i1 %i.ab, label %._crit_edge115, label %.lr.ph114

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %.028111 = phi i32 [ %.1, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.ac = load i64, ptr %i.h, align 8             ; 6 uses
  %i.ad = shl i64 %indvars.iv, 3                  ; 2 uses
  %i.ae = add nuw i64 %i.ad, 23
  %i.af = add i64 %i.ac, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 5 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ak = add nuw nsw i64 %i.ad, 31
  %i.al = add i64 %i.ak, %i.ac
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.ao = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl i32 %.028111, 3                     ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, 23
  %i.at = add i64 %i.as, %i.ac                    ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  store atomic volatile i64 %i.ah, ptr %i.au monotonic, align 8
  %i.av = trunc i64 %i.ah to i1
  br i1 %i.av, label %bb.c, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.aw = and i64 %i.ah, -3                       ; 2 uses
  %i.ax = and i64 %i.ac, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 262144       ; 2 uses
  %i.ba = and i64 %i.az, 32
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %i.az, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bc = and i64 %i.ah, -262144
  %i.bd = inttoptr i64 %i.bc to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.bd, align 262144
  %i.be = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not39.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ac, i64 noundef %i.at, i64 %i.aw) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ac, i64 %i.at, i64 %i.aw) #46
  br label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.b, %bb.f, %bb.g
  %i.bf = load i64, ptr %i.h, align 8
  %i.bg = and i64 %i.an, -4294967296
  %i.bh = add i64 %i.bg, 4294967296
  %i.bi = add i32 %i.aq, 8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add nsw i64 %i.bj, 23
  %i.bl = add i64 %i.bk, %i.bf
  %i.bm = inttoptr i64 %i.bl to ptr
  store atomic volatile i64 %i.bh, ptr %i.bm monotonic, align 8
  %i.bn = add nsw i32 %.028111, 2
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, %.lr.ph
  %.1 = phi i32 [ %.028111, %.lr.ph ], [ %i.bn, %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !283

.lr.ph114:                                        ; preds = %.lr.ph114.prol.loopexit, %.lr.ph114
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %.lr.ph114 ], [ %indvars.iv122.unr, %.lr.ph114.prol.loopexit ] ; 5 uses
  %i.bp = load i64, ptr %i.h, align 8
  %i.bq = shl nsw i64 %indvars.iv122, 3
  %i.br = add nsw i64 %i.bq, 23
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = inttoptr i64 %i.bs to ptr
  store atomic volatile i64 0, ptr %i.bt monotonic, align 8
  %i.bu = load i64, ptr %i.h, align 8
  %indvars.iv.next123 = shl i64 %indvars.iv122, 3
  %i.bv = add i64 %indvars.iv.next123, 31
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = inttoptr i64 %i.bw to ptr
  store atomic volatile i64 0, ptr %i.bx monotonic, align 8
  %i.by = load i64, ptr %i.h, align 8
  %indvars.iv.next123.1 = shl i64 %indvars.iv122, 3
  %i.bz = add i64 %indvars.iv.next123.1, 39
  %i.ca = add i64 %i.bz, %i.by
  %i.cb = inttoptr i64 %i.ca to ptr
  store atomic volatile i64 0, ptr %i.cb monotonic, align 8
  %i.cc = load i64, ptr %i.h, align 8
  %indvars.iv.next123.2 = shl i64 %indvars.iv122, 3
  %i.cd = add i64 %indvars.iv.next123.2, 47
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = inttoptr i64 %i.ce to ptr
  store atomic volatile i64 0, ptr %i.cf monotonic, align 8
  %indvars.iv.next123.3 = add nsw i64 %indvars.iv122, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next123.3 to i32
  %exitcond.not.3 = icmp eq i32 %lftr.wideiv.3, %i.n
  br i1 %exitcond.not.3, label %._crit_edge115, label %.lr.ph114, !llvm.loop !284

._crit_edge115:                                   ; preds = %.lr.ph114.prol.loopexit, %.lr.ph114, %._crit_edge
  %.2.lcssa = phi i32 [ %.028.lcssa, %._crit_edge ], [ %i.n, %.lr.ph114 ], [ %i.n, %.lr.ph114.prol.loopexit ] ; 3 uses
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1161), align 1, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge115
  %i.ci = sub nsw i32 %i.n, %.2.lcssa
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.81, i32 noundef %i.ci, i32 noundef %i.n) #46
  %i.cj = icmp sgt i32 %.2.lcssa, 0
  br i1 %i.cj, label %.lr.ph119.preheader, label %.loopexit

.lr.ph119.preheader:                              ; preds = %bb.i
  %i.ck = zext nneg i32 %.2.lcssa to i64
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %bb.k
  %indvars.iv125 = phi i64 [ 0, %.lr.ph119.preheader ], [ %indvars.iv.next126, %bb.k ] ; 2 uses
  %i.cl = load i64, ptr %i.h, align 8             ; 2 uses
  %i.cm = shl i64 %indvars.iv125, 3               ; 2 uses
  %i.cn = add nuw i64 %i.cm, 23
  %i.co = add i64 %i.cl, %i.cn
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cr = add nuw nsw i64 %i.cm, 31
  %i.cs = add i64 %i.cr, %i.cl
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8 ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %i.cv, 0
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = lshr i64 %i.cu, 32
  %i.cy = trunc nuw i64 %i.cx to i32              ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 3
  br i1 %i.cz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph119
  %i.da = inttoptr i64 %i.cq to ptr
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.82, ptr noundef %i.da, i32 noundef %i.cy) #46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph119
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next126, %i.ck
  br i1 %i.db, label %.lr.ph119, label %.loopexit, !llvm.loop !285

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.a, %._crit_edge115
  store ptr %i.b, ptr %i.a, align 8
  %i.dc = load i32, ptr %i.e, align 8
  %i.dd = add nsw i32 %i.dc, -1
  store i32 %i.dd, ptr %i.e, align 8
  %i.de = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.de, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !5

bb.l:                                             ; preds = %.loopexit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate12DetachGlobalENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #46
  %i.h = load atomic ptr, ptr %i.d monotonic, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #46
  store atomic ptr %i.j, ptr %i.d release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i:  ; preds = %bb.c, %bb.b
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #46
  br label %_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit

_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit: ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.k = load i64, ptr %1, align 8
  store i64 %i.k, ptr %2, align 8
  %i.l = call noundef i32 @_ZN2v88internal13NativeContext15GetErrorsThrownEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #46
  call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.l) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.m = load i64, ptr %1, align 8
  store i64 %i.m, ptr %3, align 8
  %i.n = call i64 @_ZNK2v88internal7Context12global_proxyEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit
  %i.t = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit, %bb.d
  %.0.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %_ZN2v88internal8Counters25errors_thrown_per_contextEv.exit ] ; 5 uses
  %i.u = ptrtoint ptr %.0.i.i to i64
  %i.v = add i64 %i.u, 8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.w, ptr %i.o, align 8
  store i64 %i.n, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  call void @_ZN2v88internal8JSObject17ForceSetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.x) #46
  %i.y = load i64, ptr %.0.i.i, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ae = add i64 %i.ab, -1                       ; 3 uses
  %i.af = inttoptr i64 %i.ae to ptr
  store atomic volatile i64 %i.ad, ptr %i.af monotonic, align 8
  call void @_ZN2v88internal4Heap28NotifyObjectLayoutChangeDoneENS0_6TaggedINS0_10HeapObjectEEE(i64 %i.ab) #46
  %i.ag = trunc i64 %i.ad to i1
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ah = and i64 %i.ab, -262144
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 262144       ; 2 uses
  %i.ak = and i64 %i.aj, 32
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = and i64 %i.aj, 25
  %.not38.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not38.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = and i64 %i.ad, -262144
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.an, align 262144
  %i.ao = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not39.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ab, i64 noundef %i.ae, i64 %i.ad) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i, label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ab, i64 %i.ae, i64 %i.ad) #46
  br label %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit: ; preds = %_ZN2v88internal6HandleINS0_13JSGlobalProxyEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.h, %bb.i
  %i.ap = load i64, ptr %.0.i.i, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 4 uses
  %i.at = load i64, ptr %i.x, align 8             ; 5 uses
  %i.au = add i64 %i.as, 31                       ; 3 uses
  %i.av = inttoptr i64 %i.au to ptr
  store atomic volatile i64 %i.at, ptr %i.av monotonic, align 8
  %i.aw = trunc i64 %i.at to i1
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS_15RelaxedStoreTagENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit
  %i.ax = and i64 %i.as, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 262144       ; 2 uses
  %i.ba = and i64 %i.az, 32
  %.not.i.i.i16 = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %i.az, 25
  %.not38.i.i.i17 = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i17, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = and i64 %i.at, -262144
  %i.bd = inttoptr i64 %i.bc to ptr
  %.sroa.0.0.copyload.i28.i.i.i18 = load i64, ptr %i.bd, align 262144
  %i.be = and i64 %.sroa.0.0.copyload.i28.i.i.i18, 25
  %.not39.i.i.i19 = icmp eq i64 %i.be, 0
  br i1 %.not39.i.i.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.as, i64 noundef %i.au, i64 %i.at) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i16, label %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS_15RelaxedStoreTagENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.as, i64 %i.au, i64 %i.at) #46
  br label %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS_15RelaxedStoreTagENS0_16WriteBarrierModeE.exit

_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS_15RelaxedStoreTagENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal10HeapObject7set_mapEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE.exit, %bb.m, %bb.n
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1160), align 8, !range !13, !noundef !14
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %_ZN2v88internal7Isolate18AddDetachedContextENS0_12DirectHandleINS0_7ContextEEE.exit

bb.o:                                             ; preds = %_ZN2v88internal3Map31set_constructor_or_back_pointerENS0_6TaggedINS0_6ObjectEEENS_15RelaxedStoreTagENS0_16WriteBarrierModeE.exit
  %i.bh = load ptr, ptr %i.o, align 8
  %i.bi = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9664
  %i.bn = call ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %i.bm, i32 0, ptr nonnull %1, i64 0) #46
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.bp = load i64, ptr %i.bn, align 8
end_hunk_0
