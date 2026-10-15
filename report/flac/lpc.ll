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
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !8
  %wide.load10 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = sitofp reassoc nsz arcp <4 x i32> %wide.load to <4 x float>
  %i.g = sitofp reassoc nsz arcp <4 x i32> %wide.load10 to <4 x float>
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load11 = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %wide.load12 = load <4 x float>, ptr %i.i, align 4, !tbaa !10
  %i.j = fmul reassoc nsz arcp <4 x float> %wide.load11, %i.f
  %i.k = fmul reassoc nsz arcp <4 x float> %wide.load12, %i.g
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %i.j, ptr %i.l, align 4, !tbaa !10
  store <4 x float> %i.k, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = sitofp reassoc nsz arcp i32 %i.p to float
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fmul reassoc nsz arcp float %i.s, %i.q
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = add nsw i64 %wide.trip.count, -1
  %i.w = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = sitofp reassoc nsz arcp i32 %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10
  %i.ac = fmul reassoc nsz arcp float %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = sitofp reassoc nsz arcp i32 %i.af to float
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fmul reassoc nsz arcp float %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
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
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext i32 %3 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %3, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !15
  %wide.load10 = load <2 x i64>, ptr %i.e, align 8, !tbaa !15
  %4 = sitofp reassoc nsz arcp <2 x i64> %wide.load to <2 x float>
  %5 = sitofp reassoc nsz arcp <2 x i64> %wide.load10 to <2 x float>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load11 = load <2 x float>, ptr %i.f, align 4, !tbaa !10
  %wide.load12 = load <2 x float>, ptr %i.g, align 4, !tbaa !10
  %6 = fmul reassoc nsz arcp <2 x float> %wide.load11, %4
  %7 = fmul reassoc nsz arcp <2 x float> %wide.load12, %5
  %8 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %6, ptr %8, align 4, !tbaa !10
  store <2 x float> %7, ptr %9, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %i.k = sitofp reassoc nsz arcp i64 %i.j to float
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = fmul reassoc nsz arcp float %i.m, %i.k
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.p = add nsw i64 %wide.trip.count, -1
  %i.q = icmp eq i64 %indvars.iv.ph, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15
  %i.t = sitofp reassoc nsz arcp i64 %i.s to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = fmul reassoc nsz arcp float %i.v, %i.t
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = sitofp reassoc nsz arcp i64 %i.z to float
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = fmul reassoc nsz arcp float %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i32 %5, %4
  %i.d = icmp ult i32 %i.c, %3
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %5, -1
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = icmp ugt i64 %i.e, 4294967295
  %i.j = or i1 %i.h, %i.i
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = or i1 %i.j, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = trunc nuw i64 %index to i32
  %i.m = add i32 %5, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !8
  %wide.load57 = load <4 x i32>, ptr %i.p, align 4, !tbaa !8
  %i.q = sitofp reassoc nsz arcp <4 x i32> %wide.load to <4 x float>
  %i.r = sitofp reassoc nsz arcp <4 x i32> %wide.load57 to <4 x float>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load58 = load <4 x float>, ptr %i.s, align 4, !tbaa !10
  %wide.load59 = load <4 x float>, ptr %i.t, align 4, !tbaa !10
  %i.u = fmul reassoc nsz arcp <4 x float> %wide.load58, %i.q
  %i.v = fmul reassoc nsz arcp <4 x float> %wide.load59, %i.r
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %i.u, ptr %i.w, align 4, !tbaa !10
  store <4 x float> %i.v, ptr %i.x, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader81
  %i.z = trunc nuw i64 %indvars.iv.ph to i32
  %i.aa = add i32 %5, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = sitofp reassoc nsz arcp i32 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fmul reassoc nsz arcp float %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader81
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader81 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  %i.am = add i32 %5, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = sitofp reassoc nsz arcp i32 %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fmul reassoc nsz arcp float %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.at, ptr %i.au, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = trunc nuw i64 %indvars.iv.next to i32
  %i.aw = add i32 %5, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = sitofp reassoc nsz arcp i32 %i.az to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  %i.bd = fmul reassoc nsz arcp float %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bf = sub i32 %3, %4                          ; 3 uses
  %i.bg = sub i32 %i.bf, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg) ; 8 uses
  %i.bh = icmp ult i32 %i.bf, %3
  br i1 %i.bh, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bi = zext i32 %i.bf to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bj = sub nsw i64 %wide.trip.count53, %i.bi   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bj, 20
  br i1 %min.iters.check64, label %.lr.ph45.preheader80, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %wide.trip.count53   ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = xor i32 %.037., -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = add i32 %5, %.037.
  %i.bq = xor i32 %i.bp, -1
  %i.br = icmp ult i32 %i.bq, %i.bm
  %i.bs = icmp ugt i64 %i.bl, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %i.bo, %i.bt
  br i1 %i.bu, label %.lr.ph45.preheader80, label %vector.memcheck65

