Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_cgb_trans?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_cgb_trans(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp eq ptr %7, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 102, label %.preheader
    i32 101, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.b
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %6) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %.preheader107
  %i.e = add nsw i32 %4, %1
  %i.f = add nsw i32 %4, %3                       ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %6 to i64                       ; 7 uses
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  %9 = shl nsw i64 %i.h, 3
  %10 = mul nsw i64 %i.h, -8
  %11 = shl nsw i64 %i.h, 3
  %i.j = shl nsw i64 %i.i, 3
  %12 = icmp slt i32 %6, 0                        ; 2 uses
  %13 = select i1 %12, i64 %10, i64 %9
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.m = add nsw i32 %4, %1                       ; 3 uses
  %i.n = add nsw i32 %4, %3                       ; 4 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = sext i32 %6 to i64                       ; 3 uses
  %i.q = sext i32 %8 to i64                       ; 3 uses
  %wide.trip.count137 = zext nneg i32 %i.k to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count137, 1
  %14 = icmp eq i32 %i.k, 1
  br i1 %14, label %vec.epilog.scalar.ph, label %.lr.ph119.new

.lr.ph119.new:                                    ; preds = %.lr.ph119
  %unroll_iter = and i64 %wide.trip.count137, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge115, %.lr.ph119.new
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119.new ], [ %indvars.iv.next135.a, %._crit_edge115 ] ; 6 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119.new ], [ %indvars.iv.next128.a, %._crit_edge115 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph119.new ], [ %niter.next.1, %._crit_edge115 ]
  %i.r = trunc i64 %indvars.iv134 to i32
  %i.s = sub i32 %4, %i.r
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.v = sub i32 %i.m, %i.u                       ; 2 uses
  %.not103 = icmp sgt i32 %i.v, %i.n
  %. = select i1 %.not103, i32 %i.o, i32 %i.v
  %i.w = tail call i32 @llvm.smin.i32(i32 %6, i32 %.) ; 2 uses
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %iter.check217, label %vector.body204

iter.check217:                                    ; preds = %bb.c
  %smax129 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.y = zext nneg i32 %smax129 to i64
  %i.z = mul nsw i64 %indvars.iv134, %i.p
  %i.aa = getelementptr [8 x i8], ptr %5, i64 %i.z
  %invariant.gep116 = getelementptr [8 x i8], ptr %7, i64 %indvars.iv134
  %sext132 = zext nneg i32 %i.w to i64
  br label %vector.memcheck196

vector.memcheck196:                               ; preds = %iter.check217, %vector.memcheck196
  %indvars.iv130 = phi i64 [ %i.y, %iter.check217 ], [ %indvars.iv.next131, %vector.memcheck196 ] ; 3 uses
  %15 = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv130
  %i.ab = mul nuw nsw i64 %indvars.iv130, %i.q
  %gep117 = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.ab
  %16 = load <2 x float>, ptr %15, align 4
  store <2 x float> %16, ptr %gep117, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %bound1198 = icmp samesign ult i64 %indvars.iv.next131, %sext132
  br i1 %bound1198, label %vector.memcheck196, label %vector.body204, !llvm.loop !8

vector.body204:                                   ; preds = %vector.memcheck196, %bb.c
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 4 uses
  %17 = trunc i64 %indvars.iv.next135 to i32
  %18 = sub i32 %4, %17
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %20 = trunc nuw nsw i64 %indvars.iv.next135 to i32
  %21 = sub i32 %i.m, %20                         ; 2 uses
  %.not103.1 = icmp sgt i32 %21, %i.n
  %..1 = select i1 %.not103.1, i32 %i.o, i32 %21
  %22 = tail call i32 @llvm.smin.i32(i32 %6, i32 %..1) ; 2 uses
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %vec.epilog.vector.body224, label %._crit_edge115

vec.epilog.vector.body224:                        ; preds = %vector.body204
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %smax129.1 = tail call i32 @llvm.smax.i32(i32 %indvars.iv.next128, i32 0)
  %24 = zext nneg i32 %smax129.1 to i64
  %25 = mul nsw i64 %indvars.iv.next135, %i.p
  %i.ac = getelementptr [8 x i8], ptr %5, i64 %25
  %invariant.gep116.1 = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.next135
  %sext132.1 = zext nneg i32 %22 to i64
  br label %vec.epilog.scalar.ph219

