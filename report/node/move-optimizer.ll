inline.NumInlined: 893
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler13MoveOptimizer12CompressGapsEPNS1_11InstructionE:bb.a
  store ptr %i.al, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not39.1.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not39.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.h, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i
  %.02240.1.i = phi ptr [ %i.bw, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.at = load ptr, ptr %.02240.1.i, align 8      ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 5 uses
  %i.av = and i64 %i.au, 7                        ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = icmp eq i64 %i.av, 4
  br i1 %i.ay, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp samesign ugt i64 %i.av, 4
  br i1 %i.az, label %bb.k, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i

bb.k:                                             ; preds = %bb.j
  %i.ba = and i64 %i.au, 8
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = and i64 %i.au, 3840
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = and i1 %i.bd, %i.bb
  %i.bf = and i64 %i.au, -4088
  %i.bg = select i1 %i.be, i64 288, i64 0
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = or disjoint i64 %i.bh, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i: ; preds = %bb.k, %bb.j
  %.02.i.i.i.1.i = phi i64 [ %i.bi, %bb.k ], [ %i.au, %bb.j ]
  %i.bj = load i64, ptr %i.ax, align 8            ; 5 uses
  %i.bk = and i64 %i.bj, 7
  %i.bl = icmp samesign ugt i64 %i.bk, 4
  br i1 %i.bl, label %bb.l, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i

bb.l:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i
  %i.bm = and i64 %i.bj, 8
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = and i64 %i.bj, 3840
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = and i1 %i.bp, %i.bn
  %i.br = and i64 %i.bj, -4088
  %i.bs = select i1 %i.bq, i64 288, i64 0
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = or disjoint i64 %i.bt, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i: ; preds = %bb.l, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i
  %.02.i4.i.i.1.i = phi i64 [ %i.bu, %bb.l ], [ %i.bj, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i ]
  %i.bv = icmp eq i64 %.02.i.i.i.1.i, %.02.i4.i.i.1.i
  br i1 %i.bv, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i, label %bb.m

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i, %.lr.ph.1.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.02240.1.i, i64 8 ; 2 uses
  %.not.1.i = icmp eq ptr %i.bw, %i.as
  br i1 %.not.1.i, label %._crit_edge.loopexit.1.i, label %.lr.ph.1.i

._crit_edge.loopexit.1.i:                         ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i
  %.pre48.i = load ptr, ptr %i.ap, align 8
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.loopexit.1.i, %bb.h
  %i.bx = phi ptr [ %.pre48.i, %._crit_edge.loopexit.1.i ], [ %i.aq, %bb.h ]
  store ptr %i.bx, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

bb.m:                                             ; preds = %bb.i, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i
  %i.by = load <2 x ptr>, ptr %i.a, align 8
  %i.bz = shufflevector <2 x ptr> %i.by, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bz, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

bb.n:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i, %bb.c
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void @_ZN2v88internal8compiler13MoveOptimizer13CompressMovesEPNS1_12ParallelMoveEPNS0_10ZoneVectorIPNS1_12MoveOperandsEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ca, ptr noundef %i.cc)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread: ; preds = %._crit_edge.1.i, %bb.g, %bb.n, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = sext i32 %i.b to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  tail call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.l)
  %.not.not14 = icmp slt i32 %i.b, %i.e
  br i1 %.not.not14, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = sext i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.016 = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  tail call void @_ZN2v88internal8compiler13MoveOptimizer12MigrateMovesEPNS1_11InstructionES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.q, ptr noundef %.016)
  tail call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.q)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizer13OptimizeMergeEPNS1_16InstructionBlockE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.24", align 8     ; 9 uses
  %3 = alloca %"class.v8::internal::SmallZoneMap.20", align 8 ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not350 = icmp eq ptr %i.b, %i.d
  br i1 %.not350, label %._crit_edge353.thread, label %.lr.ph

