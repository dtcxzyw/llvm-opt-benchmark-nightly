Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN = external local_unnamed_addr constant i32, align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.a, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %wide.load10 = load <4 x i32>, ptr %i.c, align 4, !tbaa !8
  %i.d = sitofp reassoc nsz arcp <4 x i32> %wide.load to <4 x float>
  %i.e = sitofp reassoc nsz arcp <4 x i32> %wide.load10 to <4 x float>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load11 = load <4 x float>, ptr %i.f, align 4, !tbaa !10
  %wide.load12 = load <4 x float>, ptr %i.g, align 4, !tbaa !10
  %i.h = fmul reassoc nsz arcp <4 x float> %wide.load11, %i.d
  %i.i = fmul reassoc nsz arcp <4 x float> %wide.load12, %i.e
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> %i.h, ptr %i.j, align 4, !tbaa !10
  store <4 x float> %i.i, ptr %i.k, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = sitofp reassoc nsz arcp i32 %i.n to float
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fmul reassoc nsz arcp float %i.q, %i.o
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %wide.trip.count, -1
  %i.u = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  %i.x = sitofp reassoc nsz arcp i32 %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = fmul reassoc nsz arcp float %i.z, %i.x
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = sitofp reassoc nsz arcp i32 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fmul reassoc nsz arcp float %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_wide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 4
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.a = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.a, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x i64>, ptr %i.b, align 8, !tbaa !15
  %wide.load10 = load <2 x i64>, ptr %i.c, align 8, !tbaa !15
  %i.d = sitofp reassoc nsz arcp <2 x i64> %wide.load to <2 x float>
  %i.e = sitofp reassoc nsz arcp <2 x i64> %wide.load10 to <2 x float>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load11 = load <2 x float>, ptr %i.f, align 4, !tbaa !10
  %wide.load12 = load <2 x float>, ptr %i.g, align 4, !tbaa !10
  %i.h = fmul reassoc nsz arcp <2 x float> %wide.load11, %i.d
  %i.i = fmul reassoc nsz arcp <2 x float> %wide.load12, %i.e
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store <2 x float> %i.h, ptr %i.j, align 4, !tbaa !10
  store <2 x float> %i.i, ptr %i.k, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = sitofp reassoc nsz arcp i64 %i.n to float
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fmul reassoc nsz arcp float %i.q, %i.o
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.t = add nsw i64 %wide.trip.count, -1
  %i.u = icmp eq i64 %indvars.iv.ph, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = sitofp reassoc nsz arcp i64 %i.w to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = fmul reassoc nsz arcp float %i.z, %i.x
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.aa, ptr %i.ab, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.ae = sitofp reassoc nsz arcp i64 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fmul reassoc nsz arcp float %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %5, %4
  %i.b = icmp ult i32 %i.a, %3
  br i1 %i.b, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.c = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = xor i32 %5, -1
  %i.f = icmp ult i32 %i.e, %i.d
  %i.g = icmp ugt i64 %i.c, 4294967295
  %i.h = or i1 %i.f, %i.g
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.i = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %i.h, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = trunc nuw i64 %index to i32
  %i.k = add i32 %5, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !tbaa !8
  %wide.load57 = load <4 x i32>, ptr %i.n, align 4, !tbaa !8
  %i.o = sitofp reassoc nsz arcp <4 x i32> %wide.load to <4 x float>
  %i.p = sitofp reassoc nsz arcp <4 x i32> %wide.load57 to <4 x float>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load58 = load <4 x float>, ptr %i.q, align 4, !tbaa !10
  %wide.load59 = load <4 x float>, ptr %i.r, align 4, !tbaa !10
  %i.s = fmul reassoc nsz arcp <4 x float> %wide.load58, %i.o
  %i.t = fmul reassoc nsz arcp <4 x float> %wide.load59, %i.p
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %i.s, ptr %i.u, align 4, !tbaa !10
  store <4 x float> %i.t, ptr %i.v, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader79
  %i.x = trunc nuw i64 %indvars.iv.ph to i32
  %i.y = add i32 %5, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = sitofp reassoc nsz arcp i32 %i.ab to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul reassoc nsz arcp float %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.af, ptr %i.ag, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader79
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aj = trunc nuw i64 %indvars.iv to i32
  %i.ak = add i32 %5, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = sitofp reassoc nsz arcp i32 %i.an to float
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = fmul reassoc nsz arcp float %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.ar, ptr %i.as, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = trunc nuw i64 %indvars.iv.next to i32
  %i.au = add i32 %5, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = sitofp reassoc nsz arcp i32 %i.ax to float
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fmul reassoc nsz arcp float %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bb, ptr %i.bc, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bd = sub i32 %3, %4                          ; 3 uses
  %i.be = sub i32 %i.bd, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.be) ; 8 uses
  %i.bf = icmp ult i32 %i.bd, %3
  br i1 %i.bf, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bg = zext i32 %i.bd to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bh = sub nsw i64 %wide.trip.count53, %i.bg   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bh, 20
  br i1 %min.iters.check64, label %.lr.ph45.preheader78, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bi = xor i64 %i.bg, -1
  %i.bj = add nsw i64 %i.bi, %wide.trip.count53   ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = xor i32 %.037., -1
  %i.bm = icmp ult i32 %i.bl, %i.bk
  %i.bn = add i32 %5, %.037.
  %i.bo = xor i32 %i.bn, -1
  %i.bp = icmp ult i32 %i.bo, %i.bk
  %i.bq = icmp ugt i64 %i.bj, 4294967295
  %i.br = or i1 %i.bp, %i.bq
  %i.bs = or i1 %i.bm, %i.br
  br i1 %i.bs, label %.lr.ph45.preheader78, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %8 = ptrtoaddr ptr %2 to i64
  %i.bt = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.be)
  %umin = zext i32 %i.bt to i64
  %i.bu = shl nuw nsw i64 %umin, 2
  %9 = ptrtoaddr ptr %1 to i64
  %i.bv = shl nuw nsw i64 %i.bg, 2
  %10 = add i64 %i.bu, %8
  %i.bw = add i64 %i.bv, %9
  %i.bx = sub i64 %i.bw, %10
  %diff.check62 = icmp ugt i64 %i.bx, -32
  br i1 %diff.check62, label %.lr.ph45.preheader78, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bh, -8                    ; 4 uses
  %i.by = add nsw i64 %n.vec66, %i.bg
  %i.bz = trunc i64 %n.vec66 to i32
  %i.ca = add i32 %.037., %i.bz                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bg
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.cb = trunc i64 %index68 to i32
  %i.cc = add i32 %.037., %i.cb                   ; 2 uses
  %i.cd = add i32 %i.cc, %5
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load69 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !8
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !8
  %i.ch = sitofp reassoc nsz arcp <4 x i32> %wide.load69 to <4 x float>
  %i.ci = sitofp reassoc nsz arcp <4 x i32> %wide.load70 to <4 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load71 = load <4 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load72 = load <4 x float>, ptr %i.cj, align 4, !tbaa !10
  %i.ck = fmul reassoc nsz arcp <4 x float> %wide.load71, %i.ch
  %i.cl = fmul reassoc nsz arcp <4 x float> %wide.load72, %i.ci
  %i.cm = zext i32 %i.cc to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x float> %i.ck, ptr %i.cn, align 4, !tbaa !10
  store <4 x float> %i.cl, ptr %i.co, align 4, !tbaa !10
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.cp, label %middle.block74, label %vector.body67, !llvm.loop !24

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bh, %n.vec66
  br i1 %cmp.n75, label %._crit_edge46, label %.lr.ph45.preheader78