vec.epilog.scalar.ph219:                          ; preds = %vec.epilog.scalar.ph219, %vec.epilog.vector.body224
  %indvars.iv130.a = phi i64 [ %24, %vec.epilog.vector.body224 ], [ %indvars.iv.next131.a, %vec.epilog.scalar.ph219 ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv130.a
  %i.ae = mul nuw nsw i64 %indvars.iv130.a, %i.q
  %gep117.a = getelementptr [8 x i8], ptr %invariant.gep116.1, i64 %i.ae
  %i.af = load <2 x float>, ptr %i.ad, align 4
  store <2 x float> %i.af, ptr %gep117.a, align 4
  %indvars.iv.next131.a = add nuw nsw i64 %indvars.iv130.a, 1 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next131.a, %sext132.1
  br i1 %i.ag, label %vec.epilog.scalar.ph219, label %._crit_edge115, !llvm.loop !8

._crit_edge115:                                   ; preds = %vec.epilog.scalar.ph219, %vector.body204
  %indvars.iv.next135.a = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %indvars.iv.next128.a = add i32 %indvars.iv127, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %exitcond138.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %exitcond138.not, label %vec.epilog.scalar.ph.preheader, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %.lr.ph111, %vec.epilog.middle.block
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %vec.epilog.middle.block ] ; 8 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %vec.epilog.middle.block ] ; 3 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.ah = zext nneg i32 %smax146 to i64           ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = shl nuw nsw i64 %indvars.iv124, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.aj
  %26 = mul i64 %11, %i.ah
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %26 ; 4 uses
  %i.ak = trunc i64 %indvars.iv124 to i32
  %i.al = sub i32 %4, %i.ak
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.ao = sub i32 %i.e, %i.an                     ; 2 uses
  %.not = icmp sgt i32 %i.ao, %i.f
  %.105 = select i1 %.not, i32 %i.g, i32 %i.ao
  %i.ap = tail call i32 @llvm.smin.i32(i32 %8, i32 %.105) ; 2 uses
  %i.aq = icmp slt i32 %i.am, %i.ap
  br i1 %i.aq, label %iter.check, label %vec.epilog.middle.block

iter.check:                                       ; preds = %bb.d
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.ar = zext nneg i32 %smax to i64              ; 10 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %indvars.iv124 ; 2 uses
  %i.as = mul nsw i64 %indvars.iv124, %i.i
  %i.at = getelementptr [8 x i8], ptr %7, i64 %i.as ; 2 uses
  %sext = zext nneg i32 %i.ap to i64              ; 3 uses
  %27 = add nuw nsw i64 %i.ar, 1
  %umax157 = tail call i64 @llvm.umax.i64(i64 %27, i64 %sext) ; 2 uses
  %i.au = sub nsw i64 %umax157, %i.ar             ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 40
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %sext)
  %i.av = xor i64 %i.ah, -1
  %i.aw = add nsw i64 %umax, %i.av
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 %i.aw) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %28 = sub i64 0, %mul.result
  %29 = getelementptr i8, ptr %scevgep147, i64 %mul.result
  %i.ax = getelementptr i8, ptr %scevgep147, i64 %28
  %i.ay = icmp ult ptr %29, %scevgep147
  %30 = icmp ugt ptr %i.ax, %scevgep147
  %31 = select i1 %12, i1 %30, i1 %i.ay
  %i.az = or i1 %31, %mul.overflow
  br i1 %i.az, label %vec.epilog.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ba = mul i64 %indvars.iv124, %i.j            ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ar, 3
  %32 = getelementptr i8, ptr %7, i64 %i.ba
  %33 = getelementptr i8, ptr %32, i64 %i.bb      ; 2 uses
  %34 = shl nuw nsw i64 %umax157, 3               ; 2 uses
  %35 = getelementptr i8, ptr %7, i64 %i.ba
  %36 = getelementptr i8, ptr %35, i64 %34        ; 2 uses
  %37 = shl nuw nsw i64 %indvars.iv124, 3         ; 3 uses
  %38 = or disjoint i64 %37, 4                    ; 2 uses
  %39 = mul nsw i64 %i.h, %i.ar
  %40 = shl i64 %39, 3                            ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %38
  %i.bd = getelementptr i8, ptr %i.bc, i64 %40    ; 4 uses
  %i.be = add nsw i64 %34, -8
  %41 = mul i64 %i.be, %i.h                       ; 2 uses
  %42 = getelementptr i8, ptr %5, i64 %38
  %i.bf = getelementptr i8, ptr %42, i64 %41      ; 4 uses
  %43 = icmp ult ptr %i.bd, %i.bf
  %44 = select i1 %43, ptr %i.bd, ptr %i.bf
  %45 = icmp ugt ptr %i.bd, %i.bf
  %46 = select i1 %45, ptr %i.bd, ptr %i.bf
  %i.bg = getelementptr i8, ptr %46, i64 4
  %47 = getelementptr i8, ptr %5, i64 %37
  %i.bh = getelementptr i8, ptr %47, i64 %40      ; 4 uses
  %i.bi = getelementptr i8, ptr %5, i64 %37
  %i.bj = getelementptr i8, ptr %i.bi, i64 %41    ; 4 uses
  %48 = icmp ult ptr %i.bh, %i.bj
  %49 = select i1 %48, ptr %i.bh, ptr %i.bj
  %50 = icmp ugt ptr %i.bh, %i.bj
  %51 = select i1 %50, ptr %i.bh, ptr %i.bj
  %i.bk = getelementptr i8, ptr %51, i64 4
  %bound0 = icmp ult ptr %33, %i.bg
  %bound1 = icmp ult ptr %44, %36
  %found.conflict = and i1 %bound0, %bound1
  %bound0.a = icmp ult ptr %33, %i.bk
  %bound1.a = icmp ult ptr %49, %36
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  br i1 %conflict.rdx, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = and i64 %i.au, -8                       ; 3 uses
  %52 = add nsw i64 %i.bl, %i.ar
  %broadcast.splatinsert170 = insertelement <8 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat171 = shufflevector <8 x i64> %broadcast.splatinsert170, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat171, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep176 = getelementptr [8 x i8], ptr %i.at, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %53 = mul nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %wide.gep = getelementptr [8 x i8], ptr %invariant.gep, <8 x i64> %53 ; 2 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !alias.scope !18
  %wide.gep172 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather173 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep172, <8 x i1> splat (i1 true), <8 x float> poison), !alias.scope !19
  %i.bm = getelementptr [8 x i8], ptr %invariant.gep176, i64 %index
  %interleaved.vec = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather173, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bm, align 4, !alias.scope !20, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.bn = icmp eq i64 %index.next, %i.bl
  br i1 %i.bn, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !14

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp eq i64 %i.au, %i.bl
  br i1 %min.epilog.iters.check, label %vec.epilog.middle.block, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv121.ph = phi i64 [ %i.ar, %vector.memcheck ], [ %i.ar, %vector.scevcheck ], [ %i.ar, %iter.check ], [ %52, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.ph, %vec.epilog.vector.body
  %index165 = phi i64 [ %index.next170, %vec.epilog.vector.body ], [ %indvars.iv121.ph, %vec.epilog.ph ] ; 3 uses
  %54 = mul nuw nsw i64 %index165, %i.h
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %54
  %55 = getelementptr [8 x i8], ptr %i.at, i64 %index165
  %56 = load <2 x float>, ptr %i.bo, align 4
  store <2 x float> %56, ptr %55, align 4
  %index.next170 = add nuw nsw i64 %index165, 1   ; 2 uses
  %57 = icmp samesign ult i64 %index.next170, %sext
  br i1 %57, label %vec.epilog.vector.body, label %vec.epilog.middle.block, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.iter.check, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %cmp.n171 = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %cmp.n171, label %.loopexit, label %bb.d, !llvm.loop !16

vec.epilog.scalar.ph.preheader:                   ; preds = %._crit_edge115
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %.lr.ph119
  %indvars.iv121 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135.a, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %indvars.iv127.epil.init = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128.a, %vec.epilog.scalar.ph.preheader ]
  %lcmp.mod175 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %58 = trunc i64 %indvars.iv121 to i32
  %59 = sub i32 %4, %58
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0)
  %61 = trunc nuw nsw i64 %indvars.iv121 to i32
  %62 = sub i32 %i.m, %61                         ; 2 uses
  %.not103.epil = icmp sgt i32 %62, %i.n
  %..epil = select i1 %.not103.epil, i32 %i.o, i32 %62
  %63 = tail call i32 @llvm.smin.i32(i32 %6, i32 %..epil) ; 2 uses
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %.lr.ph114.epil, label %.loopexit