._crit_edge353.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.0351 = phi ptr [ %i.b, %.lr.ph ], [ %i.ao, %._crit_edge ] ; 2 uses
  %.sroa.088.0.copyload = load i32, ptr %.0351, align 4
  %i.l = sext i32 %.sroa.088.0.copyload to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, 4
  br i1 %i.v, label %.loopexit335, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2130706687
  %or.cond329 = icmp eq i32 %i.af, 0
  br i1 %or.cond329, label %.preheader334, label %.loopexit335

.preheader334:                                    ; preds = %bb.c
  %i.ag = lshr exact i32 %i.ae, 8
  %i.ah = and i32 %i.ag, 65535                    ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %.not132348.not = icmp eq i32 %i.ah, 0
  br i1 %.not132348.not, label %._crit_edge, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %.preheader334
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.ak = add nuw nsw i64 %.0116349, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.d
  %.0116349 = phi i64 [ 0, %.critedge.lr.ph ], [ %i.ak, %bb.d ] ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %.0116349
  %i.am = load i64, ptr %i.al, align 8
  %i.an = and i64 %i.am, 6
  %switch = icmp eq i64 %i.an, 2
  br i1 %switch, label %bb.d, label %.loopexit335

._crit_edge:                                      ; preds = %bb.d, %.preheader334
  %i.ao = getelementptr inbounds nuw i8, ptr %.0351, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.d
  br i1 %.not, label %._crit_edge353, label %bb.b

._crit_edge353:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 0, ptr %3, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge353, %bb.q
  %.0117358 = phi i64 [ 0, %._crit_edge353 ], [ %.3120, %bb.q ]
  %.0123357 = phi ptr [ %i.b, %._crit_edge353 ], [ %i.fx, %bb.q ] ; 2 uses
  %i.az = load ptr, ptr %i.as, align 8            ; 2 uses
  %.sroa.066.0.copyload = load i32, ptr %.0123357, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sext i32 %.sroa.066.0.copyload to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %.1118355 = phi i64 [ %.3120, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %.0117358, %bb.f ] ; 6 uses
  %.0124354 = phi ptr [ %i.fw, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %i.bv, %bb.f ] ; 2 uses
  %i.bx = load ptr, ptr %.0124354, align 8        ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 14 uses
  %i.bz = and i64 %i.by, 7                        ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cc = icmp eq i64 %i.bz, 4                    ; 3 uses
  br i1 %i.cc, label %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273_crit_edge, label %bb.h

._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273_crit_edge: ; preds = %bb.g
  %.sroa.050.0.copyload.pre = load i64, ptr %i.cb, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp samesign ugt i64 %i.bz, 4
  br i1 %i.cd, label %bb.i, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ce = and i64 %i.by, 8
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = and i64 %i.by, 3840
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i1 %i.ch, %i.cf
  %i.cj = and i64 %i.by, -4088
  %i.ck = select i1 %i.ci, i64 288, i64 0
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = or disjoint i64 %i.cl, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.02.i.i.i = phi i64 [ %i.cm, %bb.i ], [ %i.by, %bb.h ]
  %i.cn = load i64, ptr %i.cb, align 8            ; 6 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cp, label %bb.j, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i
  %i.cq = and i64 %i.cn, 8
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = and i64 %i.cn, 3840
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.ct, %i.cr
  %i.cv = and i64 %i.cn, -4088
  %i.cw = select i1 %i.cu, i64 288, i64 0
  %i.cx = or disjoint i64 %i.cv, %i.cw
  %i.cy = or disjoint i64 %i.cx, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i, %bb.j
  %.02.i4.i.i = phi i64 [ %i.cy, %bb.j ], [ %i.cn, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i ]
  %i.cz = icmp eq i64 %.02.i.i.i, %.02.i4.i.i
  br i1 %i.cz, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273: ; preds = %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273_crit_edge, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.da = phi i64 [ %.sroa.050.0.copyload.pre, %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273_crit_edge ], [ %i.cn, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit ] ; 6 uses
  %.val.i = load i64, ptr %3, align 8, !noalias !8 ; 6 uses
  %i.db = icmp eq i64 %.val.i, -1
  br i1 %i.db, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread273
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !8
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !noalias !8 ; 2 uses
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = icmp ult i64 %i.dg, 56
  br i1 %i.dh, label %bb.l, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i, !prof !11