vector.memcheck65:                                ; preds = %vector.scevcheck60
  %i.bv = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = shl nuw nsw i64 %i.bi, 2
  %i.bz = add i64 %i.bx, %i.b
  %i.ca = add i64 %i.by, %i.a
  %i.cb = sub i64 %i.ca, %i.bz
  %diff.check66 = icmp ugt i64 %i.cb, -32
  br i1 %diff.check66, label %.lr.ph45.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck65
  %n.vec68 = and i64 %i.bj, -8                    ; 4 uses
  %i.cc = add nsw i64 %n.vec68, %i.bi
  %i.cd = trunc i64 %n.vec68 to i32
  %i.ce = add i32 %.037., %i.cd                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bi
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 3 uses
  %i.cf = trunc i64 %index70 to i32
  %i.cg = add i32 %.037., %i.cf                   ; 2 uses
  %i.ch = add i32 %i.cg, %5
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load71 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !8
  %wide.load72 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !8
  %i.cl = sitofp reassoc nsz arcp <4 x i32> %wide.load71 to <4 x float>
  %i.cm = sitofp reassoc nsz arcp <4 x i32> %wide.load72 to <4 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index70 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load73 = load <4 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load74 = load <4 x float>, ptr %i.cn, align 4, !tbaa !10
  %i.co = fmul reassoc nsz arcp <4 x float> %wide.load73, %i.cl
  %i.cp = fmul reassoc nsz arcp <4 x float> %wide.load74, %i.cm
  %i.cq = zext i32 %i.cg to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x float> %i.co, ptr %i.cr, align 4, !tbaa !10
  store <4 x float> %i.cp, ptr %i.cs, align 4, !tbaa !10
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.ct = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ct, label %middle.block76, label %vector.body69, !llvm.loop !24

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bj, %n.vec68
  br i1 %cmp.n77, label %._crit_edge46, label %.lr.ph45.preheader80

