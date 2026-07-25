inline.NumInlined: 195
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$_Z4testI14double_pointerdEvT_S1_T0_ = comdat any

$_Z4testI14Double_pointer6DoubleEvT_S2_T0_ = comdat any

$_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_ = comdat any

@iterations = dso_local local_unnamed_addr global i32 250000, align 4
@current_test = dso_local local_unnamed_addr global i32 0, align 4
@result_times = dso_local local_unnamed_addr global [20 x double] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [43 x i8] c"%2i       %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"mean:    %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\0ATotal absolute time: %.2f sec\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AAbstraction Penalty: %.2f\0A\0A\00", align 1
@start_time = dso_local local_unnamed_addr global i64 0, align 8
@end_time = dso_local local_unnamed_addr global i64 0, align 8
@data = dso_local global [2000 x double] zeroinitializer, align 16
@Data = dso_local global [2000 x %struct.Double] zeroinitializer, align 16
@d = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@D = dso_local local_unnamed_addr global %struct.Double zeroinitializer, align 8
@dpb = dso_local local_unnamed_addr global ptr @data, align 8
@dpe = dso_local local_unnamed_addr global ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000), align 8
@Dpb = dso_local local_unnamed_addr global ptr @Data, align 8
@Dpe = dso_local local_unnamed_addr global ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000), align 8
@dPb = dso_local local_unnamed_addr global %struct.double_pointer { ptr @data }, align 8
@dPe = dso_local local_unnamed_addr global %struct.double_pointer { ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000) }, align 8
@DPb = dso_local local_unnamed_addr global %struct.Double_pointer { ptr @Data }, align 8
@DPe = dso_local local_unnamed_addr global %struct.Double_pointer { ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000) }, align 8
@rdpb = dso_local local_unnamed_addr global %struct.reverse_iterator { ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000) }, align 8
@rdpe = dso_local local_unnamed_addr global %struct.reverse_iterator { ptr @data }, align 8
@rDpb = dso_local local_unnamed_addr global %struct.reverse_iterator.0 { ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000) }, align 8
@rDpe = dso_local local_unnamed_addr global %struct.reverse_iterator.0 { ptr @Data }, align 8
@rdPb = dso_local local_unnamed_addr global %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000) } }, align 8
@rdPe = dso_local local_unnamed_addr global %struct.reverse_iterator.1 { %struct.double_pointer { ptr @data } }, align 8
@rDPb = dso_local local_unnamed_addr global %struct.reverse_iterator.2 { %struct.Double_pointer { ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000) } }, align 8
@rDPe = dso_local local_unnamed_addr global %struct.reverse_iterator.2 { %struct.Double_pointer { ptr @Data } }, align 8
@rrdpb = dso_local local_unnamed_addr global %struct.reverse_iterator.3 { %struct.reverse_iterator { ptr @data } }, align 8
@rrdpe = dso_local local_unnamed_addr global %struct.reverse_iterator.3 { %struct.reverse_iterator { ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000) } }, align 8
@rrDpb = dso_local local_unnamed_addr global %struct.reverse_iterator.4 { %struct.reverse_iterator.0 { ptr @Data } }, align 8
@rrDpe = dso_local local_unnamed_addr global %struct.reverse_iterator.4 { %struct.reverse_iterator.0 { ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000) } }, align 8
@rrdPb = dso_local local_unnamed_addr global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr @data } } }, align 8
@rrdPe = dso_local local_unnamed_addr global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds nuw (i8, ptr @data, i64 16000) } } }, align 8
@rrDPb = dso_local local_unnamed_addr global %struct.reverse_iterator.6 { %struct.reverse_iterator.2 { %struct.Double_pointer { ptr @Data } } }, align 8
@rrDPe = dso_local local_unnamed_addr global %struct.reverse_iterator.6 { %struct.reverse_iterator.2 { %struct.Double_pointer { ptr getelementptr inbounds nuw (i8, ptr @Data, i64 16000) } } }, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@str = private unnamed_addr constant [48 x i8] c"\0Atest      absolute   additions      ratio with\00", align 1
@str.1 = private unnamed_addr constant [43 x i8] c"number    time       per second     test0\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9summarizev() local_unnamed_addr #0 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = load i32, ptr @iterations, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to double
  %i.c = fmul nnan double %i.b, 2.000000e+03
  %i.d = fdiv double %i.c, 1.000000e+06           ; 2 uses
  %i.e = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph
  %i.g = icmp sgt i32 %i.s, 0
  br i1 %i.g, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.h = load double, ptr @result_times, align 16, !tbaa !8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @result_times, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !8 ; 3 uses
  %i.k = fmul double %i.j, f0x3E7AD7F29ABCAF48
  %i.l = fdiv double %i.d, %i.j
  %i.m = fmul double %i.l, f0x3E7AD7F29ABCAF48
  %i.n = load double, ptr @result_times, align 16, !tbaa !8
  %i.o = fdiv double %i.j, %i.n
  %i.p = fmul double %i.o, f0x3E7AD7F29ABCAF48
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.q, double noundef %i.k, double noundef %i.m, double noundef %i.p) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr @current_test, align 4, !tbaa !4 ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %.preheader, !llvm.loop !10