bb.l:                                             ; preds = %bb.k
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i, i64 noundef 56) #13, !noalias !8
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.de, align 8, !noalias !8
  br label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.di = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.df, %bb.k ] ; 2 uses
  %i.dj = inttoptr i64 %i.di to ptr               ; 7 uses
  %i.dk = add i64 %i.di, 56
  store i64 %i.dk, ptr %i.de, align 8, !noalias !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %i.by, ptr %i.dl, align 8, !noalias !8
  %.sroa.5263.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 %i.da, ptr %.sroa.5263.0..sroa_idx264, align 8, !noalias !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i64 1, ptr %i.dm, align 8, !noalias !8
  %.02628.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !8 ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %.02628.i.i.i.i, null
  br i1 %.not29.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i, %.lr.ph.i.i.i.i
  %.02630.i.i.i.i = phi ptr [ %.026.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02628.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i ] ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02630.i.i.i.i, i64 32
  %i.do = icmp ne ptr %.02630.i.i.i.i, %i.dj
  %i.dp = load i64, ptr %i.dn, align 8, !noalias !8 ; 3 uses
  %i.dq = icmp ne i64 %i.by, %i.dp
  %.0.i.i.i.i.i.i.i.i = select i1 %i.cc, i1 %i.do, i1 %i.dq
  %i.dr = icmp ult i64 %i.by, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %.02630.i.i.i.i, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !8 ; 2 uses
  %i.du = icmp ult i64 %i.da, %i.dt
  %.0.i.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i.i, i1 %i.dr, i1 %i.du ; 2 uses
  %.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.02630.i.i.i.i, i64 %.in.v.i.i.i.i
  %.026.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !noalias !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.026.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %.0.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.n

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i
  %.025.lcssa35.i.i.i.i = phi ptr [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.aw, %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE10_Auto_nodeC2IJRS4_iEEERSE_DpOT_.exit.i.i.i ] ; 4 uses
  %.val7.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !8
  %i.dv = icmp eq ptr %.025.lcssa35.i.i.i.i, %.val7.i.i.i.i
  br i1 %i.dv, label %select.unfold.i.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.dw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa35.i.i.i.i) #14, !noalias !8 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !8
  %.phi.trans.insert20.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %.pre21.i.i.i = load i64, ptr %.phi.trans.insert20.i.i.i, align 8, !noalias !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %i.dx = phi i64 [ %.pre21.i.i.i, %bb.m ], [ %i.dt, %._crit_edge.i.i.i.i ]
  %i.dy = phi i64 [ %.pre.i.i.i, %bb.m ], [ %i.dp, %._crit_edge.i.i.i.i ] ; 3 uses
  %.025.lcssa34.i.i.i.i = phi ptr [ %.025.lcssa35.i.i.i.i, %bb.m ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.016.0.i.i.i.i = phi ptr [ %i.dw, %bb.m ], [ %.02630.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dz = and i64 %i.dy, 7
  %i.ea = icmp eq i64 %i.dz, 4
  %i.eb = icmp ne ptr %.sroa.016.0.i.i.i.i, %i.dj
  %i.ec = icmp ne i64 %i.dy, %i.by
  %.0.i.i.i.i14.i.i.i.i = select i1 %i.ea, i1 %i.eb, i1 %i.ec
  %i.ed = icmp ult i64 %i.dy, %i.by
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13MoveOptimizer13OptimizeMergeEPNS1_16InstructionBlockE:bb.a
  br i1 %i.nd, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph366
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 3 uses
  %i.nf = icmp eq i64 %i.nc, 4                    ; 2 uses
  br i1 %i.nf, label %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge, label %bb.bc

._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge: ; preds = %bb.bb
  %.pre401 = load i64, ptr %i.ne, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309

bb.bc:                                            ; preds = %bb.bb
  %i.ng = icmp samesign ugt i64 %i.nc, 4
  br i1 %i.ng, label %bb.bd, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215

bb.bd:                                            ; preds = %bb.bc
  %i.nh = and i64 %i.nb, 8
  %i.ni = icmp eq i64 %i.nh, 0
  %i.nj = and i64 %i.nb, 3840
  %i.nk = icmp ne i64 %i.nj, 0
  %i.nl = and i1 %i.nk, %i.ni
  %i.nm = and i64 %i.nb, -4088
  %i.nn = select i1 %i.nl, i64 288, i64 0
  %i.no = or disjoint i64 %i.nm, %i.nn
  %i.np = or disjoint i64 %i.no, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215: ; preds = %bb.bd, %bb.bc
  %.02.i.i.i216 = phi i64 [ %i.np, %bb.bd ], [ %i.nb, %bb.bc ]
  %i.nq = load i64, ptr %i.ne, align 8            ; 6 uses
  %i.nr = and i64 %i.nq, 7
  %i.ns = icmp samesign ugt i64 %i.nr, 4
  br i1 %i.ns, label %bb.be, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219

bb.be:                                            ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215
  %i.nt = and i64 %i.nq, 8
  %i.nu = icmp eq i64 %i.nt, 0
  %i.nv = and i64 %i.nq, 3840
  %i.nw = icmp ne i64 %i.nv, 0
  %i.nx = and i1 %i.nw, %i.nu
  %i.ny = and i64 %i.nq, -4088
  %i.nz = select i1 %i.nx, i64 288, i64 0
  %i.oa = or disjoint i64 %i.ny, %i.nz
  %i.ob = or disjoint i64 %i.oa, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215, %bb.be
  %.02.i4.i.i218 = phi i64 [ %i.ob, %bb.be ], [ %i.nq, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i215 ]
  %i.oc = icmp eq i64 %.02.i.i.i216, %.02.i4.i.i218
  br i1 %i.oc, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309: ; preds = %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219
  %i.od = phi i64 [ %.pre401, %._ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309_crit_edge ], [ %i.nq, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219 ] ; 3 uses
  %.val8.i = load i64, ptr %3, align 8            ; 5 uses
  switch i64 %.val8.i, label %.lr.ph.i229 [
    i64 -1, label %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i
    i64 0, label %.critedge.i220
  ]

_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309
  %.val.i.i.i = load ptr, ptr %i.ma, align 8      ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i, %.lr.ph.i.i.i.i224
  %.03.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i224 ], [ %.val.i.i.i, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i ] ; 6 uses
  %.082.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i224 ], [ %i.mb, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %i.of = load i64, ptr %i.oe, align 8            ; 3 uses
  %i.og = and i64 %i.of, 7
  %i.oh = icmp eq i64 %i.og, 4
  %i.oi = icmp ne i64 %i.of, %i.nb
  %.0.i.i.i.i.i.i.i.i225 = or i1 %i.oi, %i.oh
  %i.oj = icmp ult i64 %i.of, %i.nb
  %i.ok = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 40
  %i.ol = load i64, ptr %i.ok, align 8
  %i.om = icmp ult i64 %i.ol, %i.od
  %.0.i.i.i.i.i.i226 = select i1 %.0.i.i.i.i.i.i.i.i225, i1 %i.oj, i1 %i.om ; 4 uses
  %.19.i.i.i.i = select i1 %.0.i.i.i.i.i.i226, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i226, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.03.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i227, label %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i224, !llvm.loop !19

_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i224
  %i.on = icmp eq ptr %.19.i.i.i.i, %i.mb
  br i1 %i.on, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i226, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.oo = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.op = icmp ne i64 %i.nb, %i.oo
  %.0.i.i.i.i.i.i.i228 = select i1 %i.nf, i1 true, i1 %i.op
  %i.oq = icmp ult i64 %i.nb, %i.oo
  %.19.i.i.i.i.sroa.sel268.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i226, ptr %.082.i.i.i.i, ptr %.03.i.i.i.i
  %.19.i.i.i.i.sroa.sel268.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel268.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.or = load i64, ptr %.19.i.i.i.i.sroa.sel268.v.sroa.sel.v.sroa.sel, align 8
  %i.os = icmp ult i64 %i.od, %i.or
  %.0.i.i.i.i.i = select i1 %.0.i.i.i.i.i.i.i228, i1 %i.oq, i1 %i.os
  br i1 %.0.i.i.i.i.i, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratoreqERKSF_.exit.thread

.lr.ph.i229:                                      ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230
  %.014.i = phi i64 [ %i.pd, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230 ], [ 0, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.mc, i64 %.014.i ; 3 uses
  %i.ou = load i64, ptr %i.ot, align 8            ; 2 uses
  %i.ov = and i64 %i.ou, 7
  %i.ow = icmp ne i64 %i.ov, 4
  %i.ox = icmp eq i64 %i.ou, %i.nb
  %.0.i.i.i.i.i.i9.i = and i1 %i.ox, %i.ow
  br i1 %.0.i.i.i.i.i.i9.i, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i232, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i232: ; preds = %.lr.ph.i229
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.oz = load i64, ptr %i.oy, align 8            ; 2 uses
  %i.pa = and i64 %i.oz, 7
  %i.pb = icmp ne i64 %i.pa, 4
  %i.pc = icmp eq i64 %i.oz, %i.od
  %.0.i.i.i.i.i.i.i10.i = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %.0.i.i.i.i.i.i.i10.i, label %.loopexit450, label %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230

_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230: ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i232, %.lr.ph.i229
  %i.pd = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.pd, %.val8.i
  br i1 %exitcond.not.i231, label %.critedge.i220, label %.lr.ph.i229, !llvm.loop !20

.critedge.i220:                                   ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.thread.i230, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread309
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %i.mc, i64 %.val8.i
  br label %.loopexit450

.loopexit450:                                     ; preds = %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i232, %.critedge.i220
  %.sroa.012.0.i = phi ptr [ %i.pe, %.critedge.i220 ], [ %i.ot, %_ZNKSt8equal_toIN2v88internal8compiler12_GLOBAL__N_17MoveKeyEEclERKS4_S7_.exit.i232 ]
  %i.pf = icmp ne i64 %.val8.i, -1
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.mc, i64 %.val8.i
  %i.ph = icmp eq ptr %i.pg, %.sroa.012.0.i
  %i.pi = select i1 %i.pf, i1 %i.ph, i1 false
  br i1 %i.pi, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread, label %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratoreqERKSF_.exit.thread

_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratoreqERKSF_.exit.thread: ; preds = %bb.bf, %.loopexit450
  br i1 %.0129369, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratoreqERKSF_.exit.thread
  %i.pj = load ptr, ptr %i.lx, align 8
  %i.pk = call noundef ptr @_ZN2v88internal8compiler12ParallelMove7AddMoveERKNS1_18InstructionOperandES5_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull align 8 dereferenceable(8) %i.ne, ptr noundef %i.pj) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNK2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE8iteratoreqERKSF_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i8 0, i64 16, i1 false)
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219.thread: ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler12_GLOBAL__N_17MoveKeyESt4pairIKS4_mESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %_ZN2v84base8SmallMapINS_8internal7ZoneMapINS2_8compiler12_GLOBAL__N_17MoveKeyEmSt4lessIS6_EEELm16ESt8equal_toIS6_ENS2_11ZoneMapInitIS9_EEE3mapEv.exit.i, %bb.bh, %.loopexit450, %bb.bf, %.lr.ph366, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit219
  %i.pl = getelementptr inbounds nuw i8, ptr %.0115364, i64 8 ; 2 uses
  %.not138 = icmp eq ptr %i.pl, %i.my
  br i1 %.not138, label %._crit_edge367, label %.lr.ph366

