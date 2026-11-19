Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_cgb_trans?download=true
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
  %i.h = sext i32 %6 to i64
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.j = shl nsw i64 %i.i, 3
  %ident.check = icmp ne i32 %6, 1
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.m = add nsw i32 %4, %1
  %i.n = add nsw i32 %4, %3                       ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = sext i32 %6 to i64                       ; 2 uses
  %i.q = sext i32 %8 to i64
  %wide.trip.count137 = zext nneg i32 %i.k to i64
  %9 = shl nsw i64 %i.p, 3
  %ident.check173 = icmp ne i32 %8, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge115
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135.a, %._crit_edge115 ] ; 8 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128.a, %._crit_edge115 ] ; 4 uses
  %smax174 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %10 = zext nneg i32 %smax174 to i64             ; 3 uses
  %11 = add nuw nsw i64 %10, 1
  %12 = shl nuw nsw i64 %indvars.iv134, 3
  %scevgep176 = getelementptr i8, ptr %7, i64 %12
  %13 = shl nuw nsw i64 %10, 3
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %13 ; 2 uses
  %i.r = trunc i64 %indvars.iv134 to i32
  %i.s = sub i32 %4, %i.r
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.v = sub i32 %i.m, %i.u                       ; 2 uses
  %.not103 = icmp sgt i32 %i.v, %i.n
  %. = select i1 %.not103, i32 %i.o, i32 %i.v
  %i.w = tail call i32 @llvm.smin.i32(i32 %6, i32 %.) ; 2 uses
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %iter.check217, label %._crit_edge115

iter.check217:                                    ; preds = %bb.c
  %smax193 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %14 = zext nneg i32 %smax193 to i64             ; 2 uses
  %15 = add nuw nsw i64 %14, 1
  %smax129 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.y = zext nneg i32 %smax129 to i64            ; 9 uses
  %i.z = mul nsw i64 %indvars.iv134, %i.p
  %i.aa = getelementptr [8 x i8], ptr %5, i64 %i.z ; 4 uses
  %invariant.gep116 = getelementptr [8 x i8], ptr %7, i64 %indvars.iv134 ; 4 uses
  %sext132 = zext nneg i32 %i.w to i64            ; 4 uses
  %umax194 = tail call i64 @llvm.umax.i64(i64 %15, i64 %sext132)
  %16 = sub nsw i64 %umax194, %14                 ; 7 uses
  %min.iters.check195 = icmp ult i64 %16, 4
  br i1 %min.iters.check195, label %vec.epilog.scalar.ph219.preheader, label %vector.scevcheck172

vector.scevcheck172:                              ; preds = %iter.check217
  %umax175 = tail call i64 @llvm.umax.i64(i64 %11, i64 %sext132)
  %17 = xor i64 %10, -1
  %18 = add nsw i64 %umax175, %17                 ; 2 uses
  %mul.result179 = shl nsw i64 %18, 3
  %mul.overflow180 = icmp ugt i64 %18, 2305843009213693951
  %19 = getelementptr i8, ptr %scevgep177, i64 %mul.result179
  %20 = icmp ult ptr %19, %scevgep177
  %21 = or i1 %20, %mul.overflow180
  %22 = or i1 %ident.check173, %21
  br i1 %22, label %vec.epilog.scalar.ph219.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %vector.scevcheck172
  %23 = shl nuw nsw i64 %indvars.iv134, 3         ; 2 uses
  %24 = shl nuw nsw i64 %i.y, 3                   ; 2 uses
  %25 = getelementptr i8, ptr %7, i64 %23
  %26 = getelementptr i8, ptr %25, i64 %24
  %27 = add nuw nsw i64 %i.y, 1
  %28 = tail call i64 @llvm.umax.i64(i64 %27, i64 %sext132)
  %29 = shl nuw nsw i64 %28, 3                    ; 2 uses
  %30 = getelementptr i8, ptr %7, i64 %23
  %31 = getelementptr i8, ptr %30, i64 %29
  %i.ab = mul i64 %indvars.iv134, %9              ; 2 uses
  %32 = getelementptr i8, ptr %5, i64 %i.ab
  %33 = getelementptr i8, ptr %32, i64 %24
  %34 = getelementptr i8, ptr %5, i64 %i.ab
  %35 = getelementptr i8, ptr %34, i64 %29
  %bound0197 = icmp ult ptr %26, %35
  %bound1198 = icmp ult ptr %33, %31
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %vec.epilog.scalar.ph219.preheader, label %vector.main.loop.iter.check200