bb.b:                                             ; preds = %.lr.ph34, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %i.v = phi <4 x double> [ zeroinitializer, %.lr.ph34 ], [ %i.ah, %bb.b ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @result_times, i64 %indvars.iv45
  %i.x = load double, ptr %i.w, align 8, !tbaa !8 ; 4 uses
  %i.y = tail call double @log(double noundef %i.x) #9, !tbaa !4
  %i.z = fdiv double %i.d, %i.x
  %i.aa = tail call double @log(double noundef %i.z) #9, !tbaa !4
  %i.ab = fdiv double %i.x, %i.h
  %i.ac = tail call double @log(double noundef %i.ab) #9, !tbaa !4
  %i.ad = insertelement <4 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 1
  %i.af = insertelement <4 x double> %i.ae, double %i.x, i64 2
  %i.ag = insertelement <4 x double> %i.af, double %i.y, i64 3
  %i.ah = fadd <4 x double> %i.v, %i.ag           ; 5 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.ai = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next46, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.al = extractelement <4 x double> %i.ah, i64 2
  %i.am = fmul double %i.al, f0x3E7AD7F29ABCAF48
  %i.an = extractelement <4 x double> %i.ah, i64 0
  %i.ao = extractelement <4 x double> %i.ah, i64 1
  %i.ap = extractelement <4 x double> %i.ah, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader
  %.024.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ap, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.023.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.am, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.022.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ao, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ]
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.an, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.lcssa = phi i32 [ %i.s, %.preheader ], [ %i.ai, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  %i.aq = sitofp i32 %.lcssa to double
  %i.ar = fdiv double %.024.lcssa, %i.aq
  %i.as = tail call double @exp(double noundef %i.ar) #9, !tbaa !4
  %i.at = fmul double %i.as, f0x3E7AD7F29ABCAF48
  %i.au = load i32, ptr @current_test, align 4, !tbaa !4
  %i.av = sitofp i32 %i.au to double
  %i.aw = fdiv double %.022.lcssa, %i.av
  %i.ax = tail call double @exp(double noundef %i.aw) #9, !tbaa !4
  %i.ay = fmul double %i.ax, f0x3E7AD7F29ABCAF48
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fdiv double %.0.lcssa, %i.ba
  %i.bc = tail call double @exp(double noundef %i.bb) #9, !tbaa !4
  %i.bd = fmul double %i.bc, f0x3E7AD7F29ABCAF48
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.at, double noundef %i.ay, double noundef %i.bd) ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %.023.lcssa) ; 0 uses
  %i.bg = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fdiv double %.0.lcssa, %i.bh
  %i.bj = tail call double @exp(double noundef %i.bi) #9, !tbaa !4
  %i.bk = fmul double %i.bj, f0x3E7AD7F29ABCAF48
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.bk) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z5test0PdS_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @clock() #9
  store i64 %i.a, ptr @start_time, align 8, !tbaa !13
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge15

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.i = icmp ult i64 %i.g, 8
  %unroll_iter = and i64 %i.g, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_Z5checkd.exit.us
  %i.j = phi i32 [ %5, %_Z5checkd.exit.us ], [ %i.b, %.preheader.us.preheader ]
  %.01014.us = phi i32 [ %6, %_Z5checkd.exit.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.i, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader.us.new ], [ 0, %.preheader.us ] ; 9 uses
  %.0912.us = phi double [ %i.ao, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter = phi i64 [ %niter.next.7, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = fadd double %.0912.us, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !8
  %i.q = fadd double %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !8
  %i.u = fadd double %i.q, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = fadd double %i.u, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ac = fadd double %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ag = fadd double %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8
  %i.ak = fadd double %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !8
  %i.ao = fadd double %i.ak, %i.an                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !15

2:                                                ; preds = %._crit_edge.us
  %3 = load i32, ptr @current_test, align 4, !tbaa !4
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %3) ; 0 uses
  %.pre = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z5checkd.exit.us

_Z5checkd.exit.us:                                ; preds = %2, %._crit_edge.us
  %5 = phi i32 [ %.pre, %2 ], [ %i.j, %._crit_edge.us ] ; 2 uses
  %6 = add nuw nsw i32 %.01014.us, 1              ; 2 uses
  %7 = icmp slt i32 %6, %5
  br i1 %7, label %.preheader.us, label %._crit_edge15, !llvm.loop !16

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.7, %._crit_edge.us.unr-lcssa ]
  %.0912.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ao, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.0912.us.epil = phi double [ %.0912.us.epil.init, %.epil.preheader ], [ %i.ar, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = fadd double %.0912.us.epil, %i.aq       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ao, %._crit_edge.us.unr-lcssa ], [ %i.ar, %bb.b ]
  %i.as = fcmp une double %.lcssa, 6.000000e+03
  br i1 %i.as, label %2, label %_Z5checkd.exit.us

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01014 = phi i32 [ %i.av, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.at = load i32, ptr @current_test, align 4, !tbaa !4
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.at) ; 0 uses
  %i.av = add nuw nsw i32 %.01014, 1              ; 2 uses
  %i.aw = load i32, ptr @iterations, align 4, !tbaa !4
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %.preheader, label %._crit_edge15, !llvm.loop !16

