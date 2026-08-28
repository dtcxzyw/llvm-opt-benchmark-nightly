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
  %or.cond483 = and i1 %i.m, %i.n
  br i1 %or.cond483, label %.preheader305.preheader.a, label %._crit_edge338.split

.preheader305.preheader.a:                        ; preds = %bb.a
  %i.o = add i32 %1, 2                            ; 6 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count352 = zext nneg i32 %smax to i64 ; 5 uses
  %wide.trip.count = zext i32 %i.o to i64         ; 19 uses
  %i.p = mul nuw nsw i64 %wide.trip.count352, 8200
  %i.q = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.s, i64 -8200
  %i.t = mul nuw nsw i64 %wide.trip.count352, 8208
  %i.u = getelementptr i8, ptr %2, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 %i.q
  %scevgep488 = getelementptr i8, ptr %i.v, i64 8216
  %min.iters.check = icmp ult i32 %i.o, 4
  %bound0 = icmp ult ptr %5, %scevgep488
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader305.a

.preheader305.a:                                  ; preds = %.preheader305.preheader.a, %._crit_edge
  %indvars.iv349 = phi i64 [ 0, %.preheader305.preheader.a ], [ %indvars.iv.next350, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8208 x i8], ptr %2, i64 %indvars.iv349 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8208 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16416 ; 4 uses
  %i.z = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv349 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader305.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader305.a ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !8, !alias.scope !10
  %14 = fmul fast <4 x float> %wide.load, splat (float f0xBDAAAAAB)
  %i.ab = or disjoint i64 %index, 2               ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %wide.load489 = load <4 x float>, ptr %i.ac, align 4, !tbaa !8, !alias.scope !10
  %15 = fmul fast <4 x float> %wide.load489, splat (float f0x3DAAAAAB)
  %16 = fadd fast <4 x float> %14, %15
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index
  %wide.load490 = load <4 x float>, ptr %i.ad, align 4, !tbaa !8, !alias.scope !10
  %17 = fmul fast <4 x float> %wide.load490, splat (float f0xBE2AAAAB)
  %18 = fadd fast <4 x float> %16, %17
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab
  %wide.load491 = load <4 x float>, ptr %i.ae, align 4, !tbaa !8, !alias.scope !10
  %19 = fmul fast <4 x float> %wide.load491, splat (float f0x3E2AAAAB)
  %i.af = fadd fast <4 x float> %18, %19
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load492 = load <4 x float>, ptr %20, align 4, !tbaa !8, !alias.scope !10
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %wide.load493 = load <4 x float>, ptr %21, align 4, !tbaa !8, !alias.scope !10
  %i.ag = fsub fast <4 x float> %wide.load493, %wide.load492
  %i.ah = fmul fast <4 x float> %i.ag, splat (float f0x3DAAAAAB)
  %i.ai = fadd fast <4 x float> %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index
  store <4 x float> %i.ai, ptr %i.aj, align 4, !tbaa !8, !alias.scope !13, !noalias !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader305.a, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader305.a ]
  br label %scalar.ph

.preheader304:                                    ; preds = %._crit_edge
  %i.al = icmp sgt i32 %1, -2
  %or.cond484 = and i1 %i.m, %i.al
  br i1 %or.cond484, label %.preheader303.preheader.a, label %._crit_edge338.split

