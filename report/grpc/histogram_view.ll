Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/histogram_view?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK9grpc_core13HistogramView5CountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.056.epil = phi double [ %.056.epil.init, %.epil.preheader ], [ %i.j, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = uitofp i64 %i.h to double
  %i.j = fadd double %.056.epil, %i.i             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %bb.b ]
  ret double %.05.lcssa

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.056 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.ac, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = uitofp i64 %i.l to double
  %i.n = fadd double %.056, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = uitofp i64 %i.q to double
  %i.s = fadd double %i.n, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = uitofp i64 %i.v to double
  %i.x = fadd double %i.s, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ab = uitofp i64 %i.aa to double
  %i.ac = fadd double %i.x, %i.ab                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.02329 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.i, %bb.c ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = uitofp i64 %i.g to double
  %i.i = fadd double %.02329, %i.h                ; 4 uses
  %i.j = fcmp ult double %i.i, %1
  br i1 %i.j, label %bb.c, label %._crit_edge.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %._crit_edge.loopexit.split.loop.exit ], [ %i.b, %bb.c ] ; 3 uses
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.i, %._crit_edge.loopexit.split.loop.exit ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = fcmp oeq double %.1, %1
  br i1 %i.l, label %.preheader, label %bb.e

.preheader:                                       ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = zext i32 %.0.lcssa to i64                  ; 2 uses
  %i.n = add i32 %.0.lcssa, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.n) ; 2 uses
  %indvars.iv.next3949 = add nuw nsw i64 %2, 1    ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.next3949 to i32 ; 2 uses
  %i.p = icmp sgt i32 %i.b, %i.o
  br i1 %i.p, label %.lr.ph51.preheader, label %._crit_edge53

.lr.ph51.preheader:                               ; preds = %.preheader
  %3 = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %.lr.ph51

