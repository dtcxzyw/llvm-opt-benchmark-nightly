Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/stepanov_abstraction?download=true
inline.NumInlined: 415
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@DV10MPe = dso_local local_unnamed_addr global %struct.PointerWrapper.10 { ptr getelementptr inbounds nuw (i8, ptr @V10DataMaster, i64 16000) }, align 8
@.str.32 = private unnamed_addr constant [30 x i8] c"insertion_sort double pointer\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"insertion_sort double pointer_class\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"insertion_sort DoubleValueWrapper pointer\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"insertion_sort DoubleValueWrapper pointer_class\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"insertion_sort DoubleValueWrapper10 pointer\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"insertion_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"quicksort double pointer\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"quicksort double pointer_class\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"quicksort DoubleValueWrapper pointer\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"quicksort DoubleValueWrapper pointer_class\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"quicksort DoubleValueWrapper10 pointer\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"quicksort DoubleValueWrapper10 pointer_class\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"heap_sort double pointer\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"heap_sort double pointer_class\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"heap_sort DoubleValueWrapper pointer\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"heap_sort DoubleValueWrapper pointer_class\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"heap_sort DoubleValueWrapper10 pointer\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"heap_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z13record_resultdPKc(double noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.b = icmp ne ptr %i.a, null
  %.pre = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.c = load i32, ptr @current_test, align 4     ; 2 uses
  %.not = icmp slt i32 %i.c, %.pre
  %or.cond = select i1 %i.b, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %.pre, 10                    ; 2 uses
  store i32 %i.d, ptr @allocated_results, align 4, !tbaa !4
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 4
  %i.g = tail call ptr @realloc(ptr noundef %i.a, i64 noundef %i.f) #13 ; 3 uses
  store ptr %i.g, ptr @results, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre2 = load i32, ptr @current_test, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.i) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %i.k = phi i32 [ %.pre2, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.g, %._crit_edge ], [ %i.a, %bb.a ]
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m ; 2 uses
  store double %0, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !15
  %i.p = add nsw i32 %i.k, 1
  store i32 %i.p, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9summarizePKciiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = sitofp i32 %2 to double
  %i.c = fmul nnan double %i.a, %i.b
  %i.d = fdiv double %i.c, 1.000000e+06
  %i.e = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr @results, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.042 = phi i32 [ 12, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #15
  %i.l = trunc i64 %i.k to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.042, i32 %i.l) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 12, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.m = add nsw i32 %.0.lcssa, -12
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.m, ptr noundef nonnull @.str.2) ; 0 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2) ; 0 uses
  %i.p = load i32, ptr @current_test, align 4, !tbaa !4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph45, label %._crit_edge50

.preheader39:                                     ; preds = %.lr.ph45
  %i.r = icmp sgt i32 %i.ah, 0
  br i1 %i.r, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader39
  %i.s = load ptr, ptr @results, align 8, !tbaa !8 ; 5 uses
  %wide.trip.count69 = zext nneg i32 %i.ah to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count69, 3       ; 3 uses
  %i.t = icmp ult i32 %i.ah, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph49.new

.lr.ph49.new:                                     ; preds = %.lr.ph49
  %unroll_iter = and i64 %wide.trip.count69, 2147483644
  br label %bb.c

.lr.ph45:                                         ; preds = %._crit_edge, %.lr.ph45
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.lr.ph45 ], [ 0, %._crit_edge ] ; 3 uses
  %i.u = load ptr, ptr @results, align 8, !tbaa !8 ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv63 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #15
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub i32 %.0.lcssa, %i.z
  %i.ab = load double, ptr %i.v, align 8, !tbaa !11 ; 3 uses
  %i.ac = fdiv double %i.d, %i.ab
  %i.ad = load double, ptr %i.u, align 8, !tbaa !11
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.af, i32 noundef %i.aa, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.x, double noundef %i.ab, double noundef %i.ac, double noundef %i.ae) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.ah = load i32, ptr @current_test, align 4, !tbaa !4 ; 4 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next64, %i.ai
  br i1 %i.aj, label %.lr.ph45, label %.preheader39, !llvm.loop !18

