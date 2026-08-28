Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/hyperloglog?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"bit width must be between 4 and 16 inclusive\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hyperloglog.c\00", align 1
@__func__.initHyperLogLog = private unnamed_addr constant [16 x i8] c"initHyperLogLog\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initHyperLogLog(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %1, -17
  %or.cond = icmp ult i8 %i.a, -13
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__func__.initHyperLogLog) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 %1, ptr %0, align 8
  %i.d = zext nneg i8 %1 to i64
  %i.e = shl nuw nsw i64 1, %i.d                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8
  %i.g = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.h, align 8
  %i.i = tail call ptr @palloc0(i64 noundef %i.g) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8
  %i.k = load i64, ptr %i.f, align 8              ; 3 uses
  switch i64 %i.k, label %bb.f [
    i64 16, label %bb.g
    i64 32, label %bb.d
    i64 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = uitofp i64 %i.k to double
  %i.m = fdiv double 1.079000e+00, %i.l
  %i.n = fadd double %i.m, 1.000000e+00
  %i.o = fdiv double 7.213000e-01, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi double [ %i.o, %bb.f ], [ 7.090000e-01, %bb.e ], [ 6.970000e-01, %bb.d ], [ 6.730000e-01, %bb.c ]
  %i.p = uitofp i64 %i.k to double                ; 2 uses
  %i.q = fmul double %.0, %i.p
  %i.r = fmul double %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.r, ptr %i.s, align 8
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @initHyperLogLogError(ptr nofree noundef captures(none) initializes((0, 1), (8, 40)) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ogt double %1, 2.600000e-01
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %1, f0x3FC78852D0FF33F3
  br i1 %i.b, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ogt double %1, 1.300000e-01
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp ogt double %1, f0x3FB78852D0FF33F3
  br i1 %i.d, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = fcmp ogt double %1, 6.500000e-02
  br i1 %i.e, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = fcmp ogt double %1, f0x3FA78852D0FF33F3
  br i1 %i.f, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = fcmp ogt double %1, 3.250000e-02
  br i1 %i.g, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = fcmp ogt double %1, f0x3F978852D0FF33F3
  br i1 %i.h, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = fcmp ogt double %1, 1.625000e-02
  br i1 %i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = fcmp ogt double %1, f0x3F878852D0FF33F3
  br i1 %i.j, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = fcmp ogt double %1, 8.125000e-03
  br i1 %i.k, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = fcmp ogt double %1, f0x3F778852D0FF33F3
  %spec.select = select i1 %i.l, i8 15, i8 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.07.lcssa = phi i8 [ 4, %bb.a ], [ 10, %bb.g ], [ 13, %bb.j ], [ 5, %bb.b ], [ %spec.select, %bb.l ], [ 6, %bb.c ], [ 12, %bb.i ], [ 7, %bb.d ], [ 14, %bb.k ], [ 8, %bb.e ], [ 11, %bb.h ], [ 9, %bb.f ] ; 2 uses
  store i8 %.07.lcssa, ptr %0, align 8
  %i.m = zext nneg i8 %.07.lcssa to i64
  %i.n = shl nuw nsw i64 1, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8
  %i.p = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.p, ptr %i.q, align 8
  %i.r = tail call ptr @palloc0(i64 noundef %i.p) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load i64, ptr %i.o, align 8              ; 3 uses
  switch i64 %i.t, label %bb.p [
    i64 16, label %initHyperLogLog.exit
    i64 32, label %bb.n
    i64 64, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %initHyperLogLog.exit

bb.o:                                             ; preds = %bb.m
  br label %initHyperLogLog.exit

bb.p:                                             ; preds = %bb.m
  %i.u = uitofp i64 %i.t to double
  %i.v = fdiv double 1.079000e+00, %i.u
  %i.w = fadd double %i.v, 1.000000e+00
  %i.x = fdiv double 7.213000e-01, %i.w
  br label %initHyperLogLog.exit

initHyperLogLog.exit:                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi double [ %i.x, %bb.p ], [ 7.090000e-01, %bb.o ], [ 6.970000e-01, %bb.n ], [ 6.730000e-01, %bb.m ]
  %i.y = uitofp i64 %i.t to double                ; 2 uses
  %i.z = fmul double %.0.i, %i.y
  %i.aa = fmul double %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.aa, ptr %i.ab, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @freeHyperLogLog(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @pfree(ptr noundef %i.b) #10
  ret void
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @addHyperLogLog(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = sub nsw i64 32, %i.b                     ; 2 uses
  %i.d = zext nneg i8 %i.a to i32
  %i.e = shl i32 %1, %i.d                         ; 2 uses
  %i.f = trunc i64 %i.c to i8                     ; 3 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add i8 %i.f, 1
  br label %rho.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.e, i1 true)
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = xor i8 %i.j, 31
  %i.l = sub nuw nsw i8 32, %i.k                  ; 2 uses
  %i.m = icmp ugt i8 %i.l, %i.f
  %i.n = add nuw i8 %i.f, 1
  %spec.select.i = select i1 %i.m, i8 %i.n, i8 %i.l
  br label %rho.exit

rho.exit:                                         ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.o = trunc nsw i64 %i.c to i32
  %i.p = lshr i32 %1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %. = tail call i8 @llvm.umax.i8(i8 %.0.i, i8 %i.u)
  store i8 %., ptr %i.t, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @estimateHyperLogLog(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %.not41 = icmp eq i64 %i.b, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ]
  %.02234 = phi i32 [ 0, %.lr.ph ], [ %i.k, %bb.b ]
  %.02433 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.j, %bb.b ]
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.h)
  %i.i = fdiv double 1.000000e+00, %ldexp
  %i.j = fadd double %.02433, %i.i                ; 2 uses
  %i.k = add i32 %.02234, 1                       ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ugt i64 %i.b, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.thread, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load double, ptr %i.n, align 8
  %i.p = fdiv double %i.o, 0.000000e+00           ; 3 uses
  %i.q = uitofp i64 %i.b to double
  %i.r = fmul nnan double %i.q, 2.500000e+00
  %i.s = fcmp ugt double %i.p, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge39.thread

._crit_edge.thread:                               ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8
  %i.v = fdiv double %i.u, %i.j                   ; 3 uses
  %i.w = uitofp i64 %i.b to double                ; 3 uses
  %i.x = fmul nnan double %i.w, 2.500000e+00
  %i.y = fcmp ugt double %i.v, %i.x
  br i1 %i.y, label %bb.d, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph38
  %i.ab = add i64 %i.b, -1                        ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp ugt i32 %i.ac, 2147483646
  %i.ae = icmp ugt i64 %i.ab, 4294967295
  %i.af = or i1 %i.ad, %i.ae
  br i1 %i.af, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.b, 8589934584               ; 4 uses
  %i.ag = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %wide.load = load <4 x i8>, ptr %i.ah, align 1
  %wide.load50 = load <4 x i8>, ptr %i.ai, align 1
  %i.aj = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.ak = icmp eq <4 x i8> %wide.load50, zeroinitializer
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = add <4 x i32> %vec.phi, %i.al           ; 2 uses
  %i.ao = add <4 x i32> %vec.phi49, %i.am         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge39, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph38, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph38 ], [ %n.vec, %middle.block ]
  %.037.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph38 ], [ %i.aq, %middle.block ]
  %.12336.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph38 ], [ %i.ag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ar = phi i64 [ %i.ax, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.037 = phi i32 [ %spec.select, %scalar.ph ], [ %.037.ph, %scalar.ph.preheader ]
  %.12336 = phi i32 [ %i.aw, %scalar.ph ], [ %.12336.ph, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %spec.select = add i32 %.037, %i.av             ; 2 uses
  %i.aw = add i32 %.12336, 1                      ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp ugt i64 %i.b, %i.ax
  br i1 %i.ay, label %scalar.ph, label %._crit_edge39, !llvm.loop !9
end_hunk_0