.lr.ph45.preheader80:                             ; preds = %vector.memcheck65, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block76
  %indvars.iv50.ph = phi i64 [ %i.bi, %vector.memcheck65 ], [ %i.bi, %vector.scevcheck60 ], [ %i.bi, %.lr.ph45.preheader ], [ %i.cc, %middle.block76 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck65 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.ce, %middle.block76 ] ; 4 uses
  %i.cu = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter82 = and i64 %i.cu, 1
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader80
  %i.cv = add i32 %.142.ph, %5
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = sitofp reassoc nsz arcp i32 %i.cy to float
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = fmul reassoc nsz arcp float %i.db, %i.cz
  %i.dd = zext i32 %.142.ph to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dd
  store float %i.dc, ptr %i.de, align 4, !tbaa !10
  %i.df = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader80
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader80 ], [ %i.df, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader80 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader80 ], [ %i.df, %.lr.ph45.prol ]
  %i.dg = add nsw i64 %wide.trip.count53, -1
  %i.dh = icmp eq i64 %indvars.iv50.ph, %i.dg
  br i1 %i.dh, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.ee, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.di = add i32 %.142, %5
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = sitofp reassoc nsz arcp i32 %i.dl to float
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.do = load float, ptr %i.dn, align 4, !tbaa !10
  %i.dp = fmul reassoc nsz arcp float %i.do, %i.dm
  %i.dq = zext i32 %.142 to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dq
  store float %i.dp, ptr %i.dr, align 4, !tbaa !10
  %i.ds = add i32 %.142, 1                        ; 2 uses
  %i.dt = add i32 %i.ds, %5
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = sitofp reassoc nsz arcp i32 %i.dw to float
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !10
  %i.eb = fmul reassoc nsz arcp float %i.ea, %i.dx
  %i.ec = zext i32 %i.ds to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ec
  store float %i.eb, ptr %i.ed, align 4, !tbaa !10
  %i.ee = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !25

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block76, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.ce, %middle.block76 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.ee, %.lr.ph45 ] ; 2 uses
  %i.ef = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ef, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.eg = zext i32 %.1.lcssa to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eg
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial_wide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i32 %5, %4
  %i.d = icmp ult i32 %i.c, %3
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %5, -1
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = icmp ugt i64 %i.e, 4294967295
  %i.j = or i1 %i.h, %i.i
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -16
  %or.cond = or i1 %i.j, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = trunc nuw i64 %index to i32
  %i.m = add i32 %5, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %wide.load57 = load <2 x i64>, ptr %i.p, align 8, !tbaa !15
  %6 = sitofp reassoc nsz arcp <2 x i64> %wide.load to <2 x float>
  %7 = sitofp reassoc nsz arcp <2 x i64> %wide.load57 to <2 x float>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load58 = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %wide.load59 = load <2 x float>, ptr %i.r, align 4, !tbaa !10
  %8 = fmul reassoc nsz arcp <2 x float> %wide.load58, %6
  %9 = fmul reassoc nsz arcp <2 x float> %wide.load59, %7
  %10 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %8, ptr %10, align 4, !tbaa !10
  store <2 x float> %9, ptr %11, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader81
  %i.t = trunc nuw i64 %indvars.iv.ph to i32
  %i.u = add i32 %5, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15
  %i.y = sitofp reassoc nsz arcp i64 %i.x to float
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10
  %i.ab = fmul reassoc nsz arcp float %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.ab, ptr %i.ac, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader81
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader81 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %indvars.iv.ph, %i.ad
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.af = trunc nuw i64 %indvars.iv to i32
  %i.ag = add i32 %5, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = sitofp reassoc nsz arcp i64 %i.aj to float
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.am = load float, ptr %i.al, align 4, !tbaa !10
  %i.an = fmul reassoc nsz arcp float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.an, ptr %i.ao, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = trunc nuw i64 %indvars.iv.next to i32
  %i.aq = add i32 %5, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15
  %i.au = sitofp reassoc nsz arcp i64 %i.at to float
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = fmul reassoc nsz arcp float %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.ax, ptr %i.ay, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.az = sub i32 %3, %4                          ; 3 uses
  %i.ba = sub i32 %i.az, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.ba) ; 8 uses
  %i.bb = icmp ult i32 %i.az, %3
  br i1 %i.bb, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bc = zext i32 %i.az to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bd = sub nsw i64 %wide.trip.count53, %i.bc   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bd, 18
  br i1 %min.iters.check64, label %.lr.ph45.preheader80, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.be = xor i64 %i.bc, -1
  %i.bf = add nsw i64 %i.be, %wide.trip.count53   ; 2 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = xor i32 %.037., -1
  %i.bi = icmp ult i32 %i.bh, %i.bg
  %i.bj = add i32 %5, %.037.
  %i.bk = xor i32 %i.bj, -1
  %i.bl = icmp ult i32 %i.bk, %i.bg
  %i.bm = icmp ugt i64 %i.bf, 4294967295
  %i.bn = or i1 %i.bl, %i.bm
  %i.bo = or i1 %i.bi, %i.bn
  br i1 %i.bo, label %.lr.ph45.preheader80, label %vector.memcheck65

