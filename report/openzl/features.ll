Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/features?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_CardinalityEstimate = type { i64, i64, i64, i64, i64 }

@FeatureGen_integer.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 241, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [70 x i8] c"Check `badAlloc' failed: Allocation: Failed to add features to vector\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/compress/selectors/ml/features.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FeatureGen_integer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"badAlloc\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\0A\09Failed to add features to vector\00", align 1
@FeatureGen_getFeatureGen.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 20, [4 x i8] zeroinitializer, ptr @.str.6, ptr @.str.1, ptr @.str.7, i32 253, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [90 x i8] c"Unconditional failure: Compression parameter invalid: Must use standard feature generator\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"FeatureGen_getFeatureGen\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Unconditional failure: Must use standard feature generator\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nbElts\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"eltWidth\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"cardinality\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"cardinality_upper\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"cardinality_lower\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"range_size\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"variance\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"stddev\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"skewness\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"kurtosis\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @FeatureGen_integer(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #11
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = tail call ptr @ZL_Data_rPtr(ptr noundef %0) #10
  %i.d = tail call i64 @ZL_Data_numElts(ptr noundef %0) #10
  %i.e = tail call i64 @ZL_Data_eltWidth(ptr noundef %0) #10
  %i.f = tail call fastcc zeroext i1 @calcIntegerFeatures(ptr noundef %1, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %i.d)
  br i1 %i.f, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @FeatureGen_integer.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.5) #10
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.08.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @calcIntegerFeatures(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_CardinalityEstimate, align 8 ; 6 uses
  %5 = alloca %struct.ZL_CardinalityEstimate, align 8 ; 6 uses
  %6 = alloca %struct.ZL_CardinalityEstimate, align 8 ; 6 uses
  %7 = alloca %struct.ZL_CardinalityEstimate, align 8 ; 6 uses
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.split, label %bb.tr

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %2, i1 true)
  switch i64 %i.c, label %bb.tr [
    i64 0, label %bb.b
    i64 1, label %bb.eh
    i64 2, label %bb.jl
    i64 3, label %bb.oo
  ]

bb.b:                                             ; preds = %.split
  %i.d = tail call { i64, i64 } @ZL_computeUnsignedRange(ptr noundef %1, i64 noundef %3, i64 noundef 1) #10 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = sub i64 %i.f, %i.e                       ; 2 uses
  %i.h = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 1)
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @ZL_estimateCardinality_fixed(ptr dead_on_unwind nonnull writable sret(%struct.ZL_CardinalityEstimate) align 8 %4, ptr noundef %1, i64 noundef %3, i64 noundef 1, i64 noundef %i.i) #10
  %i.j = call ptr @ZL_Histogram_create(i32 noundef 256) #10, !noalias !39 ; 4 uses
  call void @ZL_Histogram_build(ptr noundef %i.j, ptr noundef %1, i64 noundef %3, i64 noundef 1) #10, !noalias !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41, !noalias !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 6 uses
  %i.n = add i32 %i.l, 1                          ; 2 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 3 uses
  %xtraiter1867 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.o = icmp ult i32 %i.n, 4
  br i1 %i.o, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter1872 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.d