.preheader303.preheader.a:                        ; preds = %.preheader304
  %i.am = add i32 %1, 2
  %smax362 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count363 = zext nneg i32 %smax362 to i64
  %wide.trip.count357 = zext i32 %i.am to i64
  %i.an = mul nuw nsw i64 %wide.trip.count352, 8200
  %i.ao = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ap = getelementptr i8, ptr %4, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ao
  %scevgep495 = getelementptr i8, ptr %i.aq, i64 -8200
  %i.ar = mul nuw nsw i64 %wide.trip.count352, 8208
  %i.as = getelementptr i8, ptr %2, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ao
  %scevgep496 = getelementptr i8, ptr %i.at, i64 8216
  %min.iters.check501 = icmp ult i32 %i.o, 4
  %bound0497 = icmp ult ptr %4, %scevgep496
  %bound1498 = icmp ult ptr %2, %scevgep495
  %found.conflict499 = and i1 %bound0497, %bound1498
  %n.vec503 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n514 = icmp eq i64 %n.vec503, %wide.trip.count
  br label %.preheader303.a

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count352
  br i1 %exitcond353.not, label %.preheader304, label %.preheader305.a, !llvm.loop !19

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
  %22 = insertelement <4 x float> poison, float %i.av, i64 0
  %23 = insertelement <4 x float> %22, float %i.ay, i64 1
  %24 = insertelement <4 x float> %23, float %i.ba, i64 2
  %25 = insertelement <4 x float> %24, float %i.bc, i64 3
  %26 = fmul fast <4 x float> %25, <float f0xBDAAAAAB, float f0x3DAAAAAB, float f0xBE2AAAAB, float f0x3E2AAAAB>
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %28 = load float, ptr %27, align 4, !tbaa !8
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aw
  %30 = load float, ptr %29, align 4, !tbaa !8
  %reass.add284.a = fsub fast float %30, %28
  %reass.mul285 = fmul fast float %reass.add284.a, f0x3DAAAAAB
  %op.rdx697 = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %reass.mul285, <4 x float> %26)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  store float %op.rdx697, ptr %i.bd, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %scalar.ph, !llvm.loop !20

.preheader303.a:                                  ; preds = %.preheader303.preheader.a, %._crit_edge309
  %indvars.iv359 = phi i64 [ 0, %.preheader303.preheader.a ], [ %indvars.iv.next360, %._crit_edge309 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8208 x i8], ptr %2, i64 %indvars.iv359 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16416 ; 5 uses
  %i.bg = getelementptr inbounds nuw [8200 x i8], ptr %4, i64 %indvars.iv359 ; 2 uses
  %brmerge713 = select i1 %min.iters.check501, i1 true, i1 %found.conflict499
  br i1 %brmerge713, label %scalar.ph500.preheader, label %vector.body504