vector.memcheck65:                                ; preds = %vector.scevcheck60
  %i.bp = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.ba)
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = shl nuw nsw i64 %i.bc, 2
  %i.bt = add i64 %i.br, %i.b
  %i.bu = add i64 %i.bs, %i.a
  %i.bv = sub i64 %i.bu, %i.bt
  %diff.check66 = icmp ugt i64 %i.bv, -16
  br i1 %diff.check66, label %.lr.ph45.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck65
  %n.vec68 = and i64 %i.bd, -4                    ; 4 uses
  %i.bw = add nsw i64 %n.vec68, %i.bc
  %i.bx = trunc i64 %n.vec68 to i32
  %i.by = add i32 %.037., %i.bx                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bc
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 3 uses
  %i.bz = trunc i64 %index70 to i32
  %i.ca = add i32 %.037., %i.bz                   ; 2 uses
  %i.cb = add i32 %i.ca, %5
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load71 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %wide.load72 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !15
  %12 = sitofp reassoc nsz arcp <2 x i64> %wide.load71 to <2 x float>
  %13 = sitofp reassoc nsz arcp <2 x i64> %wide.load72 to <2 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index70 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load73 = load <2 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load74 = load <2 x float>, ptr %i.cf, align 4, !tbaa !10
  %14 = fmul reassoc nsz arcp <2 x float> %wide.load73, %12
  %15 = fmul reassoc nsz arcp <2 x float> %wide.load74, %13
  %16 = zext i32 %i.ca to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %16 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %14, ptr %17, align 4, !tbaa !10
  store <2 x float> %15, ptr %18, align 4, !tbaa !10
  %index.next75 = add nuw i64 %index70, 4         ; 2 uses
  %i.cg = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.cg, label %middle.block76, label %vector.body69, !llvm.loop !28

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.bd, %n.vec68
  br i1 %cmp.n77, label %._crit_edge46, label %.lr.ph45.preheader80

.lr.ph45.preheader80:                             ; preds = %vector.memcheck65, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block76
  %indvars.iv50.ph = phi i64 [ %i.bc, %vector.memcheck65 ], [ %i.bc, %vector.scevcheck60 ], [ %i.bc, %.lr.ph45.preheader ], [ %i.bw, %middle.block76 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck65 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.by, %middle.block76 ] ; 4 uses
  %i.ch = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter82 = and i64 %i.ch, 1
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader80
  %i.ci = add i32 %.142.ph, %5
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cm = sitofp reassoc nsz arcp i64 %i.cl to float
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.co = load float, ptr %i.cn, align 4, !tbaa !10
  %i.cp = fmul reassoc nsz arcp float %i.co, %i.cm
  %i.cq = zext i32 %.142.ph to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cq
  store float %i.cp, ptr %i.cr, align 4, !tbaa !10
  %i.cs = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader80
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader80 ], [ %i.cs, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader80 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader80 ], [ %i.cs, %.lr.ph45.prol ]
  %i.ct = add nsw i64 %wide.trip.count53, -1
  %i.cu = icmp eq i64 %indvars.iv50.ph, %i.ct
  br i1 %i.cu, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.dr, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.cv = add i32 %.142, %5
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !15
  %i.cz = sitofp reassoc nsz arcp i64 %i.cy to float
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = fmul reassoc nsz arcp float %i.db, %i.cz
  %i.dd = zext i32 %.142 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dd
  store float %i.dc, ptr %i.de, align 4, !tbaa !10
  %i.df = add i32 %.142, 1                        ; 2 uses
  %i.dg = add i32 %i.df, %5
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = sitofp reassoc nsz arcp i64 %i.dj to float
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10
  %i.do = fmul reassoc nsz arcp float %i.dn, %i.dk
  %i.dp = zext i32 %i.df to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  store float %i.do, ptr %i.dq, align 4, !tbaa !10
  %i.dr = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !29

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block76, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.by, %middle.block76 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.dr, %.lr.ph45 ] ; 2 uses
  %i.ds = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ds, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.dt = zext i32 %.1.lcssa to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !10
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