.unr-lcssa1866:                                   ; preds = %bb.d
  %lcmp.mod1869.not = icmp eq i64 %xtraiter1867, 0
  br i1 %lcmp.mod1869.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa1866, %bb.b
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.3, %.unr-lcssa1866 ]
  %.062.i.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.av, %.unr-lcssa1866 ]
  %lcmp.mod1871 = icmp ne i64 %xtraiter1867, 0
  call void @llvm.assume(i1 %lcmp.mod1871)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %.062.i.epil = phi double [ %.062.i.epil.init, %.epil.preheader ], [ %i.u, %bb.c ]
  %epil.iter1868 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1868.next, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.epil
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42, !noalias !39
  %i.r = trunc nuw i64 %indvars.iv.i.epil to i32
  %i.s = mul i32 %i.q, %i.r
  %i.t = uitofp i32 %i.s to double
  %i.u = fadd double %.062.i.epil, %i.t           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter1868.next = add i64 %epil.iter1868, 1 ; 2 uses
  %epil.iter1868.cmp.not = icmp eq i64 %epil.iter1868.next, %xtraiter1867
  br i1 %epil.iter1868.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !21

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa1866
  %.lcssa1788 = phi double [ %i.av, %.unr-lcssa1866 ], [ %i.u, %bb.c ]
  %i.v = uitofp i64 %3 to double                  ; 4 uses
  %i.w = fdiv double %.lcssa1788, %i.v            ; 2 uses
  %i.x = icmp ult i64 %3, 2
  br i1 %i.x, label %calcMoments_uint8.exit, label %.preheader.i

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 6 uses
  %.062.i = phi double [ 0.000000e+00, %.new ], [ %i.av, %bb.d ]
  %niter1873 = phi i64 [ 0, %.new ], [ %niter1873.next.3, %bb.d ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !42, !noalias !39
  %i.aa = trunc nuw i64 %indvars.iv.i to i32
  %i.ab = mul i32 %i.z, %i.aa
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = fadd double %.062.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !42, !noalias !39
  %i.ag = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ah = mul i32 %i.af, %i.ag
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fadd double %i.ad, %i.ai
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42, !noalias !39
  %i.am = trunc nuw i64 %indvars.iv.next.i.1 to i32
  %i.an = mul i32 %i.al, %i.am
  %i.ao = uitofp i32 %i.an to double
  %i.ap = fadd double %i.aj, %i.ao
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !42, !noalias !39
  %i.as = trunc nuw i64 %indvars.iv.next.i.2 to i32
  %i.at = mul i32 %i.ar, %i.as
  %i.au = uitofp i32 %i.at to double
  %i.av = fadd double %i.ap, %i.au                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter1873.next.3 = add i64 %niter1873, 4       ; 2 uses
  %niter1873.ncmp.3 = icmp eq i64 %niter1873.next.3, %unroll_iter1872
  br i1 %niter1873.ncmp.3, label %.unr-lcssa1866, label %bb.d, !llvm.loop !22

bb.e:                                             ; preds = %.preheader.i
  %i.aw = extractelement <2 x double> %i.ci, i64 0 ; 2 uses
  %i.ax = fdiv double %i.aw, %i.v
  %i.ay = call double @sqrt(double noundef %i.ax) #10, !noalias !39 ; 4 uses
  %i.az = add i64 %3, -1
  %i.ba = uitofp i64 %i.az to double
  %i.bb = fdiv double %i.aw, %i.ba
  %i.bc = call double @sqrt(double noundef %i.bb) #10, !noalias !39
  %i.bd = fmul double %i.ay, %i.ay
  %8 = fmul double %i.ay, %i.bd                   ; 2 uses
  %9 = fadd double %i.v, -1.000000e+00
  %i.be = insertelement <2 x double> poison, double %9, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %8, i64 1
  %i.bg = fdiv <2 x double> %i.ci, %i.bf          ; 2 uses
  %i.bh = fmul double %i.ay, %8
  %i.bi = fdiv double %i.ck, %i.bh
  %i.bj = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1
  %i.bl = insertelement <2 x double> poison, double %i.v, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv <2 x double> %i.bk, %i.bm
  %i.bo = fadd <2 x double> %i.bn, <double -0.000000e+00, double -3.000000e+00>
  %i.bp = extractelement <2 x double> %i.bg, i64 0
  %i.bq = fptrunc double %i.bp to float
  %i.br = fptrunc double %i.bc to float
  %i.bs = fptrunc <2 x double> %i.bo to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  br label %calcMoments_uint8.exit

.preheader.i:                                     ; preds = %.epilog-lcssa, %.preheader.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %.preheader.i ], [ 0, %.epilog-lcssa ] ; 3 uses
  %.05665.i = phi double [ %i.ck, %.preheader.i ], [ 0.000000e+00, %.epilog-lcssa ]
  %i.bv = phi <2 x double> [ %i.ci, %.preheader.i ], [ zeroinitializer, %.epilog-lcssa ]
  %i.bw = trunc nuw i64 %indvars.iv71.i to i32
  %i.bx = uitofp i32 %i.bw to double
  %i.by = fsub double %i.bx, %i.w                 ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv71.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !42, !noalias !39
  %i.cb = uitofp i32 %i.ca to double              ; 2 uses
  %i.cc = fmul double %i.by, %i.by                ; 2 uses
  %i.cd = fmul double %i.by, %i.cc                ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.ch, <2 x double> %i.bv) ; 3 uses
  %i.cj = fmul double %i.by, %i.cd
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double %i.cb, double %.05665.i) ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i
  br i1 %exitcond75.i, label %bb.e, label %.preheader.i, !llvm.loop !23