bb.bi:                                            ; preds = %._crit_edge372
  %i.pm = load ptr, ptr %i.lc, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void @_ZN2v88internal8compiler13MoveOptimizer13CompressMovesEPNS1_12ParallelMoveEPNS0_10ZoneVectorIPNS1_12MoveOperandsEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.pm, ptr noundef %i.po)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge372
  %i.pp = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.pr = load i32, ptr %i.pq, align 8
  %i.ps = add i32 %i.pr, -1                       ; 2 uses
  %i.pt = load ptr, ptr %i.gc, align 8
  %i.pu = sext i32 %i.pp to i64                   ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 208
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.pu
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.py)
  %.not.not14.i = icmp slt i32 %i.pp, %i.ps
  br i1 %.not.not14.i, label %.lr.ph.preheader.i, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit

.lr.ph.preheader.i:                               ; preds = %bb.bj
  %wide.trip.count.i = sext i32 %i.ps to i64
  br label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.lr.ph.i238, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.pu, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i238 ]
  %.016.i = phi ptr [ %i.py, %.lr.ph.preheader.i ], [ %i.qd, %.lr.ph.i238 ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.pz = load ptr, ptr %i.gc, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 208
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv.next.i
  %i.qd = load ptr, ptr %i.qc, align 8            ; 3 uses
  call void @_ZN2v88internal8compiler13MoveOptimizer12MigrateMovesEPNS1_11InstructionES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.qd, ptr noundef %.016.i)
  call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.qd)
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i239, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %.lr.ph.i238, !llvm.loop !5

