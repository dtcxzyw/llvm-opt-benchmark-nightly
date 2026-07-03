inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 85
begin_hunk_0
@.str.45 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"shown\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"know\00", align 1
@wordcatarray = dso_local local_unnamed_addr global [50 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.6, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], align 16
@global_numsortstruct = external local_unnamed_addr global %struct.SortStruct, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"CPU:Numeric Sort\00", align 1
@global_min_ticks = external local_unnamed_addr global i64, align 8
@global_strsortstruct = external local_unnamed_addr global %struct.SortStruct, align 8
@.str.52 = private unnamed_addr constant [16 x i8] c"CPU:String Sort\00", align 1
@global_bitopstruct = external local_unnamed_addr global %struct.BitOpStruct, align 8
@.str.53 = private unnamed_addr constant [14 x i8] c"CPU:Bitfields\00", align 1
@global_emfloatstruct = external local_unnamed_addr global %struct.EmFloatStruct, align 8
@.str.54 = private unnamed_addr constant [23 x i8] c"CPU:Floating Emulation\00", align 1
@global_fourierstruct = external local_unnamed_addr global %struct.FourierStruct, align 8
@.str.56 = private unnamed_addr constant [19 x i8] c"FPU:Transcendental\00", align 1
@global_assignstruct = external local_unnamed_addr global %struct.AssignStruct, align 8
@.str.57 = private unnamed_addr constant [15 x i8] c"CPU:Assignment\00", align 1
@global_ideastruct = external local_unnamed_addr global %struct.IDEAStruct, align 8
@.str.58 = private unnamed_addr constant [9 x i8] c"CPU:IDEA\00", align 1
@global_huffstruct = external local_unnamed_addr global %struct.HuffStruct, align 8
@.str.59 = private unnamed_addr constant [12 x i8] c"CPU:Huffman\00", align 1
@hufftree = internal unnamed_addr global ptr null, align 8
@global_nnetstruct = external local_unnamed_addr global %struct.NNetStruct, align 8
@global_lustruct = external local_unnamed_addr global %struct.LUStruct, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"FPU:LU\00", align 1
@LUtempvv = dso_local local_unnamed_addr global ptr null, align 8
@mid_wts = dso_local local_unnamed_addr global [8 x [35 x double]] zeroinitializer, align 16
@out_wts = dso_local local_unnamed_addr global [8 x [8 x double]] zeroinitializer, align 32
@mid_out = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 32
@out_out = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 16
@mid_error = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 32
@out_error = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 16
@mid_wt_change = dso_local local_unnamed_addr global [8 x [35 x double]] zeroinitializer, align 16
@out_wt_change = dso_local local_unnamed_addr global [8 x [8 x double]] zeroinitializer, align 16
@in_pats = dso_local local_unnamed_addr global [10 x [35 x double]] zeroinitializer, align 16
@out_pats = dso_local local_unnamed_addr global [10 x [8 x double]] zeroinitializer, align 16
@tot_out_error = dso_local local_unnamed_addr global [10 x double] zeroinitializer, align 16
@out_wt_cum_change = dso_local local_unnamed_addr global [8 x [8 x double]] zeroinitializer, align 16
@mid_wt_cum_change = dso_local local_unnamed_addr global [8 x [35 x double]] zeroinitializer, align 16
@worst_error = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@average_error = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@avg_out_error = dso_local local_unnamed_addr global [10 x double] zeroinitializer, align 16
@iteration_count = dso_local local_unnamed_addr global i32 0, align 4
@numpats = dso_local global i32 0, align 4
@numpasses = dso_local local_unnamed_addr global i32 0, align 4
@learned = dso_local local_unnamed_addr global i32 0, align 4
@.str.63 = private unnamed_addr constant [15 x i8] c"CPU:Stringsort\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"\0A CPU:NNET--error in opening file!\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"%d  %d  %d\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"\0A CPU:NNET -- Should read 3 items in line one; did read %d\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"\0A CPU:NNET -- Should read 1 item in line 2; did read %d\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"%d  %d  %d  %d  %d\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"\0A CPU:NNET -- failure in reading input!\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"%d  %d  %d  %d  %d  %d  %d  %d\00", align 1
@str = private unnamed_addr constant [31 x i8] c"CPU:NSORT -- NUMNUMARRAYS hit.\00", align 1
@str.1 = private unnamed_addr constant [42 x i8] c"CPU:EMFPU -- CMPUEMFLOATLOOPMAX limit hit\00", align 1
@str.2 = private unnamed_addr constant [30 x i8] c"FPU:LU -- Array limit reached\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @DoNumSort() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @global_numsortstruct, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %i.d = phi i16 [ 1, %bb.b ], [ %.be, %.backedge ]
  %i.e = zext i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !14
  %i.h = mul i64 %i.f, %i.g
  %i.i = call ptr @AllocateMemory(i64 noundef %i.h, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not32 = icmp eq i32 %i.j, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ReportError(ptr noundef nonnull @.str.50, i32 noundef %i.j) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !14
  %i.l = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.m = zext i16 %i.l to i32
  %i.n = call fastcc i64 @DoNumSortIteration(ptr noundef %i.i, i64 noundef %i.k, i32 noundef %i.m)
  %i.o = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.a) #11
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13 ; 2 uses
  %i.r = add i16 %i.q, 1                          ; 2 uses
  store i16 %i.r, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.s = icmp ugt i16 %i.q, 10000
  br i1 %i.s, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void (...) @ErrorExit() #11
  %.pre = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  %.be = phi i16 [ %.pre, %bb.g ], [ %i.r, %bb.f ]
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !14
  %i.x = mul i64 %i.v, %i.w
  %i.y = call ptr @AllocateMemory(i64 noundef %i.x, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ReportError(ptr noundef nonnull @.str.50, i32 noundef %i.z) #11
  call void @FreeMemory(ptr noundef %i.y, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.i
  %.0 = phi ptr [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.loopexit
  %.028 = phi i64 [ 0, %.loopexit ], [ %i.ae, %bb.j ]
  %.027 = phi double [ 0.000000e+00, %.loopexit ], [ %i.af, %bb.j ]
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !14
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.ac = zext i16 %i.ab to i32
  %i.ad = call fastcc i64 @DoNumSortIteration(ptr noundef %.0, i64 noundef %i.aa, i32 noundef %i.ac)
  %i.ae = add i64 %i.ad, %.028                    ; 2 uses
  %i.af = fadd double %.027, 1.000000e+00         ; 3 uses
  %i.ag = fcmp olt double %i.af, 3.750000e+02
  br i1 %i.ag, label %bb.j, label %bb.k, !llvm.loop !16

bb.k:                                             ; preds = %bb.j
  call void @FreeMemory(ptr noundef %.0, ptr noundef nonnull %i.a) #11
  %i.ah = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.ai = uitofp i16 %i.ah to double
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = call double @TicksToFracSecs(i64 noundef %i.ae) #11
  %i.al = fdiv double %i.aj, %i.ak
  store double %i.al, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 16), align 8, !tbaa !18
  %i.am = load i32, ptr @global_numsortstruct, align 8, !tbaa !8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr @global_numsortstruct, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @AllocateMemory(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ReportError(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FreeMemory(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ErrorExit(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoNumSortIteration(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %.not25.i = icmp eq i64 %1, 0
  br i1 %.not25.i, label %LoadNumArrayWithRand.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %.not22.not.i = icmp eq i32 %i.b, 0
  br i1 %.not22.not.i, label %LoadNumArrayWithRand.exit.thread, label %.lr.ph21.i.preheader

.lr.ph21.i.preheader:                             ; preds = %.preheader.i
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = shl i64 %1, 3
  %min.iters.check = icmp ult i64 %1, 4
  %n.vec = and i64 %1, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph21.i

LoadNumArrayWithRand.exit.thread:                 ; preds = %.preheader.i
  %i.e = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01519.i = phi i64 [ %i.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = tail call i32 @randnum(i32 noundef 0) #11
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = add nuw i64 %.01519.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !19

..loopexit_crit_edge.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.j = add i32 %i.k, -1                         ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %LoadNumArrayWithRand.exit, label %.lr.ph21.i, !llvm.loop !20

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %..loopexit_crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph21.i.preheader ], [ %indvar.next, %..loopexit_crit_edge.i ] ; 2 uses
  %i.k = phi i32 [ %i.b, %.lr.ph21.i.preheader ], [ %i.j, %..loopexit_crit_edge.i ]
  %.023.i = phi ptr [ %0, %.lr.ph21.i.preheader ], [ %i.l, %..loopexit_crit_edge.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.023.i, i64 %1 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21.i
  %i.m = mul i64 %i.d, %indvar
  %i.n = add i64 %i.c, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %wide.load43 = load <2 x i64>, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> %wide.load, ptr %i.q, align 8, !tbaa !15
  store <2 x i64> %wide.load43, ptr %i.r, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21.i, %middle.block
  %.120.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph21.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.120.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.120.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.120.i.prol
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.120.i.prol
  store i64 %i.u, ptr %i.v, align 8, !tbaa !15
  %i.w = add nuw nsw i64 %.120.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !24

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.120.i.unr = phi i64 [ %.120.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.120.i.ph, %1
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %..loopexit_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.120.i = phi i64 [ %i.ao, %scalar.ph ], [ %.120.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.120.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.120.i
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = add nuw nsw i64 %.120.i, 1              ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !15
  %i.ag = add nuw nsw i64 %.120.i, 2              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !15
  %i.ak = add nuw nsw i64 %.120.i, 3              ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !15
  %i.ao = add nuw nsw i64 %.120.i, 4              ; 2 uses
  %exitcond26.not.i.3 = icmp eq i64 %i.ao, %1
  br i1 %exitcond26.not.i.3, label %..loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !26

LoadNumArrayWithRand.exit:                        ; preds = %..loopexit_crit_edge.i, %bb.a
  %i.ap = tail call i64 (...) @StartStopwatch() #11 ; 2 uses
  %i.aq = zext nneg i32 %2 to i64
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadNumArrayWithRand.exit.thread, %LoadNumArrayWithRand.exit
  %i.ar = phi i64 [ 1, %LoadNumArrayWithRand.exit.thread ], [ %i.aq, %LoadNumArrayWithRand.exit ]
  %i.as = phi i64 [ %i.e, %LoadNumArrayWithRand.exit.thread ], [ %i.ap, %LoadNumArrayWithRand.exit ] ; 2 uses
  %i.at = add i64 %1, -1                          ; 6 uses
  %i.au = lshr i64 %i.at, 1                       ; 2 uses
  %.not28.i = icmp eq i64 %i.au, 0
  %.not1830.i = icmp eq i64 %i.at, 0
  br i1 %.not1830.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %NumHeapSort.exit.loopexit
  %.014 = phi i64 [ %i.ci, %NumHeapSort.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = mul i64 %.014, %1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 11 uses
  br i1 %.not28.i, label %.lr.ph32.i.preheader, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.split, %NumSift.exit.i
  %.029.i = phi i64 [ %i.bn, %NumSift.exit.i ], [ %i.au, %.lr.ph.split ] ; 3 uses
  %i.ax = shl nuw i64 %.029.i, 1                  ; 2 uses
  %.not31.i.i = icmp ugt i64 %i.ax, %i.at
  br i1 %.not31.i.i, label %NumSift.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i11, %bb.d
  %i.ay = phi i64 [ %i.bm, %bb.d ], [ %i.ax, %.lr.ph.i11 ] ; 5 uses
  %.032.i.i = phi i64 [ %.1.i.i, %bb.d ], [ %.029.i, %.lr.ph.i11 ]
  %i.az = icmp ult i64 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15 ; 3 uses
  br i1 %i.az, label %bb.b, label %._crit_edge33.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.bc = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !15 ; 2 uses
  %i.bf = icmp slt i64 %i.bb, %i.be
  %spec.select.i.i = select i1 %i.bf, i64 %i.bc, i64 %i.ay
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.bb, i64 %i.be)
  br label %._crit_edge33.i.i

._crit_edge33.i.i:                                ; preds = %bb.b, %.lr.ph.i.i
  %i.bh = phi i64 [ %i.bg, %bb.b ], [ %i.bb, %.lr.ph.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %spec.select.i.i, %bb.b ], [ %i.ay, %.lr.ph.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.032.i.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge33.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.026.i.i
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !15
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge33.i.i
  %.1.i.i = phi i64 [ %.026.i.i, %bb.c ], [ %1, %._crit_edge33.i.i ] ; 2 uses
  %i.bm = shl i64 %.1.i.i, 1                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bm, %i.at
  br i1 %.not.i.i, label %NumSift.exit.i, label %.lr.ph.i.i, !llvm.loop !27

NumSift.exit.i:                                   ; preds = %bb.d, %.lr.ph.i11
  %i.bn = add nsw i64 %.029.i, -1                 ; 2 uses
  %.not.i12 = icmp eq i64 %i.bn, 0
  br i1 %.not.i12, label %.lr.ph32.i.preheader, label %.lr.ph.i11, !llvm.loop !28

.lr.ph32.i.preheader:                             ; preds = %NumSift.exit.i, %.lr.ph.split
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %NumSift.exit27.i
  %.131.i = phi i64 [ %i.ch, %NumSift.exit27.i ], [ %i.at, %.lr.ph32.i.preheader ] ; 5 uses
  %i.bo = add i64 %.131.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph32.i
  %i.bp = phi i64 [ 0, %.lr.ph32.i ], [ %i.cd, %bb.h ] ; 5 uses
  %.032.i21.i = phi i64 [ 0, %.lr.ph32.i ], [ %.1.i24.i, %bb.h ]
  %i.bq = icmp ult i64 %i.bp, %.131.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15 ; 3 uses
  br i1 %i.bq, label %bb.f, label %._crit_edge33.i22.i

bb.f:                                             ; preds = %bb.e
  %i.bt = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !15 ; 2 uses
  %i.bw = icmp slt i64 %i.bs, %i.bv
  %spec.select.i26.i = select i1 %i.bw, i64 %i.bt, i64 %i.bp
  %i.bx = tail call i64 @llvm.smax.i64(i64 %i.bs, i64 %i.bv)
  br label %._crit_edge33.i22.i

._crit_edge33.i22.i:                              ; preds = %bb.f, %bb.e
  %i.by = phi i64 [ %i.bx, %bb.f ], [ %i.bs, %bb.e ] ; 2 uses
  %.026.i23.i = phi i64 [ %spec.select.i26.i, %bb.f ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.032.i21.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15 ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge33.i22.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.026.i23.i
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !15
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge33.i22.i
  %.1.i24.i = phi i64 [ %.026.i23.i, %bb.g ], [ %i.bo, %._crit_edge33.i22.i ] ; 2 uses
  %i.cd = shl i64 %.1.i24.i, 1                    ; 2 uses
  %.not.i25.i = icmp ugt i64 %i.cd, %.131.i
  br i1 %.not.i25.i, label %NumSift.exit27.i, label %bb.e, !llvm.loop !27

NumSift.exit27.i:                                 ; preds = %bb.h
  %i.ce = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.131.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !15
  store i64 %i.cg, ptr %i.aw, align 8, !tbaa !15
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !15
  %i.ch = add i64 %.131.i, -1                     ; 2 uses
  %.not18.i = icmp eq i64 %i.ch, 0
  br i1 %.not18.i, label %NumHeapSort.exit.loopexit, label %.lr.ph32.i, !llvm.loop !29

NumHeapSort.exit.loopexit:                        ; preds = %NumSift.exit27.i
  %i.ci = add nuw nsw i64 %.014, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !30

._crit_edge:                                      ; preds = %NumHeapSort.exit.loopexit, %.lr.ph, %LoadNumArrayWithRand.exit
  %i.cj = phi i64 [ %i.ap, %LoadNumArrayWithRand.exit ], [ %i.as, %.lr.ph ], [ %i.as, %NumHeapSort.exit.loopexit ]
  %i.ck = tail call i64 @StopStopwatch(i64 noundef %i.cj) #11
  ret i64 %i.ck
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare double @TicksToFracSecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @DoStringSort() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @global_strsortstruct, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %storemerge = phi i16 [ %i.q, %bb.d ], [ 1, %bb.a ] ; 2 uses
  store i16 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.e = add i64 %i.d, 100
  %i.f = zext i16 %storemerge to i64
  %i.g = mul i64 %i.e, %i.f
  %i.h = call ptr @AllocateMemory(i64 noundef %i.g, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  call void @ReportError(ptr noundef nonnull @.str.52, i32 noundef %i.i) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.k = zext i16 %i.j to i32
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.m = call fastcc i64 @DoStringSortIteration(ptr noundef %i.h, i32 noundef %i.k, i64 noundef %i.l)
  %i.n = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.a) #11
  %i.p = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.q = add i16 %i.p, 1
  br label %.preheader

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.s = add i64 %i.r, 100
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.u = zext i16 %i.t to i64
  %i.v = mul i64 %i.s, %i.u
  %i.w = call ptr @AllocateMemory(i64 noundef %i.v, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.52, i32 noundef %i.x) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.0 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.h, %bb.c ] ; 2 uses
  %.pre = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %i.y = phi i16 [ %.pre, %.loopexit ], [ %i.ad, %bb.g ]
  %.026 = phi i64 [ 0, %.loopexit ], [ %i.ac, %bb.g ]
  %.025 = phi double [ 0.000000e+00, %.loopexit ], [ %i.af, %bb.g ]
  %i.z = zext i16 %i.y to i32
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.ab = call fastcc i64 @DoStringSortIteration(ptr noundef %.0, i32 noundef %i.z, i64 noundef %i.aa)
  %i.ac = add i64 %i.ab, %.026                    ; 2 uses
  %i.ad = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13 ; 2 uses
  %i.ae = uitofp i16 %i.ad to double
  %i.af = fadd double %.025, %i.ae                ; 3 uses
  %i.ag = fcmp olt double %i.af, 1.250000e+02
  br i1 %i.ag, label %bb.g, label %bb.h, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  call void @FreeMemory(ptr noundef %.0, ptr noundef nonnull %i.a) #11
  %i.ah = call double @TicksToFracSecs(i64 noundef %i.ac) #11
  %i.ai = fdiv double %i.af, %i.ah
  store double %i.ai, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 16), align 8, !tbaa !18
  %i.aj = load i32, ptr @global_strsortstruct, align 8, !tbaa !8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr @global_strsortstruct, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoStringSortIteration(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i ], [ 1, %bb.a ] ; 6 uses
  %.028 = phi i64 [ %i.u, %._crit_edge.i ], [ 0, %bb.a ] ; 19 uses
  %.063.i = phi i64 [ %.164.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 4 uses
  %i.e = tail call i32 @abs_randwc(i32 noundef 76) #11
  %i.f = trunc i32 %i.e to i8
  %i.g = add i8 %i.f, 1                           ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %.063.i, 1                       ; 3 uses
  %i.j = add i64 %i.i, %i.h
  %.not.i = icmp ult i64 %i.j, %2                 ; 2 uses
  %i.k = xor i64 %.063.i, -1
  %i.l = add i64 %2, %i.k
  %i.m = trunc i64 %i.l to i8
  %.060.i = select i1 %.not.i, i8 %i.g, i8 %i.m   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.063.i
  store i8 %.060.i, ptr %i.n, align 1, !tbaa !32
  %.not97.i = icmp eq i8 %.060.i, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.o = trunc i64 %.063.i to i8
  %i.p = add i8 %i.o, 1
  %i.q = add i8 %i.p, %.060.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.16476.i = phi i64 [ %.164.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.r = tail call i32 @abs_randwc(i32 noundef 254) #11
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.16476.i
  store i8 %i.s, ptr %i.t, align 1, !tbaa !32
  %.164.i = add i64 %.16476.i, 1                  ; 3 uses
  %lftr.wideiv = trunc i64 %.164.i to i8
  %exitcond = icmp eq i8 %i.q, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.164.lcssa.i = phi i64 [ %i.i, %bb.b ], [ %.164.i, %.lr.ph.i ]
  %i.u = add i64 %.028, 1                         ; 10 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not.i, label %bb.b, label %.preheader73.i, !llvm.loop !34

.preheader73.i:                                   ; preds = %._crit_edge.i
  %i.v = icmp samesign ugt i32 %1, 1              ; 2 uses
  %i.w = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %.lr.ph79.i.preheader, label %._crit_edge84.split.i

.lr.ph79.i.preheader:                             ; preds = %.preheader73.i
  %i.x = add i64 %2, -1                           ; 2 uses
  %i.y = add i64 %2, 100
  %min.iters.check = icmp ult i64 %2, 4
  %i.z = and i64 %i.x, 4294967295
  %i.aa = icmp eq i64 %i.z, 4294967295
  %i.ab = icmp ugt i64 %i.x, 4294967295
  %i.ac = or i1 %i.aa, %i.ab
  %min.iters.check57 = icmp ult i64 %2, 32
  %n.mod.vf = and i64 %2, 28
  %n.vec = and i64 %2, 8589934560                 ; 5 uses
  %i.ad = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %2, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec60 = and i64 %2, 8589934588               ; 4 uses
  %i.ae = trunc i64 %n.vec60 to i32
  %cmp.n64 = icmp eq i64 %2, %n.vec60
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %indvar = phi i64 [ 0, %.lr.ph79.i.preheader ], [ %indvar.next, %._crit_edge80.i ] ; 2 uses
  %.05682.i = phi i32 [ 1, %.lr.ph79.i.preheader ], [ %i.ay, %._crit_edge80.i ]
  %.06681.i = phi ptr [ %0, %.lr.ph79.i.preheader ], [ %i.ag, %._crit_edge80.i ]
  %i.af = getelementptr i8, ptr %.06681.i, i64 %2
  %i.ag = getelementptr i8, ptr %i.af, i64 100    ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ah = add i64 %indvar, 1
  %i.ai = mul i64 %i.y, %i.ah
  %diff.check = icmp ult i64 %i.ai, 32
  %or.cond = select i1 %i.ac, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !32
  %wide.load58 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !32
  store <16 x i8> %wide.load58, ptr %i.am, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge80.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index61
  %wide.load62 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index61
  store <4 x i8> %wide.load62, ptr %i.ap, align 1, !tbaa !32
  %index.next63 = add nuw i64 %index61, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n64, label %._crit_edge80.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph152 = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  %.077.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.ar = phi i64 [ %i.aw, %vec.epilog.scalar.ph ], [ %.ph152, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.077.i = phi i32 [ %i.av, %vec.epilog.scalar.ph ], [ %.077.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !32
  %i.av = add i32 %.077.i, 1                      ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = icmp ugt i64 %2, %i.aw
  br i1 %i.ax, label %vec.epilog.scalar.ph, label %._crit_edge80.i, !llvm.loop !38

._crit_edge80.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ay = add nuw nsw i32 %.05682.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i32 %i.ay, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond103.not.i, label %._crit_edge84.split.i, label %iter.check, !llvm.loop !39

._crit_edge84.split.i:                            ; preds = %._crit_edge80.i, %.preheader73.i
  %i.az = shl nuw nsw i32 %1, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul i64 %i.u, %i.ba
  %i.bc = call ptr @AllocateMemory(i64 noundef %i.bb, ptr noundef nonnull %i.b) #11 ; 10 uses
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not72.i = icmp eq i32 %i.bd, 0
  br i1 %.not72.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge84.split.i
  call void @ReportError(ptr noundef nonnull @.str.63, i32 noundef %i.bd) #11
  call void @FreeMemory(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge84.split.i
  %.not98.i = icmp eq i64 %i.u, 0
  br i1 %.not98.i, label %LoadStringArray.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.be = icmp ult i64 %.028, 3
  br i1 %i.be, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i.preheader.new

.lr.ph88.i.preheader.new:                         ; preds = %.lr.ph88.i.preheader
  %unroll_iter = and i64 %indvars.iv, -4
  br label %.lr.ph88.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph88.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph88.i.preheader
  %.05886.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.cu, %.preheader.i.unr-lcssa ]
  %.285.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.ct, %.preheader.i.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph88.i.epil

.lr.ph88.i.epil:                                  ; preds = %.lr.ph88.i.epil, %.lr.ph88.i.epil.preheader
  %.05886.i.epil = phi i64 [ %i.bl, %.lr.ph88.i.epil ], [ %.05886.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %.285.i.epil = phi i64 [ %i.bk, %.lr.ph88.i.epil ], [ %.285.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph88.i.epil ], [ 0, %.lr.ph88.i.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05886.i.epil
  store i64 %.285.i.epil, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i.epil
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %i.bi = zext i8 %i.bh to i64
  %i.bj = add i64 %.285.i.epil, 1
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add nuw i64 %.05886.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph88.i.epil, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph88.i.epil, %.preheader.i.unr-lcssa
  br i1 %i.v, label %.lr.ph91.i.preheader.preheader, label %LoadStringArray.exit

.lr.ph91.i.preheader.preheader:                   ; preds = %.preheader.i
  %i.bm = shl i64 %.028, 3
  %i.bn = add i64 %i.bm, 8
  %min.iters.check72 = icmp ult i64 %indvars.iv, 14
  %i.bo = and i64 %.028, 4294967295
  %i.bp = icmp eq i64 %i.bo, 4294967295
  %i.bq = icmp ugt i64 %.028, 4294967295
  %i.br = or i1 %i.bp, %i.bq
  %n.vec75 = and i64 %indvars.iv, -4              ; 4 uses
  %i.bs = trunc i64 %n.vec75 to i32
  %cmp.n82 = icmp eq i64 %indvars.iv, %n.vec75
  br label %.lr.ph91.i.preheader

.lr.ph88.i:                                       ; preds = %.lr.ph88.i, %.lr.ph88.i.preheader.new
  %.05886.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.cu, %.lr.ph88.i ] ; 5 uses
  %.285.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.ct, %.lr.ph88.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %niter.next.3, %.lr.ph88.i ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05886.i
  store i64 %.285.i, ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %.285.i, 1
  %i.by = add i64 %i.bx, %i.bw                    ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05886.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cd = zext i8 %i.cc to i64
  %i.ce = add i64 %i.by, 1
  %i.cf = add i64 %i.ce, %i.cd                    ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05886.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !32
  %i.ck = zext i8 %i.cj to i64
  %i.cl = add i64 %i.cf, 1
  %i.cm = add i64 %i.cl, %i.ck                    ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.05886.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %i.cr = zext i8 %i.cq to i64
  %i.cs = add i64 %i.cm, 1
  %i.ct = add i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = add nuw i64 %.05886.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !41

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.i.preheader.preheader, %._crit_edge92.i
  %indvar69 = phi i64 [ 0, %.lr.ph91.i.preheader.preheader ], [ %indvar.next70, %._crit_edge92.i ] ; 2 uses
  %.15794.i = phi i32 [ 1, %.lr.ph91.i.preheader.preheader ], [ %i.dk, %._crit_edge92.i ]
  %.06593.i = phi ptr [ %i.bc, %.lr.ph91.i.preheader.preheader ], [ %i.cv, %._crit_edge92.i ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.06593.i, i64 %i.u ; 3 uses
  br i1 %min.iters.check72, label %.lr.ph91.i.preheader151, label %vector.scevcheck67

vector.scevcheck67:                               ; preds = %.lr.ph91.i.preheader
  %i.cw = add i64 %indvar69, 1
  %i.cx = mul i64 %i.bn, %i.cw
  %diff.check71 = icmp ult i64 %i.cx, 32
  %or.cond144 = select i1 %i.br, i1 true, i1 %diff.check71
  br i1 %or.cond144, label %.lr.ph91.i.preheader151, label %vector.body76

vector.body76:                                    ; preds = %vector.scevcheck67, %vector.body76
  %index77 = phi i64 [ %index.next80, %vector.body76 ], [ 0, %vector.scevcheck67 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index77 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !15
  %wide.load79 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %index77 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load78, ptr %i.da, align 8, !tbaa !15
  store <2 x i64> %wide.load79, ptr %i.db, align 8, !tbaa !15
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.dc, label %middle.block81, label %vector.body76, !llvm.loop !42

middle.block81:                                   ; preds = %vector.body76
  br i1 %cmp.n82, label %._crit_edge92.i, label %.lr.ph91.i.preheader151

.lr.ph91.i.preheader151:                          ; preds = %vector.scevcheck67, %.lr.ph91.i.preheader, %middle.block81
  %.ph = phi i64 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %n.vec75, %middle.block81 ]
  %.189.i.ph = phi i32 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %i.bs, %middle.block81 ]
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader151, %.lr.ph91.i
  %i.dd = phi i64 [ %i.di, %.lr.ph91.i ], [ %.ph, %.lr.ph91.i.preheader151 ] ; 2 uses
  %.189.i = phi i32 [ %i.dh, %.lr.ph91.i ], [ %.189.i.ph, %.lr.ph91.i.preheader151 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dd
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !15
  %i.dh = add i32 %.189.i, 1                      ; 2 uses
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = icmp ugt i64 %i.u, %i.di
  br i1 %i.dj, label %.lr.ph91.i, label %._crit_edge92.i, !llvm.loop !43

._crit_edge92.i:                                  ; preds = %.lr.ph91.i, %middle.block81
  %i.dk = add nuw nsw i32 %.15794.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.dk, %1
  %indvar.next70 = add i64 %indvar69, 1
  br i1 %exitcond104.not.i, label %LoadStringArray.exit.thread, label %.lr.ph91.i.preheader, !llvm.loop !44

LoadStringArray.exit.thread:                      ; preds = %._crit_edge92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dl = call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

LoadStringArray.exit:                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dm = call i64 (...) @StartStopwatch() #11    ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadStringArray.exit.thread, %LoadStringArray.exit
  %i.dn = phi i64 [ %i.dl, %LoadStringArray.exit.thread ], [ %i.dm, %LoadStringArray.exit ] ; 2 uses
  %i.do = lshr i64 %.028, 1                       ; 2 uses
  %.not53.i = icmp eq i64 %i.do, 0
  %.not3855.i = icmp eq i64 %.028, 0
  %i.dp = icmp ugt i64 %i.u, 1
  br i1 %.not3855.i, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check115 = icmp ult i64 %.028, 4     ; 2 uses
  %n.vec133 = and i64 %.028, -4                   ; 3 uses
  %i.dq = or disjoint i64 %n.vec133, 1
  %cmp.n142 = icmp eq i64 %.028, %n.vec133
  %n.vec118 = and i64 %.028, -4                   ; 3 uses
  %i.dr = or disjoint i64 %n.vec118, 1
  %cmp.n127 = icmp eq i64 %.028, %n.vec118
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %StrHeapSort.exit.loopexit
  %.034 = phi ptr [ %i.hv, %StrHeapSort.exit.loopexit ], [ %0, %.lr.ph.split.preheader ] ; 17 uses
  %.01533 = phi ptr [ %i.ds, %StrHeapSort.exit.loopexit ], [ %i.bc, %.lr.ph.split.preheader ] ; 15 uses
  %.01632 = phi i32 [ %i.hw, %StrHeapSort.exit.loopexit ], [ 0, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br i1 %.not53.i, label %.preheader.i19, label %.lr.ph.i17

.preheader.i19:                                   ; preds = %.lr.ph.i17, %.lr.ph.split
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %i.u ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.01533, i64 8
  br label %bb.e

.lr.ph.i17:                                       ; preds = %.lr.ph.split, %.lr.ph.i17
  %.054.i = phi i64 [ %i.dv, %.lr.ph.i17 ], [ %i.do, %.lr.ph.split ] ; 2 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef %.054.i, i64 noundef %.028)
  %i.dv = add nsw i64 %.054.i, -1                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.dv, 0
  br i1 %.not.i18, label %.preheader.i19, label %.lr.ph.i17, !llvm.loop !46

bb.e:                                             ; preds = %.preheader.i19, %stradjust.exit49.i
  %indvar84 = phi i64 [ 0, %.preheader.i19 ], [ %indvar.next85, %stradjust.exit49.i ] ; 6 uses
  %.156.i = phi i64 [ %.028, %.preheader.i19 ], [ %i.ht, %stradjust.exit49.i ] ; 5 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef 0, i64 noundef %.156.i)
  %i.dw = load i8, ptr %.034, align 1, !tbaa !32
  %i.dx = zext i8 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %.034, i64 noundef %i.dy) #11
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.156.i ; 6 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !32  ; 3 uses
  %i.ed = load i64, ptr %.01533, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !32
  %i.eg = load i64, ptr %i.dt, align 8, !tbaa !15 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.034, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !32
  %i.ej = zext i8 %i.ei to i64
  %i.ek = load i64, ptr %i.du, align 8, !tbaa !15 ; 2 uses
  %i.el = add i64 %i.eg, 1
  %i.em = add i64 %i.el, %i.ej
  %i.en = sub i64 %i.em, %i.ek
  %i.eo = zext i8 %i.ec to i64                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ek
  call void @MoveMemory(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.er, i64 noundef %i.en) #11
  br i1 %i.dp, label %.lr.ph.i.i, label %stradjust.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.es = zext i8 %i.ec to i32
  %i.et = zext i8 %i.ef to i32
  %i.eu = sub nsw i32 %i.es, %i.et                ; 2 uses
  %i.ev = call i32 @llvm.abs.i32(i32 %i.eu, i1 true)
  %i.ew = icmp slt i32 %i.eu, 0
  %i.ex = zext nneg i32 %i.ev to i64              ; 4 uses
  br i1 %i.ew, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %min.iters.check115, label %.lr.ph.split.i.i.preheader149, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.split.i.i.preheader
  %broadcast.splatinsert134 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat135 = shufflevector <2 x i64> %broadcast.splatinsert134, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph131
  %index137 = phi i64 [ 0, %vector.ph131 ], [ %index.next140, %vector.body136 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index137 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %wide.load138 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !15
  %wide.load139 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !15
  %i.fb = add <2 x i64> %wide.load138, %broadcast.splat135
  %i.fc = add <2 x i64> %wide.load139, %broadcast.splat135
  store <2 x i64> %i.fb, ptr %i.ez, align 8, !tbaa !15
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !15
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.fd, label %middle.block141, label %vector.body136, !llvm.loop !47

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %stradjust.exit.i, label %.lr.ph.split.i.i.preheader149

.lr.ph.split.i.i.preheader149:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block141
  %.046.i.i.ph = phi i64 [ 1, %.lr.ph.split.i.i.preheader ], [ %i.dq, %middle.block141 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check115, label %.lr.ph.split.us.i.i.preheader148, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.split.us.i.i.preheader
  %broadcast.splatinsert119 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat120 = shufflevector <2 x i64> %broadcast.splatinsert119, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph116
  %index122 = phi i64 [ 0, %vector.ph116 ], [ %index.next125, %vector.body121 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index122 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  %wide.load123 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !15
  %wide.load124 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !15
  %i.fh = sub <2 x i64> %wide.load123, %broadcast.splat120
  %i.fi = sub <2 x i64> %wide.load124, %broadcast.splat120
  store <2 x i64> %i.fh, ptr %i.ff, align 8, !tbaa !15
  store <2 x i64> %i.fi, ptr %i.fg, align 8, !tbaa !15
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.fj, label %middle.block126, label %vector.body121, !llvm.loop !48

middle.block126:                                  ; preds = %vector.body121
  br i1 %cmp.n127, label %stradjust.exit.i, label %.lr.ph.split.us.i.i.preheader148

.lr.ph.split.us.i.i.preheader148:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block126
  %.046.us.i.i.ph = phi i64 [ 1, %.lr.ph.split.us.i.i.preheader ], [ %i.dr, %middle.block126 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader148, %.lr.ph.split.us.i.i
  %.046.us.i.i = phi i64 [ %.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.046.us.i.i.ph, %.lr.ph.split.us.i.i.preheader148 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i.i ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !15
  %i.fm = sub i64 %i.fl, %i.ex
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !15
  %.0.us.i.i = add nuw i64 %.046.us.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %.046.us.i.i, %.028
  br i1 %exitcond48.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !49
end_hunk_0
begin_hunk_1_@DoFPUTransIteration:bb.a
  br i1 %.not.us39.i.2, label %TrapezoidIntegrate.exit12, label %thefunction.exit27.us37.i, !llvm.loop !79

TrapezoidIntegrate.exit12:                        ; preds = %thefunction.exit27.us37.i
  %i.av = fmul nnan double %i.u, 2.000000e+00     ; 2 uses
  %i.aw = tail call double @cos(double noundef %i.av) #11, !tbaa !4
  %i.ax = fmul double %i.aw, 9.000000e+00
  %i.ay = fmul double %i.ax, 5.000000e-01
  %i.az = fadd double %i.at, %i.ay
  %i.ba = fmul double %i.az, 1.000000e-02
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store double %i.ba, ptr %i.bb, align 8, !tbaa !80
  %i.bc = tail call double @sin(double noundef %i.v) #11, !tbaa !4
  %i.bd = fmul double %i.bc, 5.000000e-01
  br label %thefunction.exit27.us45.i

thefunction.exit27.us45.i:                        ; preds = %thefunction.exit27.us45.i, %TrapezoidIntegrate.exit12
  %i.be = phi i32 [ 198, %TrapezoidIntegrate.exit12 ], [ %i.ca, %thefunction.exit27.us45.i ]
  %.033.us43.i = phi double [ %i.bd, %TrapezoidIntegrate.exit12 ], [ %i.bz, %thefunction.exit27.us45.i ]
  %.02232.us44.i = phi double [ 0.000000e+00, %TrapezoidIntegrate.exit12 ], [ %i.bt, %thefunction.exit27.us45.i ]
  %i.bf = fadd double %.02232.us44.i, 1.000000e-02 ; 4 uses
  %i.bg = fadd double %i.bf, 1.000000e+00
  %i.bh = tail call double @pow(double noundef %i.bg, double noundef %i.bf) #11, !tbaa !4
  %i.bi = fmul double %i.u, %i.bf
  %i.bj = tail call double @sin(double noundef %i.bi) #11, !tbaa !4
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fadd double %.033.us43.i, %i.bk
  %i.bm = fadd double %i.bf, 1.000000e-02         ; 4 uses
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = tail call double @pow(double noundef %i.bn, double noundef %i.bm) #11, !tbaa !4
  %i.bp = fmul double %i.u, %i.bm
  %i.bq = tail call double @sin(double noundef %i.bp) #11, !tbaa !4
  %i.br = fmul double %i.bo, %i.bq
  %i.bs = fadd double %i.bl, %i.br
  %i.bt = fadd double %i.bm, 1.000000e-02         ; 4 uses
  %i.bu = fadd double %i.bt, 1.000000e+00
  %i.bv = tail call double @pow(double noundef %i.bu, double noundef %i.bt) #11, !tbaa !4
  %i.bw = fmul double %i.u, %i.bt
  %i.bx = tail call double @sin(double noundef %i.bw) #11, !tbaa !4
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = fadd double %i.bs, %i.by                ; 2 uses
  %i.ca = add nsw i32 %i.be, -3                   ; 2 uses
  %.not.us47.i.2 = icmp eq i32 %i.ca, 0
  br i1 %.not.us47.i.2, label %TrapezoidIntegrate.exit13, label %thefunction.exit27.us45.i, !llvm.loop !79

TrapezoidIntegrate.exit13:                        ; preds = %thefunction.exit27.us45.i
  %i.cb = tail call double @sin(double noundef %i.av) #11, !tbaa !4
  %i.cc = fmul double %i.cb, 9.000000e+00
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fadd double %i.bz, %i.cd
  %i.cf = fmul double %i.ce, 1.000000e-02
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  store double %i.cf, ptr %i.cg, align 8, !tbaa !80
  %i.ch = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %TrapezoidIntegrate.exit13, %TrapezoidIntegrate.exit
  %i.ci = tail call i64 @StopStopwatch(i64 noundef %i.a) #11
  ret i64 %i.ci
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local void @DoAssign() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @global_assignstruct, align 8, !tbaa !74
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %storemerge = phi i64 [ %i.l, %bb.d ], [ 1, %bb.a ] ; 2 uses
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.d = mul i64 %storemerge, 81608
  %i.e = call ptr @AllocateMemory(i64 noundef %i.d, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  call void @ReportError(ptr noundef nonnull @.str.57, i32 noundef %i.f) #11
  call void @FreeMemory(ptr noundef %i.e, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.h = call fastcc i64 @DoAssignIteration(ptr noundef %i.e, i64 noundef %i.g)
  %i.i = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @FreeMemory(ptr noundef %i.e, ptr noundef nonnull %i.a) #11
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.l = add i64 %i.k, 1
  br label %.preheader

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.n = mul i64 %i.m, 81608
  %i.o = call ptr @AllocateMemory(i64 noundef %i.n, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.57, i32 noundef %i.p) #11
  call void @FreeMemory(ptr noundef %i.o, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.024 = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.e, %bb.c ] ; 9 uses
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.r = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.q)
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.t = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.s)
  %i.u = add i64 %i.t, %i.r
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.w = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.v)
  %i.x = add i64 %i.w, %i.u
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.z = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.y)
  %i.aa = add i64 %i.z, %i.x
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.ac = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ab)
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.af = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ae)
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.ai = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ah)
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.al = call fastcc i64 @DoAssignIteration(ptr noundef %.024, i64 noundef %i.ak)
  %i.am = add i64 %i.al, %i.aj
  call void @FreeMemory(ptr noundef %.024, ptr noundef nonnull %i.a) #11
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !76
  %i.ao = uitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 8.000000e+00
  %i.aq = call double @TicksToFracSecs(i64 noundef %i.am) #11
  %i.ar = fdiv double %i.ap, %i.aq
  store double %i.ar, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 24), align 8, !tbaa !78
  %i.as = load i32, ptr @global_assignstruct, align 8, !tbaa !74
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  store i32 1, ptr @global_assignstruct, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoAssignIteration(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [101 x i16], align 16             ; 29 uses
  %i.b = alloca [101 x i16], align 16             ; 12 uses
  %i.c = alloca [101 x [101 x i16]], align 16     ; 11 uses
  %i.d = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %bb.a
  %indvars.iv12.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next13.i.i, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %indvars.iv12.i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.f = tail call i32 @abs_randwc(i32 noundef 5000000) #11
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 101
  br i1 %exitcond.not.i.i, label %bb.c, label %bb.b, !llvm.loop !82

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next13.i.i = add nuw nsw i64 %indvars.iv12.i.i, 1 ; 2 uses
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next13.i.i, 101
  br i1 %exitcond15.not.i.i, label %LoadAssign.exit.i, label %.preheader.i.i, !llvm.loop !83

LoadAssign.exit.i:                                ; preds = %bb.c
  %i.i = icmp ugt i64 %1, 1
  br i1 %i.i, label %.preheader.i, label %LoadAssignArrayWithRand.exit

.preheader.i:                                     ; preds = %LoadAssign.exit.i, %CopyToAssign.exit.i
  %indvar = phi i64 [ %indvar.next, %CopyToAssign.exit.i ], [ 0, %LoadAssign.exit.i ] ; 2 uses
  %.014.i = phi i64 [ %i.dx, %CopyToAssign.exit.i ], [ 1, %LoadAssign.exit.i ]
  %.sroa.0.013.i = phi ptr [ %i.k, %CopyToAssign.exit.i ], [ %0, %LoadAssign.exit.i ]
  %i.j = mul i64 %indvar, 81608
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 81608 ; 2 uses
  %i.l = add i64 %i.j, 81576
  %diff.check = icmp ult i64 %i.l, -32            ; 2 uses
  br label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %.unr-lcssa, %.preheader.i
  %indvars.iv16.i.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next17.i.i, %.unr-lcssa ] ; 3 uses
  %i.m = getelementptr inbounds nuw [808 x i8], ptr %0, i64 %indvars.iv16.i.i ; 55 uses
  %i.n = getelementptr inbounds nuw [808 x i8], ptr %i.k, i64 %indvars.iv16.i.i ; 55 uses
  br i1 %diff.check, label %vector.body, label %scalar.ph.prol.preheader

vector.body:                                      ; preds = %.preheader.i9.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !15
  %wide.load21 = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8, !tbaa !15
  store <2 x i64> %wide.load21, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %wide.load.1 = load <2 x i64>, ptr %i.q, align 8, !tbaa !15
  %wide.load21.1 = load <2 x i64>, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store <2 x i64> %wide.load.1, ptr %i.s, align 8, !tbaa !15
  store <2 x i64> %wide.load21.1, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %wide.load.2 = load <2 x i64>, ptr %i.u, align 8, !tbaa !15
  %wide.load21.2 = load <2 x i64>, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store <2 x i64> %wide.load.2, ptr %i.w, align 8, !tbaa !15
  store <2 x i64> %wide.load21.2, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %wide.load.3 = load <2 x i64>, ptr %i.y, align 8, !tbaa !15
  %wide.load21.3 = load <2 x i64>, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store <2 x i64> %wide.load.3, ptr %i.aa, align 8, !tbaa !15
  store <2 x i64> %wide.load21.3, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %wide.load.4 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !15
  %wide.load21.4 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store <2 x i64> %wide.load.4, ptr %i.ae, align 8, !tbaa !15
  store <2 x i64> %wide.load21.4, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %wide.load.5 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !15
  %wide.load21.5 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store <2 x i64> %wide.load.5, ptr %i.ai, align 8, !tbaa !15
  store <2 x i64> %wide.load21.5, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %wide.load.6 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !15
  %wide.load21.6 = load <2 x i64>, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  store <2 x i64> %wide.load.6, ptr %i.am, align 8, !tbaa !15
  store <2 x i64> %wide.load21.6, ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %wide.load.7 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !15
  %wide.load21.7 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  store <2 x i64> %wide.load.7, ptr %i.aq, align 8, !tbaa !15
  store <2 x i64> %wide.load21.7, ptr %i.ar, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %wide.load.8 = load <2 x i64>, ptr %i.as, align 8, !tbaa !15
  %wide.load21.8 = load <2 x i64>, ptr %i.at, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  store <2 x i64> %wide.load.8, ptr %i.au, align 8, !tbaa !15
  store <2 x i64> %wide.load21.8, ptr %i.av, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %wide.load.9 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !15
  %wide.load21.9 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  store <2 x i64> %wide.load.9, ptr %i.ay, align 8, !tbaa !15
  store <2 x i64> %wide.load21.9, ptr %i.az, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %wide.load.10 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !15
  %wide.load21.10 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  store <2 x i64> %wide.load.10, ptr %i.bc, align 8, !tbaa !15
  store <2 x i64> %wide.load21.10, ptr %i.bd, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.be, align 8, !tbaa !15
  %wide.load21.11 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  store <2 x i64> %wide.load.11, ptr %i.bg, align 8, !tbaa !15
  store <2 x i64> %wide.load21.11, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  %wide.load.12 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !15
  %wide.load21.12 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  store <2 x i64> %wide.load.12, ptr %i.bk, align 8, !tbaa !15
  store <2 x i64> %wide.load21.12, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %wide.load.13 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15
  %wide.load21.13 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  store <2 x i64> %wide.load.13, ptr %i.bo, align 8, !tbaa !15
  store <2 x i64> %wide.load21.13, ptr %i.bp, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %wide.load.14 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !15
  %wide.load21.14 = load <2 x i64>, ptr %i.br, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  store <2 x i64> %wide.load.14, ptr %i.bs, align 8, !tbaa !15
  store <2 x i64> %wide.load21.14, ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %wide.load.15 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !15
  %wide.load21.15 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 480
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  store <2 x i64> %wide.load.15, ptr %i.bw, align 8, !tbaa !15
  store <2 x i64> %wide.load21.15, ptr %i.bx, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %wide.load.16 = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  %wide.load21.16 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 528
  store <2 x i64> %wide.load.16, ptr %i.ca, align 8, !tbaa !15
  store <2 x i64> %wide.load21.16, ptr %i.cb, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  %wide.load.17 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %wide.load21.17 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 560
  store <2 x i64> %wide.load.17, ptr %i.ce, align 8, !tbaa !15
  store <2 x i64> %wide.load21.17, ptr %i.cf, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %wide.load.18 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !15
  %wide.load21.18 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 576
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 592
  store <2 x i64> %wide.load.18, ptr %i.ci, align 8, !tbaa !15
  store <2 x i64> %wide.load21.18, ptr %i.cj, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %wide.load.19 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !15
  %wide.load21.19 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 608
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  store <2 x i64> %wide.load.19, ptr %i.cm, align 8, !tbaa !15
  store <2 x i64> %wide.load21.19, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %wide.load.20 = load <2 x i64>, ptr %i.co, align 8, !tbaa !15
  %wide.load21.20 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  store <2 x i64> %wide.load.20, ptr %i.cq, align 8, !tbaa !15
  store <2 x i64> %wide.load21.20, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 672
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %wide.load.21 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !15
  %wide.load21.21 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 672
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 688
  store <2 x i64> %wide.load.21, ptr %i.cu, align 8, !tbaa !15
  store <2 x i64> %wide.load21.21, ptr %i.cv, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 720
  %wide.load.22 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  %wide.load21.22 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 704
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 720
  store <2 x i64> %wide.load.22, ptr %i.cy, align 8, !tbaa !15
  store <2 x i64> %wide.load21.22, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 736
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 752
  %wide.load.23 = load <2 x i64>, ptr %i.da, align 8, !tbaa !15
  %wide.load21.23 = load <2 x i64>, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 736
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 752
  store <2 x i64> %wide.load.23, ptr %i.dc, align 8, !tbaa !15
  store <2 x i64> %wide.load21.23, ptr %i.dd, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 768
end_hunk_1
begin_hunk_2_@DoLU:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.f) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.f) #11
  %i.bx = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.bx, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void (...) @ErrorExit() #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.by = mul nuw nsw i64 %indvars.iv.next, 808
  %i.bz = call ptr @AllocateMemory(i64 noundef %i.by, ptr noundef nonnull %i.g) #11 ; 7 uses
  %i.ca = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %.not69 = icmp eq i32 %i.ca, 0
  br i1 %.not69, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ReportError(ptr noundef nonnull @.str.61, i32 noundef %i.ca) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.e) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.e) #11
  %i.cb = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.cb, ptr noundef nonnull %i.e) #11
  %.not.i70 = icmp eq ptr %i.bv, null
  br i1 %.not.i70, label %LUFreeMem.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @FreeMemory(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.e) #11
  br label %LUFreeMem.exit

LUFreeMem.exit:                                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void (...) @ErrorExit() #11
  br label %bb.o

bb.o:                                             ; preds = %LUFreeMem.exit, %bb.l
  %i.cc = call fastcc i64 @DoLUIteration(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.bv, ptr noundef %i.bz, i64 noundef %indvars.iv)
  %i.cd = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.ce = icmp ugt i64 %i.cc, %i.cd
  br i1 %i.ce, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  store i64 %indvars.iv, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76
  br label %bb.aa

bb.p:                                             ; preds = %bb.o
  call void @FreeMemory(ptr noundef %i.bv, ptr noundef nonnull %i.g) #11
  call void @FreeMemory(ptr noundef %i.bz, ptr noundef nonnull %i.g) #11
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10001
  br i1 %exitcond.not, label %bb.q, label %bb.j, !llvm.loop !169

bb.q:                                             ; preds = %bb.p
  %.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76
  %i.cf = icmp eq i64 %.pr, 0
  br i1 %i.cf, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.d) #11
  %i.cg = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.cg, ptr noundef nonnull %i.d) #11
  %.not.i71 = icmp eq ptr %i.bv, null
  br i1 %.not.i71, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @FreeMemory(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.d) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not7.i = icmp eq ptr %i.bz, null
  br i1 %.not7.i, label %LUFreeMem.exit72, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @FreeMemory(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.d) #11
  br label %LUFreeMem.exit72

LUFreeMem.exit72:                                 ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void (...) @ErrorExit() #11
  br label %bb.aa

bb.v:                                             ; preds = %build_problem.exit
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76
  %i.ci = mul i64 %i.ch, 81608
  %i.cj = call ptr @AllocateMemory(i64 noundef %i.ci, ptr noundef nonnull %i.g) #11 ; 4 uses
  %i.ck = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @ReportError(ptr noundef nonnull @.str.61, i32 noundef %i.ck) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.c) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.c) #11
  %i.cl = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.cl, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void (...) @ErrorExit() #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76
  %i.cn = mul i64 %i.cm, 808
  %i.co = call ptr @AllocateMemory(i64 noundef %i.cn, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %.not67 = icmp eq i32 %i.cp, 0
  br i1 %.not67, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ReportError(ptr noundef nonnull @.str.61, i32 noundef %i.cp) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.b) #11
  %i.cq = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.cq, ptr noundef nonnull %i.b) #11
  %.not.i73 = icmp eq ptr %i.cj, null
  br i1 %.not.i73, label %LUFreeMem.exit74, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @FreeMemory(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.b) #11
  br label %LUFreeMem.exit74

LUFreeMem.exit74:                                 ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.x, %LUFreeMem.exit74, %bb.q, %LUFreeMem.exit72
  %.261 = phi ptr [ %i.bz, %LUFreeMem.exit72 ], [ %i.bz, %bb.q ], [ %i.co, %LUFreeMem.exit74 ], [ %i.co, %bb.x ], [ %i.bz, %.thread ] ; 3 uses
  %.2 = phi ptr [ %i.bv, %LUFreeMem.exit72 ], [ %i.bv, %bb.q ], [ %i.cj, %LUFreeMem.exit74 ], [ %i.cj, %bb.x ], [ %i.bv, %.thread ] ; 3 uses
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %i.cr = phi i64 [ %.pre, %bb.aa ], [ %i.cu, %bb.ab ]
  %.056 = phi i64 [ 0, %bb.aa ], [ %i.ct, %bb.ab ]
  %.0 = phi double [ 0.000000e+00, %bb.aa ], [ %i.cw, %bb.ab ]
  %i.cs = call fastcc i64 @DoLUIteration(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %.2, ptr noundef %.261, i64 noundef %i.cr)
  %i.ct = add i64 %i.cs, %.056                    ; 2 uses
  %i.cu = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !76 ; 2 uses
  %i.cv = uitofp i64 %i.cu to double
  %i.cw = fadd double %.0, %i.cv                  ; 3 uses
  %i.cx = fcmp olt double %i.cw, 5.000000e+02
  br i1 %i.cx, label %bb.ab, label %bb.ac, !llvm.loop !170

bb.ac:                                            ; preds = %bb.ab
  %i.cy = call double @TicksToFracSecs(i64 noundef %i.ct) #11
  %i.cz = fdiv double %i.cw, %i.cy
  store double %i.cz, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 24), align 8, !tbaa !78
  %i.da = load i32, ptr @global_lustruct, align 8, !tbaa !74
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr @global_lustruct, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.a) #11
  call void @FreeMemory(ptr noundef %i.i, ptr noundef nonnull %i.a) #11
  %i.dc = load ptr, ptr @LUtempvv, align 8, !tbaa !158
  call void @FreeMemory(ptr noundef %i.dc, ptr noundef nonnull %i.a) #11
  %.not.i75 = icmp eq ptr %.2, null
  br i1 %.not.i75, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @FreeMemory(ptr noundef nonnull %.2, ptr noundef nonnull %i.a) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not7.i76 = icmp eq ptr %.261, null
  br i1 %.not7.i76, label %LUFreeMem.exit77, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @FreeMemory(ptr noundef nonnull %.261, ptr noundef nonnull %i.a) #11
  br label %LUFreeMem.exit77

LUFreeMem.exit77:                                 ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoLUIteration(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [101 x i32], align 16             ; 4 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %2 to i64
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = sub i64 %i.b, %i.c
  %i.g = sub i64 %i.d, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 784
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.be = tail call i64 (...) @StartStopwatch() #11
  br label %._crit_edge43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.unr-lcssa
  %.02839 = phi i64 [ %i.fi, %.unr-lcssa ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.bf = mul i64 %.02839, 808
  %5 = add i64 %i.f, %i.bf
  %.idx31 = mul i64 %.02839, 81608
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx31 ; 8 uses
  %i.bh = mul i64 %.02839, 81608
  %i.bi = add i64 %i.g, %i.bh
  %diff.check69 = icmp ugt i64 %i.bi, 31          ; 2 uses
  br i1 %diff.check69, label %vector.body72, label %scalar.ph70.prol.preheader

vector.body72:                                    ; preds = %.lr.ph, %vector.body72
  %index73 = phi i64 [ %index.next76.2, %vector.body72 ], [ 0, %.lr.ph ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index73 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load74 = load <2 x double>, ptr %i.bj, align 8, !tbaa !80
  %wide.load75 = load <2 x double>, ptr %i.bk, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index73 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %wide.load74, ptr %i.bl, align 8, !tbaa !80
  store <2 x double> %wide.load75, ptr %i.bm, align 8, !tbaa !80
  %index.next76 = add nuw nsw i64 %index73, 4     ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next76 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load74.1 = load <2 x double>, ptr %i.bn, align 8, !tbaa !80
  %wide.load75.1 = load <2 x double>, ptr %i.bo, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index.next76 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x double> %wide.load74.1, ptr %i.bp, align 8, !tbaa !80
  store <2 x double> %wide.load75.1, ptr %i.bq, align 8, !tbaa !80
  %index.next76.1 = add nuw nsw i64 %index73, 8   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next76.1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load74.2 = load <2 x double>, ptr %i.br, align 8, !tbaa !80
  %wide.load75.2 = load <2 x double>, ptr %i.bs, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index.next76.1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %wide.load74.2, ptr %i.bt, align 8, !tbaa !80
  store <2 x double> %wide.load75.2, ptr %i.bu, align 8, !tbaa !80
  %index.next76.2 = add nuw nsw i64 %index73, 12  ; 2 uses
  %i.bv = icmp eq i64 %index.next76.2, 10200
  br i1 %i.bv, label %scalar.ph70.prol.preheader, label %vector.body72, !llvm.loop !171

scalar.ph70.prol.preheader:                       ; preds = %.lr.ph, %vector.body72
  %.037.ph = phi i64 [ 0, %.lr.ph ], [ 10200, %vector.body72 ]
  br label %scalar.ph70.prol

scalar.ph70.prol:                                 ; preds = %scalar.ph70.prol, %scalar.ph70.prol.preheader
  %.037.prol = phi i64 [ %i.bz, %scalar.ph70.prol ], [ %.037.ph, %scalar.ph70.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph70.prol ], [ 0, %scalar.ph70.prol.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.037.prol
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !80
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.037.prol
  store double %i.bx, ptr %i.by, align 8, !tbaa !80
  %i.bz = add nuw nsw i64 %.037.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %scalar.ph70.prol.loopexit, label %scalar.ph70.prol, !llvm.loop !172

scalar.ph70.prol.loopexit:                        ; preds = %scalar.ph70.prol
  br i1 %diff.check69, label %.preheader.preheader, label %scalar.ph70

scalar.ph70:                                      ; preds = %scalar.ph70.prol.loopexit, %scalar.ph70
  %.037 = phi i64 [ %i.cp, %scalar.ph70 ], [ %i.bz, %scalar.ph70.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.037
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.037
  store double %i.cb, ptr %i.cc, align 8, !tbaa !80
  %i.cd = add nuw nsw i64 %.037, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cd
  store double %i.cf, ptr %i.cg, align 8, !tbaa !80
  %i.ch = add nuw nsw i64 %.037, 2                ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ch
  store double %i.cj, ptr %i.ck, align 8, !tbaa !80
  %i.cl = add nuw nsw i64 %.037, 3                ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cl
  store double %i.cn, ptr %i.co, align 8, !tbaa !80
  %i.cp = add nuw nsw i64 %.037, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cp, 10201
  br i1 %exitcond.not.3, label %.preheader.preheader, label %scalar.ph70, !llvm.loop !173

.preheader.preheader:                             ; preds = %scalar.ph70, %scalar.ph70.prol.loopexit
  %.idx32 = mul i64 %.02839, 808
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx32 ; 55 uses
  %diff.check = icmp ugt i64 %5, 31               ; 2 uses
  br i1 %diff.check, label %vector.body, label %.preheader.prol.preheader

vector.body:                                      ; preds = %.preheader.preheader
  %wide.load = load <2 x double>, ptr %1, align 8, !tbaa !80
  %wide.load67 = load <2 x double>, ptr %i.h, align 8, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> %wide.load, ptr %i.cq, align 8, !tbaa !80
  store <2 x double> %wide.load67, ptr %i.cr, align 8, !tbaa !80
  %wide.load.1 = load <2 x double>, ptr %i.i, align 8, !tbaa !80
  %wide.load67.1 = load <2 x double>, ptr %i.j, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store <2 x double> %wide.load.1, ptr %i.cs, align 8, !tbaa !80
  store <2 x double> %wide.load67.1, ptr %i.ct, align 8, !tbaa !80
  %wide.load.2 = load <2 x double>, ptr %i.k, align 8, !tbaa !80
  %wide.load67.2 = load <2 x double>, ptr %i.l, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  store <2 x double> %wide.load.2, ptr %i.cu, align 8, !tbaa !80
  store <2 x double> %wide.load67.2, ptr %i.cv, align 8, !tbaa !80
  %wide.load.3 = load <2 x double>, ptr %i.m, align 8, !tbaa !80
  %wide.load67.3 = load <2 x double>, ptr %i.n, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  store <2 x double> %wide.load.3, ptr %i.cw, align 8, !tbaa !80
  store <2 x double> %wide.load67.3, ptr %i.cx, align 8, !tbaa !80
  %wide.load.4 = load <2 x double>, ptr %i.o, align 8, !tbaa !80
  %wide.load67.4 = load <2 x double>, ptr %i.p, align 8, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 144
  store <2 x double> %wide.load.4, ptr %i.cy, align 8, !tbaa !80
  store <2 x double> %wide.load67.4, ptr %i.cz, align 8, !tbaa !80
  %wide.load.5 = load <2 x double>, ptr %i.q, align 8, !tbaa !80
  %wide.load67.5 = load <2 x double>, ptr %i.r, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  store <2 x double> %wide.load.5, ptr %i.da, align 8, !tbaa !80
  store <2 x double> %wide.load67.5, ptr %i.db, align 8, !tbaa !80
  %wide.load.6 = load <2 x double>, ptr %i.s, align 8, !tbaa !80
  %wide.load67.6 = load <2 x double>, ptr %i.t, align 8, !tbaa !80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 208
  store <2 x double> %wide.load.6, ptr %i.dc, align 8, !tbaa !80
  store <2 x double> %wide.load67.6, ptr %i.dd, align 8, !tbaa !80
  %wide.load.7 = load <2 x double>, ptr %i.u, align 8, !tbaa !80
  %wide.load67.7 = load <2 x double>, ptr %i.v, align 8, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 224
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 240
  store <2 x double> %wide.load.7, ptr %i.de, align 8, !tbaa !80
  store <2 x double> %wide.load67.7, ptr %i.df, align 8, !tbaa !80
  %wide.load.8 = load <2 x double>, ptr %i.w, align 8, !tbaa !80
  %wide.load67.8 = load <2 x double>, ptr %i.x, align 8, !tbaa !80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 272
  store <2 x double> %wide.load.8, ptr %i.dg, align 8, !tbaa !80
  store <2 x double> %wide.load67.8, ptr %i.dh, align 8, !tbaa !80
  %wide.load.9 = load <2 x double>, ptr %i.y, align 8, !tbaa !80
  %wide.load67.9 = load <2 x double>, ptr %i.z, align 8, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %i.cq, i64 288
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 304
  store <2 x double> %wide.load.9, ptr %i.di, align 8, !tbaa !80
  store <2 x double> %wide.load67.9, ptr %i.dj, align 8, !tbaa !80
  %wide.load.10 = load <2 x double>, ptr %i.aa, align 8, !tbaa !80
  %wide.load67.10 = load <2 x double>, ptr %i.ab, align 8, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 320
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  store <2 x double> %wide.load.10, ptr %i.dk, align 8, !tbaa !80
  store <2 x double> %wide.load67.10, ptr %i.dl, align 8, !tbaa !80
  %wide.load.11 = load <2 x double>, ptr %i.ac, align 8, !tbaa !80
  %wide.load67.11 = load <2 x double>, ptr %i.ad, align 8, !tbaa !80
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 368
  store <2 x double> %wide.load.11, ptr %i.dm, align 8, !tbaa !80
  store <2 x double> %wide.load67.11, ptr %i.dn, align 8, !tbaa !80
  %wide.load.12 = load <2 x double>, ptr %i.ae, align 8, !tbaa !80
  %wide.load67.12 = load <2 x double>, ptr %i.af, align 8, !tbaa !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 384
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 400
  store <2 x double> %wide.load.12, ptr %i.do, align 8, !tbaa !80
  store <2 x double> %wide.load67.12, ptr %i.dp, align 8, !tbaa !80
  %wide.load.13 = load <2 x double>, ptr %i.ag, align 8, !tbaa !80
  %wide.load67.13 = load <2 x double>, ptr %i.ah, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 416
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 432
  store <2 x double> %wide.load.13, ptr %i.dq, align 8, !tbaa !80
  store <2 x double> %wide.load67.13, ptr %i.dr, align 8, !tbaa !80
  %wide.load.14 = load <2 x double>, ptr %i.ai, align 8, !tbaa !80
  %wide.load67.14 = load <2 x double>, ptr %i.aj, align 8, !tbaa !80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 448
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 464
  store <2 x double> %wide.load.14, ptr %i.ds, align 8, !tbaa !80
  store <2 x double> %wide.load67.14, ptr %i.dt, align 8, !tbaa !80
  %wide.load.15 = load <2 x double>, ptr %i.ak, align 8, !tbaa !80
  %wide.load67.15 = load <2 x double>, ptr %i.al, align 8, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 480
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 496
  store <2 x double> %wide.load.15, ptr %i.du, align 8, !tbaa !80
  store <2 x double> %wide.load67.15, ptr %i.dv, align 8, !tbaa !80
  %wide.load.16 = load <2 x double>, ptr %i.am, align 8, !tbaa !80
  %wide.load67.16 = load <2 x double>, ptr %i.an, align 8, !tbaa !80
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 512
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 528
  store <2 x double> %wide.load.16, ptr %i.dw, align 8, !tbaa !80
  store <2 x double> %wide.load67.16, ptr %i.dx, align 8, !tbaa !80
  %wide.load.17 = load <2 x double>, ptr %i.ao, align 8, !tbaa !80
  %wide.load67.17 = load <2 x double>, ptr %i.ap, align 8, !tbaa !80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 544
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 560
  store <2 x double> %wide.load.17, ptr %i.dy, align 8, !tbaa !80
  store <2 x double> %wide.load67.17, ptr %i.dz, align 8, !tbaa !80
  %wide.load.18 = load <2 x double>, ptr %i.aq, align 8, !tbaa !80
  %wide.load67.18 = load <2 x double>, ptr %i.ar, align 8, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 576
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 592
  store <2 x double> %wide.load.18, ptr %i.ea, align 8, !tbaa !80
  store <2 x double> %wide.load67.18, ptr %i.eb, align 8, !tbaa !80
  %wide.load.19 = load <2 x double>, ptr %i.as, align 8, !tbaa !80
  %wide.load67.19 = load <2 x double>, ptr %i.at, align 8, !tbaa !80
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 608
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cq, i64 624
  store <2 x double> %wide.load.19, ptr %i.ec, align 8, !tbaa !80
  store <2 x double> %wide.load67.19, ptr %i.ed, align 8, !tbaa !80
  %wide.load.20 = load <2 x double>, ptr %i.au, align 8, !tbaa !80
  %wide.load67.20 = load <2 x double>, ptr %i.av, align 8, !tbaa !80
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 640
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cq, i64 656
  store <2 x double> %wide.load.20, ptr %i.ee, align 8, !tbaa !80
  store <2 x double> %wide.load67.20, ptr %i.ef, align 8, !tbaa !80
  %wide.load.21 = load <2 x double>, ptr %i.aw, align 8, !tbaa !80
  %wide.load67.21 = load <2 x double>, ptr %i.ax, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cq, i64 672
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 688
  store <2 x double> %wide.load.21, ptr %i.eg, align 8, !tbaa !80
  store <2 x double> %wide.load67.21, ptr %i.eh, align 8, !tbaa !80
  %wide.load.22 = load <2 x double>, ptr %i.ay, align 8, !tbaa !80
  %wide.load67.22 = load <2 x double>, ptr %i.az, align 8, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cq, i64 704
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 720
  store <2 x double> %wide.load.22, ptr %i.ei, align 8, !tbaa !80
  store <2 x double> %wide.load67.22, ptr %i.ej, align 8, !tbaa !80
  %wide.load.23 = load <2 x double>, ptr %i.ba, align 8, !tbaa !80
  %wide.load67.23 = load <2 x double>, ptr %i.bb, align 8, !tbaa !80
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 736
  %i.el = getelementptr inbounds nuw i8, ptr %i.cq, i64 752
  store <2 x double> %wide.load.23, ptr %i.ek, align 8, !tbaa !80
  store <2 x double> %wide.load67.23, ptr %i.el, align 8, !tbaa !80
  %wide.load.24 = load <2 x double>, ptr %i.bc, align 8, !tbaa !80
  %wide.load67.24 = load <2 x double>, ptr %i.bd, align 8, !tbaa !80
  %i.em = getelementptr inbounds nuw i8, ptr %i.cq, i64 768
  %i.en = getelementptr inbounds nuw i8, ptr %i.cq, i64 784
  store <2 x double> %wide.load.24, ptr %i.em, align 8, !tbaa !80
  store <2 x double> %wide.load67.24, ptr %i.en, align 8, !tbaa !80
  br label %.preheader.prol.preheader

.preheader.prol.preheader:                        ; preds = %.preheader.preheader, %vector.body
  %.138.ph = phi i64 [ 0, %.preheader.preheader ], [ 100, %vector.body ]
  br label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.prol, %.preheader.prol.preheader
  %.138.prol = phi i64 [ %i.er, %.preheader.prol ], [ %.138.ph, %.preheader.prol.preheader ] ; 3 uses
  %prol.iter101 = phi i64 [ %prol.iter101.next, %.preheader.prol ], [ 0, %.preheader.prol.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.138.prol
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !80
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.138.prol
  store double %i.ep, ptr %i.eq, align 8, !tbaa !80
  %i.er = add nuw nsw i64 %.138.prol, 1           ; 2 uses
  %prol.iter101.next = add i64 %prol.iter101, 1
  %prol.iter101.cmp.not = icmp eq i64 %prol.iter101, 0
  br i1 %prol.iter101.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !174

.preheader.prol.loopexit:                         ; preds = %.preheader.prol
  br i1 %diff.check, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.138 = phi i64 [ %i.fh, %.preheader ], [ %i.er, %.preheader.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.138
  %i.et = load double, ptr %i.es, align 8, !tbaa !80
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.138
  store double %i.et, ptr %i.eu, align 8, !tbaa !80
  %i.ev = add nuw nsw i64 %.138, 1                ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !80
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ev
  store double %i.ex, ptr %i.ey, align 8, !tbaa !80
  %i.ez = add nuw nsw i64 %.138, 2                ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !80
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ez
  store double %i.fb, ptr %i.fc, align 8, !tbaa !80
  %i.fd = add nuw nsw i64 %.138, 3                ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !80
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.fd
  store double %i.ff, ptr %i.fg, align 8, !tbaa !80
  %i.fh = add nuw nsw i64 %.138, 4                ; 2 uses
  %exitcond49.not.3 = icmp eq i64 %i.fh, 101
  br i1 %exitcond49.not.3, label %.unr-lcssa, label %.preheader, !llvm.loop !175

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %i.fi = add nuw i64 %.02839, 1                  ; 2 uses
end_hunk_2
