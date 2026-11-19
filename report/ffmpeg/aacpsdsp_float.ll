Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsdsp_float?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_psdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
bb.a:
  store <4 x ptr> <ptr @ps_add_squares_c, ptr @ps_mul_pair_single_c, ptr @ps_hybrid_analysis_c, ptr @ps_hybrid_analysis_ileave_c>, ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x ptr> <ptr @ps_hybrid_synthesis_deint_c, ptr @ps_decorrelate_c, ptr @ps_stereo_interpolate_c, ptr @ps_stereo_interpolate_ipdopd_c>, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_add_squares_c(ptr noalias nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %wide.vec = load <8 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec14 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec15 = load <8 x float>, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %strided.vec16 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec17 = shufflevector <8 x float> %wide.vec15, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.e = fmul nsz <4 x float> %strided.vec14, %strided.vec14
  %i.f = fmul nsz <4 x float> %strided.vec17, %strided.vec17
  %i.g = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec, <4 x float> %i.e)
  %i.h = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec16, <4 x float> %strided.vec16, <4 x float> %i.f)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !10
  %wide.load18 = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %i.k = fadd nsz <4 x float> %wide.load, %i.g
  %i.l = fadd nsz <4 x float> %wide.load18, %i.h
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !10
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader19 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.r = fmul nsz float %i.q, %i.q
  %i.s = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = fadd nsz float %i.u, %i.s
  store float %i.v, ptr %i.t, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_mul_pair_single_c(ptr noalias nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %3, 1
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.vec = load <4 x float>, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x float>, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.e = shufflevector <2 x float> %wide.load, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fmul nsz <4 x float> %i.e, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.d, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader17 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !10
  %i.l = insertelement <2 x float> poison, float %i.i, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul nsz <2 x float> %i.m, %i.k
  store <2 x float> %i.n, ptr %i.j, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_hybrid_analysis_c(ptr noalias nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #1 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.m = load <2 x float>, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.n = fadd nsz <2 x float> %i.l, %i.m
  %foldExtExtBinop = fsub nsz <2 x float> %i.l, %i.m
  %i.o = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.p = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.q = fadd nsz <2 x float> %i.o, %i.p
  %foldExtExtBinop140 = fsub nsz <2 x float> %i.o, %i.p
  %i.r = load <2 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !10 ; 3 uses
  %i.t = fadd nsz <2 x float> %i.r, %i.s
  %foldExtExtBinop142 = fsub nsz <2 x float> %i.r, %i.s
  %i.u = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.v = load <2 x float>, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.w = fadd nsz <2 x float> %i.u, %i.v
  %foldExtExtBinop144 = fsub nsz <2 x float> %i.u, %i.v
  %i.x = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.z = fadd nsz <2 x float> %i.x, %i.y
  %i.aa = load <2 x float>, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.ab = load <2 x float>, ptr %i.k, align 4, !tbaa !10 ; 3 uses
  %i.ac = fadd nsz <2 x float> %i.aa, %i.ab
  %foldExtExtBinop148 = fsub nsz <2 x float> %i.aa, %i.ab
  %i.ad = icmp sgt i32 %4, 0
  br i1 %i.ad, label %vector.body, label %._crit_edge

vector.body:                                      ; preds = %.preheader
  %foldExtExtBinop96 = fsub nsz <2 x float> %i.x, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = load <2 x float>, ptr %i.ae, align 4, !tbaa !10
  %wide.trip.count = zext nneg i32 %4 to i64
  %6 = shufflevector <2 x float> %i.m, <2 x float> %i.p, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %7 = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %9 = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x float> %8, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %11 = shufflevector <2 x float> %i.l, <2 x float> %i.o, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %12 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %14 = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %13, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %16 = fsub nsz <4 x float> %10, %15             ; 4 uses
  %17 = shufflevector <2 x float> %i.y, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x float> %i.x, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %19 = fsub nsz <2 x float> %17, %18             ; 2 uses
  %20 = shufflevector <2 x float> %19, <2 x float> %foldExtExtBinop96, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %22 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %24 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %25 = shufflevector <2 x float> %21, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x float> %22, <2 x float> %foldExtExtBinop140, <2 x i32> <i32 0, i32 2>
  %27 = shufflevector <2 x float> %23, <2 x float> %foldExtExtBinop142, <2 x i32> <i32 0, i32 2>
  %28 = shufflevector <2 x float> %24, <2 x float> %foldExtExtBinop144, <2 x i32> <i32 0, i32 2>
  %29 = shufflevector <2 x float> %19, <2 x float> %foldExtExtBinop148, <2 x i32> <i32 1, i32 2>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %.preheader
  ret void

scalar.ph:                                        ; preds = %vector.body, %scalar.ph
  %indvars.iv = phi i64 [ 0, %vector.body ], [ %indvars.iv.next, %scalar.ph ] ; 3 uses
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv
  %i.ag = mul nsw i64 %3, %indvars.iv
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load <13 x float>, ptr %i.af, align 4, !tbaa !10 ; 13 uses
  %i.aj = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 12, i32 12>
  %i.ak = fmul nsz <2 x float> %i.aj, %5
  %i.al = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul nsz <2 x float> %i.al, %25
  %i.an = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.n, <2 x float> %i.am)
  %i.ap = fadd nsz <2 x float> %i.ak, %i.ao
  %i.aq = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ar = fmul nsz <2 x float> %i.aq, %26
  %i.as = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.at = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.q, <2 x float> %i.ar)
  %i.au = fadd nsz <2 x float> %i.ap, %i.at
  %i.av = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.aw = fmul nsz <2 x float> %i.av, %27
  %i.ax = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.ay = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.t, <2 x float> %i.aw)
  %i.az = fadd nsz <2 x float> %i.au, %i.ay
  %i.ba = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.bb = fmul nsz <2 x float> %i.ba, %28
  %i.bc = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.bd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.w, <2 x float> %i.bb)
  %i.be = fadd nsz <2 x float> %i.az, %i.bd
  %i.bf = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 9, i32 9>
  %i.bg = fmul nsz <2 x float> %i.bf, %20
  %i.bh = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.z, <2 x float> %i.bg)
  %i.bj = fadd nsz <2 x float> %i.be, %i.bi
  %i.bk = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 11, i32 11>
  %i.bl = fmul nsz <2 x float> %i.bk, %29
  %i.bm = shufflevector <13 x float> %i.ai, <13 x float> poison, <2 x i32> <i32 10, i32 10>
  %i.bn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ac, <2 x float> %i.bl)
  %i.bo = fadd nsz <2 x float> %i.bj, %i.bn
  store <2 x float> %i.bo, ptr %i.ah, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !20
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_hybrid_analysis_ileave_c(ptr noalias nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp slt i32 %2, 64
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge21.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.d = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %3, 1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ %i.d, %.preheader.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %indvars.iv23 ; 3 uses
  %i.e = getelementptr inbounds [256 x i8], ptr %0, i64 %indvars.iv23 ; 2 uses
  %invariant.gep18 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv23 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.f = or disjoint i64 %index, 1                ; 2 uses
  %i.g = getelementptr [256 x i8], ptr %invariant.gep, i64 %index
  %i.h = getelementptr [256 x i8], ptr %invariant.gep, i64 %i.f
  %i.i = load float, ptr %i.g, align 4, !tbaa !10
  %i.j = load float, ptr %i.h, align 4, !tbaa !10
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.n = getelementptr [256 x i8], ptr %invariant.gep18, i64 %index
  %i.o = getelementptr [256 x i8], ptr %invariant.gep18, i64 %i.f
  %i.p = load float, ptr %i.n, align 4, !tbaa !10
  %i.q = load float, ptr %i.o, align 4, !tbaa !10
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %interleaved.vec = shufflevector <2 x float> %i.l, <2 x float> %i.s, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.m, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 64
  br i1 %exitcond26.not, label %._crit_edge21.split, label %.preheader, !llvm.loop !22

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %gep = getelementptr [256 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.u = load float, ptr %gep, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %gep19 = getelementptr [256 x i8], ptr %invariant.gep18, i64 %indvars.iv
  %i.w = load float, ptr %gep19, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !23

._crit_edge21.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_hybrid_synthesis_deint_c(ptr nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp slt i32 %2, 64
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge21.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9728
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.d = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod28 = trunc i32 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ %i.d, %.preheader.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds [256 x i8], ptr %1, i64 %indvars.iv23 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %indvars.iv23 ; 3 uses
  %invariant.gep18 = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv23 ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %gep.epil = getelementptr [256 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  store float %i.h, ptr %gep.epil, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %gep19.epil = getelementptr [256 x i8], ptr %invariant.gep18, i64 %indvars.iv.epil.init
  store float %i.j, ptr %gep19.epil, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 64
  br i1 %exitcond26.not, label %._crit_edge21.split, label %.preheader, !llvm.loop !24

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %gep = getelementptr [256 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.l, ptr %gep, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %gep19 = getelementptr [256 x i8], ptr %invariant.gep18, i64 %indvars.iv
  store float %i.n, ptr %gep19, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %gep.1 = getelementptr [256 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store float %i.p, ptr %gep.1, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %gep19.1 = getelementptr [256 x i8], ptr %invariant.gep18, i64 %indvars.iv.next
  store float %i.r, ptr %gep19.1, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !25

._crit_edge21.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_decorrelate_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, float noundef %6, i32 noundef %7) #1 {
.preheader:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.b = insertelement <3 x float> poison, float %6, i64 0
  %i.c = shufflevector <3 x float> %i.b, <3 x float> poison, <3 x i32> zeroinitializer
  %i.d = fmul nsz <3 x float> %i.c, <float f0x3EFAA534, float f0x3F26C4B6, float f0x3F10915E> ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.trip.count = zext nneg i32 %7 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.m = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.n = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.o = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 9 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load <2 x float>, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  %i.t = load <2 x float>, ptr %3, align 4, !tbaa !10 ; 2 uses
  %i.u = load float, ptr %i.e, align 4, !tbaa !10
  %i.v = load <2 x float>, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.w = load <2 x float>, ptr %4, align 4, !tbaa !10 ; 2 uses
  %i.x = load float, ptr %i.f, align 4, !tbaa !10
  %i.y = insertelement <2 x float> poison, float %i.u, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = fneg nsz <2 x float> %i.z
  %i.ab = shufflevector <2 x float> %i.s, <2 x float> %i.t, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ac = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ae = shufflevector <2 x float> %i.aa, <2 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.af = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ah = fmul nsz <4 x float> %i.ad, %i.ag
  %i.ai = shufflevector <2 x float> %i.s, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.aj = shufflevector <2 x float> %i.t, <2 x float> %i.w, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ak = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.aj, <4 x float> %i.ah) ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = fmul nsz <2 x float> %i.az, %i.m
  %i.bb = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bc = fsub nsz <2 x float> %i.bb, %i.ba       ; 3 uses
  %i.bd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.bc, <2 x float> %i.az)
  store <2 x float> %i.bd, ptr %i.am, align 4, !tbaa !10
  %i.be = fmul nsz <2 x float> %i.bc, %i.n
  %i.bf = load float, ptr %i.i, align 4, !tbaa !10
  %i.bg = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.bh = fneg nsz float %i.bf
  %i.bi = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bl = insertelement <2 x float> %i.bk, float %i.bh, i64 0
  %i.bm = fmul nsz <2 x float> %i.bj, %i.bl
  %i.bn = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bg, <2 x float> %i.bm)
  %i.bq = fsub nsz <2 x float> %i.bp, %i.be       ; 3 uses
  %i.br = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.bq, <2 x float> %i.bc)
  store <2 x float> %i.br, ptr %i.at, align 4, !tbaa !10
  %i.bs = fmul nsz <2 x float> %i.bq, %i.o
  %i.bt = load float, ptr %i.l, align 4, !tbaa !10
  %i.bu = load <2 x float>, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.bv = fneg nsz float %i.bt
  %i.bw = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x float> %i.by, float %i.bv, i64 0
  %i.ca = fmul nsz <2 x float> %i.bx, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.bu, <2 x float> %i.ca)
  %i.ce = fsub nsz <2 x float> %i.cd, %i.bs       ; 3 uses
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.ce, <2 x float> %i.bq)
  store <2 x float> %i.cf, ptr %i.ay, align 4, !tbaa !10
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !10
  %i.ci = extractelement <2 x float> %i.ce, i64 0
  %i.cj = fmul nsz float %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.cj, ptr %i.ck, align 4, !tbaa !10
  %i.cl = load float, ptr %i.cg, align 4, !tbaa !10
  %i.cm = extractelement <2 x float> %i.ce, i64 1
  %i.cn = fmul nsz float %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.a, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_stereo_interpolate_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = load float, ptr %3, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = load float, ptr %2, align 4, !tbaa !10
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.l, i64 1
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.j, i64 1
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.e, i64 1
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.c, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = phi <2 x float> [ %i.q, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %i.y = phi <2 x float> [ %i.s, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ab = fadd nsz <2 x float> %i.u, %i.x         ; 3 uses
  %i.ac = fadd nsz <2 x float> %i.w, %i.y         ; 3 uses
  %i.ad = load <2 x float>, ptr %i.z, align 4, !tbaa !10 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.aa, align 4, !tbaa !10 ; 2 uses
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul nsz <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ad, <2 x float> %i.ag)
  store <2 x float> %i.ai, ptr %i.z, align 4, !tbaa !10
  %i.aj = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul nsz <2 x float> %i.aj, %i.ae
  %i.al = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ad, <2 x float> %i.ak)
  store <2 x float> %i.am, ptr %i.aa, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ps_stereo_interpolate_ipdopd_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load <4 x float>, ptr %i.a, align 4, !tbaa !10
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = load float, ptr %3, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load <4 x float>, ptr %i.q, align 4, !tbaa !10
  %i.s = load float, ptr %2, align 4, !tbaa !10
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.n, i64 1
  %i.v = insertelement <2 x float> poison, float %i.p, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.l, i64 1
  %i.x = insertelement <2 x float> poison, float %i.j, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.g, i64 1
  %i.z = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.e, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ab = phi <2 x float> [ %i.u, %.lr.ph.preheader ], [ %i.ag, %.lr.ph ]
  %i.ac = phi <2 x float> [ %i.w, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ]
  %i.ad = phi <4 x float> [ %i.r, %.lr.ph.preheader ], [ %i.ai, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ag = fadd nsz <2 x float> %i.y, %i.ab        ; 3 uses
  %i.ah = fadd nsz <2 x float> %i.aa, %i.ac       ; 3 uses
  %i.ai = fadd nsz <4 x float> %i.b, %i.ad        ; 6 uses
  %i.aj = load <2 x float>, ptr %i.ae, align 4, !tbaa !10 ; 3 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = load <2 x float>, ptr %i.af, align 4, !tbaa !10 ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.an = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul nsz <2 x float> %i.an, %i.al
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.aj, <2 x float> %i.ao)
  %i.ar = fneg nsz <4 x float> %i.ai              ; 4 uses
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.ai, <2 x i32> <i32 0, i32 4>
  %i.at = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ak, <2 x float> %i.aq)
  %i.au = shufflevector <4 x float> %i.ar, <4 x float> %i.ai, <2 x i32> <i32 2, i32 6>
  %i.av = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.am, <2 x float> %i.at)
  store <2 x float> %i.av, ptr %i.ae, align 4, !tbaa !10
  %i.aw = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul nsz <2 x float> %i.ax, %i.al
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aj, <2 x float> %i.ay)
  %i.ba = shufflevector <4 x float> %i.ar, <4 x float> %i.ai, <2 x i32> <i32 1, i32 5>
  %i.bb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ak, <2 x float> %i.az)
  %i.bc = shufflevector <4 x float> %i.ar, <4 x float> %i.ai, <2 x i32> <i32 3, i32 7>
  %i.bd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.am, <2 x float> %i.bb)
  store <2 x float> %i.bd, ptr %i.af, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !13, !12}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !13, !12}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
end_hunk_0
