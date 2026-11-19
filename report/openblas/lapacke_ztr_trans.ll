Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_ztr_trans?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_ztr_trans(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
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
  %i.p = sext i32 %7 to i64                       ; 5 uses
  %.neg121 = sext i1 %.not76 to i64
  %i.q = sext i32 %i.n to i64
  %i.r = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 7 uses
  %8 = xor i64 %i.o, -1
  %9 = add nsw i64 %8, %wide.trip.count
  %10 = select i1 %.not76, i64 16, i64 0          ; 4 uses
  %11 = shl nsw i64 %i.r, 4                       ; 2 uses
  %12 = add nsw i64 %11, 16                       ; 2 uses
  %13 = shl nuw nsw i64 %wide.trip.count, 4
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
  %i.u = sext i32 %7 to i64                       ; 5 uses
  %i.v = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.w = sext i32 %5 to i64                       ; 3 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %19 = shl nsw i64 %i.w, 4
  %20 = shl nsw i64 %i.w, 4
  %21 = select i1 %.not76, i64 %20, i64 0
  %22 = select i1 %.not76, i64 16, i64 0
  %ident.check134 = icmp ne i32 %7, 1
  %23 = getelementptr i8, ptr %6, i64 %22
  %24 = getelementptr i8, ptr %4, i64 %21
  br label %.preheader.a

.loopexit.a:                                      ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148, %middle.block167, %.preheader.a
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not.a = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not.a, label %.loopexit81, label %.preheader.a, !llvm.loop !8

.preheader.a:                                     ; preds = %.preheader.preheader, %.loopexit.a
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit.a ] ; 3 uses
  %indvars.iv106.a = phi i64 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next107, %.loopexit.a ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %.loopexit.a ] ; 3 uses
  %smin135 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %25 = zext i32 %smin135 to i64
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
  %invariant.gep117 = getelementptr [16 x i8], ptr %4, i64 %30 ; 8 uses
  %invariant.gep119 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv106.a ; 10 uses
  %min.iters.check149 = icmp ult i32 %smin, 22
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.scevcheck133

vector.scevcheck133:                              ; preds = %.lr.ph88
  %mul.result137 = shl nsw i64 %26, 4
  %mul.overflow138 = icmp ugt i64 %26, 1152921504606846975
  %31 = getelementptr i8, ptr %invariant.gep119, i64 %mul.result137
  %32 = icmp ult ptr %31, %invariant.gep119
  %33 = or i1 %32, %mul.overflow138
  %34 = or i1 %ident.check134, %33
  br i1 %34, label %scalar.ph148.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %vector.scevcheck133
  %35 = shl i64 %indvar, 4
  %36 = shl nuw nsw i64 %wide.trip.count104, 4    ; 2 uses
  %37 = getelementptr i8, ptr %23, i64 %35
  %38 = getelementptr i8, ptr %37, i64 %36
  %39 = mul i64 %indvar, %19
  %40 = getelementptr i8, ptr %24, i64 %39
  %41 = getelementptr i8, ptr %40, i64 %36
  %bound0151 = icmp ult ptr %invariant.gep119, %41
  %bound1152 = icmp ult ptr %invariant.gep117, %38
  %found.conflict153 = and i1 %bound0151, %bound1152
  br i1 %found.conflict153, label %scalar.ph148.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck150
  %n.vec155 = and i64 %wide.trip.count104, 4294967292 ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body156 ] ; 4 uses
  %42 = or disjoint i64 %index157, 2              ; 2 uses
  %43 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %index157
  %44 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %42
  %wide.vec158 = load <4 x double>, ptr %43, align 8, !alias.scope !23
  %wide.vec161 = load <4 x double>, ptr %44, align 8, !alias.scope !23
  %45 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %index157
  %46 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %42
  store <4 x double> %wide.vec158, ptr %45, align 8, !alias.scope !24, !noalias !23
  store <4 x double> %wide.vec161, ptr %46, align 8, !alias.scope !24, !noalias !23
  %index.next166 = add nuw i64 %index157, 4       ; 2 uses
  %47 = icmp eq i64 %index.next166, %n.vec155
  br i1 %47, label %middle.block167, label %vector.body156, !llvm.loop !12