.lr.ph114.epil:                                   ; preds = %vec.epilog.scalar.ph
  %smax129.epil = tail call i32 @llvm.smax.i32(i32 %indvars.iv127.epil.init, i32 0)
  %65 = zext nneg i32 %smax129.epil to i64
  %66 = mul nsw i64 %indvars.iv121, %i.p
  %67 = getelementptr [8 x i8], ptr %5, i64 %66
  %invariant.gep116.epil = getelementptr [8 x i8], ptr %7, i64 %indvars.iv121
  %sext132.epil = zext nneg i32 %63 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %.lr.ph114.epil
  %indvars.iv130.epil = phi i64 [ %65, %.lr.ph114.epil ], [ %indvars.iv.next131.epil, %._crit_edge ] ; 3 uses
  %68 = getelementptr [8 x i8], ptr %67, i64 %indvars.iv130.epil
  %69 = mul nuw nsw i64 %indvars.iv130.epil, %i.q
  %gep117.epil = getelementptr [8 x i8], ptr %invariant.gep116.epil, i64 %69
  %70 = load <2 x float>, ptr %68, align 4
  store <2 x float> %70, ptr %gep117.epil, align 4
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1 ; 2 uses
  %71 = icmp samesign ult i64 %indvars.iv.next131.epil, %sext132.epil
  br i1 %71, label %._crit_edge, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %vec.epilog.middle.block, %vec.epilog.scalar.ph.preheader, %._crit_edge, %vec.epilog.scalar.ph, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !17, !22, !23}
!15 = distinct !{!15, !17, !22}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!11}
!19 = !{!12}
!20 = !{!13}
!21 = !{!12, !11}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
