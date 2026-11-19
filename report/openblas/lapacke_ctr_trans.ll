Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_ctr_trans?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_ctr_trans(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  %i.b = icmp eq ptr %6, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 102                      ; 2 uses
  %i.d = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 117) #3
  %i.e = icmp ne i32 %0, 101
  %or.cond3 = xor i1 %i.c, %i.e
  br i1 %or.cond3, label %.loopexit81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #3
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 117) #3
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit81, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not76 = icmp ne i32 %i.d, 0                   ; 9 uses
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 110) #3
  %.not77 = icmp eq i32 %i.i, 0
  br i1 %.not77, label %.loopexit81, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %. = zext i1 %.not76 to i32                     ; 2 uses
  %i.j = xor i1 %i.c, %i.g
  br i1 %i.j, label %.preheader80, label %.preheader82

.preheader82:                                     ; preds = %bb.g
  %i.k = sub nsw i32 %3, %.
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %7) ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph86, label %.loopexit81

.lr.ph86:                                         ; preds = %.preheader82
  %i.n = tail call i32 @llvm.smin.i32(i32 %3, i32 %5) ; 2 uses
  %i.o = zext i1 %.not76 to i64                   ; 3 uses
  %i.p = sext i32 %7 to i64                       ; 9 uses
  %.neg121 = sext i1 %.not76 to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 7 uses
  %8 = xor i64 %i.o, -1
  %9 = add nsw i64 %8, %wide.trip.count
  %10 = select i1 %.not76, i64 8, i64 0           ; 4 uses
  %11 = shl nsw i64 %i.r, 3                       ; 2 uses
  %12 = add nsw i64 %11, 8                        ; 2 uses
  %13 = shl nuw nsw i64 %wide.trip.count, 3
  %14 = getelementptr i8, ptr %6, i64 %10
  %15 = getelementptr i8, ptr %4, i64 %10
  %ident.check = icmp ne i32 %7, 1
  %16 = getelementptr i8, ptr %6, i64 %10
  %17 = getelementptr i8, ptr %4, i64 %10
  %18 = getelementptr i8, ptr %4, i64 %13
  br label %bb.h

.preheader80:                                     ; preds = %bb.g
  %i.s = tail call i32 @llvm.smin.i32(i32 %3, i32 %7) ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.
  br i1 %i.t, label %.preheader.preheader, label %.loopexit81

.preheader.preheader:                             ; preds = %.preheader80
  %i.u = sext i32 %7 to i64                       ; 9 uses
  %i.v = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.w = sext i32 %5 to i64                       ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %19 = shl nsw i64 %i.w, 3
  %20 = shl nsw i64 %i.w, 3
  %21 = select i1 %.not76, i64 %20, i64 0
  %22 = select i1 %.not76, i64 8, i64 0
  %ident.check143 = icmp ne i32 %7, 1
  %23 = getelementptr i8, ptr %6, i64 %22
  %24 = getelementptr i8, ptr %4, i64 %21
  br label %.preheader.a

.loopexit.a:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block175, %.preheader.a
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not.a = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not.a, label %.loopexit81, label %.preheader.a, !llvm.loop !8

.preheader.a:                                     ; preds = %.preheader.preheader, %.loopexit.a
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit.a ] ; 3 uses
  %indvars.iv106.a = phi i64 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit.a ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit.a ] ; 3 uses
  %smin144 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %25 = zext i32 %smin144 to i64
  %26 = add nsw i64 %25, -1                       ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106.a, 1 ; 3 uses
  %27 = add nsw i64 %indvars.iv.next107, %.neg
  %28 = trunc nuw nsw i64 %27 to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %28, i32 %5)
  %29 = icmp sgt i32 %.79, 0
  br i1 %29, label %.lr.ph88, label %.loopexit.a

.lr.ph88:                                         ; preds = %.preheader.a
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102) ; 2 uses
  %30 = mul nuw nsw i64 %indvars.iv106.a, %i.w
  %wide.trip.count104 = zext i32 %smin to i64     ; 6 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %4, i64 %30 ; 12 uses
  %invariant.gep119 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv106.a ; 14 uses
  %min.iters.check157 = icmp ult i32 %smin, 24
  br i1 %min.iters.check157, label %scalar.ph.preheader, label %vector.scevcheck142

