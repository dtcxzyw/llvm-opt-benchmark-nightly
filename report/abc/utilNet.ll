Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilNet?download=true
inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%3d :\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"The input string length (%d chars) does not match the size (%d bits) of the truth table of %d-var function.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Finished entring %d-input function: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot open file \22%s\22.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" \0A\0D\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"kissat\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s --seed=%d --time=%d %s %s > %s\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%s --seed=%d %s %s > %s\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Command \22%s\22 did not succeed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"The problem has a solution. \00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"The problem has no solution. \00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"The problem has no solution or timed out after %d sec. \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"SAT solver time\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"_temp_.cnf\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"_temp_.txt\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"\0AIteration %d:\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Failed to realloc memory from %.1f MB to %.1f MB.\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"%s = %9.2f sec\0A\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"Created CNF with %d vars and %d clauses (%d out of %d: %d vars and %d clauses).\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Cannot open file \22%s\22 for writing CNF.\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"p cnf %d %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%s%d \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"Problem %s has %d inputs, %d outputs, %d nodes, and %d labels.\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%2d : \00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"temp.sp\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"Cannot open file \22%s\22 for writing SPICE format.\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c".SUBCKT tn\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c" VDD VSS\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c" Y\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c".ENDS\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"Finished dumping SPICE description into file \22%s\22.\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"mm%d\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" VDD\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" %cmos_rvt\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c" net%d\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Problem has no solution.\00", align 1

; Function Attrs: nofree nounwind uwtable
define void @Tn_PermTest() local_unnamed_addr #0 {
.lr.ph.a:
  %i.a = alloca [15 x i32], align 16              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, i8 0, i64 60, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.b, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.g = getelementptr i8, ptr %i.a, i64 -4
  %indvars.iv59.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %indvars.iv59.i.lcssa.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %indvars.iv59.i.lcssa.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %indvars.iv59.i.lcssa.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph.a, %Tn_GetNextPerm.exit
  %.127 = phi i32 [ 0, %.lr.ph.a ], [ %i.ao, %Tn_GetNextPerm.exit ] ; 2 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.127) ; 0 uses
  %i.m = load i32, ptr %i.a, align 16, !tbaa !8   ; 4 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.m) ; 0 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !8    ; 4 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.o) ; 0 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.q) ; 0 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !8    ; 4 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.s) ; 0 uses
  %i.u = load i32, ptr %i.e, align 16, !tbaa !8   ; 2 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.u) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.i.not = icmp slt i32 %i.s, %i.u           ; 3 uses
  br i1 %.not.i.not, label %.lr.ph.i16.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.1 = icmp slt i32 %i.q, %i.s
  br i1 %.not.i.1, label %.lr.ph.i16.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.2 = icmp slt i32 %i.o, %i.q
  br i1 %.not.i.2, label %.lr.ph.i16.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.3 = icmp slt i32 %i.m, %i.o
  br i1 %.not.i.3, label %.lr.ph.i16.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %.not.i.4 = icmp slt i32 %i.w, %i.m
  br i1 %.not.i.4, label %.lr.ph.i16.preheader, label %Tn_GetNextPerm.exit

.lr.ph.i16.preheader:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %indvars.iv59.i.lcssa.sroa.phi = phi ptr [ %indvars.iv59.i.lcssa.sroa.gep, %bb.a ], [ %indvars.iv59.i.lcssa.sroa.gep60, %bb.b ], [ %indvars.iv59.i.lcssa.sroa.gep61, %bb.c ], [ %indvars.iv59.i.lcssa.sroa.gep62, %bb.d ], [ %i.a, %bb.e ]
  %indvars.iv59.i.lcssa = phi i64 [ 4, %bb.a ], [ 3, %bb.b ], [ 2, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ]
  %.not43.not.i.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %.not43.not.i.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %.not43.not.i.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  %.lcssa31 = phi i64 [ 5, %bb.a ], [ 4, %bb.b ], [ 3, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ]
  %.lcssa30 = phi ptr [ %i.f, %bb.a ], [ %i.e, %bb.b ], [ %i.d, %bb.c ], [ %i.c, %bb.d ], [ %i.b, %bb.e ]
  %.lcssa = phi i32 [ %i.s, %bb.a ], [ %i.q, %bb.b ], [ %i.o, %bb.c ], [ %i.m, %bb.d ], [ %i.w, %bb.e ] ; 6 uses
  %i.x = getelementptr i8, ptr %.lcssa30, i64 -8
  %i.y = load i32, ptr %i.h, align 16, !tbaa !8   ; 2 uses
  %.not44.i = icmp sgt i32 %i.y, %.lcssa
  br i1 %.not44.i, label %.critedge2.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i16.preheader
  br i1 %.not.i.not, label %.critedge2.i.loopexit, label %.lr.ph.i16.1

.lr.ph.i16.1:                                     ; preds = %.critedge.i
  %i.z = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %.not44.i.1 = icmp sgt i32 %i.z, %.lcssa
  br i1 %.not44.i.1, label %.critedge2.i, label %.critedge.i.1

.critedge.i.1:                                    ; preds = %.lr.ph.i16.1
  br i1 %.not43.not.i.1, label %.lr.ph.i16.2, label %.critedge2.i.loopexit

.lr.ph.i16.2:                                     ; preds = %.critedge.i.1
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !8   ; 2 uses
  %.not44.i.2 = icmp sgt i32 %i.aa, %.lcssa
  br i1 %.not44.i.2, label %.critedge2.i, label %.critedge.i.2

.critedge.i.2:                                    ; preds = %.lr.ph.i16.2
  br i1 %.not43.not.i.2, label %.lr.ph.i16.3, label %.critedge2.i.loopexit

.lr.ph.i16.3:                                     ; preds = %.critedge.i.2
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !8   ; 2 uses
  %.not44.i.3 = icmp sgt i32 %i.ab, %.lcssa
  br i1 %.not44.i.3, label %.critedge2.i, label %.critedge.i.3

.critedge.i.3:                                    ; preds = %.lr.ph.i16.3
  %i.ac = load i32, ptr %i.a, align 16            ; 2 uses
  %.not44.i.4 = icmp sgt i32 %i.ac, %.lcssa
  %or.cond = select i1 %.not43.not.i.3, i1 %.not44.i.4, i1 false
  br i1 %or.cond, label %.critedge2.i, label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i
  %.phi.trans.insert37 = getelementptr i8, ptr %indvars.iv59.i.lcssa.sroa.phi, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert37, align 4, !tbaa !8
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge.i.3, %.lr.ph.i16.preheader, %.lr.ph.i16.1, %.lr.ph.i16.2, %.lr.ph.i16.3, %.critedge2.i.loopexit
  %.pre-phi = phi i64 [ %indvars.iv59.i.lcssa, %.critedge2.i.loopexit ], [ 5, %.lr.ph.i16.preheader ], [ 4, %.lr.ph.i16.1 ], [ 3, %.lr.ph.i16.2 ], [ 2, %.lr.ph.i16.3 ], [ 1, %.critedge.i.3 ]
  %i.ad = phi i32 [ %.pre, %.critedge2.i.loopexit ], [ %i.y, %.lr.ph.i16.preheader ], [ %i.z, %.lr.ph.i16.1 ], [ %i.aa, %.lr.ph.i16.2 ], [ %i.ab, %.lr.ph.i16.3 ], [ %i.ac, %.critedge.i.3 ]
  %i.ae = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !8
  store i32 %.lcssa, ptr %i.af, align 4, !tbaa !8
  br i1 %.not.i.not, label %Tn_GetNextPerm.exit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.critedge2.i, %.lr.ph55.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %.lr.ph55.i ], [ 5, %.critedge2.i ] ; 2 uses
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph55.i ], [ %.lcssa31, %.critedge2.i ] ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv64.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv66.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4     ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !8
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i, -1 ; 2 uses
  %sext.i = shl i64 %indvars.iv.next65.i, 32
  %i.am = ashr exact i64 %sext.i, 32
  %i.an = icmp slt i64 %i.am, %indvars.iv.next67.i
  br i1 %i.an, label %.lr.ph55.i, label %Tn_GetNextPerm.exit, !llvm.loop !9