_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit: ; preds = %bb.f, %bb.e, %.lr.ph.i238, %._crit_edge353.thread, %bb.bj, %.loopexit332, %._crit_edge361
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit335

.loopexit335:                                     ; preds = %bb.c, %bb.b, %.critedge, %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizer13FinalizeMovesEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.f, %i.h
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.u, label %_ZSt4sortIPPN2v88internal8compiler12MoveOperandsEPFbPKS3_S7_EEvT_SA_T0_.exit

bb.c:                                             ; preds = %.lr.ph, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %.044 = phi ptr [ %i.f, %.lr.ph ], [ %i.bo, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ] ; 2 uses
  %i.q = load ptr, ptr %.044, align 8             ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 8 uses
  %i.s = and i64 %i.r, 7                          ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = icmp eq i64 %i.s, 4
  br i1 %i.v, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp samesign ugt i64 %i.s, 4            ; 3 uses
  br i1 %i.w, label %bb.f, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = and i64 %i.r, 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = and i64 %i.r, 3840
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i1 %i.aa, %i.y
  %i.ac = and i64 %i.r, -4088
  %i.ad = select i1 %i.ab, i64 288, i64 0
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = or disjoint i64 %i.ae, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.02.i.i.i = phi i64 [ %i.af, %bb.f ], [ %i.r, %bb.e ]
  %i.ag = load i64, ptr %i.u, align 8             ; 5 uses
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp samesign ugt i64 %i.ah, 4
  br i1 %i.ai, label %bb.g, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