vector.scevcheck142:                              ; preds = %.lr.ph88
  %mul.result146 = shl nsw i64 %26, 3
  %mul.overflow147 = icmp ugt i64 %26, 2305843009213693951
  %31 = getelementptr i8, ptr %invariant.gep119, i64 %mul.result146
  %32 = icmp ult ptr %31, %invariant.gep119
  %33 = or i1 %32, %mul.overflow147
  %34 = or i1 %ident.check143, %33
  br i1 %34, label %scalar.ph.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %vector.scevcheck142
  %35 = shl i64 %indvar, 3
  %36 = shl nuw nsw i64 %wide.trip.count104, 3    ; 2 uses
  %37 = getelementptr i8, ptr %23, i64 %35
  %38 = getelementptr i8, ptr %37, i64 %36
  %39 = mul i64 %indvar, %19
  %40 = getelementptr i8, ptr %24, i64 %39
  %41 = getelementptr i8, ptr %40, i64 %36
  %bound0159 = icmp ult ptr %invariant.gep119, %41
  %bound1160 = icmp ult ptr %invariant.gep117, %38
  %found.conflict161 = and i1 %bound0159, %bound1160
  br i1 %found.conflict161, label %scalar.ph.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck158
  %n.vec163 = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next174, %vector.body164 ] ; 4 uses
  %42 = or disjoint i64 %index165, 4              ; 2 uses
  %43 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %index165
  %44 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %42
  %wide.vec166 = load <8 x float>, ptr %43, align 4, !alias.scope !24
  %wide.vec169 = load <8 x float>, ptr %44, align 4, !alias.scope !24
  %45 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %index165
  %46 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %42
  store <8 x float> %wide.vec166, ptr %45, align 4, !alias.scope !25, !noalias !24
  store <8 x float> %wide.vec169, ptr %46, align 4, !alias.scope !25, !noalias !24
  %index.next174 = add nuw i64 %index165, 8       ; 2 uses
  %47 = icmp eq i64 %index.next174, %n.vec163
  br i1 %47, label %middle.block175, label %vector.body164, !llvm.loop !12