Tn_GetNextPerm.exit:                              ; preds = %.lr.ph55.i, %bb.e, %.critedge2.i
  %i.ao = add nuw nsw i32 %.127, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, 120
  br i1 %exitcond.not, label %Tn_Factorial.exit._crit_edge, label %bb.a, !llvm.loop !11

Tn_Factorial.exit._crit_edge:                     ; preds = %Tn_GetNextPerm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @Tn_AddCardinConstrPairWise(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.val = load i32, ptr %1, align 8, !tbaa !12    ; 2 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.c = add nsw i32 %.val, -1
  call fastcc void @Tn_AddCardinConstrRange(ptr noundef %0, ptr noundef %.val3, i32 noundef 0, i32 noundef %i.c, ptr noundef %i.a)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Tn_AddCardinConstrRange(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = sub nsw i32 %3, %2                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 1
  %i.e = add nuw i32 %i.d, %2                     ; 3 uses
  %i.f = add nuw nsw i32 %i.b, 1
  %i.g = lshr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = zext nneg i32 %2 to i64
  %i.l = zext nneg i32 %i.g to i64
  %i.m = add nuw i32 %i.e, 1
  %wide.trip.count = zext i32 %i.m to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.k, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !8      ; 4 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  %i.p = add nsw i32 %i.n, 2
  store i32 %i.p, ptr %4, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %gep, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.t = shl nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !8
  %i.u = shl nsw i32 %i.r, 1
  %i.v = or disjoint i32 %i.u, 1                  ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !8
  call fastcc void @Tn_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.i)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !8
  %i.w = shl nsw i32 %i.s, 1
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  store i32 %i.x, ptr %i.h, align 4, !tbaa !8
  call fastcc void @Tn_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.i)
  %i.y = shl nsw i32 %i.o, 1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !8
  store i32 %i.v, ptr %i.h, align 4, !tbaa !8
  store i32 %i.x, ptr %i.i, align 4, !tbaa !8
  call fastcc void @Tn_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %i.n, ptr %i.q, align 4, !tbaa !8
  store i32 %i.o, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !17

bb.d:                                             ; preds = %bb.c
  call fastcc void @Tn_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.e, ptr noundef %4)
  %i.z = add nuw nsw i32 %i.e, 1
  call fastcc void @Tn_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.z, i32 noundef %3, ptr noundef %4)
  call fastcc void @Tn_AddCardinConstrMerge(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Tn_AddCardinSolver(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = shl nuw i32 1, %0                        ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1000, ptr %i.d, align 4, !tbaa !18
  %i.e = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !16
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  store i32 0, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %i.b, ptr %i.h, align 4, !tbaa !18
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #19 ; 3 uses
end_hunk_0
begin_hunk_1_@Tn_SolveProblem:bb.a
bb.c:                                             ; preds = %._crit_edge.i.i
  %i.da = icmp slt i32 %.lcssa48.lcssa62.i.i, 4
  %i.db = lshr i32 %.lcssa48.lcssa62.i.i, 1
  %i.dc = mul nuw nsw i32 %i.db, 3
  %i.dd = select i1 %i.da, i32 8, i32 %i.dc       ; 3 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = tail call ptr @realloc(ptr noundef %i.bh, i64 noundef %i.df) #20 ; 4 uses
  store ptr %i.dg, ptr %i.as, align 8, !tbaa !16
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.d, label %tn_vi_push.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.di = sitofp i32 %.lcssa48.lcssa62.i.i to double
  %i.dj = fmul nnan double %i.di, 4.000000e+00
  %i.dk = fmul nnan double %i.dj, f0x3EB0000000000000
  %i.dl = uitofp nneg i32 %i.dd to double
  %i.dm = fmul nnan double %i.dl, 4.000000e+00
  %i.dn = fmul nnan double %i.dm, f0x3EB0000000000000
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.dk, double noundef %i.dn) ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.dq = tail call i32 @fflush(ptr noundef %i.dp) ; 0 uses
  unreachable

tn_vi_push.exit.i.i:                              ; preds = %bb.c, %._crit_edge.i.i
  %i.dr = phi ptr [ %i.bg, %._crit_edge.i.i ], [ %i.dg, %bb.c ] ; 2 uses
  %i.ds = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.dg, %bb.c ] ; 3 uses
  %.lcssa48.lcssa65.i.i = phi i32 [ %.lcssa48.lcssa62.i.i, %._crit_edge.i.i ], [ %i.dd, %bb.c ] ; 2 uses
  %i.dt = add nsw i32 %.lcssa46.lcssa58.i.i, 1    ; 2 uses
  %i.du = sext i32 %.lcssa46.lcssa58.i.i to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  store i32 %i.cy, ptr %i.dv, align 4, !tbaa !8
  %i.dw = icmp slt i32 %i.cs, 1
  %.not42.i.i = icmp slt i32 %i.ct, 0
  %or.cond.i.i = or i1 %i.dw, %.not42.i.i
  br i1 %or.cond.i.i, label %._crit_edge50.split.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %tn_vi_push.exit.i.i
  %wide.trip.count88.i.i = zext nneg i32 %i.cs to i64
  %i.dx = sext i32 %i.dt to i64
  %wide.trip.count83.i.i = zext i32 %i.cu to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge45.i.i, %.preheader.preheader.i.i
  %i.dy = phi ptr [ %i.dr, %.preheader.preheader.i.i ], [ %i.fx, %._crit_edge45.i.i ]
  %i.dz = phi ptr [ %i.ds, %.preheader.preheader.i.i ], [ %i.fx, %._crit_edge45.i.i ]
  %indvars.iv85.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next86.i.i, %._crit_edge45.i.i ] ; 2 uses
  %.lcssa4853.i.i = phi i32 [ %.lcssa48.lcssa65.i.i, %.preheader.preheader.i.i ], [ %i.fy, %._crit_edge45.i.i ]
  %.lcssa4652.i.i = phi i64 [ %i.dx, %.preheader.preheader.i.i ], [ %indvars.iv.next77.i.i, %._crit_edge45.i.i ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv85.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %tn_vi_push.exit34.i.i, %.preheader.i.i
  %i.ec = phi ptr [ %i.dy, %.preheader.i.i ], [ %i.fx, %tn_vi_push.exit34.i.i ]
  %i.ed = phi ptr [ %i.dz, %.preheader.i.i ], [ %i.fx, %tn_vi_push.exit34.i.i ] ; 2 uses
  %indvars.iv78.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next79.i.i, %tn_vi_push.exit34.i.i ] ; 2 uses
  %indvars.iv76.i.i = phi i64 [ %.lcssa4652.i.i, %.preheader.i.i ], [ %indvars.iv.next77.i.i, %tn_vi_push.exit34.i.i ] ; 4 uses
  %i.ee = phi i32 [ %.lcssa4853.i.i, %.preheader.i.i ], [ %i.fy, %tn_vi_push.exit34.i.i ] ; 5 uses
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = icmp slt i64 %indvars.iv76.i.i, %i.ef
  br i1 %i.eg, label %tn_vi_push.exit32.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eh = icmp slt i32 %i.ee, 4
  %i.ei = lshr i32 %i.ee, 1
  %i.ej = mul nuw nsw i32 %i.ei, 3
  %i.ek = select i1 %i.eh, i32 8, i32 %i.ej       ; 3 uses
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = tail call ptr @realloc(ptr noundef nonnull %i.ed, i64 noundef %i.em) #20 ; 4 uses
  store ptr %i.en, ptr %i.as, align 8, !tbaa !16
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.g, label %tn_vi_push.exit32.i.i

bb.g:                                             ; preds = %bb.f
  %i.ep = sitofp i32 %i.ee to double
  %i.eq = fmul nnan double %i.ep, 4.000000e+00
  %i.er = fmul nnan double %i.eq, f0x3EB0000000000000
  %i.es = uitofp nneg i32 %i.ek to double
  %i.et = fmul nnan double %i.es, 4.000000e+00
  %i.eu = fmul nnan double %i.et, f0x3EB0000000000000
  %i.ev = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.er, double noundef %i.eu) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ex = tail call i32 @fflush(ptr noundef %i.ew) ; 0 uses
  unreachable