bb.g:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i
  %i.aj = and i64 %i.ag, 8
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.ag, 3840
  %i.am = icmp ne i64 %i.al, 0
  %i.an = and i1 %i.am, %i.ak
  %i.ao = and i64 %i.ag, -4088
  %i.ap = select i1 %i.an, i64 288, i64 0
  %i.aq = or disjoint i64 %i.ao, %i.ap
  %i.ar = or disjoint i64 %i.aq, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i, %bb.g
  %.02.i4.i.i = phi i64 [ %i.ar, %bb.g ], [ %i.ag, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i ]
  %i.as = icmp eq i64 %.02.i.i.i, %.02.i4.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.at = icmp eq i64 %i.s, 2
  br i1 %i.at, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = and i64 %i.r, 3848
  %i.av = icmp eq i64 %i.au, 8
  %i.aw = and i1 %i.w, %i.av
  br i1 %i.aw, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit

_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit: ; preds = %bb.i
  %i.ax = and i64 %i.r, 8
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = and i64 %i.r, 3840
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = and i1 %i.ay, %i.ba
  %i.bc = and i1 %i.bb, %i.w
  br i1 %i.bc, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread: ; preds = %bb.i, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit, %bb.h
  %i.bd = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bf = icmp ult ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE9push_backERKS4_.exit, label %bb.j, !prof !15