scalar.ph490.preheader:                           ; preds = %vector.scevcheck, %.lr.ph185.us, %middle.block501
  %indvars.iv269.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph185.us ], [ %n.vec493, %middle.block501 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %i.ad = add nuw i64 %indvars.iv269.ph, %indvars.iv274
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fpext reassoc nsz arcp float %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269.ph ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !17
  %i.ak = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.n, double %i.ah, double %i.aj)
  store double %i.ak, ptr %i.ai, align 8, !tbaa !17
  %indvars.iv.next270.prol = or disjoint i64 %indvars.iv269.ph, 1
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv269.unr = phi i64 [ %indvars.iv269.ph, %scalar.ph490.preheader ], [ %indvars.iv.next270.prol, %scalar.ph490.prol ]
  %i.al = icmp eq i64 %indvars.iv269.ph, %i.j
  br i1 %i.al, label %._crit_edge.us, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %scalar.ph490 ], [ %indvars.iv269.unr, %scalar.ph490.prol.loopexit ] ; 4 uses
  %i.am = add nuw i64 %indvars.iv269, %indvars.iv274
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = fpext reassoc nsz arcp float %i.ap to double
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv269 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.n, double %i.aq, double %i.as)
  store double %i.at, ptr %i.ar, align 8, !tbaa !17
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@FLAC__lpc_compute_autocorrelation:bb.a
  %i.ahv = phi <2 x double> [ %i.zs, %middle.block441 ], [ %i.aav, %.preheader156 ]
  %i.ahw = phi <2 x double> [ %i.zu, %middle.block441 ], [ %i.aba, %.preheader156 ]
  %i.ahx = phi <2 x double> [ %i.zw, %middle.block441 ], [ %i.abg, %.preheader156 ]
  %i.ahy = phi <2 x double> [ %i.zy, %middle.block441 ], [ %i.abm, %.preheader156 ]
  %i.ahz = shufflevector <2 x double> %i.aht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ahz, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.ahu, ptr %i.it, align 8, !tbaa !17
  %i.aia = shufflevector <2 x double> %i.ahv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aia, ptr %i.rz, align 8, !tbaa !17
  %i.aib = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aib, ptr %i.sc, align 8, !tbaa !17
  store <2 x double> %i.ahx, ptr %i.sj, align 8, !tbaa !17
  store <2 x double> %i.ahy, ptr %i.sm, align 8, !tbaa !17
  br label %.loopexit