vector.body504:                                   ; preds = %.preheader303.a, %vector.body504
  %index505 = phi i64 [ %index.next512, %vector.body504 ], [ 0, %.preheader303.a ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index505
  %wide.load506 = load <4 x float>, ptr %i.bh, align 4, !tbaa !8, !alias.scope !21
  %31 = fmul fast <4 x float> %wide.load506, splat (float f0xBDAAAAAB)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index505
  %wide.load507 = load <4 x float>, ptr %i.bi, align 4, !tbaa !8, !alias.scope !21
  %32 = fmul fast <4 x float> %wide.load507, splat (float f0x3DAAAAAB)
  %33 = fadd fast <4 x float> %31, %32
  %34 = or disjoint i64 %index505, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %34
  %wide.load508 = load <4 x float>, ptr %i.bj, align 4, !tbaa !8, !alias.scope !21
  %35 = fmul fast <4 x float> %wide.load508, splat (float f0xBE2AAAAB)
  %36 = fadd fast <4 x float> %33, %35
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %34
  %wide.load509 = load <4 x float>, ptr %i.bk, align 4, !tbaa !8, !alias.scope !21
  %37 = fmul fast <4 x float> %wide.load509, splat (float f0x3E2AAAAB)
  %38 = fadd fast <4 x float> %36, %37
  %39 = or disjoint i64 %index505, 2              ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %39
  %wide.load510 = load <4 x float>, ptr %40, align 4, !tbaa !8, !alias.scope !21
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %39
  %wide.load511 = load <4 x float>, ptr %41, align 4, !tbaa !8, !alias.scope !21
  %i.bl = fsub fast <4 x float> %wide.load511, %wide.load510
  %i.bm = fmul fast <4 x float> %i.bl, splat (float f0x3DAAAAAB)
  %i.bn = fadd fast <4 x float> %i.bm, %38
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index505
  store <4 x float> %i.bn, ptr %i.bo, align 4, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next512 = add nuw i64 %index505, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next512, %n.vec503
  br i1 %i.bp, label %middle.block513, label %vector.body504, !llvm.loop !26

middle.block513:                                  ; preds = %vector.body504
  br i1 %cmp.n514, label %._crit_edge309, label %scalar.ph500.preheader

scalar.ph500.preheader:                           ; preds = %.preheader303.a, %middle.block513
  %indvars.iv354.ph = phi i64 [ %n.vec503, %middle.block513 ], [ 0, %.preheader303.a ]
  br label %scalar.ph500

.preheader302:                                    ; preds = %._crit_edge309
  %i.bq = icmp sgt i32 %1, -2
  %or.cond485 = and i1 %i.m, %i.bq
  br i1 %or.cond485, label %.preheader301.preheader.a, label %._crit_edge338.split

.preheader301.preheader.a:                        ; preds = %.preheader302
  %i.br = add i32 %1, 2
  %smax373 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count374 = zext nneg i32 %smax373 to i64
  %wide.trip.count368 = zext i32 %i.br to i64
  %min.iters.check518 = icmp ult i32 %i.o, 8
  %i.bs = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond693 = or i1 %min.iters.check518, %diff.check
  %n.vec520 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n527 = icmp eq i64 %n.vec520, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader301.a

._crit_edge309:                                   ; preds = %scalar.ph500, %middle.block513
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count363
  br i1 %exitcond364.not, label %.preheader302, label %.preheader303.a, !llvm.loop !27

scalar.ph500:                                     ; preds = %scalar.ph500.preheader, %scalar.ph500
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %scalar.ph500 ], [ %indvars.iv354.ph, %scalar.ph500.preheader ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv354
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv354
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %42 = load <2 x float>, ptr %i.bt, align 4, !tbaa !8
  %43 = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %44 = shufflevector <2 x float> %42, <2 x float> %43, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %45 = fmul fast <4 x float> %44, <float f0xBDAAAAAB, float f0x3DAAAAAB, float f0xBE2AAAAB, float f0x3E2AAAAB>
  %i.bv = add nuw nsw i64 %indvars.iv354, 2       ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !8
  %reass.add = fsub fast float %i.bz, %i.bx
  %reass.mul.a = fmul fast float %reass.add, f0x3DAAAAAB
  %op.rdx696 = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %reass.mul.a, <4 x float> %45)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv354
  store float %op.rdx696, ptr %i.ca, align 4, !tbaa !8
  %exitcond358 = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358, label %._crit_edge309, label %scalar.ph500, !llvm.loop !28