._crit_edge15:                                    ; preds = %.preheader, %_Z5checkd.exit.us, %bb.a
  %i.ay = tail call i64 @clock() #9               ; 2 uses
  store i64 %i.ay, ptr @end_time, align 8, !tbaa !13
  %i.az = load i64, ptr @start_time, align 8, !tbaa !13
  %i.ba = sub nsw i64 %i.ay, %i.az
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = fadd double %i.bc, f0x3E80000000000000
  %i.be = load i32, ptr @current_test, align 4, !tbaa !4 ; 2 uses
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr @current_test, align 4, !tbaa !4
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr @result_times, i64 %i.bg
  store double %i.bd, ptr %i.bh, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #9, !inline_history !22
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr @iterations, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr @dpb, align 8, !tbaa !23   ; 6 uses
  %i.g = load ptr, ptr @dpe, align 8, !tbaa !23   ; 4 uses
  %.not4.i = icmp eq ptr %i.f, %i.g
  br i1 %.not4.i, label %_Z4fillIPddEvT_S1_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = ptrtoaddr ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = add i64 %i.j, -8                         ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %i.f, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double 3.000000e+00), ptr %next.gep, align 8, !tbaa !8
  store <2 x double> splat (double 3.000000e+00), ptr %i.q, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_Z4fillIPddEvT_S1_T0_.exit, label %.lr.ph.i.preheader44