.loopexit.loopexit289:                            ; preds = %.preheader162, %middle.block
  %i.aic = phi <2 x double> [ %i.aex, %middle.block ], [ %i.aga, %.preheader162 ]
  %i.aid = phi <2 x double> [ %i.aez, %middle.block ], [ %i.agg, %.preheader162 ]
  %i.aie = phi <2 x double> [ %i.afb, %middle.block ], [ %i.agl, %.preheader162 ]
  %i.aif = phi <2 x double> [ %i.afd, %middle.block ], [ %i.agr, %.preheader162 ]
  %i.aig = phi <2 x double> [ %i.aff, %middle.block ], [ %i.agw, %.preheader162 ]
  %i.aih = phi <2 x double> [ %i.afh, %middle.block ], [ %i.ahb, %.preheader162 ]
  %i.aii = phi <2 x double> [ %i.afj, %middle.block ], [ %i.ahh, %.preheader162 ]
  %i.aij = phi <2 x double> [ %i.afl, %middle.block ], [ %i.ahn, %.preheader162 ]
  store <2 x double> %i.aic, ptr %3, align 8, !tbaa !17
  store <2 x double> %i.aid, ptr %i.it, align 8, !tbaa !17
  %i.aik = shufflevector <2 x double> %i.aie, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aik, ptr %i.iw, align 8, !tbaa !17
  store <2 x double> %i.aif, ptr %i.iz, align 8, !tbaa !17
  %i.ail = shufflevector <2 x double> %i.aig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ail, ptr %i.je, align 8, !tbaa !17
  %i.aim = shufflevector <2 x double> %i.aih, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aim, ptr %i.jh, align 8, !tbaa !17
  store <2 x double> %i.aii, ptr %i.jm, align 8, !tbaa !17
  store <2 x double> %i.aij, ptr %i.jp, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit289, %.loopexit.loopexit288, %.loopexit.loopexit287, %.preheader167.preheader, %.preheader161.preheader, %.preheader155.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_lp_coefficients(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x double], align 16           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %wide.trip.count81 = zext i32 %i.b to i64
  %exitcond82.not84 = icmp eq i32 %i.b, 0
  br i1 %exitcond82.not84, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.a
  %i.c = load double, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %.loopexit107
  %indvars.iv.next76 = add i32 %indvars.iv7586, 1
  %i.d = trunc nuw i64 %indvars.iv.next79 to i32  ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %.loopexit, label %bb.c, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph89, %bb.b
  %i.f = phi i32 [ 0, %.lr.ph89 ], [ %i.e, %bb.b ] ; 3 uses
  %i.g = phi i32 [ 0, %.lr.ph89 ], [ %i.d, %bb.b ]
  %.04987 = phi double [ %i.c, %.lr.ph89 ], [ %i.bj, %bb.b ] ; 2 uses
  %indvars.iv7586 = phi i32 [ 1, %.lr.ph89 ], [ %indvars.iv.next76, %bb.b ] ; 2 uses
  %indvars.iv7885 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next79, %bb.b ] ; 13 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv7885, 1 ; 7 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next79
  %i.i = load double, ptr %i.h, align 8, !tbaa !17
  %i.j = fneg reassoc nsz arcp double %i.i        ; 3 uses
  %.not62 = icmp eq i64 %indvars.iv7885, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check92 = icmp samesign ult i64 %indvars.iv7885, 4
  br i1 %min.iters.check92, label %.lr.ph.preheader108, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %indvars.iv7885, 9223372036854775804 ; 3 uses
  %i.k = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body95 ] ; 3 uses
  %vec.phi = phi <2 x double> [ %i.k, %vector.ph93 ], [ %i.t, %vector.body95 ]
  %vec.phi97 = phi <2 x double> [ zeroinitializer, %vector.ph93 ], [ %i.u, %vector.body95 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load98 = load <2 x double>, ptr %i.l, align 16, !tbaa !17
  %wide.load99 = load <2 x double>, ptr %i.m, align 16, !tbaa !17
  %i.n = sub nuw nsw i64 %indvars.iv7885, %index96
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -24
  %wide.load100 = load <2 x double>, ptr %i.p, align 8, !tbaa !17
  %wide.load101 = load <2 x double>, ptr %i.q, align 8, !tbaa !17
  %reverse = shufflevector <2 x double> %wide.load100, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse102 = shufflevector <2 x double> %wide.load101, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fneg reassoc nsz arcp <2 x double> %wide.load98
  %i.s = fneg reassoc nsz arcp <2 x double> %wide.load99
  %i.t = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %reverse, <2 x double> %vec.phi) ; 2 uses
  %i.u = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %reverse102, <2 x double> %vec.phi97) ; 2 uses
  %index.next103 = add nuw i64 %index96, 4        ; 2 uses
  %i.v = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.v, label %middle.block104, label %vector.body95, !llvm.loop !43

middle.block104:                                  ; preds = %vector.body95
  %bin.rdx = fadd reassoc nsz arcp <2 x double> %i.u, %i.t
  %i.w = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %cmp.n105 = icmp eq i64 %indvars.iv7885, %n.vec94
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %.lr.ph.preheader, %middle.block104
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block104 ]
  %.05055.ph = phi double [ %i.j, %.lr.ph.preheader ], [ %i.w, %middle.block104 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader108, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader108 ] ; 3 uses
  %.05055 = phi double [ %i.ad, %.lr.ph ], [ %.05055.ph, %.lr.ph.preheader108 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !17
  %i.z = sub nuw nsw i64 %indvars.iv7885, %indvars.iv
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !17
  %i.ac = fneg reassoc nsz arcp double %i.y
  %i.ad = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double %.05055) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv7885
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %middle.block104, %bb.c
  %.050.lcssa = phi double [ %i.j, %bb.c ], [ %i.w, %middle.block104 ], [ %i.ad, %.lr.ph ]
  %i.ae = fdiv reassoc nsz arcp double %.050.lcssa, %.04987 ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv7885
  store double %i.ae, ptr %i.af, align 8, !tbaa !17
  %.not63 = icmp eq i32 %i.f, 0
  br i1 %.not63, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %wide.trip.count70 = zext nneg i32 %i.f to i64
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next68, %.lr.ph58 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv67 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = xor i64 %indvars.iv67, -1
  %i.aj = add nsw i64 %indvars.iv7885, %i.ai
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 3 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.ah)
  store double %i.an, ptr %i.ag, align 8, !tbaa !17
  %i.ao = load double, ptr %i.al, align 8, !tbaa !17
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double %i.ao)
  store double %i.ap, ptr %i.al, align 8, !tbaa !17
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59.loopexit, label %.lr.ph58, !llvm.loop !45