bb.j:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread
  %i.bg = load ptr, ptr %i.k, align 8
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bl)
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread, %bb.j
  %i.bm = phi ptr [ %i.bd, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit.thread ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.i, align 8
  store ptr %i.q, ptr %i.bm, align 8
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread: ; preds = %bb.d, %bb.c, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE9push_backERKS4_.exit, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.044, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.h
  br i1 %.not, label %._crit_edge, label %bb.c

_ZSt4sortIPPN2v88internal8compiler12MoveOperandsEPFbPKS3_S7_EEvT_SA_T0_.exit: ; preds = %._crit_edge
  %i.bp = ptrtoint ptr %i.m to i64
  %i.bq = ptrtoint ptr %i.o to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  tail call void @_ZSt16__introsort_loopIPPN2v88internal8compiler12MoveOperandsElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS3_SA_EEEEvT_SE_T0_T1_(ptr noundef %i.o, ptr noundef %i.m, i64 noundef %i.bv, ptr nonnull @_ZN2v88internal8compiler12_GLOBAL__N_111LoadCompareEPKNS1_12MoveOperandsES5_)
  tail call void @_ZSt22__final_insertion_sortIPPN2v88internal8compiler12MoveOperandsEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS3_SA_EEEEvT_SE_T0_(ptr noundef %i.o, ptr noundef %i.m, ptr nonnull @_ZN2v88internal8compiler12_GLOBAL__N_111LoadCompareEPKNS1_12MoveOperandsES5_)
  %i.bw = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.bx = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not3645 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not3645, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZSt4sortIPPN2v88internal8compiler12MoveOperandsEPFbPKS3_S7_EEvT_SA_T0_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.k

._crit_edge49.loopexit:                           ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread
  %.pre = load ptr, ptr %i.n, align 8
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %_ZSt4sortIPPN2v88internal8compiler12MoveOperandsEPFbPKS3_S7_EEvT_SA_T0_.exit
  %i.ca = phi ptr [ %.pre, %._crit_edge49.loopexit ], [ %i.bw, %_ZSt4sortIPPN2v88internal8compiler12MoveOperandsEPFbPKS3_S7_EEvT_SA_T0_.exit ]
  store ptr %i.ca, ptr %i.l, align 8
  br label %bb.u

bb.k:                                             ; preds = %.lr.ph48, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread
  %.03347 = phi ptr [ null, %.lr.ph48 ], [ %.1, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread ] ; 5 uses
  %.03446 = phi ptr [ %i.bw, %.lr.ph48 ], [ %i.ej, %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread ] ; 2 uses
  %i.cb = load ptr, ptr %.03446, align 8          ; 9 uses
  %i.cc = icmp eq ptr %.03347, null
  br i1 %i.cc, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = load i64, ptr %i.cb, align 8            ; 5 uses
  %i.ce = and i64 %i.cd, 7                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp eq ptr %i.cb, %.03347
  br i1 %i.cg, label %bb.q, label %_ZN2v88internal8compiler12_GLOBAL__N_16IsSlotERKNS1_18InstructionOperandE.exit38.thread

bb.n:                                             ; preds = %bb.l
  %i.ch = icmp samesign ugt i64 %i.ce, 4
  br i1 %i.ch, label %bb.o, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ci = and i64 %i.cd, 8
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = and i64 %i.cd, 3840
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cl, %i.cj
  %i.cn = and i64 %i.cd, -4088
  %i.co = select i1 %i.cm, i64 288, i64 0
  %i.cp = or disjoint i64 %i.cn, %i.co
  %i.cq = or disjoint i64 %i.cp, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i: ; preds = %bb.o, %bb.n
  %.02.i.i = phi i64 [ %i.cq, %bb.o ], [ %i.cd, %bb.n ]
  %i.cr = load i64, ptr %.03347, align 8          ; 5 uses
end_hunk_1