tn_vi_push.exit32.i.i:                            ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.ef, %bb.e ], [ %i.el, %bb.f ]
  %i.ey = phi ptr [ %i.ec, %bb.e ], [ %i.en, %bb.f ]
  %i.ez = phi ptr [ %i.ed, %bb.e ], [ %i.en, %bb.f ] ; 2 uses
  %i.fa = phi i32 [ %i.ee, %bb.e ], [ %i.ek, %bb.f ] ; 4 uses
  %i.fb = add nsw i64 %indvars.iv76.i.i, 1        ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %indvars.iv76.i.i
  store i32 %i.eb, ptr %i.fc, align 4, !tbaa !8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv78.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = icmp slt i64 %i.fb, %.pre-phi.i
  br i1 %i.ff, label %tn_vi_push.exit34.i.i, label %bb.h

bb.h:                                             ; preds = %tn_vi_push.exit32.i.i
  %i.fg = icmp slt i32 %i.fa, 4
  %i.fh = lshr i32 %i.fa, 1
  %i.fi = mul nuw nsw i32 %i.fh, 3
  %i.fj = select i1 %i.fg, i32 8, i32 %i.fi       ; 3 uses
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = tail call ptr @realloc(ptr noundef nonnull %i.ez, i64 noundef %i.fl) #20 ; 3 uses
  store ptr %i.fm, ptr %i.as, align 8, !tbaa !16
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.i, label %tn_vi_push.exit34.i.i

bb.i:                                             ; preds = %bb.h
  %i.fo = sitofp i32 %i.fa to double
  %i.fp = fmul nnan double %i.fo, 4.000000e+00
  %i.fq = fmul nnan double %i.fp, f0x3EB0000000000000
  %i.fr = uitofp nneg i32 %i.fj to double
  %i.fs = fmul nnan double %i.fr, 4.000000e+00
  %i.ft = fmul nnan double %i.fs, f0x3EB0000000000000
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.fq, double noundef %i.ft) ; 0 uses
  %i.fv = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.fw = tail call i32 @fflush(ptr noundef %i.fv) ; 0 uses
  unreachable

tn_vi_push.exit34.i.i:                            ; preds = %bb.h, %tn_vi_push.exit32.i.i
  %i.fx = phi ptr [ %i.ey, %tn_vi_push.exit32.i.i ], [ %i.fm, %bb.h ] ; 7 uses
  %i.fy = phi i32 [ %i.fa, %tn_vi_push.exit32.i.i ], [ %i.fj, %bb.h ] ; 3 uses
  %indvars.iv.next77.i.i = add nsw i64 %indvars.iv76.i.i, 2 ; 3 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fb
  store i32 %i.fe, ptr %i.fz, align 4, !tbaa !8
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1 ; 2 uses
  %exitcond84.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count83.i.i
  br i1 %exitcond84.not.i.i, label %._crit_edge45.i.i, label %bb.e, !llvm.loop !67

._crit_edge45.i.i:                                ; preds = %tn_vi_push.exit34.i.i
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 1 ; 2 uses
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next86.i.i, %wide.trip.count88.i.i
  br i1 %exitcond89.not.i.i, label %._crit_edge50.split.loopexit.i.i, label %.preheader.i.i, !llvm.loop !68

._crit_edge50.split.loopexit.i.i:                 ; preds = %._crit_edge45.i.i
  %i.ga = trunc nsw i64 %indvars.iv.next77.i.i to i32
  br label %._crit_edge50.split.i.i

._crit_edge50.split.i.i:                          ; preds = %._crit_edge50.split.loopexit.i.i, %tn_vi_push.exit.i.i
  %i.gb = phi ptr [ %i.dr, %tn_vi_push.exit.i.i ], [ %i.fx, %._crit_edge50.split.loopexit.i.i ]
  %i.gc = phi ptr [ %i.ds, %tn_vi_push.exit.i.i ], [ %i.fx, %._crit_edge50.split.loopexit.i.i ]
  %.lcssa48.lcssa63.i.i = phi i32 [ %.lcssa48.lcssa65.i.i, %tn_vi_push.exit.i.i ], [ %i.fy, %._crit_edge50.split.loopexit.i.i ] ; 2 uses
  %.lcssa46.lcssa59.i.i = phi i32 [ %i.dt, %tn_vi_push.exit.i.i ], [ %i.ga, %._crit_edge50.split.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  %i.gd = add nuw nsw i32 %.02754.i.i, 1          ; 2 uses
  %exitcond90.not.i.i = icmp eq i32 %i.gd, %i.bb
  br i1 %exitcond90.not.i.i, label %._crit_edge56.i.i, label %bb.b, !llvm.loop !69

._crit_edge56.i.i:                                ; preds = %._crit_edge50.split.i.i
  store i32 %.lcssa46.lcssa59.i.i, ptr %i.ap, align 8
  store i32 %.lcssa48.lcssa63.i.i, ptr %i.aq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  %i.ge = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 4 uses
  store ptr %i.ap, ptr %i.ge, align 8, !tbaa !22
  %i.gf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store i32 1000, ptr %i.gg, align 4, !tbaa !18
  %i.gh = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19 ; 7 uses
  %i.gi = getelementptr i8, ptr %i.gf, i64 8      ; 5 uses
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !16
  store i32 2, ptr %i.gh, align 4, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 0, ptr %i.gj, align 4, !tbaa !8
  store i32 3, ptr %i.gf, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %i.at, ptr %i.gk, align 4, !tbaa !8
  %reass.sub = sub i32 %i.t, %0                   ; 3 uses
  %i.gl = add i32 %reass.sub, -2                  ; 8 uses
  %.not107.i.i = icmp slt i32 %i.gl, 1
  %.not110.i.i = icmp eq i32 %i.gl, 31
  %or.cond133.i = or i1 %.not107.i.i, %.not110.i.i
  br i1 %or.cond133.i, label %Tn_PathGen.exit.i, label %.lr.ph.i.preheader.us.preheader.i.i

.lr.ph.i.preheader.us.preheader.i.i:              ; preds = %._crit_edge56.i.i
  %i.gm = shl nuw i32 1, %i.gl
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 1)
  %i.gn = sub i32 %i.at, %0
  %wide.trip.count139.i.i = zext i32 %i.gn to i64
  %i.go = add i32 %i.t, -3
  %min.iters.check600 = icmp ult i32 %i.gl, 8
  %n.vec602 = and i32 %i.gl, 2147483640           ; 3 uses
  %cmp.n613 = icmp eq i32 %i.gl, %n.vec602
  %xtraiter887 = and i32 %reass.sub, 1
  %i.gp = icmp eq i32 %i.go, %0
  %unroll_iter890 = and i32 %i.gl, 2147483646
  %lcmp.mod888.not = icmp eq i32 %xtraiter887, 0
  %lcmp.mod889 = trunc i32 %reass.sub to i1
  br label %.lr.ph.i.preheader.us.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %._crit_edge106.us.i.i, %.lr.ph.i.preheader.us.preheader.i.i
  %i.gq = phi ptr [ %i.gh, %.lr.ph.i.preheader.us.preheader.i.i ], [ %i.ne, %._crit_edge106.us.i.i ]
  %i.gr = phi ptr [ %i.gh, %.lr.ph.i.preheader.us.preheader.i.i ], [ %i.nf, %._crit_edge106.us.i.i ]
  %.promoted.us145.i.i = phi i32 [ 1000, %.lr.ph.i.preheader.us.preheader.i.i ], [ %.promoted.us147.i.i, %._crit_edge106.us.i.i ]
  %.promoted97.us141.i.i = phi i32 [ 3, %.lr.ph.i.preheader.us.preheader.i.i ], [ %.promoted97.us143.i.i, %._crit_edge106.us.i.i ]
  %indvars.iv136.i.i = phi i64 [ 1, %.lr.ph.i.preheader.us.preheader.i.i ], [ %indvars.iv.next137.i.i, %._crit_edge106.us.i.i ] ; 17 uses
  %min.iters.check616 = icmp samesign ult i64 %indvars.iv136.i.i, 8
  br i1 %min.iters.check616, label %.lr.ph.i.us.i.i.preheader, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph.i.preheader.us.i.i
  %n.vec618 = and i64 %indvars.iv136.i.i, 9223372036854775800 ; 3 uses
  %i.gs = or disjoint i64 %n.vec618, 1
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next625, %vector.body619 ]
  %vec.phi621 = phi <4 x i32> [ splat (i32 1), %vector.ph617 ], [ %i.gt, %vector.body619 ]
  %vec.phi622 = phi <4 x i32> [ splat (i32 1), %vector.ph617 ], [ %i.gu, %vector.body619 ]
  %vec.ind623 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph617 ], [ %vec.ind.next626, %vector.body619 ] ; 3 uses
  %step.add624 = add <4 x i32> %vec.ind623, splat (i32 4)
  %i.gt = mul <4 x i32> %vec.phi621, %vec.ind623  ; 2 uses
  %i.gu = mul <4 x i32> %vec.phi622, %step.add624 ; 2 uses
  %index.next625 = add nuw i64 %index620, 8       ; 2 uses
  %vec.ind.next626 = add <4 x i32> %vec.ind623, splat (i32 8)
  %i.gv = icmp eq i64 %index.next625, %n.vec618
  br i1 %i.gv, label %middle.block627, label %vector.body619, !llvm.loop !70

