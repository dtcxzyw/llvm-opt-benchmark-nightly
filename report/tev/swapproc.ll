Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/swapproc?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ffswap2(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %1, 0
  br i1 %i.c, label %iter.check, label %ffswap2_slow.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i64 %1, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %1, 12
  %n.vec = and i64 %1, 9223372036854775792        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !19
  %wide.load39 = load <8 x i16>, ptr %i.f, align 2, !tbaa !19
  %i.g = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.h = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load39)
  store <8 x i16> %i.g, ptr %i.e, align 2, !tbaa !19
  store <8 x i16> %i.h, ptr %i.f, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ffswap2_slow.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %1, 9223372036854775804      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index41 ; 2 uses
  %wide.load42 = load <4 x i16>, ptr %i.j, align 2, !tbaa !19
  %i.k = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load42)
  store <4 x i16> %i.k, ptr %i.j, align 2, !tbaa !19
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %1, %n.vec40
  br i1 %cmp.n44, label %ffswap2_slow.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !19
  %i.o = tail call i16 @llvm.bswap.i16(i16 %i.n)
  store i16 %i.o, ptr %i.m, align 2, !tbaa !19
  %i.p = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i, label %ffswap2_slow.exit, label %.lr.ph.i, !llvm.loop !13

bb.c:                                             ; preds = %bb.a
  %i.q = and i64 %i.a, 14                         ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %ffswap2_slow.exit22, label %get_peel.exit

get_peel.exit:                                    ; preds = %bb.c
  %i.r = sub nuw nsw i64 16, %i.q
  %i.s = lshr exact i64 %i.r, 1
  %i.t = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.s) ; 15 uses
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %ffswap2_slow.exit22, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %get_peel.exit
  %2 = load i16, ptr %0, align 2, !tbaa !19
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  store i16 %3, ptr %0, align 2, !tbaa !19
  %exitcond.not.i21 = icmp eq i64 %i.t, 1
  br i1 %exitcond.not.i21, label %ffswap2_slow.exit22, label %iter.check55

iter.check55:                                     ; preds = %.lr.ph.i19
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %5 = load i16, ptr %4, align 2, !tbaa !19
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  store i16 %6, ptr %4, align 2, !tbaa !19
  %exitcond.not.i21.1 = icmp eq i64 %i.t, 2
  br i1 %exitcond.not.i21.1, label %ffswap2_slow.exit22, label %vec.epilog.ph59

vec.epilog.ph59:                                  ; preds = %iter.check55
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %8 = load i16, ptr %7, align 2, !tbaa !19
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  store i16 %9, ptr %7, align 2, !tbaa !19
  %exitcond.not.i21.2 = icmp eq i64 %i.t, 3
  br i1 %exitcond.not.i21.2, label %ffswap2_slow.exit22, label %vec.epilog.vector.body61

vec.epilog.vector.body61:                         ; preds = %vec.epilog.ph59
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %11 = load i16, ptr %10, align 2, !tbaa !19
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  store i16 %12, ptr %10, align 2, !tbaa !19
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %ffswap2_slow.exit22, label %vec.epilog.middle.block65

vec.epilog.middle.block65:                        ; preds = %vec.epilog.vector.body61
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %14 = load i16, ptr %13, align 2, !tbaa !19
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  store i16 %15, ptr %13, align 2, !tbaa !19
  %cmp.n66 = icmp eq i64 %i.t, 5
  br i1 %cmp.n66, label %ffswap2_slow.exit22, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %vec.epilog.middle.block65
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %17 = load i16, ptr %16, align 2, !tbaa !19
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  store i16 %18, ptr %16, align 2, !tbaa !19
  %exitcond.not.i21.5 = icmp eq i64 %i.t, 6
  br i1 %exitcond.not.i21.5, label %ffswap2_slow.exit22, label %.lr.ph.i19.a

.lr.ph.i19.a:                                     ; preds = %.lr.ph.i19.preheader
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i16, ptr %19, align 2, !tbaa !19
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.v)
  store i16 %i.w, ptr %19, align 2, !tbaa !19
  %exitcond.not.i21.a = icmp eq i64 %i.t, 7
  br i1 %exitcond.not.i21.a, label %ffswap2_slow.exit22, label %.lr.ph.i19.7

.lr.ph.i19.7:                                     ; preds = %.lr.ph.i19.a
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %21 = load i16, ptr %20, align 2, !tbaa !19
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  store i16 %22, ptr %20, align 2, !tbaa !19
  br label %ffswap2_slow.exit22