calcMoments_uint8.exit:                           ; preds = %.epilog-lcssa, %bb.e
  %.sroa.41222.0 = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %i.br, %bb.e ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %i.bq, %bb.e ]
  %.sroa.91223.0 = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %i.bt, %bb.e ]
  %.sroa.111224.0 = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %i.bu, %bb.e ]
  call void @ZL_Histogram_destroy(ptr noundef nonnull %i.j) #10, !noalias !39
  %i.cl = uitofp i64 %3 to float
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !47
  %i.co = uitofp i64 %i.cn to float
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !48
  %i.cr = uitofp i64 %i.cq to float
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !49
  %i.cu = uitofp i64 %i.ct to float
  %i.cv = uitofp i64 %i.g to float
  %i.cw = fptrunc double %i.w to float
  %i.cx = load i32, ptr %0, align 8, !tbaa !52    ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !53 ; 9 uses
  %.not.i = icmp ult i32 %i.cx, %i.cz
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %calcMoments_uint8.exit
  %i.da = icmp eq i32 %i.cz, 0                    ; 2 uses
  br i1 %i.da, label %GenericVector_nextCapacity.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = icmp ugt i32 %i.cz, 511
  br i1 %i.db, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dc = zext i32 %i.cz to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, %i.dc
  br label %GenericVector_nextCapacity.exit.i

bb.i:                                             ; preds = %bb.g
  %i.df = shl nuw nsw i32 %i.cz, 1
  %i.dg = zext nneg i32 %i.df to i64
  br label %GenericVector_nextCapacity.exit.i

GenericVector_nextCapacity.exit.i:                ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi i64 [ %i.dg, %bb.i ], [ %i.de, %bb.h ], [ 4, %bb.f ] ; 2 uses
  %i.dh = zext i32 %i.cz to i64                   ; 6 uses
  %i.di = icmp samesign ult i64 %.0.i.i, %i.dh
  %.phi.trans.insert.i.i = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !54
  %.pre.i.i = zext i32 %.val.pre.i.i to i64       ; 4 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %.pre.i.i)
  %.010.i.i = select i1 %i.di, i64 %.pre.i.i, i64 %spec.select.i.i ; 4 uses
  %i.dj = icmp eq i64 %.010.i.i, %i.dh
  br i1 %i.dj, label %GenericVector_pushBack.exit, label %bb.j

bb.j:                                             ; preds = %GenericVector_nextCapacity.exit.i
  %.not.i.i = icmp samesign ugt i64 %.010.i.i, %i.dh
  br i1 %.not.i.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  br i1 %i.da, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dk = icmp ugt i32 %i.cz, 511
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = lshr i64 %i.dh, 2
  %i.dm = add nuw nsw i64 %i.dl, %i.dh
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dn = shl nuw nsw i32 %i.cz, 1
  %i.do = zext nneg i32 %i.dn to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i = phi i64 [ %i.do, %bb.n ], [ %i.dm, %bb.m ], [ 4, %bb.k ] ; 2 uses
  %i.dp = icmp samesign ult i64 %.0.i.i.i, %i.dh
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %.0.i.i.i, i64 %.pre.i.i)
  %i.dq = call i64 @llvm.umax.i64(i64 %.010.i.i, i64 %spec.select.i.i.i)
  %spec.select.i18.i = select i1 %i.dp, i64 %.pre.i.i, i64 %i.dq ; 2 uses
  %i.dr = shl nuw nsw i64 %spec.select.i18.i, 4   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, null
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.dt, ptr noundef %i.dv, i64 noundef %i.dr) #10
  br label %GenericVector_reallocData.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.dx = call ptr @ZL_realloc(ptr noundef %i.dv, i64 noundef %i.dr) #10
  br label %GenericVector_reallocData.exit.i.i