middle.block175:                                  ; preds = %vector.body164
  %cmp.n176 = icmp eq i64 %n.vec163, %wide.trip.count104
  br i1 %cmp.n176, label %.loopexit.a, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck158, %vector.scevcheck142, %.lr.ph88, %middle.block175
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck158 ], [ 0, %vector.scevcheck142 ], [ 0, %.lr.ph88 ], [ %n.vec163, %middle.block175 ] ; 3 uses
  %xtraiter179 = and i64 %wide.trip.count104, 7   ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph.prol ], [ %indvars.iv99.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep118.prol = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.x = mul nsw i64 %indvars.iv99.prol, %i.u
  %gep120.prol = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.x
  %48 = load <2 x float>, ptr %gep118.prol, align 4
  store <2 x float> %48, ptr %gep120.prol, align 4
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !13

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph.preheader ], [ %indvars.iv.next100.prol, %scalar.ph.prol ]
  %49 = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %50 = icmp ugt i64 %49, -8
  br i1 %50, label %.loopexit.a, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv99.a = phi i64 [ %indvars.iv.next100.7.a, %scalar.ph ], [ %indvars.iv99.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99.a
  %i.y = mul nsw i64 %indvars.iv99.a, %i.u
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.y
  %i.z = load <2 x float>, ptr %gep118, align 4
  store <2 x float> %i.z, ptr %gep120, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99.a, 1 ; 2 uses
  %gep118.1 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.aa = mul nsw i64 %indvars.iv.next100, %i.u
  %gep120.1 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.aa
  %i.ab = load <2 x float>, ptr %gep118.1, align 4
  store <2 x float> %i.ab, ptr %gep120.1, align 4
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99.a, 2 ; 2 uses
  %gep118.2 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.ac = mul nsw i64 %indvars.iv.next100.1, %i.u
  %gep120.2 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ac
  %i.ad = load <2 x float>, ptr %gep118.2, align 4
  store <2 x float> %i.ad, ptr %gep120.2, align 4
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99.a, 3 ; 2 uses
  %gep118.3 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.ae = mul nsw i64 %indvars.iv.next100.2, %i.u
  %gep120.3 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ae
  %i.af = load <2 x float>, ptr %gep118.3, align 4
  store <2 x float> %i.af, ptr %gep120.3, align 4
  %indvars.iv.next100.3 = add nuw nsw i64 %indvars.iv99.a, 4 ; 2 uses
  %gep118.4 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.ag = mul nsw i64 %indvars.iv.next100.3, %i.u
  %gep120.4 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ag
  %i.ah = load <2 x float>, ptr %gep118.4, align 4
  store <2 x float> %i.ah, ptr %gep120.4, align 4
  %indvars.iv.next100.4 = add nuw nsw i64 %indvars.iv99.a, 5 ; 2 uses
  %gep118.5 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.ai = mul nsw i64 %indvars.iv.next100.4, %i.u
  %gep120.5 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ai
  %i.aj = load <2 x float>, ptr %gep118.5, align 4
  store <2 x float> %i.aj, ptr %gep120.5, align 4
  %indvars.iv.next100.5 = add nuw nsw i64 %indvars.iv99.a, 6 ; 2 uses
  %gep118.6 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.ak = mul nsw i64 %indvars.iv.next100.5, %i.u
  %gep120.6 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ak
  %i.al = load <2 x float>, ptr %gep118.6, align 4
  store <2 x float> %i.al, ptr %gep120.6, align 4
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99.a, 7 ; 2 uses
  %gep118.7 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.am = mul nsw i64 %indvars.iv.next100.6, %i.u
  %gep120.7 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.am
  %i.an = load <2 x float>, ptr %gep118.7, align 4
  store <2 x float> %i.an, ptr %gep120.7, align 4
  %indvars.iv.next100.7.a = add nuw nsw i64 %indvars.iv99.a, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7.a, %wide.trip.count104
  br i1 %exitcond105.not.7, label %.loopexit.a, label %scalar.ph, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %51 = add nuw i64 %indvars.iv94, %i.o
  %52 = sub i64 %wide.trip.count, %51             ; 7 uses
  %53 = sub i64 %9, %indvars.iv94                 ; 2 uses
  %54 = shl nuw nsw i64 %indvars.iv94, 4
  %scevgep = getelementptr i8, ptr %14, i64 %54   ; 2 uses
  %55 = mul i64 %12, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %15, i64 %55 ; 2 uses
  %i.ao = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %56 = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %56 ; 12 uses
  %invariant.gep115 = getelementptr [8 x i8], ptr %6, i64 %indvars.iv94 ; 12 uses
  %min.iters.check = icmp ult i64 %52, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %mul.result = shl i64 %53, 3                    ; 2 uses
  %mul.overflow = icmp ugt i64 %53, 2305843009213693951
  %57 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %58 = icmp ult ptr %57, %scevgep
  %59 = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %60 = icmp ult ptr %59, %scevgep123
  %61 = or i1 %60, %mul.overflow
  %62 = or i1 %58, %ident.check
  %63 = or i1 %62, %61
  br i1 %63, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %64 = shl nuw nsw i64 %indvars.iv94, 4
  %65 = getelementptr i8, ptr %16, i64 %64
  %66 = add nuw i64 %indvars.iv94, %wide.trip.count
  %67 = shl i64 %66, 3
  %68 = getelementptr i8, ptr %6, i64 %67
  %69 = mul i64 %indvars.iv94, %12
  %70 = getelementptr i8, ptr %17, i64 %69
  %71 = mul i64 %indvars.iv94, %11
  %72 = getelementptr i8, ptr %18, i64 %71
  %bound0 = icmp ult ptr %65, %72
  %bound1 = icmp ult ptr %70, %68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i64 %52, 16
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %73 = and i64 %52, 12
  %n.vec = and i64 %52, -16                       ; 4 uses
  %74 = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %75 = add nuw i64 %indvars.iv, %index           ; 3 uses
  %i.ap = add i64 %75, 8                          ; 2 uses
  %76 = getelementptr [8 x i8], ptr %invariant.gep, i64 %75
  %77 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  %wide.vec = load <16 x float>, ptr %76, align 4, !alias.scope !29
  %wide.vec130 = load <16 x float>, ptr %77, align 4, !alias.scope !29
  %i.aq = getelementptr [8 x i8], ptr %invariant.gep115, i64 %75
  %i.ar = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ap
  store <16 x float> %wide.vec, ptr %i.aq, align 4, !alias.scope !30, !noalias !29
  store <16 x float> %wide.vec130, ptr %i.ar, align 4, !alias.scope !30, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %52, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %73, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %52, -4                     ; 3 uses
  %78 = add i64 %indvars.iv, %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 2 uses
  %79 = add nuw i64 %indvars.iv, %index135        ; 2 uses
  %80 = getelementptr [8 x i8], ptr %invariant.gep, i64 %79
  %wide.vec136 = load <8 x float>, ptr %80, align 4, !alias.scope !29
  %81 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %79
  store <8 x float> %wide.vec136, ptr %81, align 4, !alias.scope !30, !noalias !29
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %82 = icmp eq i64 %index.next140, %n.vec134
  br i1 %82, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %52, %n.vec134
  br i1 %cmp.n141, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %iter.check ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %vector.memcheck ], [ %74, %vec.epilog.iter.check ], [ %78, %vec.epilog.middle.block ] ; 4 uses
  %83 = sub i64 %wide.trip.count, %indvars.iv91.ph
  %xtraiter = and i64 %83, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91.prol
  %i.at = mul nuw nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.at
  %i.au = load <2 x float>, ptr %gep.prol, align 4
  store <2 x float> %i.au, ptr %gep116.prol, align 4
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !20

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ]
  %84 = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.av = icmp ugt i64 %84, -8
  br i1 %i.av, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.7, %vec.epilog.scalar.ph ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.aw = mul nuw nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.aw
  %i.ax = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.ax, ptr %gep116, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.ay = mul nuw nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ay
  %i.az = load <2 x float>, ptr %gep.1, align 4
  store <2 x float> %i.az, ptr %gep116.1, align 4
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.ba = mul nuw nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.ba
  %i.bb = load <2 x float>, ptr %gep.2, align 4
  store <2 x float> %i.bb, ptr %gep116.2, align 4
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.bc = mul nuw nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bc
  %i.bd = load <2 x float>, ptr %gep.3, align 4
  store <2 x float> %i.bd, ptr %gep116.3, align 4
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.3
  %i.be = mul nuw nsw i64 %indvars.iv.next92.3, %i.p
  %gep116.4 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.be
  %i.bf = load <2 x float>, ptr %gep.4, align 4
  store <2 x float> %i.bf, ptr %gep116.4, align 4
  %indvars.iv.next92.4 = add nuw nsw i64 %indvars.iv91, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.4
  %i.bg = mul nuw nsw i64 %indvars.iv.next92.4, %i.p
  %gep116.5 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bg
  %i.bh = load <2 x float>, ptr %gep.5, align 4
  store <2 x float> %i.bh, ptr %gep116.5, align 4
  %indvars.iv.next92.5 = add nuw nsw i64 %indvars.iv91, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.5
  %i.bi = mul nuw nsw i64 %indvars.iv.next92.5, %i.p
  %gep116.6 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bi
  %i.bj = load <2 x float>, ptr %gep.6, align 4
  store <2 x float> %i.bj, ptr %gep116.6, align 4
  %indvars.iv.next92.6 = add nuw nsw i64 %indvars.iv91, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.6
  %i.bk = mul nuw nsw i64 %indvars.iv.next92.6, %i.p
  %gep116.7 = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.bk
  %i.bl = load <2 x float>, ptr %gep.7, align 4
  store <2 x float> %i.bl, ptr %gep116.7, align 4
  %indvars.iv.next92.7 = add nuw nsw i64 %indvars.iv91, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next92.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !22

.loopexit81:                                      ; preds = %._crit_edge, %.loopexit.a, %.preheader82, %.preheader80, %bb.d, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !23}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !23, !26, !27}
!13 = distinct !{!13, !28}
!14 = distinct !{!14, !23, !26}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !23, !26, !27}
!19 = distinct !{!19, !23, !26, !27}
!20 = distinct !{!20, !28}
!21 = distinct !{!21, !23, !26}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!10}
!25 = !{!11}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!16}
!30 = !{!17}
!31 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