.lr.ph.i.preheader44:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader44, %.lr.ph.i
  %.05.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader44 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  store double 3.000000e+00, ptr %.05.i, align 8, !tbaa !8
  %.not.i = icmp eq ptr %i.s, %i.g
  br i1 %.not.i, label %_Z4fillIPddEvT_S1_T0_.exit, label %.lr.ph.i, !llvm.loop !28

_Z4fillIPddEvT_S1_T0_.exit:                       ; preds = %.lr.ph.i, %middle.block, %bb.c
  %i.t = load ptr, ptr @Dpb, align 8, !tbaa !29   ; 5 uses
  %i.u = load ptr, ptr @Dpe, align 8, !tbaa !29   ; 3 uses
  %.not3.i = icmp eq ptr %i.t, %i.u
  br i1 %.not3.i, label %_Z4fillIP6DoubleS0_EvT_S2_T0_.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_Z4fillIPddEvT_S1_T0_.exit
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = ptrtoaddr ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.y, 24
  br i1 %min.iters.check32, label %.lr.ph.i26.preheader43, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.i26.preheader
  %n.vec35 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.ab = shl i64 %n.vec35, 3
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next39, %vector.body36 ] ; 2 uses
  %i.ad = shl i64 %index37, 3
  %next.gep38 = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x double> splat (double 3.000000e+00), ptr %next.gep38, align 8, !tbaa !8
  store <2 x double> splat (double 3.000000e+00), ptr %i.ae, align 8, !tbaa !8
  %index.next39 = add nuw i64 %index37, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.af, label %middle.block40, label %vector.body36, !llvm.loop !31

middle.block40:                                   ; preds = %vector.body36
  %cmp.n41 = icmp eq i64 %i.aa, %n.vec35
  br i1 %cmp.n41, label %_Z4fillIP6DoubleS0_EvT_S2_T0_.exit, label %.lr.ph.i26.preheader43