.lr.ph45.preheader78:                             ; preds = %vector.memcheck61, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block74
  %indvars.iv50.ph = phi i64 [ %i.bg, %vector.memcheck61 ], [ %i.bg, %vector.scevcheck60 ], [ %i.bg, %.lr.ph45.preheader ], [ %i.by, %middle.block74 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck61 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.ca, %middle.block74 ] ; 4 uses
  %i.cq = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter80 = and i64 %i.cq, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader78
  %i.cr = add i32 %.142.ph, %5
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sitofp reassoc nsz arcp i32 %i.cu to float
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10
  %i.cy = fmul reassoc nsz arcp float %i.cx, %i.cv
  %i.cz = zext i32 %.142.ph to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !10
  %i.db = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader78
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader78 ], [ %i.db, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader78 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader78 ], [ %i.db, %.lr.ph45.prol ]
  %i.dc = add nsw i64 %wide.trip.count53, -1
  %i.dd = icmp eq i64 %indvars.iv50.ph, %i.dc
  br i1 %i.dd, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.ea, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.de = add i32 %.142, %5
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = sitofp reassoc nsz arcp i32 %i.dh to float
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10
  %i.dl = fmul reassoc nsz arcp float %i.dk, %i.di
  %i.dm = zext i32 %.142 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dm
  store float %i.dl, ptr %i.dn, align 4, !tbaa !10
  %i.do = add i32 %.142, 1                        ; 2 uses
  %i.dp = add i32 %i.do, %5
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = sitofp reassoc nsz arcp i32 %i.ds to float
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !10
  %i.dx = fmul reassoc nsz arcp float %i.dw, %i.dt
  %i.dy = zext i32 %i.do to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy
  store float %i.dx, ptr %i.dz, align 4, !tbaa !10
  %i.ea = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !25

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block74, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.ca, %middle.block74 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.ea, %.lr.ph45 ] ; 2 uses
  %i.eb = icmp ult i32 %.1.lcssa, %3
  br i1 %i.eb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.ec = zext i32 %.1.lcssa to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ec
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial_wide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %5, %4
  %i.b = icmp ult i32 %i.a, %3
  br i1 %i.b, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.c = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = xor i32 %5, -1
  %i.f = icmp ult i32 %i.e, %i.d
  %i.g = icmp ugt i64 %i.c, 4294967295
  %i.h = or i1 %i.f, %i.g
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.i = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.i, -16
  %or.cond = or i1 %i.h, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = trunc nuw i64 %index to i32
  %i.k = add i32 %5, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !15
  %wide.load57 = load <2 x i64>, ptr %i.n, align 8, !tbaa !15
  %i.o = sitofp reassoc nsz arcp <2 x i64> %wide.load to <2 x float>
  %i.p = sitofp reassoc nsz arcp <2 x i64> %wide.load57 to <2 x float>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load58 = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %wide.load59 = load <2 x float>, ptr %i.r, align 4, !tbaa !10
  %i.s = fmul reassoc nsz arcp <2 x float> %wide.load58, %i.o
  %i.t = fmul reassoc nsz arcp <2 x float> %wide.load59, %i.p
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !10
  store <2 x float> %i.t, ptr %i.v, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader79
  %i.x = trunc nuw i64 %indvars.iv.ph to i32
  %i.y = add i32 %5, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = sitofp reassoc nsz arcp i64 %i.ab to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul reassoc nsz arcp float %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.af, ptr %i.ag, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader79
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aj = trunc nuw i64 %indvars.iv to i32
  %i.ak = add i32 %5, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ao = sitofp reassoc nsz arcp i64 %i.an to float
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = fmul reassoc nsz arcp float %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.ar, ptr %i.as, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = trunc nuw i64 %indvars.iv.next to i32
  %i.au = add i32 %5, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.ay = sitofp reassoc nsz arcp i64 %i.ax to float
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fmul reassoc nsz arcp float %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bb, ptr %i.bc, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bd = sub i32 %3, %4                          ; 3 uses
  %i.be = sub i32 %i.bd, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.be) ; 8 uses
  %i.bf = icmp ult i32 %i.bd, %3
  br i1 %i.bf, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bg = zext i32 %i.bd to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bh = sub nsw i64 %wide.trip.count53, %i.bg   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bh, 18
  br i1 %min.iters.check64, label %.lr.ph45.preheader78, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bi = xor i64 %i.bg, -1
  %i.bj = add nsw i64 %i.bi, %wide.trip.count53   ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = xor i32 %.037., -1
  %i.bm = icmp ult i32 %i.bl, %i.bk
  %i.bn = add i32 %5, %.037.
  %i.bo = xor i32 %i.bn, -1
  %i.bp = icmp ult i32 %i.bo, %i.bk
  %i.bq = icmp ugt i64 %i.bj, 4294967295
  %i.br = or i1 %i.bp, %i.bq
  %i.bs = or i1 %i.bm, %i.br
  br i1 %i.bs, label %.lr.ph45.preheader78, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %8 = ptrtoaddr ptr %2 to i64
  %i.bt = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.be)
  %umin = zext i32 %i.bt to i64
  %i.bu = shl nuw nsw i64 %umin, 2
  %9 = ptrtoaddr ptr %1 to i64
  %i.bv = shl nuw nsw i64 %i.bg, 2
  %10 = add i64 %i.bu, %8
  %i.bw = add i64 %i.bv, %9
  %i.bx = sub i64 %i.bw, %10
  %diff.check62 = icmp ugt i64 %i.bx, -16
  br i1 %diff.check62, label %.lr.ph45.preheader78, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bh, -4                    ; 4 uses
  %i.by = add nsw i64 %n.vec66, %i.bg
  %i.bz = trunc i64 %n.vec66 to i32
  %i.ca = add i32 %.037., %i.bz                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bg
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.cb = trunc i64 %index68 to i32
  %i.cc = add i32 %.037., %i.cb                   ; 2 uses
  %i.cd = add i32 %i.cc, %5
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load69 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !15
  %wide.load70 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !15
  %i.ch = sitofp reassoc nsz arcp <2 x i64> %wide.load69 to <2 x float>
  %i.ci = sitofp reassoc nsz arcp <2 x i64> %wide.load70 to <2 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load71 = load <2 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load72 = load <2 x float>, ptr %i.cj, align 4, !tbaa !10
  %i.ck = fmul reassoc nsz arcp <2 x float> %wide.load71, %i.ch
  %i.cl = fmul reassoc nsz arcp <2 x float> %wide.load72, %i.ci
  %i.cm = zext i32 %i.cc to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store <2 x float> %i.ck, ptr %i.cn, align 4, !tbaa !10
  store <2 x float> %i.cl, ptr %i.co, align 4, !tbaa !10
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.cp, label %middle.block74, label %vector.body67, !llvm.loop !28

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bh, %n.vec66
  br i1 %cmp.n75, label %._crit_edge46, label %.lr.ph45.preheader78