.preheader301.a:                                  ; preds = %.preheader301.preheader.a, %._crit_edge312
  %indvars.iv370 = phi i64 [ 0, %.preheader301.preheader.a ], [ %indvars.iv.next371, %._crit_edge312 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv370 ; 6 uses
  %i.cc = getelementptr inbounds nuw [8200 x i8], ptr %8, i64 %indvars.iv370 ; 6 uses
  br i1 %or.cond693, label %scalar.ph517.preheader, label %vector.body521

vector.body521:                                   ; preds = %.preheader301.a, %vector.body521
  %index522 = phi i64 [ %index.next525, %vector.body521 ], [ 0, %.preheader301.a ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index522 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load523.a = load <4 x float>, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %wide.load524 = load <4 x float>, ptr %i.ce, align 4, !tbaa !8 ; 2 uses
  %i.cf = fmul fast <4 x float> %wide.load523.a, %wide.load523.a
  %i.cg = fmul fast <4 x float> %wide.load524, %wide.load524
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index522 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> %i.cf, ptr %i.ch, align 4, !tbaa !8
  store <4 x float> %i.cg, ptr %i.ci, align 4, !tbaa !8
  %index.next525 = add nuw i64 %index522, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next525, %n.vec520
  br i1 %i.cj, label %middle.block526, label %vector.body521, !llvm.loop !29

middle.block526:                                  ; preds = %vector.body521
  br i1 %cmp.n527, label %._crit_edge312, label %scalar.ph517.preheader

scalar.ph517.preheader:                           ; preds = %.preheader301.a, %middle.block526
  %indvars.iv365.ph = phi i64 [ 0, %.preheader301.a ], [ %n.vec520, %middle.block526 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph517.prol.loopexit, label %scalar.ph517.prol

scalar.ph517.prol:                                ; preds = %scalar.ph517.preheader, %scalar.ph517.prol
  %indvars.iv365.prol = phi i64 [ %indvars.iv.next366.prol, %scalar.ph517.prol ], [ %indvars.iv365.ph, %scalar.ph517.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph517.prol ], [ 0, %scalar.ph517.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv365.prol
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !8 ; 2 uses
  %i.cm = fmul fast float %i.cl, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv365.prol
  store float %i.cm, ptr %i.cn, align 4, !tbaa !8
  %indvars.iv.next366.prol = add nuw nsw i64 %indvars.iv365.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph517.prol.loopexit, label %scalar.ph517.prol, !llvm.loop !30

scalar.ph517.prol.loopexit:                       ; preds = %scalar.ph517.prol, %scalar.ph517.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph517.preheader ], [ %indvars.iv.next366.prol, %scalar.ph517.prol ]
  %i.co = sub nsw i64 %indvars.iv365.ph, %wide.trip.count
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %._crit_edge312, label %scalar.ph517

.preheader300:                                    ; preds = %._crit_edge312
  %i.cq = icmp sgt i32 %1, -2
  %or.cond486 = and i1 %i.m, %i.cq
  br i1 %or.cond486, label %.preheader299.preheader.a, label %._crit_edge338.split

.preheader299.preheader.a:                        ; preds = %.preheader300
  %i.cr = add i32 %1, 2
  %smax384 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count385 = zext nneg i32 %smax384 to i64
  %wide.trip.count379 = zext i32 %i.cr to i64
  %min.iters.check533 = icmp ult i32 %i.o, 8
  %i.cs = sub i64 %i.h, %i.i
  %diff.check530 = icmp ugt i64 %i.cs, -32
  %i.ct = sub i64 %i.j, %i.i
  %diff.check531 = icmp ugt i64 %i.ct, -32
  %conflict.rdx = or i1 %diff.check530, %diff.check531
  %n.vec535 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n544 = icmp eq i64 %n.vec535, %wide.trip.count
  %xtraiter698 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod699.not = icmp eq i64 %xtraiter698, 0
  br label %.preheader299.a

._crit_edge312:                                   ; preds = %scalar.ph517.prol.loopexit, %scalar.ph517, %middle.block526
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count374
  br i1 %exitcond375.not, label %.preheader300, label %.preheader301.a, !llvm.loop !32

scalar.ph517:                                     ; preds = %scalar.ph517.prol.loopexit, %scalar.ph517
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.3, %scalar.ph517 ], [ %indvars.iv365.unr, %scalar.ph517.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv365
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !8 ; 2 uses
  %i.cw = fmul fast float %i.cv, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv365
  store float %i.cw, ptr %i.cx, align 4, !tbaa !8
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next366
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !8 ; 2 uses
  %i.da = fmul fast float %i.cz, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next366
  store float %i.da, ptr %i.db, align 4, !tbaa !8
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next366.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !8 ; 2 uses
  %i.de = fmul fast float %i.dd, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next366.1
  store float %i.de, ptr %i.df, align 4, !tbaa !8
  %indvars.iv.next366.2 = add nuw nsw i64 %indvars.iv365, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next366.2
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8 ; 2 uses
  %i.di = fmul fast float %i.dh, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next366.2
  store float %i.di, ptr %i.dj, align 4, !tbaa !8
  %indvars.iv.next366.3 = add nuw nsw i64 %indvars.iv365, 4 ; 2 uses
  %exitcond369.3 = icmp eq i64 %indvars.iv.next366.3, %wide.trip.count368
  br i1 %exitcond369.3, label %._crit_edge312, label %scalar.ph517, !llvm.loop !33

.preheader299.a:                                  ; preds = %.preheader299.preheader.a, %._crit_edge315
  %indvars.iv381 = phi i64 [ 0, %.preheader299.preheader.a ], [ %indvars.iv.next382, %._crit_edge315 ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [8200 x i8], ptr %4, i64 %indvars.iv381 ; 6 uses
  %i.dl = getelementptr inbounds nuw [8200 x i8], ptr %5, i64 %indvars.iv381 ; 6 uses
  %i.dm = getelementptr inbounds nuw [8200 x i8], ptr %7, i64 %indvars.iv381 ; 6 uses
  %brmerge714 = or i1 %min.iters.check533, %conflict.rdx
  br i1 %brmerge714, label %scalar.ph532.preheader, label %vector.body536

vector.body536:                                   ; preds = %.preheader299.a, %vector.body536
  %index537 = phi i64 [ %index.next542, %vector.body536 ], [ 0, %.preheader299.a ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index537 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load538 = load <4 x float>, ptr %i.dn, align 4, !tbaa !8
  %wide.load539 = load <4 x float>, ptr %i.do, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index537 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load540 = load <4 x float>, ptr %i.dp, align 4, !tbaa !8
  %wide.load541 = load <4 x float>, ptr %i.dq, align 4, !tbaa !8
  %i.dr = fmul fast <4 x float> %wide.load540, %wide.load538
  %i.ds = fmul fast <4 x float> %wide.load541, %wide.load539
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index537 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x float> %i.dr, ptr %i.dt, align 4, !tbaa !8
  store <4 x float> %i.ds, ptr %i.du, align 4, !tbaa !8
  %index.next542 = add nuw i64 %index537, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next542, %n.vec535
  br i1 %i.dv, label %middle.block543, label %vector.body536, !llvm.loop !34

middle.block543:                                  ; preds = %vector.body536
  br i1 %cmp.n544, label %._crit_edge315, label %scalar.ph532.preheader

scalar.ph532.preheader:                           ; preds = %.preheader299.a, %middle.block543
  %indvars.iv376.ph = phi i64 [ %n.vec535, %middle.block543 ], [ 0, %.preheader299.a ] ; 3 uses
  br i1 %lcmp.mod699.not, label %scalar.ph532.prol.loopexit, label %scalar.ph532.prol

scalar.ph532.prol:                                ; preds = %scalar.ph532.preheader, %scalar.ph532.prol
  %indvars.iv376.prol = phi i64 [ %indvars.iv.next377.prol, %scalar.ph532.prol ], [ %indvars.iv376.ph, %scalar.ph532.preheader ] ; 4 uses
  %prol.iter700 = phi i64 [ %prol.iter700.next, %scalar.ph532.prol ], [ 0, %scalar.ph532.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv376.prol
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv376.prol
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !8
  %i.ea = fmul fast float %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv376.prol
  store float %i.ea, ptr %i.eb, align 4, !tbaa !8
  %indvars.iv.next377.prol = add nuw nsw i64 %indvars.iv376.prol, 1 ; 2 uses
  %prol.iter700.next = add i64 %prol.iter700, 1   ; 2 uses
  %prol.iter700.cmp.not = icmp eq i64 %prol.iter700.next, %xtraiter698
  br i1 %prol.iter700.cmp.not, label %scalar.ph532.prol.loopexit, label %scalar.ph532.prol, !llvm.loop !35

scalar.ph532.prol.loopexit:                       ; preds = %scalar.ph532.prol, %scalar.ph532.preheader
  %indvars.iv376.unr = phi i64 [ %indvars.iv376.ph, %scalar.ph532.preheader ], [ %indvars.iv.next377.prol, %scalar.ph532.prol ]
  %i.ec = sub nsw i64 %indvars.iv376.ph, %wide.trip.count
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %._crit_edge315, label %scalar.ph532

.preheader298:                                    ; preds = %._crit_edge315
  %i.ee = icmp sgt i32 %1, -2
  %or.cond487 = and i1 %i.m, %i.ee
  br i1 %or.cond487, label %.preheader297.preheader, label %._crit_edge338.split

.preheader297.preheader:                          ; preds = %.preheader298
  %i.ef = add i32 %1, 2
  %smax395 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count396 = zext nneg i32 %smax395 to i64
  %wide.trip.count390 = zext i32 %i.ef to i64
  %min.iters.check549 = icmp ult i32 %i.o, 8
  %i.eg = sub i64 %i.h, %i.g
  %diff.check547 = icmp ugt i64 %i.eg, -32
  %or.cond694 = or i1 %min.iters.check549, %diff.check547
  %n.vec551 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n558 = icmp eq i64 %n.vec551, %wide.trip.count
  %xtraiter701 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br label %.preheader297

._crit_edge315:                                   ; preds = %scalar.ph532.prol.loopexit, %scalar.ph532, %middle.block543
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count385
  br i1 %exitcond386.not, label %.preheader298, label %.preheader299.a, !llvm.loop !36

scalar.ph532:                                     ; preds = %scalar.ph532.prol.loopexit, %scalar.ph532
  %indvars.iv376 = phi i64 [ %indvars.iv.next377.3, %scalar.ph532 ], [ %indvars.iv376.unr, %scalar.ph532.prol.loopexit ] ; 7 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv376
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv376
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !8
  %i.el = fmul fast float %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv376
  store float %i.el, ptr %i.em, align 4, !tbaa !8
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next377
  %i.eo = load float, ptr %i.en, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_:bb.a
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %index664 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load665 = load <4 x float>, ptr %i.oq, align 4, !tbaa !8
  %wide.load666 = load <4 x float>, ptr %i.or, align 4, !tbaa !8
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index664 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load667 = load <4 x float>, ptr %i.os, align 4, !tbaa !8
  %wide.load668 = load <4 x float>, ptr %i.ot, align 4, !tbaa !8
  %i.ou = fmul fast <4 x float> %wide.load667, %wide.load665
  %i.ov = fmul fast <4 x float> %wide.load668, %wide.load666
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index664 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load669 = load <4 x float>, ptr %i.ow, align 4, !tbaa !8 ; 2 uses
  %wide.load670 = load <4 x float>, ptr %i.ox, align 4, !tbaa !8 ; 2 uses
  %i.oy = fmul fast <4 x float> %wide.load669, %wide.load669
  %i.oz = fmul fast <4 x float> %wide.load670, %wide.load670
  %i.pa = fsub fast <4 x float> %i.ou, %i.oy
  %i.pb = fsub fast <4 x float> %i.ov, %i.oz
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index664 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <4 x float> %i.pa, ptr %i.pc, align 4, !tbaa !8
  store <4 x float> %i.pb, ptr %i.pd, align 4, !tbaa !8
  %index.next671 = add nuw i64 %index664, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next671, %n.vec662
  br i1 %i.pe, label %middle.block672, label %vector.body663, !llvm.loop !70

middle.block672:                                  ; preds = %vector.body663
  br i1 %cmp.n673, label %._crit_edge333, label %scalar.ph659.preheader

scalar.ph659.preheader:                           ; preds = %.preheader287, %middle.block672
  %indvars.iv438.ph = phi i64 [ %n.vec662, %middle.block672 ], [ 0, %.preheader287 ] ; 7 uses
  br i1 %lcmp.mod708.not, label %scalar.ph659.prol.loopexit, label %scalar.ph659.prol

scalar.ph659.prol:                                ; preds = %scalar.ph659.preheader
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv438.ph
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !8
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv438.ph
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !8
  %i.pj = fmul fast float %i.pi, %i.pg
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv438.ph
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !8 ; 2 uses
  %i.pm = fmul fast float %i.pl, %i.pl
  %i.pn = fsub fast float %i.pj, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv438.ph
  store float %i.pn, ptr %i.po, align 4, !tbaa !8
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %scalar.ph659.prol.loopexit

scalar.ph659.prol.loopexit:                       ; preds = %scalar.ph659.prol, %scalar.ph659.preheader
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %scalar.ph659.preheader ], [ %indvars.iv.next439.prol, %scalar.ph659.prol ]
  %i.pp = icmp eq i64 %indvars.iv438.ph, %i.nn
  br i1 %i.pp, label %._crit_edge333, label %scalar.ph659

.preheader.preheader:                             ; preds = %._crit_edge333
  %wide.trip.count456 = zext nneg i32 %0 to i64
  %wide.trip.count451 = zext nneg i32 %1 to i64
  %min.iters.check680 = icmp ult i32 %1, 8
  %i.pq = sub i64 %i.c, %i.a
  %diff.check676 = icmp ugt i64 %i.pq, -32
  %i.pr = sub i64 %i.f, %i.a
  %diff.check677 = icmp ugt i64 %i.pr, -32
  %conflict.rdx678 = or i1 %diff.check676, %diff.check677
  %n.vec682 = and i64 %wide.trip.count401, 2147483640 ; 3 uses
  %cmp.n691 = icmp eq i64 %n.vec682, %wide.trip.count401
  %xtraiter710 = and i64 %wide.trip.count401, 1
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  %i.ps = add nsw i64 %wide.trip.count401, -1
  br label %.preheader

._crit_edge333:                                   ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659, %middle.block672
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  br i1 %exitcond447.not, label %.preheader.preheader, label %.preheader287, !llvm.loop !71

scalar.ph659:                                     ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %scalar.ph659 ], [ %indvars.iv438.unr, %scalar.ph659.prol.loopexit ] ; 6 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv438
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !8
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv438
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !8
  %i.px = fmul fast float %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv438
  %i.pz = load float, ptr %i.py, align 4, !tbaa !8 ; 2 uses
  %i.qa = fmul fast float %i.pz, %i.pz
  %i.qb = fsub fast float %i.px, %i.qa
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv438
  store float %i.qb, ptr %i.qc, align 4, !tbaa !8
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv.next439
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !8
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv.next439
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !8
  %i.qh = fmul fast float %i.qg, %i.qe
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next439
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !8 ; 2 uses
  %i.qk = fmul fast float %i.qj, %i.qj
  %i.ql = fsub fast float %i.qh, %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next439
  store float %i.ql, ptr %i.qm, align 4, !tbaa !8
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %._crit_edge333, label %scalar.ph659, !llvm.loop !72

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge336
  %indvars.iv453 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next454, %._crit_edge336 ] ; 4 uses
  %i.qn = getelementptr inbounds nuw [8192 x i8], ptr %12, i64 %indvars.iv453 ; 4 uses
  %i.qo = getelementptr inbounds nuw [8192 x i8], ptr %13, i64 %indvars.iv453 ; 4 uses
  %i.qp = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 %indvars.iv453 ; 4 uses
  %brmerge720 = or i1 %min.iters.check680, %conflict.rdx678
  br i1 %brmerge720, label %scalar.ph679.preheader, label %vector.body683

vector.body683:                                   ; preds = %.preheader, %vector.body683
  %index684 = phi i64 [ %index.next689, %vector.body683 ], [ 0, %.preheader ] ; 4 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %index684 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load685 = load <4 x float>, ptr %i.qq, align 4, !tbaa !8
  %wide.load686 = load <4 x float>, ptr %i.qr, align 4, !tbaa !8
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %index684 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load687 = load <4 x float>, ptr %i.qs, align 4, !tbaa !8 ; 2 uses
  %wide.load688 = load <4 x float>, ptr %i.qt, align 4, !tbaa !8 ; 2 uses
  %i.qu = fmul fast <4 x float> %wide.load687, %wide.load687
  %i.qv = fmul fast <4 x float> %wide.load688, %wide.load688
  %i.qw = fmul fast <4 x float> %i.qu, splat (float 4.000000e-02)
  %i.qx = fmul fast <4 x float> %i.qv, splat (float 4.000000e-02)
  %i.qy = fsub fast <4 x float> %wide.load685, %i.qw
  %i.qz = fsub fast <4 x float> %wide.load686, %i.qx
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %index684 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <4 x float> %i.qy, ptr %i.ra, align 4, !tbaa !8
  store <4 x float> %i.qz, ptr %i.rb, align 4, !tbaa !8
  %index.next689 = add nuw i64 %index684, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next689, %n.vec682
  br i1 %i.rc, label %middle.block690, label %vector.body683, !llvm.loop !73

middle.block690:                                  ; preds = %vector.body683
  br i1 %cmp.n691, label %._crit_edge336, label %scalar.ph679.preheader

scalar.ph679.preheader:                           ; preds = %.preheader, %middle.block690
  %indvars.iv448.ph = phi i64 [ %n.vec682, %middle.block690 ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod711.not, label %scalar.ph679.prol.loopexit, label %scalar.ph679.prol

scalar.ph679.prol:                                ; preds = %scalar.ph679.preheader
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv448.ph
  %i.re = load float, ptr %i.rd, align 4, !tbaa !8
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv448.ph
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !8 ; 2 uses
  %i.rh = fmul fast float %i.rg, %i.rg
  %i.ri = fmul fast float %i.rh, 4.000000e-02
  %i.rj = fsub fast float %i.re, %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv448.ph
  store float %i.rj, ptr %i.rk, align 4, !tbaa !8
  %indvars.iv.next449.prol = or disjoint i64 %indvars.iv448.ph, 1
  br label %scalar.ph679.prol.loopexit

scalar.ph679.prol.loopexit:                       ; preds = %scalar.ph679.prol, %scalar.ph679.preheader
  %indvars.iv448.unr = phi i64 [ %indvars.iv448.ph, %scalar.ph679.preheader ], [ %indvars.iv.next449.prol, %scalar.ph679.prol ]
  %i.rl = icmp eq i64 %indvars.iv448.ph, %i.ps
  br i1 %i.rl, label %._crit_edge336, label %scalar.ph679

._crit_edge338.split:                             ; preds = %._crit_edge336, %bb.a, %.preheader304, %.preheader302, %.preheader300, %.preheader298, %.preheader296
  ret void

._crit_edge336:                                   ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679, %middle.block690
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge338.split, label %.preheader, !llvm.loop !74

scalar.ph679:                                     ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679
  %indvars.iv448 = phi i64 [ %indvars.iv.next449.1, %scalar.ph679 ], [ %indvars.iv448.unr, %scalar.ph679.prol.loopexit ] ; 5 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv448
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !8
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv448
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !8 ; 2 uses
  %i.rq = fmul fast float %i.rp, %i.rp
  %i.rr = fmul fast float %i.rq, 4.000000e-02
  %i.rs = fsub fast float %i.rn, %i.rr
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv448
  store float %i.rs, ptr %i.rt, align 4, !tbaa !8
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv.next449
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !8
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv.next449
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !8 ; 2 uses
  %i.ry = fmul fast float %i.rx, %i.rx
  %i.rz = fmul fast float %i.ry, 4.000000e-02
  %i.sa = fsub fast float %i.rv, %i.rz
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %indvars.iv.next449
  store float %i.sa, ptr %i.sb, align 4, !tbaa !8
  %indvars.iv.next449.1 = add nuw nsw i64 %indvars.iv448, 2 ; 2 uses
  %exitcond452.not.1 = icmp eq i64 %indvars.iv.next449.1, %wide.trip.count451
  br i1 %exitcond452.not.1, label %._crit_edge336, label %scalar.ph679, !llvm.loop !75
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #1

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