middle.block627:                                  ; preds = %vector.body619
  %bin.rdx628 = mul <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx628) ; 2 uses
  %cmp.n629 = icmp eq i64 %indvars.iv136.i.i, %n.vec618
  br i1 %cmp.n629, label %Tn_Factorial.exit.us.i.i, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph.i.preheader.us.i.i, %middle.block627
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader.us.i.i ], [ %i.gs, %middle.block627 ]
  %.09.i.us.i.i.ph = phi i32 [ 1, %.lr.ph.i.preheader.us.i.i ], [ %i.gw, %middle.block627 ]
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %.lr.ph.i.us.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.us.i.i ], [ %indvars.iv.i.ph, %.lr.ph.i.us.i.i.preheader ] ; 3 uses
  %.09.i.us.i.i = phi i32 [ %i.gy, %.lr.ph.i.us.i.i ], [ %.09.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader ]
  %i.gx = trunc nuw i64 %indvars.iv.i to i32
  %i.gy = mul nuw nsw i32 %.09.i.us.i.i, %i.gx    ; 2 uses
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv136.i.i, %indvars.iv.i
  br i1 %exitcond.not.i.us.i.i, label %Tn_Factorial.exit.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !71

Tn_Factorial.exit.us.i.i:                         ; preds = %.lr.ph.i.us.i.i, %middle.block627
  %.lcssa542 = phi i32 [ %i.gw, %middle.block627 ], [ %i.gy, %.lr.ph.i.us.i.i ] ; 2 uses
  %i.gz = icmp sgt i32 %.lcssa542, 0
  %i.ha = trunc nuw i64 %indvars.iv136.i.i to i32 ; 3 uses
  %i.hb = add i32 %i.ha, 2
  %min.iters.check587 = icmp samesign ult i64 %indvars.iv136.i.i, 8
  %n.vec589 = and i64 %indvars.iv136.i.i, 9223372036854775800 ; 3 uses
  %cmp.n597 = icmp eq i64 %indvars.iv136.i.i, %n.vec589
  %i.hc = icmp sgt i32 %i.ha, 0
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %.lr.ph.us.i.i
  %.05482.us.i.i = phi i32 [ %i.hf, %.lr.ph.us.i.i ], [ %.05482.us.i.i.ph, %.lr.ph.us.i.i.preheader ]
  %.05581.us.i.i = phi i32 [ %i.hg, %.lr.ph.us.i.i ], [ %.05581.us.i.i.ph, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %i.hd = lshr i32 %.056104.us.i.i, %.05581.us.i.i
  %i.he = and i32 %i.hd, 1
  %i.hf = add nuw nsw i32 %i.he, %.05482.us.i.i   ; 2 uses
  %i.hg = add nuw nsw i32 %.05581.us.i.i, 1       ; 2 uses
  %exitcond.not.i70.i = icmp eq i32 %i.hg, %i.gl
  br i1 %exitcond.not.i70.i, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !72

._crit_edge.us.i.i:                               ; preds = %.lr.ph.us.i.i, %middle.block612
  %.lcssa543 = phi i32 [ %i.nq, %middle.block612 ], [ %i.hf, %.lr.ph.us.i.i ]
  %i.hh = zext nneg i32 %.lcssa543 to i64
  %.not59.us.i.i = icmp eq i64 %indvars.iv136.i.i, %i.hh
  br i1 %.not59.us.i.i, label %.lr.ph86.us.preheader.i.i, label %bb.z

.lr.ph86.us.preheader.i.i:                        ; preds = %._crit_edge.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  br i1 %i.gp, label %.lr.ph86.us.i.i.epil.preheader, label %.lr.ph86.us.i.i

.lr.ph86.us.i.i:                                  ; preds = %.lr.ph86.us.preheader.i.i, %bb.l
  %.05184.us.i.i = phi i32 [ %.1.us.i.i.1, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ] ; 3 uses
  %.05283.us.i.i = phi i32 [ %i.hv, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ] ; 5 uses
  %niter891 = phi i32 [ %niter891.next.1, %bb.l ], [ 0, %.lr.ph86.us.preheader.i.i ]
  %i.hi = shl nuw i32 1, %.05283.us.i.i
  %i.hj = and i32 %i.hi, %.056104.us.i.i
  %.not60.us.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not60.us.i.i, label %.lr.ph86.us.i.i.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph86.us.i.i
  %i.hk = add nsw i32 %.05283.us.i.i, %.02936.i.i
  %i.hl = add nsw i32 %.05184.us.i.i, 1
  %i.hm = sext i32 %.05184.us.i.i to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hm
  store i32 %i.hk, ptr %i.hn, align 4, !tbaa !8
  br label %.lr.ph86.us.i.i.1

.lr.ph86.us.i.i.1:                                ; preds = %bb.j, %.lr.ph86.us.i.i
  %.1.us.i.i = phi i32 [ %i.hl, %bb.j ], [ %.05184.us.i.i, %.lr.ph86.us.i.i ] ; 3 uses
  %i.ho = shl nuw i32 2, %.05283.us.i.i
  %i.hp = and i32 %i.ho, %.056104.us.i.i
  %.not60.us.i.i.1 = icmp eq i32 %i.hp, 0
  br i1 %.not60.us.i.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph86.us.i.i.1
  %i.hq = or disjoint i32 %.05283.us.i.i, 1
  %i.hr = add nsw i32 %i.hq, %.02936.i.i
  %i.hs = add nsw i32 %.1.us.i.i, 1
  %i.ht = sext i32 %.1.us.i.i to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ht
  store i32 %i.hr, ptr %i.hu, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph86.us.i.i.1
  %.1.us.i.i.1 = phi i32 [ %i.hs, %bb.k ], [ %.1.us.i.i, %.lr.ph86.us.i.i.1 ] ; 2 uses
  %i.hv = add nuw nsw i32 %.05283.us.i.i, 2       ; 2 uses
  %niter891.next.1 = add i32 %niter891, 2         ; 2 uses
  %niter891.ncmp.1 = icmp eq i32 %niter891.next.1, %unroll_iter890
  br i1 %niter891.ncmp.1, label %._crit_edge87.us.i.i.unr-lcssa, label %.lr.ph86.us.i.i, !llvm.loop !73

._crit_edge87.us.i.i.unr-lcssa:                   ; preds = %bb.l
  br i1 %lcmp.mod888.not, label %._crit_edge87.us.i.i, label %.lr.ph86.us.i.i.epil.preheader

.lr.ph86.us.i.i.epil.preheader:                   ; preds = %._crit_edge87.us.i.i.unr-lcssa, %.lr.ph86.us.preheader.i.i
  %.05184.us.i.i.epil.init = phi i32 [ 0, %.lr.ph86.us.preheader.i.i ], [ %.1.us.i.i.1, %._crit_edge87.us.i.i.unr-lcssa ]
  %.05283.us.i.i.epil.init = phi i32 [ 0, %.lr.ph86.us.preheader.i.i ], [ %i.hv, %._crit_edge87.us.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod889)
  %i.hw = shl nuw i32 1, %.05283.us.i.i.epil.init
  %i.hx = and i32 %i.hw, %.056104.us.i.i
  %.not60.us.i.i.epil = icmp eq i32 %i.hx, 0
  br i1 %.not60.us.i.i.epil, label %._crit_edge87.us.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph86.us.i.i.epil.preheader
  %i.hy = add nsw i32 %.05283.us.i.i.epil.init, %.02936.i.i
  %i.hz = sext i32 %.05184.us.i.i.epil.init to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !8
  br label %._crit_edge87.us.i.i

._crit_edge87.us.i.i:                             ; preds = %.lr.ph86.us.i.i.epil.preheader, %bb.m, %._crit_edge87.us.i.i.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  br i1 %min.iters.check587, label %scalar.ph586.preheader, label %vector.body590

vector.body590:                                   ; preds = %._crit_edge87.us.i.i, %vector.body590
  %index591 = phi i64 [ %index.next594, %vector.body590 ], [ 0, %._crit_edge87.us.i.i ] ; 2 uses
  %vec.ind592 = phi <4 x i32> [ %vec.ind.next595, %vector.body590 ], [ <i32 0, i32 1, i32 2, i32 3>, %._crit_edge87.us.i.i ] ; 3 uses
  %step.add593 = add <4 x i32> %vec.ind592, splat (i32 4)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index591 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <4 x i32> %vec.ind592, ptr %i.ib, align 16, !tbaa !8
  store <4 x i32> %step.add593, ptr %i.ic, align 16, !tbaa !8
  %index.next594 = add nuw i64 %index591, 8       ; 2 uses
  %vec.ind.next595 = add <4 x i32> %vec.ind592, splat (i32 8)
  %i.id = icmp eq i64 %index.next594, %n.vec589
  br i1 %i.id, label %middle.block596, label %vector.body590, !llvm.loop !74

middle.block596:                                  ; preds = %vector.body590
  br i1 %cmp.n597, label %.preheader.us.i.i, label %scalar.ph586.preheader

scalar.ph586.preheader:                           ; preds = %._crit_edge87.us.i.i, %middle.block596
  %indvars.iv.i71.i.ph = phi i64 [ 0, %._crit_edge87.us.i.i ], [ %n.vec589, %middle.block596 ]
  br label %scalar.ph586

scalar.ph586:                                     ; preds = %scalar.ph586.preheader, %scalar.ph586
  %indvars.iv.i71.i = phi i64 [ %indvars.iv.next.i72.i, %scalar.ph586 ], [ %indvars.iv.i71.i.ph, %scalar.ph586.preheader ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i71.i
  %i.if = trunc nuw nsw i64 %indvars.iv.i71.i to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !8
  %indvars.iv.next.i72.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %exitcond125.not.i.i = icmp eq i64 %indvars.iv.next.i72.i, %indvars.iv136.i.i
  br i1 %exitcond125.not.i.i, label %.preheader.us.i.i, label %scalar.ph586, !llvm.loop !75

.lr.ph95.us.i.i:                                  ; preds = %.preheader.us.i.i, %Tn_GetNextPerm.exit.us.i.i
  %i.ig = phi ptr [ %i.mc, %Tn_GetNextPerm.exit.us.i.i ], [ %i.nh, %.preheader.us.i.i ]
  %i.ih = phi ptr [ %i.mc, %Tn_GetNextPerm.exit.us.i.i ], [ %i.ni, %.preheader.us.i.i ] ; 2 uses
  %.lcssa91102.us.i.i = phi i32 [ %.lcssa91103.us.i.i, %Tn_GetNextPerm.exit.us.i.i ], [ %.promoted.us.i.i, %.preheader.us.i.i ] ; 5 uses
  %.lcssa8998.us.i.i = phi i32 [ %i.md, %Tn_GetNextPerm.exit.us.i.i ], [ %.promoted97.us.i.i, %.preheader.us.i.i ] ; 4 uses
  %.094.us.i.i = phi i32 [ %i.na, %Tn_GetNextPerm.exit.us.i.i ], [ 0, %.preheader.us.i.i ]
  %i.ii = icmp slt i32 %.lcssa8998.us.i.i, %.lcssa91102.us.i.i
  br i1 %i.ii, label %tn_vi_push.exit66.us.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph95.us.i.i
  %i.ij = icmp slt i32 %.lcssa91102.us.i.i, 4
  %i.ik = lshr i32 %.lcssa91102.us.i.i, 1
  %i.il = mul nuw nsw i32 %i.ik, 3
  %i.im = select i1 %i.ij, i32 8, i32 %i.il       ; 3 uses
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = tail call ptr @realloc(ptr noundef %i.ih, i64 noundef %i.io) #20 ; 4 uses
  store ptr %i.ip, ptr %i.gi, align 8, !tbaa !16
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.o, label %tn_vi_push.exit66.us.i.i

bb.o:                                             ; preds = %bb.n
  %i.ir = sitofp i32 %.lcssa91102.us.i.i to double
  %i.is = fmul nnan double %i.ir, 4.000000e+00
  %i.it = fmul nnan double %i.is, f0x3EB0000000000000
  %i.iu = uitofp nneg i32 %i.im to double
  %i.iv = fmul nnan double %i.iu, 4.000000e+00
  %i.iw = fmul nnan double %i.iv, f0x3EB0000000000000
  %i.ix = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.it, double noundef %i.iw) ; 0 uses
  %i.iy = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.iz = tail call i32 @fflush(ptr noundef %i.iy) ; 0 uses
  unreachable

tn_vi_push.exit66.us.i.i:                         ; preds = %bb.n, %.lr.ph95.us.i.i
  %i.ja = phi ptr [ %i.ig, %.lr.ph95.us.i.i ], [ %i.ip, %bb.n ]
  %i.jb = phi ptr [ %i.ih, %.lr.ph95.us.i.i ], [ %i.ip, %bb.n ] ; 3 uses
  %.lcssa91101.us.i.i = phi i32 [ %.lcssa91102.us.i.i, %.lr.ph95.us.i.i ], [ %i.im, %bb.n ] ; 5 uses
  %i.jc = add nsw i32 %.lcssa8998.us.i.i, 1       ; 2 uses
  %i.jd = sext i32 %.lcssa8998.us.i.i to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jd
  store i32 %i.hb, ptr %i.je, align 4, !tbaa !8
  %i.jf = icmp slt i32 %i.jc, %.lcssa91101.us.i.i
  br i1 %i.jf, label %tn_vi_push.exit68.us.i.i, label %bb.p

bb.p:                                             ; preds = %tn_vi_push.exit66.us.i.i
  %i.jg = icmp slt i32 %.lcssa91101.us.i.i, 4
  %i.jh = lshr i32 %.lcssa91101.us.i.i, 1
  %i.ji = mul nuw nsw i32 %i.jh, 3
  %i.jj = select i1 %i.jg, i32 8, i32 %i.ji       ; 3 uses
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 2
  %i.jm = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jl) #20 ; 4 uses
  store ptr %i.jm, ptr %i.gi, align 8, !tbaa !16
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.q, label %tn_vi_push.exit68.us.i.i

