Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/PolysemousTraining?download=true
inline.NumInlined: 769
inline.NumDeleted: 383
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5faiss27SimulatedAnnealingOptimizer16run_optimizationEPi:bb.a
.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.pr, 8
  br i1 %min.iters.check, label %.lr.ph.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %vec.ind, ptr %i.s, align 4, !tbaa !13
  store <4 x i32> %step.add, ptr %i.t, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader107

.lr.ph.preheader107:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.v = load i8, ptr %i.e, align 1, !tbaa !51, !range !52, !noundef !53
  %i.w = trunc nuw i8 %i.v to i1
  %brmerge.not = and i1 %i.r, %i.w
  br i1 %brmerge.not, label %.lr.ph55, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader107, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader107 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

.lr.ph55:                                         ; preds = %._crit_edge, %bb.c
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.z = phi i32 [ %i.ak, %bb.c ], [ %.pr, %._crit_edge ]
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.ab = trunc nuw nsw i64 %indvars.iv68 to i32  ; 2 uses
  %i.ac = sub nuw nsw i32 %i.z, %i.ab
  %i.ad = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %i.aa, i32 noundef %i.ac)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %.lr.ph55
  %i.ae = add nsw i32 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv68 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !13
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !13
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !13
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !13
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next69, %i.al
  br i1 %i.am, label %.lr.ph55, label %.loopexit, !llvm.loop !55

.thread:                                          ; preds = %.lr.ph55
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit:                                        ; preds = %bb.c, %._crit_edge, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14.07885 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %._crit_edge ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.038.07983 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.m, %._crit_edge ], [ %i.m, %bb.c ] ; 7 uses
  %i.ao = invoke noundef double @_ZN5faiss27SimulatedAnnealingOptimizer8optimizeEPi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %.sroa.038.07983)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %.loopexit
  %i.ap = fptrunc double %i.ao to float
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !35  ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.aq) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = load i32, ptr %i.h, align 4, !tbaa !56
  %i.as = icmp sgt i32 %i.ar, 1
  %i.at = fpext float %i.ap to double             ; 4 uses
  br i1 %i.as, label %bb.g, label %._crit_edge71

bb.g:                                             ; preds = %bb.f
  %i.au = fcmp ogt double %.02856, %i.at
  %i.av = select i1 %i.au, ptr @.str.8, ptr @.str.9
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.02757, double noundef %i.at, ptr noundef nonnull %i.av) ; 0 uses
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %bb.f, %bb.g
  %i.ax = fcmp ogt double %.02856, %i.at
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge71
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !34
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %.sroa.038.07983, i64 %i.ba, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge71
  %.129 = phi double [ %i.at, %bb.h ], [ %.02856, %._crit_edge71 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.038.07983, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = ptrtoint ptr %.sroa.14.07885 to i64
  %i.bc = ptrtoint ptr %.sroa.038.07983 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.07983, i64 noundef %i.bd) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  %i.be = add nuw nsw i32 %.02757, 1              ; 2 uses
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !47
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.b, label %._crit_edge60, !llvm.loop !57

bb.k:                                             ; preds = %.loopexit
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.038.07983, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pn96 = phi { ptr, i32 } [ %i.an, %.thread ], [ %i.bh, %bb.k ]
  %.sroa.038.0798495 = phi ptr [ %i.m, %.thread ], [ %.sroa.038.07983, %bb.k ] ; 2 uses
  %.sroa.14.0788794 = phi ptr [ %i.n, %.thread ], [ %.sroa.14.07885, %bb.k ]
  %i.bi = ptrtoint ptr %.sroa.14.0788794 to i64
  %i.bj = ptrtoint ptr %.sroa.038.0798495 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0798495, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %bb.l, %bb.k
  %.pn97 = phi { ptr, i32 } [ %.pn96, %bb.l ], [ %i.bh, %bb.k ]
  resume { ptr, i32 } %.pn97
}