._crit_edge59.loopexit:                           ; preds = %.lr.ph58
  %i.aq = zext nneg i32 %i.f to i64
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %._crit_edge
  %.1.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.aq, %._crit_edge59.loopexit ]
  %i.ar = and i32 %i.g, 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge59
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1.lcssa ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.at, double %i.ae, double %i.at)
  store double %i.au, ptr %i.as, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge59
  %i.av = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %indvars.iv7885 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv7885, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv.next79, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 16, !tbaa !17
  %wide.load90 = load <2 x double>, ptr %i.ax, align 16, !tbaa !17
  %i.ay = fptrunc reassoc nsz arcp <2 x double> %wide.load to <2 x float>
  %i.az = fptrunc reassoc nsz arcp <2 x double> %wide.load90 to <2 x float>
  %4 = fneg reassoc nsz arcp <2 x float> %i.ay
  %5 = fneg reassoc nsz arcp <2 x float> %i.az
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %4, ptr %i.ba, align 4, !tbaa !10
  store <2 x float> %5, ptr %6, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next79, %n.vec
  br i1 %cmp.n, label %.loopexit107, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv72.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv72
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !17
  %i.be = fptrunc reassoc nsz arcp double %i.bd to float
  %i.bf = fneg reassoc nsz arcp float %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv72
  store float %i.bf, ptr %i.bg, align 4, !tbaa !10
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond77.not = icmp eq i32 %indvars.iv7586, %lftr.wideiv
  br i1 %exitcond77.not, label %.loopexit107, label %scalar.ph, !llvm.loop !47

.loopexit107:                                     ; preds = %scalar.ph, %middle.block
  %i.bh = fneg reassoc nsz arcp double %i.ae
  %i.bi = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bh, double %i.ae, double 1.000000e+00)
  %i.bj = fmul reassoc nsz arcp double %i.bi, %.04987 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv7885
  store double %i.bj, ptr %i.bk, align 8, !tbaa !17
  %i.bl = fcmp reassoc nsz arcp oeq double %i.bj, 0.000000e+00
  br i1 %i.bl, label %bb.f, label %bb.b, !llvm.loop !42