.lr.ph.i26.preheader43:                           ; preds = %.lr.ph.i26.preheader, %middle.block40
  %.04.i.ph = phi ptr [ %i.t, %.lr.ph.i26.preheader ], [ %i.ac, %middle.block40 ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader43, %.lr.ph.i26
  %.04.i = phi ptr [ %i.ag, %.lr.ph.i26 ], [ %.04.i.ph, %.lr.ph.i26.preheader43 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  store double 3.000000e+00, ptr %.04.i, align 8, !tbaa !8
  %.not.i27 = icmp eq ptr %i.ag, %i.u
  br i1 %.not.i27, label %_Z4fillIP6DoubleS0_EvT_S2_T0_.exit, label %.lr.ph.i26, !llvm.loop !32

_Z4fillIP6DoubleS0_EvT_S2_T0_.exit:               ; preds = %.lr.ph.i26, %middle.block40, %_Z4fillIPddEvT_S1_T0_.exit
  tail call void @_Z5test0PdS_(ptr noundef %i.f, ptr noundef %i.g)
  %i.ah = load ptr, ptr @dpb, align 8, !tbaa !23
  %i.ai = load ptr, ptr @dpe, align 8, !tbaa !23
  %i.aj = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testIPddEvT_S1_T0_(ptr noundef %i.ah, ptr noundef %i.ai, double noundef %i.aj)
  %i.ak = load ptr, ptr @Dpb, align 8, !tbaa !29
  %i.al = load ptr, ptr @Dpe, align 8, !tbaa !29
  %.sroa.025.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testIP6DoubleS0_EvT_S2_T0_(ptr noundef %i.ak, ptr noundef %i.al, double %.sroa.025.0.copyload)
  %.sroa.024.0.copyload = load ptr, ptr @dPb, align 8, !tbaa !23
  %.sroa.023.0.copyload = load ptr, ptr @dPe, align 8, !tbaa !23
  %i.am = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testI14double_pointerdEvT_S1_T0_(ptr %.sroa.024.0.copyload, ptr %.sroa.023.0.copyload, double noundef %i.am)
  %.sroa.022.0.copyload = load ptr, ptr @DPb, align 8, !tbaa !29
  %.sroa.021.0.copyload = load ptr, ptr @DPe, align 8, !tbaa !29
  %.sroa.020.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testI14Double_pointer6DoubleEvT_S2_T0_(ptr %.sroa.022.0.copyload, ptr %.sroa.021.0.copyload, double %.sroa.020.0.copyload)
  %.sroa.019.0.copyload = load ptr, ptr @rdpb, align 8, !tbaa !23
  %.sroa.018.0.copyload = load ptr, ptr @rdpe, align 8, !tbaa !23
  %i.an = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_(ptr %.sroa.019.0.copyload, ptr %.sroa.018.0.copyload, double noundef %i.an)
  %.sroa.017.0.copyload = load ptr, ptr @rDpb, align 8, !tbaa !29
  %.sroa.016.0.copyload = load ptr, ptr @rDpe, align 8, !tbaa !29
  %.sroa.015.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_(ptr %.sroa.017.0.copyload, ptr %.sroa.016.0.copyload, double %.sroa.015.0.copyload)
  %.sroa.014.0.copyload = load ptr, ptr @rdPb, align 8, !tbaa !23
  %.sroa.013.0.copyload = load ptr, ptr @rdPe, align 8, !tbaa !23
  %i.ao = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_(ptr %.sroa.014.0.copyload, ptr %.sroa.013.0.copyload, double noundef %i.ao)
  %.sroa.012.0.copyload = load ptr, ptr @rDPb, align 8, !tbaa !29
  %.sroa.011.0.copyload = load ptr, ptr @rDPe, align 8, !tbaa !29
  %.sroa.010.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_(ptr %.sroa.012.0.copyload, ptr %.sroa.011.0.copyload, double %.sroa.010.0.copyload)
  %.sroa.09.0.copyload = load ptr, ptr @rrdpb, align 8, !tbaa !23
  %.sroa.08.0.copyload = load ptr, ptr @rrdpe, align 8, !tbaa !23
  %i.ap = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_(ptr %.sroa.09.0.copyload, ptr %.sroa.08.0.copyload, double noundef %i.ap)
  %.sroa.07.0.copyload = load ptr, ptr @rrDpb, align 8, !tbaa !29
  %.sroa.06.0.copyload = load ptr, ptr @rrDpe, align 8, !tbaa !29
  %.sroa.05.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_(ptr %.sroa.07.0.copyload, ptr %.sroa.06.0.copyload, double %.sroa.05.0.copyload)
  %.sroa.04.0.copyload = load ptr, ptr @rrdPb, align 8, !tbaa !23
  %.sroa.03.0.copyload = load ptr, ptr @rrdPe, align 8, !tbaa !23
  %i.aq = load double, ptr @d, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_(ptr %.sroa.04.0.copyload, ptr %.sroa.03.0.copyload, double noundef %i.aq)
  %.sroa.02.0.copyload = load ptr, ptr @rrDPb, align 8, !tbaa !29
  %.sroa.01.0.copyload = load ptr, ptr @rrDPe, align 8, !tbaa !29
  %.sroa.0.0.copyload = load double, ptr @D, align 8, !tbaa !8
  tail call void @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_(ptr %.sroa.02.0.copyload, ptr %.sroa.01.0.copyload, double %.sroa.0.0.copyload)
  tail call void @_Z9summarizev()
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z4testIPddEvT_S1_T0_(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call i64 @clock() #9
  store i64 %i.a, ptr @start_time, align 8, !tbaa !13
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not3.i = icmp eq ptr %0, %1
  br i1 %.not3.i, label %.lr.ph.split.us, label %.lr.ph.i.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = fcmp une double %2, 6.000000e+03
  br i1 %i.d, label %_Z10accumulateIPddET0_T_S2_S1_.exit.us, label %._crit_edge

_Z10accumulateIPddET0_T_S2_S1_.exit.us:           ; preds = %.lr.ph.split.us, %_Z10accumulateIPddET0_T_S2_S1_.exit.us
end_hunk_0
