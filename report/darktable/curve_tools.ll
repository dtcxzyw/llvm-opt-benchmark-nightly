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
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = fcmp reassoc nsz arcp contract afn olt float %2, %i.d
  br i1 %i.e, label %.split.loop.exit, label %bb.b

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv43 to i32
  br label %.split.loop.exit39

.split.loop.exit39:                               ; preds = %bb.b, %bb.a, %.split.loop.exit
  %.0 = phi i32 [ %i.f, %.split.loop.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.g = sext i32 %.0 to i64                      ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 2 uses
  %i.j = fsub reassoc nsz arcp contract afn float %2, %i.i
  %i.k = add nsw i32 %.0, 1
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !11
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.i ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.g
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 2 uses
  %i.r = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.s = fpext reassoc nsz arcp contract afn float %i.j to double ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l
  %i.u = load float, ptr %i.t, align 4, !tbaa !11
  %i.v = fsub reassoc nsz arcp contract afn float %i.u, %i.q
  %i.w = fdiv reassoc nsz arcp contract afn float %i.v, %i.o
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = getelementptr inbounds [4 x i8], ptr %4, i64 %i.l
  %i.z = load float, ptr %i.y, align 4, !tbaa !11 ; 2 uses
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, f0x3FC5555555555555
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.g
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !11
  %i.d = fcmp reassoc nsz arcp contract afn olt float %2, %i.c
  br i1 %i.d, label %.split.loop.exit, label %bb.b

.split.loop.exit:                                 ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv52 to i32
  br label %.split.loop.exit48

.split.loop.exit48:                               ; preds = %bb.b, %bb.a, %.split.loop.exit
  %.0 = phi i32 [ %i.e, %.split.loop.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = sext i32 %.0 to i64                      ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %4, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !11
  %i.i = add nsw i32 %.0, 1
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %4, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !11
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  %i.n = load float, ptr %i.m, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  %i.p = load float, ptr %i.o, align 4, !tbaa !11 ; 2 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.n, %i.p ; 3 uses
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
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !11
  %5 = fmul reassoc nsz arcp contract afn float %i.ak, %i.ab
  %i.al = fmul reassoc nsz arcp contract afn float %i.q, %i.h
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.af
  %6 = fadd reassoc nsz arcp contract afn float %5, %i.am
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j
  %8 = load float, ptr %7, align 4, !tbaa !11
  %i.an = fmul reassoc nsz arcp contract afn float %8, %i.ah
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %6
  %i.ap = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %9 = fmul reassoc nsz arcp contract afn float %i.ap, %i.ai
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ao, %9
  ret float %i.aq
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @spline_cubic_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %spline_cubic_set_internal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 5 uses
  %exitcond.not.i2 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not.i2, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.b
  %indvars.iv.i3 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i3, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i3
  %i.f = load float, ptr %i.e, align 4, !tbaa !11
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %spline_cubic_set_internal.exit

._crit_edge:                                      ; preds = %bb.b, %.preheader.i
  %i.h = mul nuw nsw i32 %0, 3
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #13 ; 12 uses
  %i.k = zext nneg i32 %0 to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #13 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !11
  %.not.i = icmp eq i32 %0, 2
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !11 ; 3 uses
  %.phi.trans.insert150.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre151.i = load float, ptr %.phi.trans.insert150.i, align 4, !tbaa !11 ; 3 uses
  %i.n = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i
  %i.o = add nsw i64 %wide.trip.count.i, -2
  %scevgep = getelementptr i8, ptr %i.j, i64 8    ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.o, i64 12) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.p = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.q = icmp ult ptr %i.p, %scevgep
  %i.r = or i1 %i.q, %mul.overflow
  br i1 %i.r, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <8 x float> poison, float %.pre151.i, i64 7
  %vector.recur.init4 = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load6, %vector.body ]
  %vector.recur5 = phi <8 x float> [ %vector.recur.init4, %vector.ph ], [ %wide.load, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.t = add nuw nsw <8 x i64> %vec.ind, splat (i64 1) ; 2 uses
  %i.u = extractelement <8 x i64> %i.t, i64 0     ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !11 ; 4 uses
  %i.w = shufflevector <8 x float> %vector.recur5, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.u
  %wide.load6 = load <8 x float>, ptr %i.y, align 4, !tbaa !11 ; 5 uses
  %i.z = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load6, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn <8 x float> %wide.load6, %i.z ; 2 uses
  %i.ab = fdiv reassoc nsz arcp contract afn <8 x float> %i.x, %i.aa
  %i.ac = add nsw <8 x i64> %vec.ind, splat (i64 -1) ; 2 uses
  %i.ad = extractelement <8 x i64> %i.ac, i64 0   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  %wide.load7 = load <8 x float>, ptr %i.ae, align 4, !tbaa !11
  %i.af = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %wide.load7
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad
  %wide.load8 = load <8 x float>, ptr %i.ag, align 4, !tbaa !11 ; 2 uses
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %wide.load8 ; 2 uses
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> %i.af, %i.ah
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> %i.ab, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store <8 x float> %i.aj, ptr %i.al, align 4, !tbaa !11
  %i.am = fpext reassoc nsz arcp contract afn <8 x float> %i.ah to <8 x double>
  %i.an = fmul reassoc nsz arcp contract afn <8 x double> %i.am, splat (double f0x3FC5555555555555)
  %i.ao = fptrunc reassoc nsz arcp contract afn <8 x double> %i.an to <8 x float>
  %i.ap = mul <8 x i64> %i.ac, splat (i64 12)
  %wide.gep = getelementptr i8, ptr %i.j, <8 x i64> %i.ap
  %wide.gep9 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ao, <8 x ptr> align 4 %wide.gep9, <8 x i1> splat (i1 true)), !tbaa !11
  %i.aq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load6, %wide.load8
  %i.ar = fpext reassoc nsz arcp contract afn <8 x float> %i.aq to <8 x double>
  %i.as = fmul reassoc nsz arcp contract afn <8 x double> %i.ar, splat (double f0x3FD5555555555555)
  %i.at = fptrunc reassoc nsz arcp contract afn <8 x double> %i.as to <8 x float>
  %i.au = mul nuw nsw <8 x i64> %vec.ind, splat (i64 12)
  %wide.gep10 = getelementptr inbounds nuw i8, ptr %i.j, <8 x i64> %i.au
  %wide.gep11 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep10, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.at, <8 x ptr> align 4 %wide.gep11, <8 x i1> splat (i1 true)), !tbaa !11
  %i.av = fpext reassoc nsz arcp contract afn <8 x float> %i.aa to <8 x double>
  %i.aw = fmul reassoc nsz arcp contract afn <8 x double> %i.av, splat (double f0x3FC5555555555555)
  %i.ax = fptrunc reassoc nsz arcp contract afn <8 x double> %i.aw to <8 x float>
  %i.ay = mul nuw nsw <8 x i64> %i.t, splat (i64 12)
  %wide.gep12 = getelementptr inbounds nuw i8, ptr %i.j, <8 x i64> %i.ay
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ax, <8 x ptr> align 4 %wide.gep12, <8 x i1> splat (i1 true)), !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load6, i64 7
  %vector.recur.extract13 = extractelement <8 x float> %wide.load, i64 7
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %.lr.ph.preheader.i, %middle.block
  %.ph = phi float [ %.pre151.i, %vector.scevcheck ], [ %.pre151.i, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %.ph15 = phi float [ %.pre.i, %vector.scevcheck ], [ %.pre.i, %.lr.ph.preheader.i ], [ %vector.recur.extract13, %middle.block ]
  %indvars.iv145.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.lr.ph.preheader.i ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ba = phi float [ %i.bg, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bb = phi float [ %i.bd, %.lr.ph.i ], [ %.ph15, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph.i ], [ %indvars.iv145.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next146.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11 ; 2 uses
  %i.be = fsub reassoc nsz arcp contract afn float %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next146.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !11 ; 3 uses
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.ba ; 2 uses
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.be, %i.bh
  %i.bj = add nsw i64 %indvars.iv145.i, -1        ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bb, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11 ; 2 uses
  %i.bp = fsub reassoc nsz arcp contract afn float %i.ba, %i.bo ; 2 uses
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bp
  %i.br = fsub reassoc nsz arcp contract afn float %i.bi, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv145.i
  store float %i.br, ptr %i.bs, align 4, !tbaa !11
  %i.bt = fpext reassoc nsz arcp contract afn float %i.bp to double
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bt, f0x3FC5555555555555
  %i.bv = fptrunc reassoc nsz arcp contract afn double %i.bu to float
  %.idx.i = mul i64 %i.bj, 12
  %i.bw = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store float %i.bv, ptr %i.bx, align 4, !tbaa !11
  %i.by = fsub reassoc nsz arcp contract afn float %i.bg, %i.bo
  %i.bz = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.ca = fmul reassoc nsz arcp contract afn double %i.bz, f0x3FD5555555555555
  %i.cb = fptrunc reassoc nsz arcp contract afn double %i.ca to float
  %.idx152.i = mul nuw nsw i64 %indvars.iv145.i, 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx152.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.cb, ptr %i.cd, align 4, !tbaa !11
  %i.ce = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.ce, f0x3FC5555555555555
  %i.cg = fptrunc reassoc nsz arcp contract afn double %i.cf to float
  %.idx153.i = mul nuw nsw i64 %indvars.iv.next146.i, 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx153.i
  store float %i.cg, ptr %i.ch, align 4, !tbaa !11
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count.i
  br i1 %exitcond149.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %wide.trip.count.i
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !11
  %i.cj = getelementptr [4 x i8], ptr %i.j, i64 %i.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !11
  %i.cl = mul nsw i32 %i.b, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store float 1.000000e+00, ptr %i.co, align 4, !tbaa !11
  %i.cp = tail call ptr @d3_np_fs(i32 noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l)
  tail call void @free(ptr noundef nonnull %i.j) #14
  tail call void @free(ptr noundef nonnull %i.l) #14
  br label %spline_cubic_set_internal.exit

spline_cubic_set_internal.exit:                   ; preds = %.lr.ph, %bb.a, %._crit_edge.i
  %.3.i = phi ptr [ %i.cp, %._crit_edge.i ], [ null, %bb.a ], [ null, %.lr.ph ]
  ret ptr %.3.i
end_hunk_0