bb.q:                                             ; preds = %bb.p
  %i.jo = sitofp i32 %.lcssa91101.us.i.i to double
  %i.jp = fmul nnan double %i.jo, 4.000000e+00
  %i.jq = fmul nnan double %i.jp, f0x3EB0000000000000
  %i.jr = uitofp nneg i32 %i.jj to double
  %i.js = fmul nnan double %i.jr, 4.000000e+00
  %i.jt = fmul nnan double %i.js, f0x3EB0000000000000
  %i.ju = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.jq, double noundef %i.jt) ; 0 uses
  %i.jv = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.jw = tail call i32 @fflush(ptr noundef %i.jv) ; 0 uses
  unreachable

tn_vi_push.exit68.us.i.i:                         ; preds = %bb.p, %tn_vi_push.exit66.us.i.i
  %i.jx = phi ptr [ %i.ja, %tn_vi_push.exit66.us.i.i ], [ %i.jm, %bb.p ]
  %i.jy = phi ptr [ %i.jb, %tn_vi_push.exit66.us.i.i ], [ %i.jm, %bb.p ] ; 2 uses
  %.lcssa91100.us.i.i = phi i32 [ %.lcssa91101.us.i.i, %tn_vi_push.exit66.us.i.i ], [ %i.jj, %bb.p ]
  %i.jz = add i32 %.lcssa8998.us.i.i, 2
  %i.ka = sext i32 %i.jc to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ka
  store i32 0, ptr %i.kb, align 4, !tbaa !8
  %i.kc = sext i32 %i.jz to i64
  br label %bb.r