ffswap2_slow.exit22:                              ; preds = %.lr.ph.i19, %iter.check55, %vec.epilog.ph59, %vec.epilog.vector.body61, %vec.epilog.middle.block65, %.lr.ph.i19.preheader, %.lr.ph.i19.a, %.lr.ph.i19.7, %bb.c, %get_peel.exit
  %23 = phi i64 [ 0, %bb.c ], [ 0, %get_peel.exit ], [ %i.t, %.lr.ph.i19.7 ], [ %i.t, %.lr.ph.i19.a ], [ %i.t, %.lr.ph.i19.preheader ], [ %i.t, %vec.epilog.middle.block65 ], [ %i.t, %vec.epilog.vector.body61 ], [ %i.t, %vec.epilog.ph59 ], [ %i.t, %iter.check55 ], [ %i.t, %.lr.ph.i19 ] ; 4 uses
  %i.x = sub i64 %1, %23                          ; 2 uses
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %i.z = icmp ult i64 %23, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ffswap2_slow.exit22, %.lr.ph
  %.029 = phi i64 [ %i.ad, %.lr.ph ], [ %23, %ffswap2_slow.exit22 ] ; 2 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %.029 ; 2 uses
  %i.ab = load <8 x i16>, ptr %i.aa, align 16, !tbaa !10
  %i.ac = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ab)
  store <8 x i16> %i.ac, ptr %i.aa, align 16, !tbaa !10
  %i.ad = add nuw nsw i64 %.029, 8                ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.y
  br i1 %i.ae, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = sub nsw i64 %1, %i.ad
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %ffswap2_slow.exit22
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.x, %ffswap2_slow.exit22 ] ; 9 uses
  %.0.lcssa = phi i64 [ %i.ad, %._crit_edge.loopexit ], [ %23, %ffswap2_slow.exit22 ]
  %i.af = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.ag = icmp sgt i64 %.pre-phi, 0
  br i1 %i.ag, label %iter.check81, label %ffswap2_slow.exit

iter.check81:                                     ; preds = %._crit_edge
  %min.iters.check68 = icmp ult i64 %.pre-phi, 4
  br i1 %min.iters.check68, label %.lr.ph.i23.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check81
  %min.iters.check70 = icmp ult i64 %.pre-phi, 16
  br i1 %min.iters.check70, label %vec.epilog.ph85, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.ah = and i64 %.pre-phi, 12
  %n.vec72 = and i64 %.pre-phi, 9223372036854775792 ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.ph71, %vector.body73
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index74 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load75 = load <8 x i16>, ptr %i.ai, align 2, !tbaa !19
  %wide.load76 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !19
  %i.ak = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load75)
  %i.al = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load76)
  store <8 x i16> %i.ak, ptr %i.ai, align 2, !tbaa !19
  store <8 x i16> %i.al, ptr %i.aj, align 2, !tbaa !19
  %index.next77 = add nuw i64 %index74, 16        ; 2 uses
  %i.am = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.am, label %middle.block78, label %vector.body73, !llvm.loop !15

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %.pre-phi, %n.vec72
  br i1 %cmp.n79, label %ffswap2_slow.exit, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i23.preheader, label %vec.epilog.ph85, !prof !22

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec72, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec86 = and i64 %.pre-phi, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph85
  %index88 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index88 ; 2 uses
  %wide.load89 = load <4 x i16>, ptr %i.an, align 2, !tbaa !19
  %i.ao = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load89)
  store <4 x i16> %i.ao, ptr %i.an, align 2, !tbaa !19
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.ap, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !16

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %cmp.n92 = icmp eq i64 %.pre-phi, %n.vec86
  br i1 %cmp.n92, label %ffswap2_slow.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block91
  %.09.i24.ph = phi i64 [ 0, %iter.check81 ], [ %n.vec72, %vec.epilog.iter.check83 ], [ %n.vec86, %vec.epilog.middle.block91 ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %.lr.ph.i23
  %.09.i24 = phi i64 [ %i.at, %.lr.ph.i23 ], [ %.09.i24.ph, %.lr.ph.i23.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.09.i24 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !19
  %i.as = tail call i16 @llvm.bswap.i16(i16 %i.ar)
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !19
  %i.at = add nuw nsw i64 %.09.i24, 1             ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.at, %.pre-phi
  br i1 %exitcond.not.i25, label %ffswap2_slow.exit, label %.lr.ph.i23, !llvm.loop !17

ffswap2_slow.exit:                                ; preds = %.lr.ph.i, %.lr.ph.i23, %middle.block, %vec.epilog.middle.block, %middle.block78, %vec.epilog.middle.block91, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ffswap4(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %ffswap4_slow.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i ; 2 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.e = shufflevector <4 x i8> %i.d, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.e, ptr %i.c, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load <4 x i8>, ptr %i.g, align 1, !tbaa !10
  %i.i = shufflevector <4 x i8> %i.h, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.i, ptr %i.g, align 1, !tbaa !10
  %i.j = add nuw nsw i64 %.014.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ffswap4_slow.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23

ffswap4_slow.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ffswap4_slow.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ffswap4_slow.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.j, %ffswap4_slow.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.epil.init ; 2 uses
  %i.l = load <4 x i8>, ptr %i.k, align 1, !tbaa !10
  %i.m = shufflevector <4 x i8> %i.l, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.m, ptr %i.k, align 1, !tbaa !10
  br label %ffswap4_slow.exit

ffswap4_slow.exit:                                ; preds = %.lr.ph.i.epil.preheader, %ffswap4_slow.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ffswap8(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = shl nuw nsw i64 %1, 3
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %ffswap8_slow.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.039.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.039.i ; 2 uses
  %i.d = load <8 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.e = shufflevector <8 x i8> %i.d, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.e, ptr %i.c, align 1, !tbaa !10
  %i.f = add nuw nsw i64 %.039.i, 8               ; 2 uses
  %i.g = icmp samesign ult i64 %i.f, %i.a
  br i1 %i.g, label %.lr.ph.i, label %ffswap8_slow.exit, !llvm.loop !24

ffswap8_slow.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !9, !20, !21}
!12 = distinct !{!12, !9, !20, !21}
!13 = distinct !{!13, !9, !21, !20}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !20, !21}
!16 = distinct !{!16, !9, !20, !21}
!17 = distinct !{!17, !9, !21, !20}
!18 = !{!"short", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
end_hunk_0
