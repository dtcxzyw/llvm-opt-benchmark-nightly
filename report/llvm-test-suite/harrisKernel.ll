Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/harrisKernel?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %10 to i64
  %i.c = ptrtoaddr ptr %12 to i64                 ; 4 uses
  %i.d = ptrtoaddr ptr %11 to i64                 ; 2 uses
  %i.e = ptrtoaddr ptr %9 to i64                  ; 2 uses
  %i.f = ptrtoaddr ptr %13 to i64                 ; 3 uses
  %i.g = ptrtoaddr ptr %6 to i64
  %i.h = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.i = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %8 to i64
  %i.l = add i32 %0, 2                            ; 5 uses
  %i.m = icmp sgt i32 %0, -2                      ; 5 uses
  %i.n = icmp sgt i32 %1, -2
  %or.cond495 = and i1 %i.m, %i.n
  br i1 %or.cond495, label %.preheader317.preheader, label %._crit_edge350.split

.preheader317.preheader:                          ; preds = %bb.a
  %i.o = add i32 %1, 2                            ; 6 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count364 = zext nneg i32 %smax to i64 ; 5 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 19 uses
  %i.p = mul nuw nsw i64 %wide.trip.count364, 8200
  %i.q = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.s, i64 -8200
  %i.t = mul nuw nsw i64 %wide.trip.count364, 8208
  %i.u = getelementptr i8, ptr %2, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 %i.q
  %scevgep500 = getelementptr i8, ptr %i.v, i64 8216
  %min.iters.check = icmp ult i32 %i.o, 4
  %bound0 = icmp ult ptr %5, %scevgep500
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader317

.preheader317:                                    ; preds = %.preheader317.preheader, %._crit_edge
  %indvars.iv361 = phi i64 [ 0, %.preheader317.preheader ], [ %indvars.iv.next362, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8208 x i8], ptr %2, i64 %indvars.iv361 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8208 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16416 ; 4 uses
  %i.z = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv361 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader317, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader317 ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !8, !alias.scope !10
  %i.ab = or disjoint i64 %index, 2               ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %wide.load501 = load <4 x float>, ptr %i.ac, align 4, !tbaa !8, !alias.scope !10
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %wide.load502 = load <4 x float>, ptr %14, align 4, !tbaa !8, !alias.scope !10
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab
  %wide.load503 = load <4 x float>, ptr %i.ad, align 4, !tbaa !8, !alias.scope !10
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load504 = load <4 x float>, ptr %15, align 4, !tbaa !8, !alias.scope !10
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %wide.load505 = load <4 x float>, ptr %i.ae, align 4, !tbaa !8, !alias.scope !10
  %i.af = fadd fast <4 x float> %wide.load, %wide.load504
  %16 = fsub fast <4 x float> %wide.load501, %i.af
  %17 = fadd fast <4 x float> %16, %wide.load505
  %18 = fmul fast <4 x float> %17, splat (float f0x3DAAAAAB)
  %i.ag = fsub fast <4 x float> %wide.load503, %wide.load502
  %i.ah = fmul fast <4 x float> %i.ag, splat (float f0x3E2AAAAB)
  %i.ai = fadd fast <4 x float> %18, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  store <4 x float> %i.ai, ptr %i.aj, align 4, !tbaa !8, !alias.scope !13, !noalias !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader317, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader317 ]
  br label %scalar.ph

.preheader316:                                    ; preds = %._crit_edge
  %i.al = icmp sgt i32 %1, -2
  %or.cond496 = and i1 %i.m, %i.al
  br i1 %or.cond496, label %.preheader315.preheader, label %._crit_edge350.split