bb.r:                                             ; preds = %tn_vi_push.exit70.us.i.i, %tn_vi_push.exit68.us.i.i
  %i.kd = phi ptr [ %i.le, %tn_vi_push.exit70.us.i.i ], [ %i.jx, %tn_vi_push.exit68.us.i.i ]
  %i.ke = phi ptr [ %i.lf, %tn_vi_push.exit70.us.i.i ], [ %i.jy, %tn_vi_push.exit68.us.i.i ] ; 2 uses
  %indvars.iv128.i.i = phi i64 [ %indvars.iv.next129.i.i, %tn_vi_push.exit70.us.i.i ], [ %i.kc, %tn_vi_push.exit68.us.i.i ] ; 4 uses
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i, %tn_vi_push.exit70.us.i.i ], [ 0, %tn_vi_push.exit68.us.i.i ] ; 2 uses
  %i.kf = phi i32 [ %i.lg, %tn_vi_push.exit70.us.i.i ], [ %.lcssa91100.us.i.i, %tn_vi_push.exit68.us.i.i ] ; 5 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv126.i.i
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !8
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !8
  %i.kl = sext i32 %i.kf to i64
  %i.km = icmp slt i64 %indvars.iv128.i.i, %i.kl
  br i1 %i.km, label %tn_vi_push.exit70.us.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kn = icmp slt i32 %i.kf, 4
  %i.ko = lshr i32 %i.kf, 1
  %i.kp = mul nuw nsw i32 %i.ko, 3
  %i.kq = select i1 %i.kn, i32 8, i32 %i.kp       ; 3 uses
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %i.kt = tail call ptr @realloc(ptr noundef %i.ke, i64 noundef %i.ks) #20 ; 4 uses
  store ptr %i.kt, ptr %i.gi, align 8, !tbaa !16
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.t, label %tn_vi_push.exit70.us.i.i

bb.t:                                             ; preds = %bb.s
  %i.kv = sitofp i32 %i.kf to double
  %i.kw = fmul nnan double %i.kv, 4.000000e+00
  %i.kx = fmul nnan double %i.kw, f0x3EB0000000000000
  %i.ky = uitofp nneg i32 %i.kq to double
  %i.kz = fmul nnan double %i.ky, 4.000000e+00
  %i.la = fmul nnan double %i.kz, f0x3EB0000000000000
  %i.lb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.kx, double noundef %i.la) ; 0 uses
  %i.lc = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.ld = tail call i32 @fflush(ptr noundef %i.lc) ; 0 uses
  unreachable

tn_vi_push.exit70.us.i.i:                         ; preds = %bb.s, %bb.r
  %i.le = phi ptr [ %i.kd, %bb.r ], [ %i.kt, %bb.s ] ; 2 uses
  %i.lf = phi ptr [ %i.ke, %bb.r ], [ %i.kt, %bb.s ] ; 3 uses
  %i.lg = phi i32 [ %i.kf, %bb.r ], [ %i.kq, %bb.s ] ; 6 uses
  %indvars.iv.next129.i.i = add nsw i64 %indvars.iv128.i.i, 1 ; 3 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %indvars.iv128.i.i
  store i32 %i.kk, ptr %i.lh, align 4, !tbaa !8
  %indvars.iv.next127.i.i = add nuw nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %exitcond134.not.i.i = icmp eq i64 %indvars.iv.next127.i.i, %indvars.iv136.i.i
  br i1 %exitcond134.not.i.i, label %bb.u, label %bb.r, !llvm.loop !76

bb.u:                                             ; preds = %tn_vi_push.exit70.us.i.i
  %i.li = trunc nsw i64 %indvars.iv128.i.i to i32
  %i.lj = trunc nsw i64 %indvars.iv.next129.i.i to i32
  %i.lk = icmp sgt i32 %i.lg, %i.lj
  br i1 %i.lk, label %tn_vi_push.exit72.us.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ll = icmp slt i32 %i.lg, 4
  %i.lm = lshr i32 %i.lg, 1
  %i.ln = mul nuw nsw i32 %i.lm, 3
  %i.lo = select i1 %i.ll, i32 8, i32 %i.ln       ; 3 uses
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = tail call ptr @realloc(ptr noundef nonnull %i.lf, i64 noundef %i.lq) #20 ; 3 uses
  store ptr %i.lr, ptr %i.gi, align 8, !tbaa !16
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.w, label %tn_vi_push.exit72.us.i.i

bb.w:                                             ; preds = %bb.v
  %i.lt = sitofp i32 %i.lg to double
  %i.lu = fmul nnan double %i.lt, 4.000000e+00
  %i.lv = fmul nnan double %i.lu, f0x3EB0000000000000
  %i.lw = uitofp nneg i32 %i.lo to double
  %i.lx = fmul nnan double %i.lw, 4.000000e+00
  %i.ly = fmul nnan double %i.lx, f0x3EB0000000000000
  %i.lz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.lv, double noundef %i.ly) ; 0 uses
  %i.ma = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.mb = tail call i32 @fflush(ptr noundef %i.ma) ; 0 uses
  unreachable

tn_vi_push.exit72.us.i.i:                         ; preds = %bb.v, %bb.u
  %i.mc = phi ptr [ %i.le, %bb.u ], [ %i.lr, %bb.v ] ; 5 uses
  %.lcssa91103.us.i.i = phi i32 [ %i.lg, %bb.u ], [ %i.lo, %bb.v ] ; 3 uses
  %i.md = add nsw i32 %i.li, 2                    ; 3 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %indvars.iv.next129.i.i
  store i32 %i.at, ptr %i.me, align 4, !tbaa !8
  br i1 %i.hc, label %.lr.ph584, label %Tn_GetNextPerm.exit.us.i.i

bb.x:                                             ; preds = %.lr.ph584
  %i.mf = icmp sgt i32 %indvars.iv59.in.i.us.i.i583, 1
  br i1 %i.mf, label %.lr.ph584, label %Tn_GetNextPerm.exit.us.i.i, !llvm.loop !77

.lr.ph584:                                        ; preds = %tn_vi_push.exit72.us.i.i, %bb.x
  %indvars.iv59.in.i.us.i.i583 = phi i32 [ %indvars.iv59.i.us.i.i, %bb.x ], [ %i.ha, %tn_vi_push.exit72.us.i.i ] ; 3 uses
  %indvars.iv59.i.us.i.i = add nsw i32 %indvars.iv59.in.i.us.i.i583, -1 ; 2 uses
  %i.mg = zext nneg i32 %indvars.iv59.in.i.us.i.i583 to i64 ; 5 uses
  %i.mh = getelementptr [4 x i8], ptr %i.m, i64 %i.mg ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 -8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !8  ; 3 uses
  %i.mk = zext nneg i32 %indvars.iv59.i.us.i.i to i64 ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %.not.i.us.i.i = icmp slt i32 %i.mj, %i.mm
  br i1 %.not.i.us.i.i, label %.critedge.preheader.i.us.i.i, label %bb.x, !llvm.loop !77

.critedge.preheader.i.us.i.i:                     ; preds = %.lr.ph584
  %i.mn = getelementptr i8, ptr %i.mh, i64 -8
  %.not4350.i.us.i.i = icmp samesign ult i64 %indvars.iv136.i.i, %i.mg
  br i1 %.not4350.i.us.i.i, label %.critedge2.i.us.i.i, label %.lr.ph.i73.us.i.i