vector.main.loop.iter.check200:                   ; preds = %vector.memcheck196
  %min.iters.check201 = icmp ult i64 %16, 16
  br i1 %min.iters.check201, label %vec.epilog.ph221, label %vector.ph202

vector.ph202:                                     ; preds = %vector.main.loop.iter.check200
  %36 = and i64 %16, 12
  %n.vec203 = and i64 %16, -16                    ; 4 uses
  %37 = add nsw i64 %n.vec203, %i.y
  br label %vector.body204

vector.body204:                                   ; preds = %vector.ph202, %vector.body204
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body204 ] ; 2 uses
  %38 = add nuw i64 %index205, %i.y               ; 3 uses
  %39 = add i64 %38, 8                            ; 2 uses
  %40 = getelementptr [8 x i8], ptr %i.aa, i64 %38
  %41 = getelementptr [8 x i8], ptr %i.aa, i64 %39
  %wide.vec206 = load <16 x float>, ptr %40, align 4, !alias.scope !22
  %wide.vec209 = load <16 x float>, ptr %41, align 4, !alias.scope !22
  %42 = getelementptr [8 x i8], ptr %invariant.gep116, i64 %38
  %43 = getelementptr [8 x i8], ptr %invariant.gep116, i64 %39
  store <16 x float> %wide.vec206, ptr %42, align 4, !alias.scope !23, !noalias !22
  store <16 x float> %wide.vec209, ptr %43, align 4, !alias.scope !23, !noalias !22
  %index.next214 = add nuw i64 %index205, 16      ; 2 uses
  %44 = icmp eq i64 %index.next214, %n.vec203
  br i1 %44, label %middle.block215, label %vector.body204, !llvm.loop !11

middle.block215:                                  ; preds = %vector.body204
  %cmp.n216 = icmp eq i64 %16, %n.vec203
  br i1 %cmp.n216, label %._crit_edge115, label %vec.epilog.iter.check218

vec.epilog.iter.check218:                         ; preds = %middle.block215
  %min.epilog.iters.check220 = icmp eq i64 %36, 0
  br i1 %min.epilog.iters.check220, label %vec.epilog.scalar.ph219.preheader, label %vec.epilog.ph221, !prof !27

vec.epilog.ph221:                                 ; preds = %vector.main.loop.iter.check200, %vec.epilog.iter.check218
  %vec.epilog.resume.val222 = phi i64 [ %n.vec203, %vec.epilog.iter.check218 ], [ 0, %vector.main.loop.iter.check200 ]
  %n.vec223 = and i64 %16, -4                     ; 3 uses
  %45 = add nsw i64 %n.vec223, %i.y
  br label %vec.epilog.vector.body224

vec.epilog.vector.body224:                        ; preds = %vec.epilog.vector.body224, %vec.epilog.ph221
  %index225 = phi i64 [ %vec.epilog.resume.val222, %vec.epilog.ph221 ], [ %index.next230, %vec.epilog.vector.body224 ] ; 2 uses
  %46 = add nuw i64 %index225, %i.y               ; 2 uses
  %47 = getelementptr [8 x i8], ptr %i.aa, i64 %46
  %wide.vec226 = load <8 x float>, ptr %47, align 4, !alias.scope !22
  %i.ac = getelementptr [8 x i8], ptr %invariant.gep116, i64 %46
  store <8 x float> %wide.vec226, ptr %i.ac, align 4, !alias.scope !23, !noalias !22
  %index.next230 = add nuw i64 %index225, 4       ; 2 uses
  %48 = icmp eq i64 %index.next230, %n.vec223
  br i1 %48, label %vec.epilog.middle.block231, label %vec.epilog.vector.body224, !llvm.loop !12

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body224
  %cmp.n232 = icmp eq i64 %16, %n.vec223
  br i1 %cmp.n232, label %._crit_edge115, label %vec.epilog.scalar.ph219.preheader