.preheader315.preheader:                          ; preds = %.preheader316
  %i.am = add i32 %1, 2
  %smax374 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count375 = zext nneg i32 %smax374 to i64
  %wide.trip.count369 = zext i32 %i.am to i64
  %i.an = mul nuw nsw i64 %wide.trip.count364, 8200
  %i.ao = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ap = getelementptr i8, ptr %4, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %scevgep507 = getelementptr i8, ptr %i.aq, i64 -8200
  %i.ar = mul nuw nsw i64 %wide.trip.count364, 8208
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ao
  %scevgep508 = getelementptr i8, ptr %i.at, i64 8216
  %min.iters.check513 = icmp ult i32 %i.o, 4
  %bound0509 = icmp ult ptr %4, %scevgep508
  %bound1510 = icmp ult ptr %2, %scevgep507
  %found.conflict511 = and i1 %bound0509, %bound1510
  %n.vec515 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n526 = icmp eq i64 %n.vec515, %wide.trip.count
  br label %.preheader315

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond365.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count364
  br i1 %exitcond365.not, label %.preheader316, label %.preheader317, !llvm.loop !19

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !8
  %i.aw = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aw
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !8
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %20 = load float, ptr %19, align 4, !tbaa !8
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aw
  %22 = load float, ptr %21, align 4, !tbaa !8
  %23 = fadd fast float %i.av, %20
  %reass.add292 = fsub fast float %i.ay, %23
  %reass.add293 = fadd fast float %reass.add292, %22
  %reass.mul294 = fmul fast float %reass.add293, f0x3DAAAAAB
  %reass.add296 = fsub fast float %i.bc, %i.ba
  %reass.mul297 = fmul fast float %reass.add296, f0x3E2AAAAB
  %24 = fadd fast float %reass.mul294, %reass.mul297
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store float %24, ptr %i.bd, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %scalar.ph, !llvm.loop !20

.preheader315:                                    ; preds = %.preheader315.preheader, %._crit_edge321.a
  %indvars.iv371 = phi i64 [ 0, %.preheader315.preheader ], [ %indvars.iv.next372, %._crit_edge321.a ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8208 x i8], ptr %2, i64 %indvars.iv371 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16416 ; 6 uses
  %i.bg = getelementptr inbounds nuw [8200 x i8], ptr %4, i64 %indvars.iv371 ; 2 uses
  %brmerge723 = select i1 %min.iters.check513, i1 true, i1 %found.conflict511
  br i1 %brmerge723, label %scalar.ph512.preheader, label %vector.body516