declare noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5faiss27SimulatedAnnealingOptimizer8optimizeEPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((80, 88)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef double %i.d(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef %1) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.e, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]   ; 3 uses
  %i.i = shl nuw i32 1, %.043
  %.not = icmp sgt i32 %i.h, %i.i
  %i.j = add nuw nsw i32 %.043, 1
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !59

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.o, %bb.c
  %.044.lcssa = phi double [ %i.e, %bb.c ], [ %.145, %bb.o ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.03858 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.o ] ; 4 uses
  %.03957 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %.04056 = phi i32 [ 0, %.lr.ph ], [ %.141, %bb.o ] ; 2 uses
  %.04255 = phi double [ %i.o, %.lr.ph ], [ %i.y, %bb.o ]
  %.04454 = phi double [ %i.e, %.lr.ph ], [ %.145, %bb.o ] ; 2 uses
  %i.x = load double, ptr %i.p, align 8, !tbaa !62
  %i.y = fmul double %.04255, %i.x                ; 4 uses
  %i.z = load i8, ptr %i.q, align 8, !tbaa !63, !range !52, !noundef !53
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ad = tail call noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %i.ab, i32 noundef %i.ac) ; 4 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = tail call noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %i.ae, i32 noundef %.043)
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = xor i32 %i.ag, %i.ad
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !34
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = tail call noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %i.ae, i32 noundef %i.aj) ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.ad
  %i.am = zext i1 %i.al to i32
  %spec.select = add nsw i32 %i.ak, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.ah, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef double %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr noundef %1, i32 noundef %i.ad, i32 noundef %.0) ; 3 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.au = tail call noundef float @_ZN5faiss15RandomGenerator10rand_floatEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.at)
  %i.av = fpext float %i.au to double
  %i.aw = fcmp ogt double %i.y, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = sext i32 %i.ad to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.az = sext i32 %.0 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %1, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !13
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !13
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !13
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !13
  %i.bd = fadd double %.04454, %i.ar              ; 2 uses
  %i.be = add nsw i32 %.04056, 1                  ; 2 uses
  %2 = fcmp ult double %i.ar, 0.000000e+00
  br i1 %2, label %bb.j, label %3

3:                                                ; preds = %bb.i
  %4 = add nsw i32 %.03957, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %3, %bb.h
  %.145 = phi double [ %i.bd, %3 ], [ %i.bd, %bb.i ], [ %.04454, %bb.h ] ; 4 uses
  %.141 = phi i32 [ %i.be, %3 ], [ %i.be, %bb.i ], [ %.04056, %bb.h ] ; 3 uses
  %.1 = phi i32 [ %4, %3 ], [ %.03957, %bb.i ], [ %.03957, %bb.h ] ; 3 uses
  %i.bf = load i32, ptr %i.s, align 4, !tbaa !56  ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 2
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp eq i32 %i.bf, 2
  %i.bi = urem i32 %.03858, 10000
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond = and i1 %i.bj, %i.bh
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.03858, double noundef %.145, double noundef %i.y, i32 noundef %.141, i32 noundef %.1) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.bm = tail call i32 @fflush(ptr noundef %i.bl) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %.not52 = icmp eq ptr %i.bn, null
  br i1 %.not52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bn, ptr noundef nonnull @.str.11, i32 noundef %.03858, double noundef %.145, double noundef %i.y, i32 noundef %.141, i32 noundef %.1) #22 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bp = add nuw nsw i32 %.03858, 1              ; 2 uses
  %i.bq = load i32, ptr %i.k, align 8, !tbaa !60
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.d, label %._crit_edge, !llvm.loop !65

bb.p:                                             ; preds = %._crit_edge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  ret double %.044.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare noundef float @_ZN5faiss15RandomGenerator10rand_floatEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN5faiss19polysemous_training20hamming_compute_costILNS_9SIMDLevelE0EEEdiPKiPKdS6_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.us.preheader, label %._crit_edge29