.lr.ph45.preheader78:                             ; preds = %vector.memcheck61, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block74
  %indvars.iv50.ph = phi i64 [ %i.bg, %vector.memcheck61 ], [ %i.bg, %vector.scevcheck60 ], [ %i.bg, %.lr.ph45.preheader ], [ %i.by, %middle.block74 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck61 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.ca, %middle.block74 ] ; 4 uses
  %i.cq = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter80 = and i64 %i.cq, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader78
  %i.cr = add i32 %.142.ph, %5
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !15
  %i.cv = sitofp reassoc nsz arcp i64 %i.cu to float
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10
  %i.cy = fmul reassoc nsz arcp float %i.cx, %i.cv
  %i.cz = zext i32 %.142.ph to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !10
  %i.db = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader78
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader78 ], [ %i.db, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader78 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader78 ], [ %i.db, %.lr.ph45.prol ]
  %i.dc = add nsw i64 %wide.trip.count53, -1
  %i.dd = icmp eq i64 %indvars.iv50.ph, %i.dc
  br i1 %i.dd, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.ea, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.de = add i32 %.142, %5
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !15
  %i.di = sitofp reassoc nsz arcp i64 %i.dh to float
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10
  %i.dl = fmul reassoc nsz arcp float %i.dk, %i.di
  %i.dm = zext i32 %.142 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dm
  store float %i.dl, ptr %i.dn, align 4, !tbaa !10
  %i.do = add i32 %.142, 1                        ; 2 uses
  %i.dp = add i32 %i.do, %5
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !15
  %i.dt = sitofp reassoc nsz arcp i64 %i.ds to float
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !10
  %i.dx = fmul reassoc nsz arcp float %i.dw, %i.dt
  %i.dy = zext i32 %i.do to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy
  store float %i.dx, ptr %i.dz, align 4, !tbaa !10
  %i.ea = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !29

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block74, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.ca, %middle.block74 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.ea, %.lr.ph45 ] ; 2 uses
  %i.eb = icmp ult i32 %.1.lcssa, %3
  br i1 %i.eb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.ec = zext i32 %.1.lcssa to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ec
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 32
  %i.b = icmp ugt i32 %2, 16
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader149.split.preheader, label %.lr.ph185.us.preheader

