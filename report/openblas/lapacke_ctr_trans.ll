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
  %i.d = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 117) #4
  %i.e = icmp ne i32 %0, 101
  %or.cond3 = xor i1 %i.c, %i.e
  br i1 %or.cond3, label %.loopexit81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #4
  %i.g = icmp ne i32 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 117) #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit81, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not76 = icmp ne i32 %i.d, 0                   ; 6 uses
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @LAPACKE_lsame(i8 noundef signext %2, i8 noundef signext 110) #4
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
  %i.r = sext i32 %5 to i64
  %wide.trip.count97 = zext nneg i32 %i.l to i64
  %invariant.op = add nsw i64 %.neg121, %i.q
  %wide.trip.count = zext i32 %i.n to i64         ; 3 uses
  %8 = sub nsw i64 %i.o, %wide.trip.count
  br label %bb.h

.preheader80:                                     ; preds = %bb.g
  %i.s = tail call i32 @llvm.smin.i32(i32 %3, i32 %7) ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.
  br i1 %i.t, label %.preheader.preheader, label %.loopexit81

.preheader.preheader:                             ; preds = %.preheader80
  %i.u = sext i32 %7 to i64                       ; 9 uses
  %i.v = zext i1 %.not76 to i64
  %.neg = sext i1 %.not76 to i64
  %i.w = sext i32 %5 to i64
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  br label %vector.body164

.loopexit.a:                                      ; preds = %scalar.ph
  %exitcond110.not.a = icmp eq i64 %xtraiter125, 0
  br i1 %exitcond110.not.a, label %vector.ph162, label %.preheader.a

.preheader.a:                                     ; preds = %.loopexit.a, %scalar.ph.prol
  %indvars.iv106.a = phi i64 [ 0, %scalar.ph.prol ], [ %indvars.iv.next100.7, %.loopexit.a ]
  %lcmp.mod127 = icmp ne i64 %xtraiter125, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %vector.memcheck158

vector.memcheck158:                               ; preds = %vector.memcheck158, %.preheader.a
  %indvars.iv99.epil = phi i64 [ %indvars.iv106.a, %.preheader.a ], [ %indvars.iv.next100.epil, %vector.memcheck158 ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader.a ], [ %epil.iter.next, %vector.memcheck158 ]
  %gep118.epil = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99.epil
  %9 = mul nsw i64 %indvars.iv99.epil, %i.u
  %gep120.epil = getelementptr [8 x i8], ptr %invariant.gep119, i64 %9
  %10 = load <2 x float>, ptr %gep118.epil, align 4
  store <2 x float> %10, ptr %gep120.epil, align 4
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter125
  br i1 %epil.iter.cmp.not, label %vector.ph162, label %vector.memcheck158, !llvm.loop !8

vector.ph162:                                     ; preds = %.loopexit.a, %vector.memcheck158, %vector.body164
  %indvars.iv.next103 = add i32 %indvars.iv102, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %.loopexit81, label %vector.body164, !llvm.loop !9

vector.body164:                                   ; preds = %.preheader.preheader, %vector.ph162
  %index165 = phi i64 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next107, %vector.ph162 ] ; 3 uses
  %indvars.iv102 = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next103, %vector.ph162 ] ; 3 uses
  %indvars.iv.next107 = add nuw nsw i64 %index165, 1 ; 3 uses
  %11 = add nsw i64 %indvars.iv.next107, %.neg
  %12 = trunc nuw nsw i64 %11 to i32
  %.79 = tail call i32 @llvm.smin.i32(i32 %12, i32 %5)
  %13 = icmp sgt i32 %.79, 0
  br i1 %13, label %scalar.ph.prol, label %vector.ph162