bb.f:                                             ; preds = %.loopexit107
  %i.bm = trunc nuw i64 %indvars.iv.next79 to i32
  store i32 %i.bm, ptr %1, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 3) i32 @FLAC__lpc_quantize_coefficients(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = add i32 %2, -1
  %i.c = shl nuw i32 1, %i.b                      ; 4 uses
  %i.d = sub nsw i32 0, %i.c                      ; 2 uses
  %i.e = add nsw i32 %i.c, -1                     ; 2 uses
  %.not97 = icmp eq i32 %1, 0
  br i1 %.not97, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.06988 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.h)
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = fcmp reassoc nsz arcp olt double %.06988, %i.j
  %.1 = select nsz i1 %i.k, double %i.j, double %.06988 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.n)
  %i.p = fpext float %i.o to double               ; 2 uses
  %i.q = fcmp reassoc nsz arcp olt double %.1, %i.p
  %.1.1 = select nsz i1 %i.q, double %i.p, double %.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !48

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.06988.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = tail call reassoc nsz arcp float @llvm.fabs.f32(float %i.s)
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = fcmp reassoc nsz arcp olt double %.06988.epil.init, %i.u
  %.1.epil = select nsz i1 %i.v, double %i.u, double %.06988.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.1.lcssa = phi double [ %.1.1, %._crit_edge.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.w = fcmp reassoc nsz arcp ugt double %.1.lcssa, 0.000000e+00
  br i1 %i.w, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.x = load i32, ptr @FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN, align 4, !tbaa !8
  %i.y = add i32 %i.x, -1
  %notmask = shl nsw i32 -1, %i.y                 ; 2 uses
  %i.z = xor i32 %notmask, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aa = call reassoc nsz arcp double @frexp(double noundef %.1.lcssa, ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add i32 %2, %i.ac                       ; 5 uses
  store i32 %i.ad, ptr %4, align 4, !tbaa !8
  %i.ae = icmp sgt i32 %i.ad, %i.z
  br i1 %i.ae, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %bb.b
  store i32 %i.z, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.lr.ph96.preheader

bb.c:                                             ; preds = %bb.b
  %i.af = icmp slt i32 %i.ad, %notmask
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.af, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.ag = icmp sgt i32 %i.ad, -1
  br i1 %i.ag, label %.lr.ph96.preheader, label %.lr.ph92

.lr.ph96.preheader:                               ; preds = %.critedge, %.critedge.thread
  %wide.trip.count109 = zext i32 %1 to i64
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next107, %.lr.ph96 ] ; 3 uses
  %.06795 = phi double [ 0.000000e+00, %.lr.ph96.preheader ], [ %i.as, %.lr.ph96 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv106
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = load i32, ptr %4, align 4, !tbaa !8
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = sitofp reassoc nsz arcp i32 %i.ak to float
  %i.am = fmul reassoc nsz arcp float %i.ai, %i.al
  %i.an = fpext reassoc nsz arcp float %i.am to double
  %i.ao = fadd reassoc nsz arcp double %.06795, %i.an ; 2 uses
  %i.ap = tail call i64 @lround(double noundef %i.ao) #14
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %.not85 = icmp sgt i32 %i.c, %i.aq
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.d)
  %.066 = select i1 %.not85, i32 %spec.select, i32 %i.e ; 2 uses
  %i.ar = sitofp reassoc nsz arcp i32 %.066 to double
  %i.as = fsub reassoc nsz arcp double %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv106
  store i32 %.066, ptr %i.at, align 4, !tbaa !8
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph96, !llvm.loop !49

.lr.ph92:                                         ; preds = %.critedge
  %i.au = sub nsw i32 0, %i.ad
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sitofp reassoc nsz arcp i32 %i.av to float
  %wide.trip.count104 = zext i32 %1 to i64
  %i.ax = fdiv reassoc nsz arcp float 1.000000e+00, %i.aw
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph92, %bb.d
  %indvars.iv101 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next102, %bb.d ] ; 3 uses
  %.06590 = phi double [ 0.000000e+00, %.lr.ph92 ], [ %i.bg, %bb.d ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv101
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = fmul reassoc nsz arcp float %i.az, %i.ax
  %i.bb = fpext reassoc nsz arcp float %i.ba to double
  %i.bc = fadd reassoc nsz arcp double %.06590, %i.bb ; 2 uses
  %i.bd = tail call i64 @lround(double noundef %i.bc) #14
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %.not = icmp sgt i32 %i.c, %i.be
  %spec.select86 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %i.d)
  %.0 = select i1 %.not, i32 %spec.select86, i32 %i.e ; 2 uses
  %i.bf = sitofp reassoc nsz arcp i32 %.0 to double
  %i.bg = fsub reassoc nsz arcp double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv101
  store i32 %.0, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge93, label %bb.d, !llvm.loop !50

._crit_edge93:                                    ; preds = %bb.d
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph96, %bb.c, %bb.a, %._crit_edge93, %._crit_edge
  %.173 = phi i32 [ 1, %bb.c ], [ 2, %._crit_edge ], [ 0, %._crit_edge93 ], [ 2, %bb.a ], [ 0, %.lr.ph96 ]
end_hunk_1