.preheader.us.preheader:                          ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 3 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv32 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next33, %._crit_edge.us ] ; 3 uses
  %.028.us = phi double [ 0.000000e+00, %.preheader.us.preheader ], [ %i.t, %._crit_edge.us ]
  %i.c = mul nuw nsw i64 %indvars.iv32, %i.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.126.us = phi double [ %.028.us, %.preheader.us ], [ %i.t, %bb.b ]
  %i.f = add nuw nsw i64 %indvars.iv, %i.c        ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.f
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = xor i32 %i.l, %i.e
  %i.n = sext i32 %i.m to i64
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.n)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fsub double %i.h, %i.q                   ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.j, double %i.s, double %.126.us) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !66

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %i.b
  br i1 %exitcond36.not, label %._crit_edge29, label %.preheader.us, !llvm.loop !67

._crit_edge29:                                    ; preds = %._crit_edge.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.t, %._crit_edge.us ]
  ret double %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN5faiss19polysemous_training19hamming_cost_updateILNS_9SIMDLevelE0EEEdiPKiiiPKdS6_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph142, label %._crit_edge

.lr.ph142:                                        ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = zext i32 %3 to i64                       ; 5 uses
  %i.g = zext i32 %2 to i64                       ; 5 uses
  %i.h = zext nneg i32 %0 to i64                  ; 3 uses
  %wide.trip.count155 = zext nneg i32 %0 to i64   ; 3 uses
  %i.i = mul nuw nsw i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.k = mul nuw nsw i64 %i.g, %i.h
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.3, %.loopexit ]
  ret double %.0.lcssa

bb.b:                                             ; preds = %.lr.ph142, %.loopexit
  %indvars.iv152 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next153, %.loopexit ] ; 5 uses
  %.0141 = phi double [ 0.000000e+00, %.lr.ph142 ], [ %.3, %.loopexit ] ; 3 uses
  %i.m = icmp eq i64 %indvars.iv152, %i.g
  br i1 %i.m, label %.lr.ph137, label %bb.d

.lr.ph137:                                        ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !13
  %i.o = load i32, ptr %i.e, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph137, %bb.c
  %indvars.iv147 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next148, %bb.c ] ; 6 uses
  %.1136 = phi double [ %.0141, %.lr.ph137 ], [ %i.au, %bb.c ]
  %i.p = add nuw nsw i64 %indvars.iv147, %i.k     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.p
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv147
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = fneg double %i.t
  %i.x = icmp eq i64 %indvars.iv147, %i.g
  %i.y = icmp eq i64 %indvars.iv147, %i.f
  %i.z = trunc nuw nsw i64 %indvars.iv147 to i32
  %i.aa = select i1 %i.y, i32 %2, i32 %i.z
  %i.ab = select i1 %i.x, i32 %3, i32 %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = xor i32 %i.ae, %i.o
  %i.ag = xor i32 %i.v, %i.n
  %i.ah = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.af, i64 1
  %i.aj = sext <2 x i32> %i.ai to <2 x i64>
  %i.ak = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.aj)
  %i.al = trunc nuw nsw <2 x i64> %i.ak to <2 x i32>
  %i.am = uitofp nneg <2 x i32> %i.al to <2 x double>
  %i.an = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fsub <2 x double> %i.ao, %i.am          ; 2 uses
  %i.aq = fmul <2 x double> %i.ap, %i.ap          ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ar, double %.1136)
  %i.at = extractelement <2 x double> %i.aq, i64 1
  %i.au = tail call double @llvm.fmuladd.f64(double %i.t, double %i.at, double %i.as) ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count155
  br i1 %exitcond151.not, label %.loopexit, label %bb.c, !llvm.loop !68

bb.d:                                             ; preds = %bb.b
  %i.av = icmp eq i64 %indvars.iv152, %i.f
  br i1 %i.av, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.d
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !13
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %.2134 = phi double [ %.0141, %.lr.ph ], [ %i.cd, %bb.e ]
  %i.ay = add nuw nsw i64 %indvars.iv, %i.i       ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
end_hunk_0
