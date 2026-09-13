Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/curve_tools?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spline_val = local_unnamed_addr global [3 x ptr] [ptr @spline_cubic_val, ptr @catmull_rom_val, ptr @catmull_rom_val], align 16
@spline_set = local_unnamed_addr global [3 x ptr] [ptr @spline_cubic_set, ptr @catmull_rom_set, ptr @monotone_hermite_set], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define float @spline_cubic_val(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = add nsw i32 %0, -2                       ; 2 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %smax = add nsw i32 %i.b, -1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not42 = icmp eq i32 %smax, 0
  br i1 %exitcond.not42, label %.split.loop.exit39, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv43 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv43, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = fcmp reassoc nsz arcp contract afn olt float %2, %i.d
  br i1 %i.e, label %.split.loop.exit, label %bb.b

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv43 to i32
  br label %.split.loop.exit39

.split.loop.exit39:                               ; preds = %bb.b, %bb.a, %.split.loop.exit
  %.0 = phi i32 [ %i.f, %.split.loop.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.g = sext i32 %.0 to i64                      ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  %i.j = fsub reassoc nsz arcp contract afn float %2, %i.i
  %i.k = add nsw i32 %.0, 1
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.i ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.g
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.s = fpext reassoc nsz arcp contract afn float %i.j to double ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = fsub reassoc nsz arcp contract afn float %i.u, %i.q
  %i.w = fdiv reassoc nsz arcp contract afn float %i.v, %i.o
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = getelementptr inbounds [4 x i8], ptr %4, i64 %i.l
  %i.z = load float, ptr %i.y, align 4, !tbaa !12 ; 2 uses
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, f0x3FC5555555555555
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.g
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12 ; 2 uses
  %i.ae = fpext reassoc nsz arcp contract afn float %i.ad to double ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn double %i.ae, f0x3FD5555555555555
  %i.ag = fadd reassoc nsz arcp contract afn double %i.af, %i.ab
  %i.ah = fpext reassoc nsz arcp contract afn float %i.o to double ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn double %i.ag, %i.ah
  %i.aj = fsub reassoc nsz arcp contract afn double %i.x, %i.ai
  %i.ak = fmul reassoc nsz arcp contract afn double %i.ae, 5.000000e-01
  %i.al = fsub reassoc nsz arcp contract afn float %i.z, %i.ad
  %i.am = fpext reassoc nsz arcp contract afn float %i.al to double
  %i.an = fmul reassoc nsz arcp contract afn double %i.ah, 6.000000e+00
  %i.ao = fmul reassoc nsz arcp contract afn double %i.am, %i.s
  %i.ap = fdiv reassoc nsz arcp contract afn double %i.ao, %i.an
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.ak
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, %i.s
  %i.as = fadd reassoc nsz arcp contract afn double %i.ar, %i.aj
  %i.at = fmul reassoc nsz arcp contract afn double %i.as, %i.s
  %i.au = fadd reassoc nsz arcp contract afn double %i.at, %i.r
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float
  ret float %i.av
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define float @catmull_rom_val(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = add nsw i32 %0, -2                       ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not51 = icmp slt i32 %0, 3
  br i1 %exitcond.not51, label %.split.loop.exit48, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv52 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv52, 1 ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.c = load float, ptr %i.b, align 4, !tbaa !12
  %i.d = fcmp reassoc nsz arcp contract afn olt float %2, %i.c
  br i1 %i.d, label %.split.loop.exit, label %bb.b

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv52 to i32
  br label %.split.loop.exit48

.split.loop.exit48:                               ; preds = %bb.b, %bb.a, %.split.loop.exit
  %.0 = phi i32 [ %i.e, %.split.loop.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = sext i32 %.0 to i64                      ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %4, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = add nsw i32 %.0, 1
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %4, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  %i.p = load float, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.n, %i.p ; 2 uses
  %i.r = fsub reassoc nsz arcp contract afn float %2, %i.p
  %i.s = fdiv reassoc nsz arcp contract afn float %i.r, %i.q ; 4 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.s ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.s ; 2 uses
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, 2.000000e+00 ; 2 uses
  %i.x = fpext reassoc nsz arcp contract afn float %i.t to double ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, 3.000000e+00 ; 2 uses
  %i.z = fsub reassoc nsz arcp contract afn double %i.w, %i.y
  %i.aa = fadd reassoc nsz arcp contract afn double %i.z, 1.000000e+00
  %i.ab = fptrunc reassoc nsz arcp contract afn double %i.aa to float
  %.neg46 = fmul reassoc nsz arcp contract afn double %i.x, -2.000000e+00
  %i.ac = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.ad = fadd reassoc nsz arcp contract afn double %.neg46, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn double %i.ad, %i.v
  %i.af = fptrunc reassoc nsz arcp contract afn double %i.ae to float
  %i.ag = fsub reassoc nsz arcp contract afn double %i.y, %i.w
  %i.ah = fptrunc reassoc nsz arcp contract afn double %i.ag to float
  %i.ai = fsub reassoc nsz arcp contract afn float %i.u, %i.t
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.f
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ab
  %i.am = fmul reassoc nsz arcp contract afn float %i.h, %i.af
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.ah
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ai, %i.l
  %reass.add = fadd reassoc nsz arcp contract afn float %i.am, %i.aq
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.q
  %i.ar = fadd reassoc nsz arcp contract afn float %i.al, %i.ap
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %reass.mul
  ret float %i.as
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @spline_cubic_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %spline_cubic_set_internal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 4 uses
  %exitcond.not.i2 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i2, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.b
  %indvars.iv.i3 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i3, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i3
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %spline_cubic_set_internal.exit

._crit_edge:                                      ; preds = %bb.b, %.preheader.i
  %i.h = mul nuw nsw i32 %0, 3
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #13 ; 11 uses
  %i.k = zext nneg i32 %0 to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #13 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !12
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !12 ; 2 uses
  %.phi.trans.insert150.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre151.i = load float, ptr %.phi.trans.insert150.i, align 4, !tbaa !12 ; 2 uses
  %i.n = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.o = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <8 x float> poison, float %.pre151.i, i64 7
  %vector.recur.init4 = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load6, %vector.body ]
  %vector.recur5 = phi <8 x float> [ %vector.recur.init4, %vector.ph ], [ %wide.load, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.p = add nuw nsw <8 x i64> %vec.ind, splat (i64 1) ; 2 uses
  %i.q = extractelement <8 x i64> %i.p, i64 0     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %wide.load = load <8 x float>, ptr %i.r, align 4, !tbaa !12 ; 4 uses
  %i.s = shufflevector <8 x float> %vector.recur5, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %wide.load6 = load <8 x float>, ptr %i.u, align 4, !tbaa !12 ; 5 uses
  %i.v = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load6, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %wide.load6, %i.v ; 2 uses
  %i.x = fdiv reassoc nsz arcp contract afn <8 x float> %i.t, %i.w
  %i.y = add nsw <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.z = extractelement <8 x i64> %i.y, i64 0     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.z
  %wide.load7 = load <8 x float>, ptr %i.aa, align 4, !tbaa !12
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load7
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %wide.load8 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12 ; 2 uses
  %i.ad = fsub reassoc nsz arcp contract afn <8 x float> %i.v, %wide.load8 ; 2 uses
  %i.ae = fdiv reassoc nsz arcp contract afn <8 x float> %i.ab, %i.ad
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %i.x, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store <8 x float> %i.af, ptr %i.ah, align 4, !tbaa !12
  %i.ai = fpext reassoc nsz arcp contract afn <8 x float> %i.ad to <8 x double>
  %i.aj = fmul reassoc nsz arcp contract afn <8 x double> %i.ai, splat (double f0x3FC5555555555555)
  %i.ak = fptrunc reassoc nsz arcp contract afn <8 x double> %i.aj to <8 x float>
  %i.al = mul nuw nsw <8 x i64> %i.y, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.j, <8 x i64> %i.al
  %wide.gep9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ak, <8 x ptr> align 4 %wide.gep9, <8 x i1> splat (i1 true)), !tbaa !12
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %wide.load6, %wide.load8
  %i.an = fpext reassoc nsz arcp contract afn <8 x float> %i.am to <8 x double>
  %i.ao = fmul reassoc nsz arcp contract afn <8 x double> %i.an, splat (double f0x3FD5555555555555)
  %i.ap = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ao to <8 x float>
  %i.aq = mul nuw nsw <8 x i64> %vec.ind, splat (i64 12)
  %wide.gep10 = getelementptr inbounds nuw i8, ptr %i.j, <8 x i64> %i.aq
  %wide.gep11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep10, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ap, <8 x ptr> align 4 %wide.gep11, <8 x i1> splat (i1 true)), !tbaa !12
  %i.ar = fpext reassoc nsz arcp contract afn <8 x float> %i.w to <8 x double>
  %i.as = fmul reassoc nsz arcp contract afn <8 x double> %i.ar, splat (double f0x3FC5555555555555)
  %i.at = fptrunc reassoc nsz arcp contract afn <8 x double> %i.as to <8 x float>
  %i.au = mul nuw nsw <8 x i64> %i.p, splat (i64 12)
  %wide.gep12 = getelementptr inbounds nuw i8, ptr %i.j, <8 x i64> %i.au
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.at, <8 x ptr> align 4 %wide.gep12, <8 x i1> splat (i1 true)), !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load6, i64 7
  %vector.recur.extract13 = extractelement <8 x float> %wide.load, i64 7
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi float [ %.pre151.i, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %.ph15 = phi float [ %.pre.i, %.lr.ph.preheader.i ], [ %vector.recur.extract13, %middle.block ]
  %indvars.iv145.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.o, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aw = phi float [ %i.bc, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ax = phi float [ %i.az, %.lr.ph.i ], [ %.ph15, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph.i ], [ %indvars.iv145.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next146.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12 ; 2 uses
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next146.i
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12 ; 3 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %i.aw ; 2 uses
  %i.be = fdiv reassoc nsz arcp contract afn float %i.ba, %i.bd
  %i.bf = add nsw i64 %indvars.iv145.i, -1        ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fsub reassoc nsz arcp contract afn float %i.ax, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.aw, %i.bk ; 2 uses
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bl
  %i.bn = fsub reassoc nsz arcp contract afn float %i.be, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv145.i
  store float %i.bn, ptr %i.bo, align 4, !tbaa !12
  %i.bp = fpext reassoc nsz arcp contract afn float %i.bl to double
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, f0x3FC5555555555555
  %i.br = fptrunc reassoc nsz arcp contract afn double %i.bq to float
  %.idx.i = mul nuw nsw i64 %i.bf, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.br, ptr %i.bt, align 4, !tbaa !12
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bc, %i.bk
  %i.bv = fpext reassoc nsz arcp contract afn float %i.bu to double
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, f0x3FD5555555555555
  %i.bx = fptrunc reassoc nsz arcp contract afn double %i.bw to float
  %.idx152.i = mul nuw nsw i64 %indvars.iv145.i, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx152.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store float %i.bx, ptr %i.bz, align 4, !tbaa !12
  %i.ca = fpext reassoc nsz arcp contract afn float %i.bd to double
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, f0x3FC5555555555555
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float
  %.idx153.i = mul nuw nsw i64 %indvars.iv.next146.i, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx153.i
  store float %i.cc, ptr %i.cd, align 4, !tbaa !12
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count.i
  br i1 %exitcond149.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %wide.trip.count.i
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !12
  %i.cf = getelementptr [4 x i8], ptr %i.j, i64 %i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !12
  %i.ch = mul nuw nsw i32 %i.b, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store float 1.000000e+00, ptr %i.ck, align 4, !tbaa !12
  %i.cl = tail call ptr @d3_np_fs(i32 noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l)
  tail call void @free(ptr noundef nonnull %i.j) #14
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %spline_cubic_set_internal.exit

spline_cubic_set_internal.exit:                   ; preds = %.lr.ph, %bb.a, %._crit_edge.i
  %.3.i = phi ptr [ %i.cl, %._crit_edge.i ], [ null, %bb.a ], [ null, %.lr.ph ]
  ret ptr %.3.i
}

; Function Attrs: nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @catmull_rom_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %exitcond.not53 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not53, label %._crit_edge56, label %.lr.ph55

bb.b:                                             ; preds = %.lr.ph55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader, %bb.b
  %indvars.iv54 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv54
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.loopexit

._crit_edge56:                                    ; preds = %bb.b, %.preheader
  %i.h = zext nneg i32 %0 to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #13 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = load float, ptr %2, align 4, !tbaa !12
  %i.m = fsub reassoc nsz arcp contract afn float %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = load float, ptr %1, align 4, !tbaa !12
  %i.q = fsub reassoc nsz arcp contract afn float %i.o, %i.p
  %i.r = fdiv reassoc nsz arcp contract afn float %i.m, %i.q
  store float %i.r, ptr %i.i, align 4, !tbaa !12
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %._crit_edge56
  %i.s = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.s, 16
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = or disjoint i64 %index, 2                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !12
  %wide.load58 = load <8 x float>, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %wide.load59 = load <8 x float>, ptr %i.y, align 4, !tbaa !12
  %wide.load60 = load <8 x float>, ptr %i.z, align 4, !tbaa !12
  %i.aa = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load59
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %wide.load58, %wide.load60
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %wide.load61 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12
  %wide.load62 = load <8 x float>, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %wide.load63 = load <8 x float>, ptr %i.ae, align 4, !tbaa !12
  %wide.load64 = load <8 x float>, ptr %i.af, align 4, !tbaa !12
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %wide.load61, %wide.load63
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %wide.load62, %wide.load64
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> %i.aa, %i.ag
  %i.aj = fdiv reassoc nsz arcp contract afn <8 x float> %i.ab, %i.ah
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store <8 x float> %i.ai, ptr %i.al, align 4, !tbaa !12
  store <8 x float> %i.aj, ptr %i.am, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.s, -4                     ; 3 uses
  %i.ao = or disjoint i64 %n.vec65, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 5 uses
  %i.ap = or disjoint i64 %index66, 2             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %wide.load67 = load <4 x float>, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index66
  %wide.load68 = load <4 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.as = fsub reassoc nsz arcp contract afn <4 x float> %wide.load67, %wide.load68
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %wide.load69 = load <4 x float>, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index66
  %wide.load70 = load <4 x float>, ptr %i.au, align 4, !tbaa !12
  %i.av = fsub reassoc nsz arcp contract afn <4 x float> %wide.load69, %wide.load70
  %i.aw = fdiv reassoc nsz arcp contract afn <4 x float> %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store <4 x float> %i.aw, ptr %i.ay, align 4, !tbaa !12
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next71, %n.vec65
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %i.s, %n.vec65
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.ph = phi i64 [ 1, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge56
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %wide.trip.count
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = add nsw i32 %0, -2
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %wide.trip.count
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %wide.trip.count
  store float %i.bm, ptr %i.bn, align 4, !tbaa !12
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph ], [ %indvars.iv48.ph, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next49
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = add nsw i64 %indvars.iv48, -1           ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next49
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = fsub reassoc nsz arcp contract afn float %i.bv, %i.bx
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bt, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv48
  store float %i.bz, ptr %i.ca, align 4, !tbaa !12
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph55, %bb.a, %._crit_edge
  %.1 = phi ptr [ null, %bb.a ], [ %i.i, %._crit_edge ], [ null, %.lr.ph55 ]
  ret ptr %.1
}

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @monotone_hermite_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %.loopexit, label %.preheader88

.preheader88:                                     ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %exitcond.not118 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not118, label %.lr.ph.preheader, label %.lr.ph120

bb.b:                                             ; preds = %.lr.ph120
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader88, %bb.b
  %indvars.iv119 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader88 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv119
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b, %.preheader88
  %i.h = zext nneg i32 %0 to i64                  ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #13 ; 10 uses
  %i.j = add nuw nsw i32 %0, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #13 ; 7 uses
  %.pre = load float, ptr %2, align 4, !tbaa !12  ; 2 uses
  %.pre114 = load float, ptr %1, align 4, !tbaa !12 ; 2 uses
  %min.iters.check = icmp ult i32 %0, 33
  br i1 %min.iters.check, label %.lr.ph.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 3 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre114, i64 7
  %vector.recur.init121 = insertelement <8 x float> poison, float %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load129, %vector.body ]
  %vector.recur122 = phi <8 x float> [ %vector.recur.init121, %vector.ph ], [ %wide.load125, %vector.body ]
  %i.m = or disjoint i64 %index, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %wide.load = load <8 x float>, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %wide.load123 = load <8 x float>, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %wide.load124 = load <8 x float>, ptr %i.p, align 4, !tbaa !12 ; 3 uses
  %wide.load125 = load <8 x float>, ptr %i.q, align 4, !tbaa !12 ; 4 uses
  %i.r = shufflevector <8 x float> %vector.recur122, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.s = shufflevector <8 x float> %wide.load, <8 x float> %wide.load123, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.t = shufflevector <8 x float> %wide.load123, <8 x float> %wide.load124, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.u = shufflevector <8 x float> %wide.load124, <8 x float> %wide.load125, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.r
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %wide.load123, %i.s
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %wide.load124, %i.t
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %wide.load125, %i.u
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load126 = load <8 x float>, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %wide.load127 = load <8 x float>, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %wide.load128 = load <8 x float>, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %wide.load129 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12 ; 4 uses
  %i.ad = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load126, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ae = shufflevector <8 x float> %wide.load126, <8 x float> %wide.load127, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.af = shufflevector <8 x float> %wide.load127, <8 x float> %wide.load128, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ag = shufflevector <8 x float> %wide.load128, <8 x float> %wide.load129, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %wide.load126, %i.ad
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %wide.load127, %i.ae
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load128, %i.af
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %wide.load129, %i.ag
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> %i.v, %i.ah
  %i.am = fdiv reassoc nsz arcp contract afn <8 x float> %i.w, %i.ai
  %i.an = fdiv reassoc nsz arcp contract afn <8 x float> %i.x, %i.aj
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> %i.y, %i.ak
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <8 x float> %i.al, ptr %i.ap, align 4, !tbaa !12
  store <8 x float> %i.am, ptr %i.aq, align 4, !tbaa !12
  store <8 x float> %i.an, ptr %i.ar, align 4, !tbaa !12
  store <8 x float> %i.ao, ptr %i.as, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load129, i64 7
  %vector.recur.extract130 = extractelement <8 x float> %wide.load125, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader163

.lr.ph.preheader163:                              ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi float [ %.pre114, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.ph164 = phi float [ %.pre, %.lr.ph.preheader ], [ %vector.recur.extract130, %middle.block ]
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.i, i64 %i.h
  %.phi.trans.insert115 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre116 = load float, ptr %.phi.trans.insert115, align 4, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %wide.trip.count
  store float %.pre116, ptr %i.au, align 4, !tbaa !12
  %i.av = load float, ptr %i.i, align 4, !tbaa !12
  store float %i.av, ptr %i.l, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %wide.trip.count
  store float %.pre116, ptr %i.aw, align 4, !tbaa !12
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.lr.ph95.preheader, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count106 = zext nneg i32 %smax to i64 ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count106, -1     ; 5 uses
  %min.iters.check133 = icmp slt i32 %0, 10
  br i1 %min.iters.check133, label %.lr.ph93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp slt i32 %0, 34
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.ax, 24
  %n.vec136 = and i64 %i.ax, -32                  ; 4 uses
  %i.az = or disjoint i64 %n.vec136, 1
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.ba = or disjoint i64 %index138, 1            ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.i, i64 %i.ba ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %i.bb, i64 28
  %i.be = getelementptr i8, ptr %i.bb, i64 60
  %i.bf = getelementptr i8, ptr %i.bb, i64 92
  %wide.load139 = load <8 x float>, ptr %i.bc, align 4, !tbaa !12
  %wide.load140 = load <8 x float>, ptr %i.bd, align 4, !tbaa !12
  %wide.load141 = load <8 x float>, ptr %i.be, align 4, !tbaa !12
  %wide.load142 = load <8 x float>, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr i8, ptr %i.bb, i64 32
  %i.bh = getelementptr i8, ptr %i.bb, i64 64
  %i.bi = getelementptr i8, ptr %i.bb, i64 96
  %wide.load143 = load <8 x float>, ptr %i.bb, align 4, !tbaa !12
  %wide.load144 = load <8 x float>, ptr %i.bg, align 4, !tbaa !12
  %wide.load145 = load <8 x float>, ptr %i.bh, align 4, !tbaa !12
  %wide.load146 = load <8 x float>, ptr %i.bi, align 4, !tbaa !12
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load143, %wide.load139
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load144, %wide.load140
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load145, %wide.load141
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load146, %wide.load142
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bk, splat (float 5.000000e-01)
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store <8 x float> %i.bn, ptr %i.br, align 4, !tbaa !12
  store <8 x float> %i.bo, ptr %i.bs, align 4, !tbaa !12
  store <8 x float> %i.bp, ptr %i.bt, align 4, !tbaa !12
  store <8 x float> %i.bq, ptr %i.bu, align 4, !tbaa !12
  %index.next147 = add nuw i64 %index138, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.bv, label %middle.block148, label %vector.body137, !llvm.loop !24

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.ax, %n.vec136
  br i1 %cmp.n149, label %.lr.ph95.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@CurveDataSample:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %wide.trip.count, 252        ; 3 uses
  %broadcast.splat99 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat101 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat103 = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat105 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index106
  %wide.vec107 = load <8 x float>, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %strided.vec108 = shufflevector <8 x float> %wide.vec107, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec109 = shufflevector <8 x float> %wide.vec107, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ah = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec108, %broadcast.splat99
  %i.ai = fadd reassoc nsz arcp contract afn <4 x float> %i.ah, %broadcast.splat101
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index106
  store <4 x float> %i.ai, ptr %i.aj, align 16, !tbaa !12
  %i.ak = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec109, %broadcast.splat103
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %i.ak, %broadcast.splat105
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index106
  store <4 x float> %i.al, ptr %i.am, align 16, !tbaa !12
  %index.next110 = add nuw i64 %index106, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next110, %n.vec97
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %n.vec97, %wide.trip.count
  br i1 %cmp.n111, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec97, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.b:                                             ; preds = %bb.a
  %i.ao = extractelement <2 x float> %i.d, i64 0
  store <2 x float> %i.d, ptr %i.a, align 16, !tbaa !12
  store <2 x float> %i.f, ptr %i.b, align 16, !tbaa !12
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !12
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.ar, %i.j
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.as, %i.i ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  store float %i.au, ptr %i.aq, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aw = extractelement <2 x float> %i.at, i64 1
  store float %i.aw, ptr %i.av, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load float, ptr %i.a, align 16, !tbaa !12
  %.pre82 = load float, ptr %i.b, align 16, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.ax = phi float [ %i.g, %bb.b ], [ %.pre82, %.loopexit.loopexit ]
  %i.ay = phi float [ %i.ao, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.068 = phi i32 [ 2, %bb.b ], [ %i.n, %.loopexit.loopexit ] ; 3 uses
  %i.az = load i32, ptr %1, align 8, !tbaa !38
  %i.ba = add i32 %i.az, -1
  %i.bb = uitofp reassoc nsz arcp contract afn i32 %i.ba to float ; 3 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fptosi float %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39
  %i.bg = add i32 %i.bf, -1
  %i.bh = uitofp reassoc nsz arcp contract afn i32 %i.bg to float ; 4 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.ax, %i.bh
  %i.bj = fptosi float %i.bi to i32
  %i.bk = add nsw i32 %.068, -1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bb
  %i.bp = fptosi float %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bh
  %i.bt = fptosi float %i.bs to i32
  %i.bu = extractelement <2 x float> %i.f, i64 1
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bh
  %i.bw = fptosi float %i.bv to i32
  %i.bx = fmul reassoc nsz arcp contract afn float %i.g, %i.bh
  %i.by = fptosi float %i.bx to i32
  %i.bz = load i32, ptr %0, align 4, !tbaa !40
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @spline_set, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = call ptr %i.cc(i32 noundef %.068, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14, !inline_history !41 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.cf = load i32, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ci = trunc i32 %i.bt to i16
  %i.cj = trunc i32 %i.bj to i16
  %i.ck = sext i32 %i.bp to i64
  %i.cl = sext i32 %i.bd to i64
  %i.cm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bb
  br label %bb.c

._crit_edge:                                      ; preds = %bb.h, %.preheader
  call void @free(ptr noundef %i.cd) #14
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.cn = phi i32 [ %i.cf, %.lr.ph ], [ %i.dm, %bb.h ] ; 2 uses
  %indvars.iv79 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next80, %bb.h ] ; 7 uses
  %i.co = icmp slt i64 %indvars.iv79, %i.cl
  br i1 %i.co, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv79
  store i16 %i.cj, ptr %i.cq, align 2, !tbaa !44
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.cr = icmp sgt i64 %indvars.iv79, %i.ck
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv79
  store i16 %i.ci, ptr %i.ct, align 2, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cu = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cm
  %i.cx = load i32, ptr %0, align 4, !tbaa !40
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @spline_val, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !17
  %i.db = call reassoc nsz arcp contract afn float %i.da(i32 noundef %.068, ptr noundef nonnull %i.a, float noundef %i.cw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cd) #14, !inline_history !45
  %i.dc = load i32, ptr %i.be, align 4, !tbaa !39
  %i.dd = add i32 %i.dc, -1
  %i.de = uitofp reassoc nsz arcp contract afn i32 %i.dd to float
  %i.df = fmul reassoc nsz arcp contract afn float %i.db, %i.de
  %i.dg = fpext reassoc nsz arcp contract afn float %i.df to double
  %i.dh = fadd reassoc nsz arcp contract afn double %i.dg, 5.000000e-01
  %i.di = fptosi double %i.dh to i32
  %spec.select = call i32 @llvm.smin.i32(i32 %i.di, i32 %i.bw)
  %.1 = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.by)
  %i.dj = trunc i32 %.1 to i16
  %i.dk = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv79
  store i16 %i.dj, ptr %i.dl, align 2, !tbaa !44
  %.pre83 = load i32, ptr %1, align 8, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f
  %i.dm = phi i32 [ %i.cn, %bb.d ], [ %.pre83, %bb.g ], [ %i.cn, %bb.f ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next80, %i.dn
  br i1 %i.do, label %bb.c, label %._crit_edge

bb.i:                                             ; preds = %.loopexit, %._crit_edge
  %.069 = phi i32 [ 0, %._crit_edge ], [ 100, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.069
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !14, !13}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !14, !13}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !14, !13}
!27 = distinct !{!27, !14, !13}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14}
!33 = distinct !{!33, !14, !13}
!34 = !{!"", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 24}
!35 = !{!34, !7, i64 20}
!36 = !{!"p1 short", !16, i64 0}
!37 = !{!"", !8, i64 0, !8, i64 4, !36, i64 8}
!38 = !{!37, !8, i64 0}
!39 = !{!37, !8, i64 4}
!40 = !{!34, !8, i64 0}
!41 = !{ptr @interpolate_set}
!42 = !{!37, !36, i64 8}
!43 = !{!"short", !7, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{ptr @interpolate_val}
end_hunk_1
