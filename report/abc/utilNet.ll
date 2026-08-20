inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
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
.lr.ph:
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

bb.a:                                             ; preds = %.lr.ph, %Tn_GetNextPerm.exit
  %.127 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %Tn_GetNextPerm.exit ] ; 2 uses
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
  %i.e = add nuw i32 %i.d, %2                     ; 2 uses
  %i.f = add nuw nsw i32 %i.b, 1
  %i.g = lshr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = zext nneg i32 %2 to i64
  %i.l = zext nneg i32 %i.g to i64
  %i.m = add nuw i32 %i.e, 1                      ; 2 uses
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
  call fastcc void @Tn_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %3, ptr noundef %4)
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tn_vi_push.exit
  %i.m = phi ptr [ %i.ag, %tn_vi_push.exit ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %i.n = phi i32 [ %i.ah, %tn_vi_push.exit ], [ %i.b, %.lr.ph.preheader ] ; 5 uses
  %.pre.i = phi i32 [ %i.ai, %tn_vi_push.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.018 = phi i32 [ %i.al, %tn_vi_push.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = icmp slt i32 %.pre.i, %i.n
  br i1 %i.o, label %tn_vi_push.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = icmp slt i32 %i.n, 4
  %i.q = lshr i32 %i.n, 1
  %i.r = mul nuw nsw i32 %i.q, 3
  %i.s = select i1 %i.p, i32 8, i32 %i.r          ; 4 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.u) #20 ; 3 uses
  store ptr %i.v, ptr %i.l, align 8, !tbaa !16
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = sitofp i32 %i.n to double
  %i.y = fmul nnan double %i.x, 4.000000e+00
  %i.z = fmul nnan double %i.y, f0x3EB0000000000000
  %i.aa = uitofp nneg i32 %i.s to double
  %i.ab = fmul nnan double %i.aa, 4.000000e+00
  %i.ac = fmul nnan double %i.ab, f0x3EB0000000000000
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.z, double noundef %i.ac) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.s, ptr %i.h, align 4, !tbaa !18
  br label %tn_vi_push.exit

tn_vi_push.exit:                                  ; preds = %.lr.ph, %bb.d
  %i.ag = phi ptr [ %i.m, %.lr.ph ], [ %i.v, %bb.d ] ; 3 uses
  %i.ah = phi i32 [ %i.n, %.lr.ph ], [ %i.s, %bb.d ]
  %i.ai = add nuw nsw i32 %.pre.i, 1              ; 3 uses
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !12
  %i.aj = zext nneg i32 %.pre.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aj
  store i32 %.018, ptr %i.ak, align 4, !tbaa !8
  %i.al = add nuw nsw i32 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %tn_vi_push.exit, %bb.a
  %.val3.i = phi ptr [ %i.k, %bb.a ], [ %i.ag, %tn_vi_push.exit ]
  %.val.i = phi i32 [ 0, %bb.a ], [ %i.ai, %tn_vi_push.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %.val.i, ptr %i.a, align 4, !tbaa !8
  %i.am = add nsw i32 %.val.i, -1
  call fastcc void @Tn_AddCardinConstrRange(ptr noundef nonnull %i.c, ptr noundef %.val3.i, i32 noundef 0, i32 noundef %i.am, ptr noundef %i.a)
  %i.an = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store ptr %i.g, ptr %1, align 8, !tbaa !22
  store ptr %i.c, ptr %2, align 8, !tbaa !22
  ret i32 %i.an
}

; Function Attrs: nounwind uwtable
define void @Tn_AddCardinality(ptr nofree noundef captures(none) initializes((224, 232)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %.val = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.d = icmp ult i32 %.val, 2
  %i.e = add i32 %.val, -1
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 %.val, i32 %i.g    ; 2 uses
  %i.h = call i32 @Tn_AddCardinSolver(i32 noundef %.09.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 10 uses
  %i.k = load <2 x i32>, ptr %i.i, align 8, !tbaa !8
  %i.l = load i32, ptr %i.i, align 8, !tbaa !24
  store <2 x i32> %i.k, ptr %i.j, align 8, !tbaa !8
  %i.m = add nsw i32 %i.l, %i.h
  store i32 %i.m, ptr %i.i, align 8, !tbaa !24
  %i.n = load i32, ptr %1, align 8, !tbaa !12
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.b

.critedge.preheader.loopexit:                     ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.r, %.critedge.preheader.loopexit ] ; 2 uses
  %i.s = shl nuw i32 1, %.09.i                    ; 2 uses
  %i.t = icmp slt i32 %.0.lcssa, %i.s
  br i1 %i.t, label %.critedge, label %.critedge._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val52 = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = shl nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !8
  %i.x = load i32, ptr %i.j, align 8, !tbaa !27
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = shl nsw i32 %i.z, 1
  %i.ab = or disjoint i32 %i.aa, 1
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !8
  call fastcc void @Tn_GenClause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 2)
  %i.ac = or disjoint i32 %i.w, 1
  store i32 %i.ac, ptr %i.c, align 4, !tbaa !8
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !27
  %i.ae = add nsw i32 %i.ad, %i.y
  %i.af = shl nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.q, align 4, !tbaa !8
  call fastcc void @Tn_GenClause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = load i32, ptr %1, align 8, !tbaa !12
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.b, label %.critedge.preheader.loopexit, !llvm.loop !28

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.157 = phi i32 [ %i.an, %.critedge ], [ %.0.lcssa, %.critedge.preheader ] ; 2 uses
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !27
  %i.ak = add nsw i32 %i.aj, %.157
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = or disjoint i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 4, !tbaa !8
  call fastcc void @Tn_GenClause(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 1)
  %i.an = add nuw i32 %.157, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.s
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.critedge, !llvm.loop !29

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8      ; 3 uses
  %.val49 = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !12
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph63.preheader, label %.critedge2

.lr.ph63.preheader:                               ; preds = %.critedge._crit_edge
  %scevgep75 = getelementptr i8, ptr %0, i64 228
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge
  %.261 = phi i32 [ %i.bx, %._crit_edge ], [ 0, %.lr.ph63.preheader ] ; 2 uses
  %i.as = add i32 %.261, 1                        ; 2 uses
  %.val51 = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.at = sext i32 %.261 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val51, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 5 uses
  %i.aw = icmp sgt i32 %i.av, 0
end_hunk_0