vec.epilog.scalar.ph219.preheader:                ; preds = %iter.check217, %vector.scevcheck172, %vector.memcheck196, %vec.epilog.iter.check218, %vec.epilog.middle.block231
  %indvars.iv130.ph = phi i64 [ %i.y, %iter.check217 ], [ %i.y, %vector.scevcheck172 ], [ %i.y, %vector.memcheck196 ], [ %37, %vec.epilog.iter.check218 ], [ %45, %vec.epilog.middle.block231 ]
  br label %vec.epilog.scalar.ph219

vec.epilog.scalar.ph219:                          ; preds = %vec.epilog.scalar.ph219.preheader, %vec.epilog.scalar.ph219
  %indvars.iv130.a = phi i64 [ %indvars.iv.next131.a, %vec.epilog.scalar.ph219 ], [ %indvars.iv130.ph, %vec.epilog.scalar.ph219.preheader ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv130.a
  %i.ae = mul nuw nsw i64 %indvars.iv130.a, %i.q
  %gep117.a = getelementptr [8 x i8], ptr %invariant.gep116, i64 %i.ae
  %i.af = load <2 x float>, ptr %i.ad, align 4
  store <2 x float> %i.af, ptr %gep117.a, align 4
  %indvars.iv.next131.a = add nuw nsw i64 %indvars.iv130.a, 1 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next131.a, %sext132
  br i1 %i.ag, label %vec.epilog.scalar.ph219, label %._crit_edge115, !llvm.loop !13

._crit_edge115:                                   ; preds = %vec.epilog.scalar.ph219, %middle.block215, %vec.epilog.middle.block231, %bb.c
  %indvars.iv.next135.a = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %indvars.iv.next128.a = add i32 %indvars.iv127, -1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135.a, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %bb.c, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %._crit_edge ] ; 8 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.ah = zext nneg i32 %smax146 to i64           ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = shl nuw nsw i64 %indvars.iv124, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.aj
  %49 = shl nuw nsw i64 %i.ah, 3
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %49 ; 2 uses
  %i.ak = trunc i64 %indvars.iv124 to i32
  %i.al = sub i32 %4, %i.ak
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.ao = sub i32 %i.e, %i.an                     ; 2 uses
  %.not = icmp sgt i32 %i.ao, %i.f
  %.105 = select i1 %.not, i32 %i.g, i32 %i.ao
  %i.ap = tail call i32 @llvm.smin.i32(i32 %8, i32 %.105) ; 2 uses
  %i.aq = icmp slt i32 %i.am, %i.ap
  br i1 %i.aq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %smax156 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %50 = zext nneg i32 %smax156 to i64             ; 2 uses
  %51 = add nuw nsw i64 %50, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.ar = zext nneg i32 %smax to i64              ; 9 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %indvars.iv124 ; 4 uses
  %i.as = mul nsw i64 %indvars.iv124, %i.i
  %i.at = getelementptr [8 x i8], ptr %7, i64 %i.as ; 4 uses
  %sext = zext nneg i32 %i.ap to i64              ; 4 uses
  %umax157 = tail call i64 @llvm.umax.i64(i64 %51, i64 %sext)
  %i.au = sub nsw i64 %umax157, %50               ; 7 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %sext)
  %i.av = xor i64 %i.ah, -1
  %i.aw = add nsw i64 %umax, %i.av                ; 2 uses
  %mul.result = shl nsw i64 %i.aw, 3
  %mul.overflow = icmp ugt i64 %i.aw, 2305843009213693951
  %i.ax = getelementptr i8, ptr %scevgep147, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %scevgep147
  %52 = or i1 %i.ay, %mul.overflow
  %i.az = or i1 %ident.check, %52
  br i1 %i.az, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ba = mul i64 %indvars.iv124, %i.j            ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %i.bc = getelementptr i8, ptr %7, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.be = add nuw nsw i64 %i.ar, 1
  %53 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %sext)
  %54 = shl nuw nsw i64 %53, 3                    ; 2 uses
  %i.bf = getelementptr i8, ptr %7, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 %54
  %55 = shl nuw nsw i64 %indvars.iv124, 3         ; 2 uses
  %i.bh = getelementptr i8, ptr %5, i64 %55
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bb
  %i.bj = getelementptr i8, ptr %5, i64 %55
  %i.bk = getelementptr i8, ptr %i.bj, i64 %54
  %bound0.a = icmp ult ptr %i.bd, %i.bk
  %bound1.a = icmp ult ptr %i.bi, %i.bg
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  br i1 %found.conflict.a, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check158 = icmp ult i64 %i.au, 16
  br i1 %min.iters.check158, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %56 = add nsw i64 %n.vec, %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %57 = add nuw i64 %index, %i.ar                 ; 3 uses
  %58 = add i64 %57, 8                            ; 2 uses
  %59 = getelementptr [8 x i8], ptr %invariant.gep, i64 %57
  %60 = getelementptr [8 x i8], ptr %invariant.gep, i64 %58
  %wide.vec = load <16 x float>, ptr %59, align 4, !alias.scope !28
  %wide.vec160 = load <16 x float>, ptr %60, align 4, !alias.scope !28
  %i.bm = getelementptr [8 x i8], ptr %i.at, i64 %57
  %61 = getelementptr [8 x i8], ptr %i.at, i64 %58
  store <16 x float> %wide.vec, ptr %i.bm, align 4, !alias.scope !29, !noalias !28
  store <16 x float> %wide.vec160, ptr %61, align 4, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.au, -4                   ; 3 uses
  %62 = add nsw i64 %n.vec164, %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 2 uses
  %63 = add nuw i64 %index165, %i.ar              ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %63
  %wide.vec166 = load <8 x float>, ptr %i.bo, align 4, !alias.scope !28
  %64 = getelementptr [8 x i8], ptr %i.at, i64 %63
  store <8 x float> %wide.vec166, ptr %64, align 4, !alias.scope !29, !noalias !28
  %index.next170 = add nuw i64 %index165, 4       ; 2 uses
  %65 = icmp eq i64 %index.next170, %n.vec164
  br i1 %65, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n171 = icmp eq i64 %i.au, %n.vec164
  br i1 %cmp.n171, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv121.ph = phi i64 [ %i.ar, %iter.check ], [ %i.ar, %vector.scevcheck ], [ %i.ar, %vector.memcheck ], [ %56, %vec.epilog.iter.check ], [ %62, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %vec.epilog.scalar.ph ], [ %indvars.iv121.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %66 = mul nuw nsw i64 %indvars.iv121, %i.h
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %66
  %67 = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv121
  %68 = load <2 x float>, ptr %gep, align 4
  store <2 x float> %68, ptr %67, align 4
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %69 = icmp samesign ult i64 %indvars.iv.next122, %sext
  br i1 %69, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge115, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !24, !25, !26}
!12 = distinct !{!12, !24, !25, !26}
!13 = distinct !{!13, !24, !25}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !24, !25, !26}
!19 = distinct !{!19, !24, !25, !26}
!20 = distinct !{!20, !24, !25}
!21 = distinct !{!21, !24}
!22 = !{!9}
!23 = !{!10}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!16}
!29 = !{!17}
end_hunk_0