GenericVector_reallocData.exit.i.i:               ; preds = %bb.q, %bb.p
  %.0.i28.i.i = phi ptr [ %i.dw, %bb.p ], [ %i.dx, %bb.q ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.0.i28.i.i, null
  br i1 %.not26.i.i, label %GenericVector_reallocData.exit._crit_edge.i.i, label %.thread21.i

GenericVector_reallocData.exit._crit_edge.i.i:    ; preds = %GenericVector_reallocData.exit.i.i
  %.pre.i19.i = load i32, ptr %i.cy, align 4, !tbaa !53 ; 2 uses
  %i.dy = zext i32 %.pre.i19.i to i64
  %.not23.i = icmp samesign ugt i64 %.010.i.i, %i.dy
  %.pre1506 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i, label %GenericVector_pushBack.exit, label %.critedge.i

.thread21.i:                                      ; preds = %GenericVector_reallocData.exit.i.i
  store ptr %.0.i28.i.i, ptr %i.du, align 8, !tbaa !56
  %i.dz = trunc nuw i64 %spec.select.i18.i to i32
  store i32 %i.dz, ptr %i.cy, align 4, !tbaa !53
  %.pre1505 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i

.critedge.i:                                      ; preds = %.thread21.i, %GenericVector_reallocData.exit._crit_edge.i.i, %bb.j, %calcMoments_uint8.exit
  %i.ea = phi i32 [ %.pre1505, %.thread21.i ], [ %.pre1506, %GenericVector_reallocData.exit._crit_edge.i.i ], [ %i.cx, %bb.j ], [ %i.cx, %calcMoments_uint8.exit ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.ed = zext i32 %i.ea to i64
  %i.ee = shl nuw nsw i64 %i.ed, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee ; 3 uses
  store ptr @.str.10, ptr %i.ef, align 1
  %.sroa.41219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store float %i.cl, ptr %.sroa.41219.0..sroa_idx, align 1
  %.sroa.51220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %.sroa.51220.0..sroa_idx, align 1
  %i.eg = load i32, ptr %0, align 8, !tbaa !52
  %i.eh = add i32 %i.eg, 1                        ; 2 uses
  store i32 %i.eh, ptr %0, align 8, !tbaa !52
  %.pr.pre = load i32, ptr %i.cy, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit

GenericVector_pushBack.exit:                      ; preds = %GenericVector_nextCapacity.exit.i, %.critedge.i, %GenericVector_reallocData.exit._crit_edge.i.i
  %i.ei = phi i32 [ %.pre1506, %GenericVector_reallocData.exit._crit_edge.i.i ], [ %i.cx, %GenericVector_nextCapacity.exit.i ], [ %i.eh, %.critedge.i ] ; 4 uses
  %i.ej = phi i32 [ %.pre.i19.i, %GenericVector_reallocData.exit._crit_edge.i.i ], [ %i.cz, %GenericVector_nextCapacity.exit.i ], [ %.pr.pre, %.critedge.i ] ; 9 uses
  %.1.i91 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i ], [ true, %GenericVector_nextCapacity.exit.i ], [ false, %.critedge.i ]
  %.not.i92 = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i92, label %.critedge.i101, label %bb.r

bb.r:                                             ; preds = %GenericVector_pushBack.exit
  %i.ek = icmp eq i32 %i.ej, 0                    ; 2 uses
  br i1 %i.ek, label %GenericVector_nextCapacity.exit.i93, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = icmp ugt i32 %i.ej, 511
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.em = zext i32 %i.ej to i64                   ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, %i.em
  br label %GenericVector_nextCapacity.exit.i93

bb.u:                                             ; preds = %bb.s
  %i.ep = shl nuw nsw i32 %i.ej, 1
  %i.eq = zext nneg i32 %i.ep to i64
  br label %GenericVector_nextCapacity.exit.i93

GenericVector_nextCapacity.exit.i93:              ; preds = %bb.u, %bb.t, %bb.r
end_hunk_0