middle.block167:                                  ; preds = %vector.body156
  %cmp.n168 = icmp eq i64 %n.vec155, %wide.trip.count104
  br i1 %cmp.n168, label %.loopexit.a, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.memcheck150, %vector.scevcheck133, %.lr.ph88, %middle.block167
  %indvars.iv99.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %vector.scevcheck133 ], [ 0, %.lr.ph88 ], [ %n.vec155, %middle.block167 ] ; 3 uses
  %xtraiter171 = and i64 %wide.trip.count104, 3   ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol

scalar.ph148.prol:                                ; preds = %scalar.ph148.preheader, %scalar.ph148.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %scalar.ph148.prol ], [ %indvars.iv99.ph, %scalar.ph148.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %scalar.ph148.prol ], [ 0, %scalar.ph148.preheader ]
  %gep118.prol = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99.prol
  %i.x = mul nsw i64 %indvars.iv99.prol, %i.u
  %gep120.prol = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.x
  %48 = load <2 x double>, ptr %gep118.prol, align 8
  store <2 x double> %48, ptr %gep120.prol, align 8
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %scalar.ph148.prol.loopexit, label %scalar.ph148.prol, !llvm.loop !13

scalar.ph148.prol.loopexit:                       ; preds = %scalar.ph148.prol, %scalar.ph148.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %scalar.ph148.preheader ], [ %indvars.iv.next100.prol, %scalar.ph148.prol ]
  %49 = sub nsw i64 %indvars.iv99.ph, %wide.trip.count104
  %50 = icmp ugt i64 %49, -4
  br i1 %50, label %.loopexit.a, label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.prol.loopexit, %scalar.ph148
  %indvars.iv99.a = phi i64 [ %indvars.iv.next100.3.a, %scalar.ph148 ], [ %indvars.iv99.unr, %scalar.ph148.prol.loopexit ] ; 6 uses
  %gep118 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv99.a
  %i.y = mul nsw i64 %indvars.iv99.a, %i.u
  %gep120 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.y
  %i.z = load <2 x double>, ptr %gep118, align 8
  store <2 x double> %i.z, ptr %gep120, align 8
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99.a, 1 ; 2 uses
  %gep118.1 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.aa = mul nsw i64 %indvars.iv.next100, %i.u
  %gep120.1 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.aa
  %i.ab = load <2 x double>, ptr %gep118.1, align 8
  store <2 x double> %i.ab, ptr %gep120.1, align 8
  %indvars.iv.next100.1 = add nuw nsw i64 %indvars.iv99.a, 2 ; 2 uses
  %gep118.2 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.ac = mul nsw i64 %indvars.iv.next100.1, %i.u
  %gep120.2 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.ac
  %i.ad = load <2 x double>, ptr %gep118.2, align 8
  store <2 x double> %i.ad, ptr %gep120.2, align 8
  %indvars.iv.next100.2 = add nuw nsw i64 %indvars.iv99.a, 3 ; 2 uses
  %gep118.3 = getelementptr [16 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.ae = mul nsw i64 %indvars.iv.next100.2, %i.u
  %gep120.3 = getelementptr [16 x i8], ptr %invariant.gep119, i64 %i.ae
  %i.af = load <2 x double>, ptr %gep118.3, align 8
  store <2 x double> %i.af, ptr %gep120.3, align 8
  %indvars.iv.next100.3.a = add nuw nsw i64 %indvars.iv99.a, 4 ; 2 uses
  %exitcond105.not.3 = icmp eq i64 %indvars.iv.next100.3.a, %wide.trip.count104
  br i1 %exitcond105.not.3, label %.loopexit.a, label %scalar.ph148, !llvm.loop !14

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 12 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %51 = sub i64 %9, %indvars.iv94                 ; 2 uses
  %52 = shl nuw nsw i64 %indvars.iv94, 5
  %scevgep = getelementptr i8, ptr %14, i64 %52   ; 2 uses
  %53 = mul i64 %12, %indvars.iv94
  %scevgep123 = getelementptr i8, ptr %15, i64 %53 ; 2 uses
  %i.ag = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %54 = mul nsw i64 %indvars.iv94, %i.r
  %invariant.gep = getelementptr [16 x i8], ptr %4, i64 %54 ; 7 uses
  %invariant.gep115 = getelementptr [16 x i8], ptr %6, i64 %indvars.iv94 ; 7 uses
  %55 = add nuw i64 %indvars.iv94, %i.o
  %56 = sub i64 %wide.trip.count, %55             ; 3 uses
  %min.iters.check = icmp ult i64 %56, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %mul.result = shl i64 %51, 4                    ; 2 uses
  %mul.overflow = icmp ugt i64 %51, 1152921504606846975
  %57 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %58 = icmp ult ptr %57, %scevgep
  %59 = getelementptr i8, ptr %scevgep123, i64 %mul.result
  %60 = icmp ult ptr %59, %scevgep123
  %61 = or i1 %60, %mul.overflow
  %62 = or i1 %58, %ident.check
  %63 = or i1 %62, %61
  br i1 %63, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %64 = shl nuw nsw i64 %indvars.iv94, 5
  %65 = getelementptr i8, ptr %16, i64 %64
  %66 = add nuw i64 %indvars.iv94, %wide.trip.count
  %67 = shl i64 %66, 4
  %68 = getelementptr i8, ptr %6, i64 %67
  %69 = mul i64 %indvars.iv94, %12
  %70 = getelementptr i8, ptr %17, i64 %69
  %71 = mul i64 %indvars.iv94, %11
  %72 = getelementptr i8, ptr %18, i64 %71
  %bound0 = icmp ult ptr %65, %72
  %bound1 = icmp ult ptr %70, %68
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %56, -8                        ; 3 uses
  %73 = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %74 = add nuw i64 %indvars.iv, %index           ; 3 uses
  %i.ah = add i64 %74, 4                          ; 2 uses
  %75 = getelementptr [16 x i8], ptr %invariant.gep, i64 %74
  %76 = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.ah
  %wide.vec = load <8 x double>, ptr %75, align 8, !alias.scope !28
  %wide.vec129 = load <8 x double>, ptr %76, align 8, !alias.scope !28
  %i.ai = getelementptr [16 x i8], ptr %invariant.gep115, i64 %74
  %i.aj = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.ah
  store <8 x double> %wide.vec, ptr %i.ai, align 8, !alias.scope !29, !noalias !28
  store <8 x double> %wide.vec129, ptr %i.aj, align 8, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %56, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %vector.scevcheck ], [ %indvars.iv, %.lr.ph ], [ %73, %middle.block ] ; 4 uses
  %77 = sub i64 %wide.trip.count, %indvars.iv91.ph
  %xtraiter = and i64 %77, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph.prol ], [ %indvars.iv91.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv91.prol
  %i.al = mul nuw nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.al
  %i.am = load <2 x double>, ptr %gep.prol, align 8
  store <2 x double> %i.am, ptr %gep116.prol, align 8
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !19

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %78 = sub i64 %indvars.iv91.ph, %wide.trip.count
  %i.an = icmp ugt i64 %78, -4
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph ], [ %indvars.iv91.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv91
  %i.ao = mul nuw nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.ao
  %i.ap = load <2 x double>, ptr %gep, align 8
  store <2 x double> %i.ap, ptr %gep116, align 8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92
  %i.aq = mul nuw nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.aq
  %i.ar = load <2 x double>, ptr %gep.1, align 8
  store <2 x double> %i.ar, ptr %gep116.1, align 8
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.1
  %i.as = mul nuw nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.as
  %i.at = load <2 x double>, ptr %gep.2, align 8
  store <2 x double> %i.at, ptr %gep116.2, align 8
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next92.2
  %i.au = mul nuw nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [16 x i8], ptr %invariant.gep115, i64 %i.au
  %i.av = load <2 x double>, ptr %gep.3, align 8
  store <2 x double> %i.av, ptr %gep116.3, align 8
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !21

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
!8 = distinct !{!8, !22}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !22, !25, !26}
!13 = distinct !{!13, !27}
!14 = distinct !{!14, !22, !25}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !22, !25, !26}
!19 = distinct !{!19, !27}
!20 = distinct !{!20, !22, !25}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!10}
!24 = !{!11}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!16}
!29 = !{!17}
end_hunk_0