.lr.ph185.us.preheader:                           ; preds = %bb.b
  %i.c = sub i32 %1, %2
  %i.d = zext i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.e, i1 false), !tbaa !17
  %i.f = zext i32 %i.c to i64
  %wide.trip.count272 = zext i32 %2 to i64        ; 6 uses
  %i.g = add nsw i64 %wide.trip.count272, -1      ; 2 uses
  %min.iters.check491 = icmp ult i32 %2, 4
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp ugt i64 %i.g, 4294967295
  %n.vec493 = and i64 %wide.trip.count272, 4294967292 ; 3 uses
  %cmp.n502 = icmp eq i64 %n.vec493, %wide.trip.count272
  %xtraiter = and i64 %wide.trip.count272, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count272, -1
  br label %.lr.ph185.us

.preheader149.split.preheader:                    ; preds = %bb.b
  %i.k = add i32 %1, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  br label %.preheader

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge.us
  %indvars.iv274 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next275, %._crit_edge.us ] ; 8 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv274
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = fpext reassoc nsz arcp float %i.m to double ; 4 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph185.us
  %i.o = trunc i64 %indvars.iv274 to i32
  %i.p = xor i32 %i.o, -1
  %i.q = icmp ult i32 %i.p, %i.h
  %i.r = or i1 %i.q, %i.i
  br i1 %i.r, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body494 ] ; 3 uses
  %i.s = add nuw i64 %index495, %indvars.iv274
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load496 = load <2 x float>, ptr %i.u, align 4, !tbaa !10
  %wide.load497 = load <2 x float>, ptr %i.v, align 4, !tbaa !10
  %i.w = fpext reassoc nsz arcp <2 x float> %wide.load496 to <2 x double>
  %i.x = fpext reassoc nsz arcp <2 x float> %wide.load497 to <2 x double>
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index495 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load498 = load <2 x double>, ptr %i.y, align 8, !tbaa !17
  %wide.load499 = load <2 x double>, ptr %i.z, align 8, !tbaa !17
  %i.aa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.w, <2 x double> %wide.load498)
  %i.ab = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.x, <2 x double> %wide.load499)
  store <2 x double> %i.aa, ptr %i.y, align 8, !tbaa !17
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !17
  %index.next500 = add nuw i64 %index495, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.ac, label %middle.block501, label %vector.body494, !llvm.loop !30

middle.block501:                                  ; preds = %vector.body494
  br i1 %cmp.n502, label %._crit_edge.us, label %scalar.ph490.preheader

end_hunk_0