bb.c:                                             ; preds = %bb.c, %.lr.ph49.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph49.new ], [ %indvars.iv.next67.3, %bb.c ] ; 5 uses
  %.03448 = phi double [ 0.000000e+00, %.lr.ph49.new ], [ %i.ay, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph49.new ], [ %niter.next.3, %bb.c ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv66
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = fadd double %.03448, %i.al
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aq = fadd double %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv66
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = fadd double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !11
  %i.ay = fadd double %i.au, %i.ax                ; 3 uses
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge50.loopexit.unr-lcssa, label %bb.c, !llvm.loop !19

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge50, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next67.3, %._crit_edge50.loopexit.unr-lcssa ]
  %.03448.epil.init = phi double [ 0.000000e+00, %.lr.ph49 ], [ %i.ay, %._crit_edge50.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv66.epil = phi i64 [ %indvars.iv66.epil.init, %.epil.preheader ], [ %indvars.iv.next67.epil, %bb.d ] ; 2 uses
  %.03448.epil = phi double [ %.03448.epil.init, %.epil.preheader ], [ %i.bb, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv66.epil
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = fadd double %.03448.epil, %i.ba         ; 2 uses
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge50, label %bb.d, !llvm.loop !20

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit.unr-lcssa, %bb.d, %._crit_edge, %.preheader39
  %.034.lcssa = phi double [ 0.000000e+00, %.preheader39 ], [ 0.000000e+00, %._crit_edge ], [ %i.ay, %._crit_edge50.loopexit.unr-lcssa ], [ %i.bb, %bb.d ]
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %0, double noundef %.034.lcssa) ; 0 uses
  %i.bd = load i32, ptr @current_test, align 4, !tbaa !4 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  %i.bf = icmp ne i32 %4, 0
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %.lr.ph54, label %bb.f

.lr.ph54:                                         ; preds = %._crit_edge50
  %i.bg = load ptr, ptr @results, align 8, !tbaa !8 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !11
  %wide.trip.count68 = zext nneg i32 %i.bd to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %bb.e
  %indvars.iv71 = phi i64 [ 1, %.lr.ph54 ], [ %indvars.iv.next72, %bb.e ] ; 2 uses
  %.03353 = phi double [ 0.000000e+00, %.lr.ph54 ], [ %i.bm, %bb.e ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv71
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = fdiv double %i.bj, %i.bh
  %i.bl = tail call double @log(double noundef %i.bk) #16, !tbaa !4
  %i.bm = fadd double %.03353, %i.bl              ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge55, label %bb.e, !llvm.loop !22

._crit_edge55:                                    ; preds = %bb.e
  %i.bn = add nsw i32 %i.bd, -1
  %5 = uitofp nneg i32 %i.bn to double
  %i.bo = fdiv double %i.bm, %5
  %i.bp = tail call double @exp(double noundef %i.bo) #16, !tbaa !4
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %0, double noundef %i.bp) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge55, %._crit_edge50
  store i32 0, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z17summarize_simplefP8_IO_FILEPKc(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @results, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.029 = phi i32 [ 12, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #15
  %i.h = trunc i64 %i.g to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.029, i32 %i.h) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 12, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.i = add nsw i32 %.0.lcssa, -12
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.i, ptr noundef nonnull @.str.2) #16 ; 0 uses
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %.0.lcssa, ptr noundef nonnull @.str.2) #16 ; 0 uses
  %i.l = load i32, ptr @current_test, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph32, label %._crit_edge37

.preheader:                                       ; preds = %.lr.ph32
  %i.n = icmp sgt i32 %i.aa, 0
  br i1 %i.n, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %i.o = load ptr, ptr @results, align 8, !tbaa !8 ; 5 uses
  %wide.trip.count48 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count48, 3       ; 3 uses
  %i.p = icmp ult i32 %i.aa, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %wide.trip.count48, 2147483644
  br label %bb.c

.lr.ph32:                                         ; preds = %._crit_edge, %.lr.ph32
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph32 ], [ 0, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr @results, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv42 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #15
  %i.v = trunc i64 %i.u to i32
  %i.w = sub i32 %.0.lcssa, %i.v
  %i.x = load double, ptr %i.r, align 8, !tbaa !11
  %i.y = trunc nuw nsw i64 %indvars.iv42 to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.y, i32 noundef %i.w, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.t, double noundef %i.x) #16 ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.aa = load i32, ptr @current_test, align 4, !tbaa !4 ; 4 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next43, %i.ab
  br i1 %i.ac, label %.lr.ph32, label %.preheader, !llvm.loop !24

bb.c:                                             ; preds = %bb.c, %.lr.ph36.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next46.3, %bb.c ] ; 5 uses
  %.02435 = phi double [ 0.000000e+00, %.lr.ph36.new ], [ %i.ar, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.3, %bb.c ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = fadd double %.02435, %i.ae
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = fadd double %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !11
  %i.an = fadd double %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !11
  %i.ar = fadd double %i.an, %i.aq                ; 3 uses
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.loopexit.unr-lcssa, label %bb.c, !llvm.loop !25

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next46.3, %._crit_edge37.loopexit.unr-lcssa ]
  %.02435.epil.init = phi double [ 0.000000e+00, %.lr.ph36 ], [ %i.ar, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv45.epil = phi i64 [ %indvars.iv45.epil.init, %.epil.preheader ], [ %indvars.iv.next46.epil, %bb.d ] ; 2 uses
  %.02435.epil = phi double [ %.02435.epil.init, %.epil.preheader ], [ %i.au, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv45.epil
  %i.at = load double, ptr %i.as, align 8, !tbaa !11
  %i.au = fadd double %.02435.epil, %i.at         ; 2 uses
  %indvars.iv.next46.epil = add nuw nsw i64 %indvars.iv45.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge37, label %bb.d, !llvm.loop !26

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit.unr-lcssa, %bb.d, %._crit_edge, %.preheader
  %.024.lcssa = phi double [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %._crit_edge ], [ %i.ar, %._crit_edge37.loopexit.unr-lcssa ], [ %i.au, %bb.d ]
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, double noundef %.024.lcssa) #16 ; 0 uses
  store i32 0, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z11start_timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_Z5timerv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @clock() #16               ; 2 uses
  store i64 %i.a, ptr @end_time, align 8, !tbaa !27
  %i.b = load i64, ptr @start_time, align 8, !tbaa !27
  %i.c = sub nsw i64 %i.a, %i.b
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+06
  ret double %i.e
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #16, !inline_history !30
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @iterations, align 4, !tbaa !4
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call double @strtod(ptr noundef nonnull captures(none) %i.g, ptr noundef null) #16, !inline_history !31
  store double %i.h, ptr @init_value, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.i = load double, ptr @init_value, align 8, !tbaa !32
  %i.j = fptosi double %i.i to i32
  %i.k = add nsw i32 %i.j, 123
  tail call void @srand(i32 noundef %i.k) #16
  %i.l = load ptr, ptr @dpb, align 8, !tbaa !33   ; 6 uses
  %i.m = load ptr, ptr @dpe, align 8, !tbaa !33   ; 4 uses
  %i.n = load double, ptr @init_value, align 8, !tbaa !32 ; 3 uses
  %.not4.i = icmp eq ptr %i.l, %i.m               ; 2 uses
  br i1 %.not4.i, label %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread
  %i.o = ptrtoaddr ptr %i.m to i64
end_hunk_0