.lr.ph.i73.us.i.i:                                ; preds = %.critedge.preheader.i.us.i.i, %.critedge.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i, %.critedge.i.us.i.i ], [ %indvars.iv136.i.i, %.critedge.preheader.i.us.i.i ] ; 4 uses
  %i.mo = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv.i.us.i.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 -4
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !8
  %.not44.i.us.i.i = icmp sgt i32 %i.mq, %i.mj
  br i1 %.not44.i.us.i.i, label %.critedge2.i.us.i.i, label %.critedge.i.us.i.i

.critedge.i.us.i.i:                               ; preds = %.lr.ph.i73.us.i.i
  %indvars.iv.next.i.us.i.i = add nsw i64 %indvars.iv.i.us.i.i, -1
  %.not43.not.i.us.i.i = icmp sgt i64 %indvars.iv.i.us.i.i, %i.mg
  br i1 %.not43.not.i.us.i.i, label %.lr.ph.i73.us.i.i, label %.critedge2.i.us.i.i, !llvm.loop !78

.critedge2.i.us.i.i:                              ; preds = %.critedge.i.us.i.i, %.lr.ph.i73.us.i.i, %.critedge.preheader.i.us.i.i
  %.041.lcssa.i.us.i.i = phi i64 [ %indvars.iv136.i.i, %.critedge.preheader.i.us.i.i ], [ %i.mk, %.critedge.i.us.i.i ], [ %indvars.iv.i.us.i.i, %.lr.ph.i73.us.i.i ]
  %10 = getelementptr [4 x i8], ptr %i.m, i64 %.041.lcssa.i.us.i.i
  %11 = getelementptr i8, ptr %10, i64 -4         ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %i.mn, align 4, !tbaa !8
  store i32 %i.mj, ptr %11, align 4, !tbaa !8
  %i.mr = icmp samesign ugt i64 %indvars.iv136.i.i, %i.mg
  br i1 %i.mr, label %.lr.ph55.i.us.i.i, label %Tn_GetNextPerm.exit.us.i.i

.lr.ph55.i.us.i.i:                                ; preds = %.critedge2.i.us.i.i, %.lr.ph55.i.us.i.i
  %indvars.iv66.i.us.i.i = phi i64 [ %indvars.iv.next67.i.us.i.i, %.lr.ph55.i.us.i.i ], [ %indvars.iv136.i.i, %.critedge2.i.us.i.i ] ; 2 uses
  %indvars.iv64.i.us.i.i = phi i64 [ %indvars.iv.next65.i.us.i.i, %.lr.ph55.i.us.i.i ], [ %i.mg, %.critedge2.i.us.i.i ] ; 2 uses
  %i.ms = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv64.i.us.i.i
  %i.mt = getelementptr i8, ptr %i.ms, i64 -4     ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !8
  %i.mv = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv66.i.us.i.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 -4     ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !8
  store i32 %i.mx, ptr %i.mt, align 4, !tbaa !8
  store i32 %i.mu, ptr %i.mw, align 4, !tbaa !8
  %indvars.iv.next65.i.us.i.i = add nuw nsw i64 %indvars.iv64.i.us.i.i, 1 ; 2 uses
  %indvars.iv.next67.i.us.i.i = add nsw i64 %indvars.iv66.i.us.i.i, -1 ; 2 uses
  %sext.i.us.i.i = shl i64 %indvars.iv.next65.i.us.i.i, 32
  %i.my = ashr exact i64 %sext.i.us.i.i, 32
  %i.mz = icmp slt i64 %i.my, %indvars.iv.next67.i.us.i.i
  br i1 %i.mz, label %.lr.ph55.i.us.i.i, label %Tn_GetNextPerm.exit.us.i.i, !llvm.loop !9

Tn_GetNextPerm.exit.us.i.i:                       ; preds = %bb.x, %.lr.ph55.i.us.i.i, %tn_vi_push.exit72.us.i.i, %.critedge2.i.us.i.i
  %i.na = add nuw nsw i32 %.094.us.i.i, 1         ; 2 uses
  %i.nb = icmp slt i32 %i.na, %.lcssa542
  br i1 %i.nb, label %.lr.ph95.us.i.i, label %._crit_edge96.us.i.i, !llvm.loop !79

bb.y:                                             ; preds = %._crit_edge96.us.i.i, %.preheader.us.i.i
  %i.nc = phi ptr [ %i.mc, %._crit_edge96.us.i.i ], [ %i.nh, %.preheader.us.i.i ]
  %i.nd = phi ptr [ %i.mc, %._crit_edge96.us.i.i ], [ %i.ni, %.preheader.us.i.i ]
  %.promoted.us148.i.i = phi i32 [ %.lcssa91103.us.i.i, %._crit_edge96.us.i.i ], [ %.promoted.us.i.i, %.preheader.us.i.i ]
  %.promoted97.us144.i.i = phi i32 [ %i.md, %._crit_edge96.us.i.i ], [ %.promoted97.us.i.i, %.preheader.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.us.i.i
  %i.ne = phi ptr [ %i.nc, %bb.y ], [ %i.nh, %._crit_edge.us.i.i ] ; 3 uses
  %i.nf = phi ptr [ %i.nd, %bb.y ], [ %i.ni, %._crit_edge.us.i.i ] ; 2 uses
  %.promoted.us147.i.i = phi i32 [ %.promoted.us148.i.i, %bb.y ], [ %.promoted.us.i.i, %._crit_edge.us.i.i ] ; 2 uses
  %.promoted97.us143.i.i = phi i32 [ %.promoted97.us144.i.i, %bb.y ], [ %.promoted97.us.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %i.ng = add nuw nsw i32 %.056104.us.i.i, 1      ; 2 uses
  %exitcond135.not.i.i = icmp eq i32 %i.ng, %smax.i.i
  br i1 %exitcond135.not.i.i, label %._crit_edge106.us.i.i, label %.lr.ph.us.preheader.i.i, !llvm.loop !80

.preheader.us.i.i:                                ; preds = %scalar.ph586, %middle.block596
  br i1 %i.gz, label %.lr.ph95.us.i.i, label %bb.y

.lr.ph.us.preheader.i.i:                          ; preds = %bb.z, %Tn_Factorial.exit.us.i.i
  %i.nh = phi ptr [ %i.gq, %Tn_Factorial.exit.us.i.i ], [ %i.ne, %bb.z ] ; 3 uses
  %i.ni = phi ptr [ %i.gr, %Tn_Factorial.exit.us.i.i ], [ %i.nf, %bb.z ] ; 3 uses
  %.promoted.us.i.i = phi i32 [ %.promoted.us145.i.i, %Tn_Factorial.exit.us.i.i ], [ %.promoted.us147.i.i, %bb.z ] ; 3 uses
  %.promoted97.us.i.i = phi i32 [ %.promoted97.us141.i.i, %Tn_Factorial.exit.us.i.i ], [ %.promoted97.us143.i.i, %bb.z ] ; 3 uses
  %.056104.us.i.i = phi i32 [ 0, %Tn_Factorial.exit.us.i.i ], [ %i.ng, %bb.z ] ; 6 uses
  br i1 %min.iters.check600, label %.lr.ph.us.i.i.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %.lr.ph.us.preheader.i.i
  %broadcast.splatinsert603 = insertelement <4 x i32> poison, i32 %.056104.us.i.i, i64 0
  %broadcast.splat604 = shufflevector <4 x i32> %broadcast.splatinsert603, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph601
  %index606 = phi i32 [ 0, %vector.ph601 ], [ %index.next610, %vector.body605 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph601 ], [ %i.nn, %vector.body605 ]
  %vec.phi607 = phi <4 x i32> [ zeroinitializer, %vector.ph601 ], [ %i.no, %vector.body605 ]
  %vec.ind608 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph601 ], [ %vec.ind.next611, %vector.body605 ] ; 3 uses
  %step.add609 = add nuw <4 x i32> %vec.ind608, splat (i32 4)
  %i.nj = lshr <4 x i32> %broadcast.splat604, %vec.ind608
  %i.nk = lshr <4 x i32> %broadcast.splat604, %step.add609
  %i.nl = and <4 x i32> %i.nj, splat (i32 1)
  %i.nm = and <4 x i32> %i.nk, splat (i32 1)
  %i.nn = add <4 x i32> %i.nl, %vec.phi           ; 2 uses
  %i.no = add <4 x i32> %i.nm, %vec.phi607        ; 2 uses
  %index.next610 = add nuw i32 %index606, 8       ; 2 uses
  %vec.ind.next611 = add nuw <4 x i32> %vec.ind608, splat (i32 8)
  %i.np = icmp eq i32 %index.next610, %n.vec602
  br i1 %i.np, label %middle.block612, label %vector.body605, !llvm.loop !81

middle.block612:                                  ; preds = %vector.body605
  %bin.rdx = add <4 x i32> %i.no, %i.nn
  %i.nq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n613, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i.preheader

.lr.ph.us.i.i.preheader:                          ; preds = %.lr.ph.us.preheader.i.i, %middle.block612
  %.05482.us.i.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i.i ], [ %i.nq, %middle.block612 ]
  %.05581.us.i.i.ph = phi i32 [ 0, %.lr.ph.us.preheader.i.i ], [ %n.vec602, %middle.block612 ]
  br label %.lr.ph.us.i.i