bb.d:                                             ; preds = %.lr.ph51
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv.next3950, 1 ; 2 uses
  %i.q = trunc nuw i64 %indvars.iv.next39 to i32  ; 2 uses
  %i.r = icmp sgt i32 %i.b, %i.q
  br i1 %i.r, label %.lr.ph51, label %._crit_edge53, !llvm.loop !2

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.d
  %i.s = phi i32 [ %i.q, %bb.d ], [ %i.o, %.lr.ph51.preheader ]
  %indvars.iv.next3950 = phi i64 [ %indvars.iv.next39, %bb.d ], [ %indvars.iv.next3949, %.lr.ph51.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next3950
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.d, label %._crit_edge52, !llvm.loop !2

._crit_edge52:                                    ; preds = %.lr.ph51
  br label %._crit_edge53, !llvm.loop !2

._crit_edge53:                                    ; preds = %bb.d, %._crit_edge52, %.preheader
  %.024.lcssa = phi i32 [ %i.s, %._crit_edge52 ], [ %smax, %.preheader ], [ %smax, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = zext nneg i32 %.024.lcssa to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.ac = add nsw i32 %i.ab, %i.y
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %4 = zext nneg i32 %.0.lcssa to i64             ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %4
  %i.ai = load <2 x i32>, ptr %i.ah, align 4, !tbaa !22
  %i.aj = sitofp <2 x i32> %i.ai to <2 x double>  ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.am = fsub nnan double %i.al, %i.ak
  %i.an = fsub double %.1, %1
  %i.ao = fmul double %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %4
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.at = uitofp i64 %i.as to double
  %i.au = fdiv double %i.ao, %i.at
  %i.av = fsub double %i.al, %i.au
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge53
  %.025 = phi double [ %i.ae, %._crit_edge53 ], [ %i.av, %bb.e ]
  ret double %.025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK9grpc_core13HistogramView10PercentileEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 5 uses
  %.056.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.y, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = uitofp i64 %i.h to double
  %i.j = fadd double %.056.i, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = uitofp i64 %i.m to double
  %i.o = fadd double %i.j, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = uitofp i64 %i.r to double
  %i.t = fadd double %i.o, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = uitofp i64 %i.w to double
  %i.y = fadd double %i.t, %i.x                   ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa, label %bb.b, !llvm.loop !0

_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK9grpc_core13HistogramView5CountEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa ]
  %.056.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.y, %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %.056.i.epil = phi double [ %.056.i.epil.init, %.epil.preheader ], [ %i.ac, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ab = uitofp i64 %i.aa to double
  %i.ac = fadd double %.056.i.epil, %i.ab         ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK9grpc_core13HistogramView5CountEv.exit, label %bb.c, !llvm.loop !24

_ZNK9grpc_core13HistogramView5CountEv.exit:       ; preds = %bb.c, %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa
  %.lcssa37 = phi double [ %i.y, %_ZNK9grpc_core13HistogramView5CountEv.exit.unr-lcssa ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ad = fcmp oeq double %.lcssa37, 0.000000e+00
  br i1 %i.ad, label %_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZNK9grpc_core13HistogramView5CountEv.exit
  %i.ae = fmul double %1, %.lcssa37
  %i.af = fdiv double %i.ae, 1.000000e+02         ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i6
  %indvars.iv.i8 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i9, %bb.e ] ; 3 uses
  %.02329.i = phi double [ 0.000000e+00, %.lr.ph.i6 ], [ %i.aj, %bb.e ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.ai = uitofp i64 %i.ah to double
  %i.aj = fadd double %.02329.i, %i.ai            ; 4 uses
  %i.ak = fcmp ult double %i.aj, %i.af
  br i1 %i.ak, label %bb.e, label %._crit_edge.loopexit.split.loop.exit.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1 ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.next.i9, %wide.trip.count.i
  br i1 %exitcond.not.i10, label %._crit_edge.i, label %bb.d, !llvm.loop !1

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.d
  %i.al = trunc nuw nsw i64 %indvars.iv.i8 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.al, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.b, %bb.e ] ; 3 uses
  %i.am = fcmp oeq double %i.aj, %i.af
  br i1 %i.am, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %._crit_edge.i
  %2 = zext i32 %.0.lcssa.i to i64                ; 2 uses
  %i.an = add i32 %.0.lcssa.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.an) ; 2 uses
  %indvars.iv.next39.i29 = add nuw nsw i64 %2, 1  ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next39.i29 to i32 ; 2 uses
  %i.ap = icmp sgt i32 %i.b, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge31

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv.next39.i30, 1 ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv.next39.i to i32 ; 2 uses
  %i.ar = icmp sgt i32 %i.b, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge31, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader.i, %bb.f
  %i.as = phi i32 [ %i.aq, %bb.f ], [ %i.ao, %.preheader.i ]
  %indvars.iv.next39.i30 = phi i64 [ %indvars.iv.next39.i, %bb.f ], [ %indvars.iv.next39.i29, %.preheader.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next39.i30
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.f, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge31, !llvm.loop !2

._crit_edge31:                                    ; preds = %bb.f, %._crit_edge, %.preheader.i
  %.024.lcssa.i = phi i32 [ %i.as, %._crit_edge ], [ %smax.i, %.preheader.i ], [ %smax.i, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !22
  %i.az = zext nneg i32 %.024.lcssa.i to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = add nsw i32 %i.bb, %i.ay
  %i.bd = sitofp i32 %i.bc to double
  %i.be = fmul nnan double %i.bd, 5.000000e-01
  br label %_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %3 = zext nneg i32 %.0.lcssa.i to i64           ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %3
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !22
  %i.bj = sitofp <2 x i32> %i.bi to <2 x double>  ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bm = fsub nnan double %i.bl, %i.bk
  %i.bn = fsub double %i.aj, %i.af
  %i.bo = fmul double %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %3
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = uitofp i64 %i.bq to double
  %i.bs = fdiv double %i.bo, %i.br
  %i.bt = fsub double %i.bl, %i.bs
  br label %_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd.exit

_ZNK9grpc_core13HistogramView22ThresholdForCountBelowEd.exit: ; preds = %bb.a, %bb.g, %._crit_edge31, %_ZNK9grpc_core13HistogramView5CountEv.exit
  %.0 = phi double [ %i.bt, %bb.g ], [ 0.000000e+00, %_ZNK9grpc_core13HistogramView5CountEv.exit ], [ %i.be, %._crit_edge31 ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 long", !11, i64 0}
!14 = !{!"_ZTSN9grpc_core13HistogramViewE", !11, i64 0, !12, i64 8, !8, i64 16, !13, i64 24}
!15 = !{!14, !8, i64 16}
!16 = !{!14, !13, i64 24}
!17 = !{!"long", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !12, i64 8}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
end_hunk_0