vector.body516:                                   ; preds = %.preheader315, %vector.body516
  %index517 = phi i64 [ %index.next524, %vector.body516 ], [ 0, %.preheader315 ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index517
  %wide.load518 = load <4 x float>, ptr %i.bh, align 4, !tbaa !8, !alias.scope !21
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index517
  %wide.load519 = load <4 x float>, ptr %i.bi, align 4, !tbaa !8, !alias.scope !21
  %25 = or disjoint i64 %index517, 1              ; 2 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %25
  %wide.load520 = load <4 x float>, ptr %26, align 4, !tbaa !8, !alias.scope !21
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %25
  %wide.load521 = load <4 x float>, ptr %i.bj, align 4, !tbaa !8, !alias.scope !21
  %27 = or disjoint i64 %index517, 2              ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %27
  %wide.load522 = load <4 x float>, ptr %i.bk, align 4, !tbaa !8, !alias.scope !21
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %27
  %wide.load523 = load <4 x float>, ptr %28, align 4, !tbaa !8, !alias.scope !21
  %29 = fadd fast <4 x float> %wide.load518, %wide.load522
  %30 = fsub fast <4 x float> %wide.load519, %29
  %31 = fadd fast <4 x float> %30, %wide.load523
  %32 = fmul fast <4 x float> %31, splat (float f0x3DAAAAAB)
  %i.bl = fsub fast <4 x float> %wide.load521, %wide.load520
  %i.bm = fmul fast <4 x float> %i.bl, splat (float f0x3E2AAAAB)
  %i.bn = fadd fast <4 x float> %32, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index517
  store <4 x float> %i.bn, ptr %i.bo, align 4, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next524 = add nuw i64 %index517, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next524, %n.vec515
  br i1 %i.bp, label %middle.block525, label %vector.body516, !llvm.loop !26

middle.block525:                                  ; preds = %vector.body516
  br i1 %cmp.n526, label %._crit_edge321.a, label %scalar.ph512.preheader

scalar.ph512.preheader:                           ; preds = %.preheader315, %middle.block525
  %indvars.iv366.ph = phi i64 [ %n.vec515, %middle.block525 ], [ 0, %.preheader315 ]
  br label %scalar.ph512

.preheader314:                                    ; preds = %._crit_edge321.a
  %i.bq = icmp sgt i32 %1, -2
  %or.cond497 = and i1 %i.m, %i.bq
  br i1 %or.cond497, label %.preheader313.preheader, label %._crit_edge350.split

.preheader313.preheader:                          ; preds = %.preheader314
  %i.br = add i32 %1, 2
  %smax385 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count386 = zext nneg i32 %smax385 to i64
  %wide.trip.count380 = zext i32 %i.br to i64
  %min.iters.check530 = icmp ult i32 %i.o, 8
  %i.bs = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond705 = or i1 %min.iters.check530, %diff.check
  %n.vec532 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n539 = icmp eq i64 %n.vec532, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader313

._crit_edge321.a:                                 ; preds = %scalar.ph512, %middle.block525
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count375
  br i1 %exitcond376.not, label %.preheader314, label %.preheader315, !llvm.loop !27

scalar.ph512:                                     ; preds = %scalar.ph512.preheader, %scalar.ph512
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %scalar.ph512 ], [ %indvars.iv366.ph, %scalar.ph512.preheader ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv366
  %33 = load float, ptr %i.bt, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv366
  %34 = load float, ptr %i.bu, align 4, !tbaa !8
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 4 uses
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next367
  %36 = load float, ptr %35, align 4, !tbaa !8
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next367
  %38 = load float, ptr %37, align 4, !tbaa !8
  %i.bv = add nuw nsw i64 %indvars.iv366, 2       ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !8
  %39 = fadd fast float %33, %i.bx
  %reass.add284 = fsub fast float %34, %39
  %reass.add285 = fadd fast float %reass.add284, %i.bz
  %reass.mul = fmul fast float %reass.add285, f0x3DAAAAAB
  %reass.add287 = fsub fast float %38, %36
  %reass.mul288 = fmul fast float %reass.add287, f0x3E2AAAAB
  %40 = fadd fast float %reass.mul, %reass.mul288
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv366
  store float %40, ptr %i.ca, align 4, !tbaa !8
  %exitcond370 = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370, label %._crit_edge321.a, label %scalar.ph512, !llvm.loop !28

.preheader313:                                    ; preds = %.preheader313.preheader, %._crit_edge324.a
  %indvars.iv382 = phi i64 [ 0, %.preheader313.preheader ], [ %indvars.iv.next383, %._crit_edge324.a ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv382 ; 6 uses
  %i.cc = getelementptr inbounds nuw [8200 x i8], ptr %8, i64 %indvars.iv382 ; 6 uses
  br i1 %or.cond705, label %scalar.ph529.preheader, label %vector.body533

vector.body533:                                   ; preds = %.preheader313, %vector.body533
  %index534 = phi i64 [ %index.next537, %vector.body533 ], [ 0, %.preheader313 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index534 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load535 = load <4 x float>, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %wide.load536 = load <4 x float>, ptr %i.ce, align 4, !tbaa !8 ; 2 uses
  %i.cf = fmul fast <4 x float> %wide.load535, %wide.load535
  %i.cg = fmul fast <4 x float> %wide.load536, %wide.load536
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index534 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> %i.cf, ptr %i.ch, align 4, !tbaa !8
  store <4 x float> %i.cg, ptr %i.ci, align 4, !tbaa !8
  %index.next537 = add nuw i64 %index534, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next537, %n.vec532
  br i1 %i.cj, label %middle.block538, label %vector.body533, !llvm.loop !29

middle.block538:                                  ; preds = %vector.body533
  br i1 %cmp.n539, label %._crit_edge324.a, label %scalar.ph529.preheader

scalar.ph529.preheader:                           ; preds = %.preheader313, %middle.block538
  %indvars.iv377.ph = phi i64 [ 0, %.preheader313 ], [ %n.vec532, %middle.block538 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol

scalar.ph529.prol:                                ; preds = %scalar.ph529.preheader, %scalar.ph529.prol
  %indvars.iv377.prol = phi i64 [ %indvars.iv.next378.prol, %scalar.ph529.prol ], [ %indvars.iv377.ph, %scalar.ph529.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph529.prol ], [ 0, %scalar.ph529.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv377.prol
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !8 ; 2 uses
  %i.cm = fmul fast float %i.cl, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv377.prol
  store float %i.cm, ptr %i.cn, align 4, !tbaa !8
  %indvars.iv.next378.prol = add nuw nsw i64 %indvars.iv377.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol, !llvm.loop !30

scalar.ph529.prol.loopexit:                       ; preds = %scalar.ph529.prol, %scalar.ph529.preheader
  %indvars.iv377.unr = phi i64 [ %indvars.iv377.ph, %scalar.ph529.preheader ], [ %indvars.iv.next378.prol, %scalar.ph529.prol ]
  %i.co = sub nsw i64 %indvars.iv377.ph, %wide.trip.count
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %._crit_edge324.a, label %scalar.ph529

.preheader312:                                    ; preds = %._crit_edge324.a
  %i.cq = icmp sgt i32 %1, -2
  %or.cond498 = and i1 %i.m, %i.cq
  br i1 %or.cond498, label %.preheader311.preheader, label %._crit_edge350.split

.preheader311.preheader:                          ; preds = %.preheader312
  %i.cr = add i32 %1, 2
  %smax396 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count397 = zext nneg i32 %smax396 to i64
  %wide.trip.count391 = zext i32 %i.cr to i64
  %min.iters.check545 = icmp ult i32 %i.o, 8
  %i.cs = sub i64 %i.h, %i.i
  %diff.check542 = icmp ugt i64 %i.cs, -32
  %i.ct = sub i64 %i.j, %i.i
  %diff.check543 = icmp ugt i64 %i.ct, -32
  %conflict.rdx = or i1 %diff.check542, %diff.check543
  %n.vec547 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n556 = icmp eq i64 %n.vec547, %wide.trip.count
  %xtraiter708 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br label %.preheader311

._crit_edge324.a:                                 ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529, %middle.block538
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond387.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count386
  br i1 %exitcond387.not, label %.preheader312, label %.preheader313, !llvm.loop !32

scalar.ph529:                                     ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.3, %scalar.ph529 ], [ %indvars.iv377.unr, %scalar.ph529.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv377
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !8 ; 2 uses
  %i.cw = fmul fast float %i.cv, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv377
  store float %i.cw, ptr %i.cx, align 4, !tbaa !8
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next378
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !8 ; 2 uses
  %i.da = fmul fast float %i.cz, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next378
  store float %i.da, ptr %i.db, align 4, !tbaa !8
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next378.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !8 ; 2 uses
  %i.de = fmul fast float %i.dd, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next378.1
  store float %i.de, ptr %i.df, align 4, !tbaa !8
  %indvars.iv.next378.2 = add nuw nsw i64 %indvars.iv377, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next378.2
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8 ; 2 uses
  %i.di = fmul fast float %i.dh, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next378.2
  store float %i.di, ptr %i.dj, align 4, !tbaa !8
  %indvars.iv.next378.3 = add nuw nsw i64 %indvars.iv377, 4 ; 2 uses
  %exitcond381.3 = icmp eq i64 %indvars.iv.next378.3, %wide.trip.count380
  br i1 %exitcond381.3, label %._crit_edge324.a, label %scalar.ph529, !llvm.loop !33

.preheader311:                                    ; preds = %.preheader311.preheader, %._crit_edge327.a
  %indvars.iv393 = phi i64 [ 0, %.preheader311.preheader ], [ %indvars.iv.next394, %._crit_edge327.a ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8200 x i8], ptr %4, i64 %indvars.iv393 ; 6 uses
  %i.dl = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv393 ; 6 uses
  %i.dm = getelementptr inbounds nuw [8200 x i8], ptr %7, i64 %indvars.iv393 ; 6 uses
  %brmerge724 = or i1 %min.iters.check545, %conflict.rdx
  br i1 %brmerge724, label %scalar.ph544.preheader, label %vector.body548

vector.body548:                                   ; preds = %.preheader311, %vector.body548
  %index549 = phi i64 [ %index.next554, %vector.body548 ], [ 0, %.preheader311 ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index549 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load550 = load <4 x float>, ptr %i.dn, align 4, !tbaa !8
  %wide.load551 = load <4 x float>, ptr %i.do, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index549 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load552 = load <4 x float>, ptr %i.dp, align 4, !tbaa !8
  %wide.load553 = load <4 x float>, ptr %i.dq, align 4, !tbaa !8
  %i.dr = fmul fast <4 x float> %wide.load552, %wide.load550
  %i.ds = fmul fast <4 x float> %wide.load553, %wide.load551
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index549 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x float> %i.dr, ptr %i.dt, align 4, !tbaa !8
  store <4 x float> %i.ds, ptr %i.du, align 4, !tbaa !8
  %index.next554 = add nuw i64 %index549, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.dv, label %middle.block555, label %vector.body548, !llvm.loop !34

middle.block555:                                  ; preds = %vector.body548
  br i1 %cmp.n556, label %._crit_edge327.a, label %scalar.ph544.preheader

scalar.ph544.preheader:                           ; preds = %.preheader311, %middle.block555
  %indvars.iv388.ph = phi i64 [ %n.vec547, %middle.block555 ], [ 0, %.preheader311 ] ; 3 uses
  br i1 %lcmp.mod709.not, label %scalar.ph544.prol.loopexit, label %scalar.ph544.prol

scalar.ph544.prol:                                ; preds = %scalar.ph544.preheader, %scalar.ph544.prol
  %indvars.iv388.prol = phi i64 [ %indvars.iv.next389.prol, %scalar.ph544.prol ], [ %indvars.iv388.ph, %scalar.ph544.preheader ] ; 4 uses
  %prol.iter710 = phi i64 [ %prol.iter710.next, %scalar.ph544.prol ], [ 0, %scalar.ph544.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv388.prol
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv388.prol
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !8
  %i.ea = fmul fast float %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv388.prol
  store float %i.ea, ptr %i.eb, align 4, !tbaa !8
  %indvars.iv.next389.prol = add nuw nsw i64 %indvars.iv388.prol, 1 ; 2 uses
  %prol.iter710.next = add i64 %prol.iter710, 1   ; 2 uses
  %prol.iter710.cmp.not = icmp eq i64 %prol.iter710.next, %xtraiter708
  br i1 %prol.iter710.cmp.not, label %scalar.ph544.prol.loopexit, label %scalar.ph544.prol, !llvm.loop !35

scalar.ph544.prol.loopexit:                       ; preds = %scalar.ph544.prol, %scalar.ph544.preheader
  %indvars.iv388.unr = phi i64 [ %indvars.iv388.ph, %scalar.ph544.preheader ], [ %indvars.iv.next389.prol, %scalar.ph544.prol ]
  %i.ec = sub nsw i64 %indvars.iv388.ph, %wide.trip.count
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %._crit_edge327.a, label %scalar.ph544

.preheader310:                                    ; preds = %._crit_edge327.a
  %i.ee = icmp sgt i32 %1, -2
  %or.cond499 = and i1 %i.m, %i.ee
  br i1 %or.cond499, label %.preheader309.preheader, label %._crit_edge350.split

.preheader309.preheader:                          ; preds = %.preheader310
  %i.ef = add i32 %1, 2
  %smax407 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count408 = zext nneg i32 %smax407 to i64
  %wide.trip.count402 = zext i32 %i.ef to i64
  %min.iters.check561 = icmp ult i32 %i.o, 8
  %i.eg = sub i64 %i.h, %i.g
  %diff.check559 = icmp ugt i64 %i.eg, -32
  %or.cond706 = or i1 %min.iters.check561, %diff.check559
  %n.vec563 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n570 = icmp eq i64 %n.vec563, %wide.trip.count
  %xtraiter711 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod712.not = icmp eq i64 %xtraiter711, 0
  br label %.preheader309

._crit_edge327.a:                                 ; preds = %scalar.ph544.prol.loopexit, %scalar.ph544, %middle.block555
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count397
  br i1 %exitcond398.not, label %.preheader310, label %.preheader311, !llvm.loop !36

scalar.ph544:                                     ; preds = %scalar.ph544.prol.loopexit, %scalar.ph544
  %indvars.iv388 = phi i64 [ %indvars.iv.next389.3, %scalar.ph544 ], [ %indvars.iv388.unr, %scalar.ph544.prol.loopexit ] ; 7 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv388
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv388
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !8
  %i.el = fmul fast float %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv388
  store float %i.el, ptr %i.em, align 4, !tbaa !8
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next389
  %i.eo = load float, ptr %i.en, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_:bb.a
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %index676 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load677 = load <4 x float>, ptr %i.oq, align 4, !tbaa !8
  %wide.load678 = load <4 x float>, ptr %i.or, align 4, !tbaa !8
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index676 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load679 = load <4 x float>, ptr %i.os, align 4, !tbaa !8
  %wide.load680 = load <4 x float>, ptr %i.ot, align 4, !tbaa !8
  %i.ou = fmul fast <4 x float> %wide.load679, %wide.load677
  %i.ov = fmul fast <4 x float> %wide.load680, %wide.load678
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index676 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load681 = load <4 x float>, ptr %i.ow, align 4, !tbaa !8 ; 2 uses
  %wide.load682 = load <4 x float>, ptr %i.ox, align 4, !tbaa !8 ; 2 uses
  %i.oy = fmul fast <4 x float> %wide.load681, %wide.load681
  %i.oz = fmul fast <4 x float> %wide.load682, %wide.load682
  %i.pa = fsub fast <4 x float> %i.ou, %i.oy
  %i.pb = fsub fast <4 x float> %i.ov, %i.oz
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index676 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <4 x float> %i.pa, ptr %i.pc, align 4, !tbaa !8
  store <4 x float> %i.pb, ptr %i.pd, align 4, !tbaa !8
  %index.next683 = add nuw i64 %index676, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next683, %n.vec674
  br i1 %i.pe, label %middle.block684, label %vector.body675, !llvm.loop !70

middle.block684:                                  ; preds = %vector.body675
  br i1 %cmp.n685, label %._crit_edge345, label %scalar.ph671.preheader

scalar.ph671.preheader:                           ; preds = %.preheader299, %middle.block684
  %indvars.iv450.ph = phi i64 [ %n.vec674, %middle.block684 ], [ 0, %.preheader299 ] ; 7 uses
  br i1 %lcmp.mod718.not, label %scalar.ph671.prol.loopexit, label %scalar.ph671.prol

scalar.ph671.prol:                                ; preds = %scalar.ph671.preheader
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv450.ph
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !8
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv450.ph
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !8
  %i.pj = fmul fast float %i.pi, %i.pg
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv450.ph
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !8 ; 2 uses
  %i.pm = fmul fast float %i.pl, %i.pl
  %i.pn = fsub fast float %i.pj, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv450.ph
  store float %i.pn, ptr %i.po, align 4, !tbaa !8
  %indvars.iv.next451.prol = or disjoint i64 %indvars.iv450.ph, 1
  br label %scalar.ph671.prol.loopexit

scalar.ph671.prol.loopexit:                       ; preds = %scalar.ph671.prol, %scalar.ph671.preheader
  %indvars.iv450.unr = phi i64 [ %indvars.iv450.ph, %scalar.ph671.preheader ], [ %indvars.iv.next451.prol, %scalar.ph671.prol ]
  %i.pp = icmp eq i64 %indvars.iv450.ph, %i.nn
  br i1 %i.pp, label %._crit_edge345, label %scalar.ph671

.preheader.preheader:                             ; preds = %._crit_edge345
  %wide.trip.count468 = zext nneg i32 %0 to i64
  %wide.trip.count463 = zext nneg i32 %1 to i64
  %min.iters.check692 = icmp ult i32 %1, 8
  %i.pq = sub i64 %i.c, %i.a
  %diff.check688 = icmp ugt i64 %i.pq, -32
  %i.pr = sub i64 %i.f, %i.a
  %diff.check689 = icmp ugt i64 %i.pr, -32
  %conflict.rdx690 = or i1 %diff.check688, %diff.check689
  %n.vec694 = and i64 %wide.trip.count413, 2147483640 ; 3 uses
  %cmp.n703 = icmp eq i64 %n.vec694, %wide.trip.count413
  %xtraiter720 = and i64 %wide.trip.count413, 1
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %i.ps = add nsw i64 %wide.trip.count413, -1
  br label %.preheader

._crit_edge345:                                   ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671, %middle.block684
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader.preheader, label %.preheader299, !llvm.loop !71

scalar.ph671:                                     ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671
  %indvars.iv450 = phi i64 [ %indvars.iv.next451.1, %scalar.ph671 ], [ %indvars.iv450.unr, %scalar.ph671.prol.loopexit ] ; 6 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv450
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !8
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv450
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !8
  %i.px = fmul fast float %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv450
  %i.pz = load float, ptr %i.py, align 4, !tbaa !8 ; 2 uses
  %i.qa = fmul fast float %i.pz, %i.pz
  %i.qb = fsub fast float %i.px, %i.qa
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv450
  store float %i.qb, ptr %i.qc, align 4, !tbaa !8
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 4 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv.next451
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !8
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv.next451
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !8
  %i.qh = fmul fast float %i.qg, %i.qe
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next451
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !8 ; 2 uses
  %i.qk = fmul fast float %i.qj, %i.qj
  %i.ql = fsub fast float %i.qh, %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next451
  store float %i.ql, ptr %i.qm, align 4, !tbaa !8
  %indvars.iv.next451.1 = add nuw nsw i64 %indvars.iv450, 2 ; 2 uses
  %exitcond454.not.1 = icmp eq i64 %indvars.iv.next451.1, %wide.trip.count453
  br i1 %exitcond454.not.1, label %._crit_edge345, label %scalar.ph671, !llvm.loop !72

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge348
  %indvars.iv465 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next466, %._crit_edge348 ] ; 4 uses
  %i.qn = getelementptr inbounds nuw [8192 x i8], ptr %12, i64 %indvars.iv465 ; 4 uses
  %i.qo = getelementptr inbounds nuw [8192 x i8], ptr %13, i64 %indvars.iv465 ; 4 uses
  %i.qp = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 %indvars.iv465 ; 4 uses
  %brmerge730 = or i1 %min.iters.check692, %conflict.rdx690
  br i1 %brmerge730, label %scalar.ph691.preheader, label %vector.body695

vector.body695:                                   ; preds = %.preheader, %vector.body695
  %index696 = phi i64 [ %index.next701, %vector.body695 ], [ 0, %.preheader ] ; 4 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %index696 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load697 = load <4 x float>, ptr %i.qq, align 4, !tbaa !8
  %wide.load698 = load <4 x float>, ptr %i.qr, align 4, !tbaa !8
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %index696 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load699 = load <4 x float>, ptr %i.qs, align 4, !tbaa !8 ; 2 uses
  %wide.load700 = load <4 x float>, ptr %i.qt, align 4, !tbaa !8 ; 2 uses
  %i.qu = fmul fast <4 x float> %wide.load699, %wide.load699
  %i.qv = fmul fast <4 x float> %wide.load700, %wide.load700
  %i.qw = fmul fast <4 x float> %i.qu, splat (float 4.000000e-02)
  %i.qx = fmul fast <4 x float> %i.qv, splat (float 4.000000e-02)
  %i.qy = fsub fast <4 x float> %wide.load697, %i.qw
  %i.qz = fsub fast <4 x float> %wide.load698, %i.qx
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %index696 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <4 x float> %i.qy, ptr %i.ra, align 4, !tbaa !8
  store <4 x float> %i.qz, ptr %i.rb, align 4, !tbaa !8
  %index.next701 = add nuw i64 %index696, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.rc, label %middle.block702, label %vector.body695, !llvm.loop !73

middle.block702:                                  ; preds = %vector.body695
  br i1 %cmp.n703, label %._crit_edge348, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %.preheader, %middle.block702
  %indvars.iv460.ph = phi i64 [ %n.vec694, %middle.block702 ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod721.not, label %scalar.ph691.prol.loopexit, label %scalar.ph691.prol

scalar.ph691.prol:                                ; preds = %scalar.ph691.preheader
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv460.ph
  %i.re = load float, ptr %i.rd, align 4, !tbaa !8
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv460.ph
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !8 ; 2 uses
  %i.rh = fmul fast float %i.rg, %i.rg
  %i.ri = fmul fast float %i.rh, 4.000000e-02
  %i.rj = fsub fast float %i.re, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv460.ph
  store float %i.rj, ptr %i.rk, align 4, !tbaa !8
  %indvars.iv.next461.prol = or disjoint i64 %indvars.iv460.ph, 1
  br label %scalar.ph691.prol.loopexit

scalar.ph691.prol.loopexit:                       ; preds = %scalar.ph691.prol, %scalar.ph691.preheader
  %indvars.iv460.unr = phi i64 [ %indvars.iv460.ph, %scalar.ph691.preheader ], [ %indvars.iv.next461.prol, %scalar.ph691.prol ]
  %i.rl = icmp eq i64 %indvars.iv460.ph, %i.ps
  br i1 %i.rl, label %._crit_edge348, label %scalar.ph691

._crit_edge350.split:                             ; preds = %._crit_edge348, %bb.a, %.preheader316, %.preheader314, %.preheader312, %.preheader310, %.preheader308
  ret void

._crit_edge348:                                   ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691, %middle.block702
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count468
  br i1 %exitcond469.not, label %._crit_edge350.split, label %.preheader, !llvm.loop !74

scalar.ph691:                                     ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691
  %indvars.iv460 = phi i64 [ %indvars.iv.next461.1, %scalar.ph691 ], [ %indvars.iv460.unr, %scalar.ph691.prol.loopexit ] ; 5 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv460
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !8
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv460
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !8 ; 2 uses
  %i.rq = fmul fast float %i.rp, %i.rp
  %i.rr = fmul fast float %i.rq, 4.000000e-02
  %i.rs = fsub fast float %i.rn, %i.rr
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv460
  store float %i.rs, ptr %i.rt, align 4, !tbaa !8
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv.next461
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !8
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv.next461
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !8 ; 2 uses
  %i.ry = fmul fast float %i.rx, %i.rx
  %i.rz = fmul fast float %i.ry, 4.000000e-02
  %i.sa = fsub fast float %i.rv, %i.rz
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next461
  store float %i.sa, ptr %i.sb, align 4, !tbaa !8
  %indvars.iv.next461.1 = add nuw nsw i64 %indvars.iv460, 2 ; 2 uses
  %exitcond464.not.1 = icmp eq i64 %indvars.iv.next461.1, %wide.trip.count463
  br i1 %exitcond464.not.1, label %._crit_edge348, label %scalar.ph691, !llvm.loop !75
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16, !17}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !16, !17, !18}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17, !18}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16, !17}
!34 = distinct !{!34, !16, !17, !18}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16, !17}
!38 = distinct !{!38, !16, !17, !18}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16, !17}
!42 = !{!43}
!43 = distinct !{!43, !44}
!44 = distinct !{!44, !"LVerDomain"}
!45 = !{!46}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !16, !17, !18}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16, !17}
!50 = !{!51}
!51 = distinct !{!51, !52}
!52 = distinct !{!52, !"LVerDomain"}
!53 = !{!54}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !16, !17, !18}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16, !17}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !16, !17, !18}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16, !17}
!66 = distinct !{!66, !16, !17, !18}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16, !17}
!70 = distinct !{!70, !16, !17, !18}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16, !17}
!73 = distinct !{!73, !16, !17, !18}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16, !17}
end_hunk_1