._crit_edge96.us.i.i:                             ; preds = %Tn_GetNextPerm.exit.us.i.i
  store i32 %i.md, ptr %i.gf, align 8
  store i32 %.lcssa91103.us.i.i, ptr %i.gg, align 4
  br label %bb.y

._crit_edge106.us.i.i:                            ; preds = %bb.z
  %indvars.iv.next137.i.i = add nuw nsw i64 %indvars.iv136.i.i, 1 ; 2 uses
  %exitcond140.not.i.i = icmp eq i64 %indvars.iv.next137.i.i, %wide.trip.count139.i.i
  br i1 %exitcond140.not.i.i, label %Tn_PathGen.exit.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !82

Tn_PathGen.exit.i:                                ; preds = %._crit_edge106.us.i.i, %._crit_edge56.i.i
  %.val63.i = phi ptr [ %i.gh, %._crit_edge56.i.i ], [ %i.ne, %._crit_edge106.us.i.i ] ; 2 uses
  %.val.i = phi i32 [ 3, %._crit_edge56.i.i ], [ %.promoted97.us143.i.i, %._crit_edge106.us.i.i ] ; 8 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.q, i64 168 ; 2 uses
  store ptr %i.gf, ptr %i.nr, align 8, !tbaa !22
  %i.ns = icmp eq i32 %1, 3
  %i.nt = and i32 %1, -2
  %or.cond.i = icmp eq i32 %i.nt, 2
  br i1 %or.cond.i, label %bb.aa, label %Tn_Init.exit

bb.aa:                                            ; preds = %Tn_PathGen.exit.i
  %i.nu = load ptr, ptr %i.ge, align 8, !tbaa !22 ; 3 uses
  %.val68.i = load i32, ptr %i.nu, align 8, !tbaa !12 ; 5 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8      ; 2 uses
  %.val69.i = load ptr, ptr %i.nv, align 8, !tbaa !16
  %i.nw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i32 %.val68.i, ptr %i.nx, align 4, !tbaa !18
  %i.ny = sext i32 %.val68.i to i64
  %i.nz = shl nsw i64 %i.ny, 2                    ; 2 uses
  %i.oa = tail call noalias ptr @malloc(i64 noundef %i.nz) #19 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !16
  store i32 %.val68.i, ptr %i.nw, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oa, ptr readonly align 4 %.val69.i, i64 %i.nz, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  store ptr %i.nw, ptr %i.oc, align 8, !tbaa !22
  %i.od = load i32, ptr %i.u, align 8, !tbaa !58  ; 3 uses
  %i.oe = add nsw i32 %i.od, -1                   ; 12 uses
  %i.of = add nsw i32 %i.od, -2                   ; 6 uses
  %i.og = icmp sgt i32 %.val68.i, 0
  br i1 %i.og, label %.lr.ph33.i.i.preheader, label %Tn_SetSwap.exit.i

.lr.ph33.i.i.preheader:                           ; preds = %bb.aa
  %broadcast.splatinsert636 = insertelement <4 x i32> poison, i32 %i.oe, i64 0
  %broadcast.splat637 = shufflevector <4 x i32> %broadcast.splatinsert636, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert638 = insertelement <4 x i32> poison, i32 %i.of, i64 0
  %broadcast.splat639 = shufflevector <4 x i32> %broadcast.splatinsert638, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.i.i.preheader, %._crit_edge.i73.i
  %.02531.i.i = phi i32 [ %i.qd, %._crit_edge.i73.i ], [ 0, %.lr.ph33.i.i.preheader ] ; 2 uses
  %i.oh = add nsw i32 %.02531.i.i, 1              ; 2 uses
  %i.oi = sext i32 %.02531.i.i to i64
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !8  ; 4 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.preheader.i74.i, label %._crit_edge.i73.i

.lr.ph.preheader.i74.i:                           ; preds = %.lr.ph33.i.i
  %i.om = sext i32 %i.oh to i64
  %wide.trip.count.i75.i = zext nneg i32 %i.ok to i64 ; 3 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.oa, i64 %i.om ; 9 uses
  %min.iters.check633 = icmp ult i32 %i.ok, 8
  br i1 %min.iters.check633, label %.lr.ph.i76.i.preheader, label %vector.ph634

vector.ph634:                                     ; preds = %.lr.ph.preheader.i74.i
  %n.vec635 = and i64 %wide.trip.count.i75.i, 2147483640 ; 3 uses
  br label %vector.body640

vector.body640:                                   ; preds = %pred.store.continue657, %vector.ph634
  %index641 = phi i64 [ 0, %vector.ph634 ], [ %index.next658, %pred.store.continue657 ] ; 9 uses
  %i.on = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index641 ; 3 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  %wide.load = load <4 x i32>, ptr %i.on, align 4, !tbaa !8 ; 2 uses
  %wide.load642 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !8 ; 2 uses
  %i.op = icmp eq <4 x i32> %wide.load, %broadcast.splat637 ; 2 uses
  %i.oq = icmp eq <4 x i32> %wide.load642, %broadcast.splat637 ; 2 uses
  %i.or = icmp eq <4 x i32> %wide.load, %broadcast.splat639
  %i.os = icmp eq <4 x i32> %wide.load642, %broadcast.splat639
  %i.ot = select <4 x i1> %i.op, <4 x i1> splat (i1 true), <4 x i1> %i.or ; 4 uses
  %i.ou = select <4 x i1> %i.oq, <4 x i1> splat (i1 true), <4 x i1> %i.os ; 4 uses
  %predphi = select <4 x i1> %i.op, <4 x i32> %broadcast.splat639, <4 x i32> %broadcast.splat637 ; 4 uses
  %predphi643 = select <4 x i1> %i.oq, <4 x i32> %broadcast.splat639, <4 x i32> %broadcast.splat637 ; 4 uses
  %i.ov = extractelement <4 x i1> %i.ot, i64 0
  br i1 %i.ov, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body640
  %i.ow = extractelement <4 x i32> %predphi, i64 0
  store i32 %i.ow, ptr %i.on, align 4, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body640
  %i.ox = extractelement <4 x i1> %i.ot, i64 1
  br i1 %i.ox, label %pred.store.if644, label %pred.store.continue645

pred.store.if644:                                 ; preds = %pred.store.continue
  %i.oy = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index641
  %i.oz = getelementptr i8, ptr %i.oy, i64 4
  %i.pa = extractelement <4 x i32> %predphi, i64 1
  store i32 %i.pa, ptr %i.oz, align 4, !tbaa !8
  br label %pred.store.continue645

pred.store.continue645:                           ; preds = %pred.store.if644, %pred.store.continue
  %i.pb = extractelement <4 x i1> %i.ot, i64 2
  br i1 %i.pb, label %pred.store.if646, label %pred.store.continue647

pred.store.if646:                                 ; preds = %pred.store.continue645
  %i.pc = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %index641
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  %i.pe = extractelement <4 x i32> %predphi, i64 2
  store i32 %i.pe, ptr %i.pd, align 4, !tbaa !8
  br label %pred.store.continue647
end_hunk_1