scalar.ph.prol:                                   ; preds = %vector.body164
  %smin124 = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %indvars.iv102)
  %i.x = mul nuw nsw i64 %index165, %i.w
  %wide.trip.count104 = zext i32 %smin to i64     ; 2 uses
  %invariant.gep117 = getelementptr [8 x i8], ptr %4, i64 %i.x ; 9 uses
  %invariant.gep119 = getelementptr [8 x i8], ptr %6, i64 %index165 ; 9 uses
  %xtraiter125 = and i64 %wide.trip.count104, 7   ; 3 uses
  %14 = add i32 %smin124, -1
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %.preheader.a, label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol
  %unroll_iter = and i64 %wide.trip.count104, 4294967288
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv99 = phi i64 [ 0, %scalar.ph.prol.loopexit ], [ %indvars.iv.next100.7, %scalar.ph ] ; 10 uses
  %indvars.iv99.a = phi i64 [ 0, %scalar.ph.prol.loopexit ], [ %indvars.iv.next100.7.a, %scalar.ph ]
  %gep118 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv99
  %i.y = mul nsw i64 %indvars.iv99, %i.u
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.y
  %i.z = load <2 x float>, ptr %gep118, align 4
  store <2 x float> %i.z, ptr %gep120, align 4
  %indvars.iv.next100 = or disjoint i64 %indvars.iv99, 1 ; 2 uses
  %gep118.1 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100
  %i.aa = mul nsw i64 %indvars.iv.next100, %i.u
  %gep120.1 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.aa
  %i.ab = load <2 x float>, ptr %gep118.1, align 4
  store <2 x float> %i.ab, ptr %gep120.1, align 4
  %indvars.iv.next100.1 = or disjoint i64 %indvars.iv99, 2 ; 2 uses
  %gep118.2 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.1
  %i.ac = mul nsw i64 %indvars.iv.next100.1, %i.u
  %gep120.2 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ac
  %i.ad = load <2 x float>, ptr %gep118.2, align 4
  store <2 x float> %i.ad, ptr %gep120.2, align 4
  %indvars.iv.next100.2 = or disjoint i64 %indvars.iv99, 3 ; 2 uses
  %gep118.3 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.2
  %i.ae = mul nsw i64 %indvars.iv.next100.2, %i.u
  %gep120.3 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ae
  %i.af = load <2 x float>, ptr %gep118.3, align 4
  store <2 x float> %i.af, ptr %gep120.3, align 4
  %indvars.iv.next100.3 = or disjoint i64 %indvars.iv99, 4 ; 2 uses
  %gep118.4 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.3
  %i.ag = mul nsw i64 %indvars.iv.next100.3, %i.u
  %gep120.4 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ag
  %i.ah = load <2 x float>, ptr %gep118.4, align 4
  store <2 x float> %i.ah, ptr %gep120.4, align 4
  %indvars.iv.next100.4 = or disjoint i64 %indvars.iv99, 5 ; 2 uses
  %gep118.5 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.4
  %i.ai = mul nsw i64 %indvars.iv.next100.4, %i.u
  %gep120.5 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ai
  %i.aj = load <2 x float>, ptr %gep118.5, align 4
  store <2 x float> %i.aj, ptr %gep120.5, align 4
  %indvars.iv.next100.5 = or disjoint i64 %indvars.iv99, 6 ; 2 uses
  %gep118.6 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.5
  %i.ak = mul nsw i64 %indvars.iv.next100.5, %i.u
  %gep120.6 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.ak
  %i.al = load <2 x float>, ptr %gep118.6, align 4
  store <2 x float> %i.al, ptr %gep120.6, align 4
  %indvars.iv.next100.6 = or disjoint i64 %indvars.iv99, 7 ; 2 uses
  %gep118.7 = getelementptr [8 x i8], ptr %invariant.gep117, i64 %indvars.iv.next100.6
  %i.am = mul nsw i64 %indvars.iv.next100.6, %i.u
  %gep120.7 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %i.am
  %i.an = load <2 x float>, ptr %gep118.7, align 4
  store <2 x float> %i.an, ptr %gep120.7, align 4
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %indvars.iv.next100.7.a = add i64 %indvars.iv99.a, 8 ; 2 uses
  %exitcond105.not.7 = icmp eq i64 %indvars.iv.next100.7.a, %unroll_iter
  br i1 %exitcond105.not.7, label %.loopexit.a, label %scalar.ph, !llvm.loop !10

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next95, %._crit_edge ] ; 6 uses
  %indvars.iv = phi i64 [ %i.o, %.lr.ph86 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ao = icmp slt i64 %indvars.iv94, %invariant.op
  br i1 %i.ao, label %vector.body, label %._crit_edge

vector.body:                                      ; preds = %bb.h
  %i.ap = add nuw i64 %indvars.iv94, %i.o
  %16 = sub i64 %wide.trip.count, %i.ap
  %17 = mul nsw i64 %indvars.iv94, %i.r
  %i.aq = getelementptr [8 x i8], ptr %4, i64 %17 ; 9 uses
  %i.ar = getelementptr [8 x i8], ptr %6, i64 %indvars.iv94 ; 9 uses
  %xtraiter = and i64 %16, 7                      ; 2 uses
  %i.as = icmp eq i64 %xtraiter, 0
  br i1 %i.as, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vector.body, %vec.epilog.scalar.ph.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv, %vector.body ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vector.body ]
  %gep.prol = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv91.prol
  %i.at = mul nuw nsw i64 %indvars.iv91.prol, %i.p
  %gep116.prol = getelementptr [8 x i8], ptr %i.ar, i64 %i.at
  %i.au = load <2 x float>, ptr %gep.prol, align 4
  store <2 x float> %i.au, ptr %gep116.prol, align 4
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vector.body
  %indvars.iv91.unr = phi i64 [ %indvars.iv, %vector.body ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph.prol ]
  %18 = add i64 %8, %indvars.iv94
  %i.av = icmp ugt i64 %18, -8
  br i1 %i.av, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.7, %vec.epilog.scalar.ph ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv91
  %i.aw = mul nuw nsw i64 %indvars.iv91, %i.p
  %gep116 = getelementptr [8 x i8], ptr %i.ar, i64 %i.aw
  %i.ax = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.ax, ptr %gep116, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92
  %i.ay = mul nuw nsw i64 %indvars.iv.next92, %i.p
  %gep116.1 = getelementptr [8 x i8], ptr %i.ar, i64 %i.ay
  %i.az = load <2 x float>, ptr %gep.1, align 4
  store <2 x float> %i.az, ptr %gep116.1, align 4
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.1
  %i.ba = mul nuw nsw i64 %indvars.iv.next92.1, %i.p
  %gep116.2 = getelementptr [8 x i8], ptr %i.ar, i64 %i.ba
  %i.bb = load <2 x float>, ptr %gep.2, align 4
  store <2 x float> %i.bb, ptr %gep116.2, align 4
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.2
  %i.bc = mul nuw nsw i64 %indvars.iv.next92.2, %i.p
  %gep116.3 = getelementptr [8 x i8], ptr %i.ar, i64 %i.bc
  %i.bd = load <2 x float>, ptr %gep.3, align 4
  store <2 x float> %i.bd, ptr %gep116.3, align 4
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %gep.4 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.3
  %i.be = mul nuw nsw i64 %indvars.iv.next92.3, %i.p
  %gep116.4 = getelementptr [8 x i8], ptr %i.ar, i64 %i.be
  %i.bf = load <2 x float>, ptr %gep.4, align 4
  store <2 x float> %i.bf, ptr %gep116.4, align 4
  %indvars.iv.next92.4 = add nuw nsw i64 %indvars.iv91, 5 ; 2 uses
  %gep.5 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.4
  %i.bg = mul nuw nsw i64 %indvars.iv.next92.4, %i.p
  %gep116.5 = getelementptr [8 x i8], ptr %i.ar, i64 %i.bg
  %i.bh = load <2 x float>, ptr %gep.5, align 4
  store <2 x float> %i.bh, ptr %gep116.5, align 4
  %indvars.iv.next92.5 = add nuw nsw i64 %indvars.iv91, 6 ; 2 uses
  %gep.6 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.5
  %i.bi = mul nuw nsw i64 %indvars.iv.next92.5, %i.p
  %gep116.6 = getelementptr [8 x i8], ptr %i.ar, i64 %i.bi
  %i.bj = load <2 x float>, ptr %gep.6, align 4
  store <2 x float> %i.bj, ptr %gep116.6, align 4
  %indvars.iv.next92.6 = add nuw nsw i64 %indvars.iv91, 7 ; 2 uses
  %gep.7 = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv.next92.6
  %i.bk = mul nuw nsw i64 %indvars.iv.next92.6, %i.p
  %gep116.7 = getelementptr [8 x i8], ptr %i.ar, i64 %i.bk
  %i.bl = load <2 x float>, ptr %gep.7, align 4
  store <2 x float> %i.bl, ptr %gep116.7, align 4
  %indvars.iv.next92.7 = add nuw nsw i64 %indvars.iv91, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next92.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.h
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit81, label %bb.h, !llvm.loop !13

.loopexit81:                                      ; preds = %._crit_edge, %vector.ph162, %.preheader82, %.preheader80, %bb.d, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !14}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !14}
!12 = distinct !{!12, !15}
!13 = distinct !{!13, !15}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
