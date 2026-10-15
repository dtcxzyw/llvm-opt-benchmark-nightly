Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lab?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rgb_struct = type { double, double, double }
%struct.xyz_struct = type { double, double, double }
%struct.lab_struct = type { double, double, double }

@XYZEpsilon = local_unnamed_addr global double f0x3F822354D28F7CD6, align 8
@XYZKappa = local_unnamed_addr global double f0x408C3A5ED097B426, align 8
@Verbose = external local_unnamed_addr global i8, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"LAB color lightness range = %d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"size of lab gamut = %zu\0A\00", align 1
@lab_gamut_data_size = external local_unnamed_addr constant i64, align 8
@lab_gamut_data = external local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"#%02X%02X%02X\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @color_rgb_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rgb_struct) align 8 captures(none) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @color_xyz_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.xyz_struct) align 8 captures(none) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @color_lab_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.lab_struct) align 8 captures(none) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @RGB2XYZ(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.xyz_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.rgb_struct) align 8 captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  %i.b = fdiv double %i.a, 2.550000e+02           ; 3 uses
  %i.c = fcmp ogt double %i.b, 4.045000e-02
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fadd double %i.b, 5.500000e-02
  %i.e = fdiv double %i.d, 1.055000e+00
  %i.f = tail call double @pow(double noundef %i.e, double noundef 2.400000e+00) #18
  %i.g = fmul double %i.f, 1.000000e+02
  br label %PivotRgb.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fmul double %i.b, 1.000000e+02
  %i.i = fdiv double %i.h, 1.292000e+01
  br label %PivotRgb.exit

PivotRgb.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.g, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = fdiv double %i.k, 2.550000e+02           ; 3 uses
  %i.m = fcmp ogt double %i.l, 4.045000e-02
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %PivotRgb.exit
  %i.n = fadd double %i.l, 5.500000e-02
  %i.o = fdiv double %i.n, 1.055000e+00
  %i.p = tail call double @pow(double noundef %i.o, double noundef 2.400000e+00) #18
  %i.q = fmul double %i.p, 1.000000e+02
  br label %PivotRgb.exit10

bb.e:                                             ; preds = %PivotRgb.exit
  %i.r = fmul double %i.l, 1.000000e+02
  %i.s = fdiv double %i.r, 1.292000e+01
  br label %PivotRgb.exit10

PivotRgb.exit10:                                  ; preds = %bb.d, %bb.e
  %.0.i9 = phi double [ %i.q, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = fdiv double %i.u, 2.550000e+02           ; 3 uses
  %i.w = fcmp ogt double %i.v, 4.045000e-02
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %PivotRgb.exit10
  %i.x = fadd double %i.v, 5.500000e-02
  %i.y = fdiv double %i.x, 1.055000e+00
  %i.z = tail call double @pow(double noundef %i.y, double noundef 2.400000e+00) #18
  %i.aa = fmul double %i.z, 1.000000e+02
  br label %PivotRgb.exit12

bb.g:                                             ; preds = %PivotRgb.exit10
  %i.ab = fmul double %i.v, 1.000000e+02
  %i.ac = fdiv double %i.ab, 1.292000e+01
  br label %PivotRgb.exit12

PivotRgb.exit12:                                  ; preds = %bb.f, %bb.g
  %.0.i11 = phi double [ %i.aa, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %.0.i9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %i.ae, <double 3.576000e-01, double 7.152000e-01>
  %2 = insertelement <2 x double> poison, double %.0.i, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double 4.124000e-01, double 2.126000e-01>, <2 x double> %i.af)
  %i.ag = insertelement <2 x double> poison, double %.0.i11, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double 1.805000e-01, double 7.220000e-02>, <2 x double> %4)
  %5 = fmul double %.0.i9, 1.192000e-01
  %6 = tail call double @llvm.fmuladd.f64(double %.0.i, double 1.930000e-02, double %5)
  %7 = tail call double @llvm.fmuladd.f64(double %.0.i11, double 9.505000e-01, double %6)
  store <2 x double> %i.ai, ptr %0, align 8, !tbaa !19, !alias.scope !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %7, ptr %i.aj, align 8, !tbaa !14, !alias.scope !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @RGB2LAB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.lab_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.rgb_struct) align 8 captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.016.0.copyload = load double, ptr %1, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.417.0.copyload = load double, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.a = fdiv double %.sroa.016.0.copyload, 2.550000e+02 ; 3 uses
  %i.b = fcmp ogt double %i.a, 4.045000e-02
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fadd double %i.a, 5.500000e-02
  %i.d = fdiv double %i.c, 1.055000e+00
  %i.e = tail call double @pow(double noundef %i.d, double noundef 2.400000e+00) #18, !noalias !36
  %i.f = fmul double %i.e, 1.000000e+02
  br label %PivotRgb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = fmul double %i.a, 1.000000e+02
  %i.h = fdiv double %i.g, 1.292000e+01
  br label %PivotRgb.exit.i

PivotRgb.exit.i:                                  ; preds = %bb.c, %bb.b
  %.0.i.i = phi double [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = fdiv double %.sroa.417.0.copyload, 2.550000e+02 ; 3 uses
  %i.j = fcmp ogt double %i.i, 4.045000e-02
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %PivotRgb.exit.i
  %i.k = fadd double %i.i, 5.500000e-02
  %i.l = fdiv double %i.k, 1.055000e+00
  %i.m = tail call double @pow(double noundef %i.l, double noundef 2.400000e+00) #18, !noalias !36
  %i.n = fmul double %i.m, 1.000000e+02
  br label %PivotRgb.exit10.i

bb.e:                                             ; preds = %PivotRgb.exit.i
  %i.o = fmul double %i.i, 1.000000e+02
  %i.p = fdiv double %i.o, 1.292000e+01
  br label %PivotRgb.exit10.i

PivotRgb.exit10.i:                                ; preds = %bb.e, %bb.d
  %.0.i9.i = phi double [ %i.n, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = fdiv double %.sroa.5.0.copyload, 2.550000e+02 ; 3 uses
  %i.r = fcmp ogt double %i.q, 4.045000e-02
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %PivotRgb.exit10.i
  %i.s = fadd double %i.q, 5.500000e-02
  %i.t = fdiv double %i.s, 1.055000e+00
  %i.u = tail call double @pow(double noundef %i.t, double noundef 2.400000e+00) #18, !noalias !36
  %i.v = fmul double %i.u, 1.000000e+02
  br label %RGB2XYZ.exit

bb.g:                                             ; preds = %PivotRgb.exit10.i
  %i.w = fmul double %i.q, 1.000000e+02
  %i.x = fdiv double %i.w, 1.292000e+01
  br label %RGB2XYZ.exit

RGB2XYZ.exit:                                     ; preds = %bb.f, %bb.g
  %.0.i11.i = phi double [ %i.v, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %i.y = insertelement <2 x double> poison, double %.0.i9.i, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.z, <double 3.576000e-01, double 7.152000e-01>
  %i.ab = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 4.124000e-01, double 2.126000e-01>, <2 x double> %i.aa)
  %i.ae = insertelement <2 x double> poison, double %.0.i11.i, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> <double 1.805000e-01, double 7.220000e-02>, <2 x double> %i.ad) ; 2 uses
  %i.ah = fmul double %.0.i9.i, 1.192000e-01
  %i.ai = tail call double @llvm.fmuladd.f64(double %.0.i.i, double 1.930000e-02, double %i.ah)
  %i.aj = tail call double @llvm.fmuladd.f64(double %.0.i11.i, double 9.505000e-01, double %i.ai)
  %i.ak = extractelement <2 x double> %i.ag, i64 0
  %i.al = fdiv double %i.ak, f0x4057C3020C49BA5E  ; 3 uses
  %i.am = load double, ptr @XYZEpsilon, align 8, !tbaa !19 ; 3 uses
  %i.an = fcmp ogt double %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RGB2XYZ.exit
  %i.ao = tail call double @pow(double noundef %i.al, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit

bb.i:                                             ; preds = %RGB2XYZ.exit
  %i.ap = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.al, double 1.600000e+01)
  %i.ar = fdiv double %i.aq, 1.160000e+02
  br label %PivotXYZ.exit

PivotXYZ.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %i.ao, %bb.h ], [ %i.ar, %bb.i ]
  %i.as = extractelement <2 x double> %i.ag, i64 1
  %i.at = fdiv double %i.as, 1.000000e+02         ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.am
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PivotXYZ.exit
  %i.av = tail call double @pow(double noundef %i.at, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit10

bb.k:                                             ; preds = %PivotXYZ.exit
  %i.aw = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.at, double 1.600000e+01)
  %i.ay = fdiv double %i.ax, 1.160000e+02
  br label %PivotXYZ.exit10

PivotXYZ.exit10:                                  ; preds = %bb.j, %bb.k
  %.0.i9 = phi double [ %i.av, %bb.j ], [ %i.ay, %bb.k ] ; 3 uses
  %i.az = fdiv double %i.aj, 1.088830e+02         ; 3 uses
  %i.ba = fcmp ogt double %i.az, %i.am
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %PivotXYZ.exit10
  %i.bb = tail call double @pow(double noundef %i.az, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit12

bb.m:                                             ; preds = %PivotXYZ.exit10
  %i.bc = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.az, double 1.600000e+01)
  %i.be = fdiv double %i.bd, 1.160000e+02
  br label %PivotXYZ.exit12

PivotXYZ.exit12:                                  ; preds = %bb.l, %bb.m
  %.0.i11 = phi double [ %i.bb, %bb.l ], [ %i.be, %bb.m ]
  %i.bf = tail call double @llvm.fmuladd.f64(double %.0.i9, double 1.160000e+02, double -1.600000e+01) ; 2 uses
  %i.bg = fcmp olt double %i.bf, 0.000000e+00
  %i.bh = select i1 %i.bg, double 0.000000e+00, double %i.bf
  %i.bi = fsub double %.0.i, %.0.i9
  %i.bj = fmul double %i.bi, 5.000000e+02
  %i.bk = fsub double %.0.i9, %.0.i11
  %i.bl = fmul double %i.bk, 2.000000e+02
  store double %i.bh, ptr %0, align 8, !tbaa !16, !alias.scope !37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bj, ptr %i.bm, align 8, !tbaa !17, !alias.scope !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bl, ptr %i.bn, align 8, !tbaa !18, !alias.scope !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define void @LAB2RGB_real_01(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.lab_struct, align 16        ; 5 uses
  %2 = alloca %struct.rgb_struct, align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !19
  store <2 x double> %i.a, ptr %1, align 16, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !19
  store double %i.d, ptr %i.b, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @LAB2RGB(ptr dead_on_unwind nonnull writable sret(%struct.rgb_struct) align 8 %2, ptr noundef nonnull byval(%struct.lab_struct) align 8 %1)
  %i.e = load <2 x double>, ptr %2, align 16, !tbaa !19
  %i.f = fdiv <2 x double> %i.e, splat (double 2.550000e+02)
  store <2 x double> %i.f, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 16, !tbaa !12
  %i.i = fdiv double %i.h, 2.550000e+02
  store double %i.i, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define void @LAB2RGB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rgb_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.lab_struct) align 8 captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.b = fadd <2 x double> %i.a, <double 1.600000e+01, double -0.000000e+00>
  %i.c = fdiv <2 x double> %i.b, <double 1.160000e+02, double 5.000000e+02> ; 4 uses
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.c
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call double @pow(double noundef %i.d, double noundef 3.000000e+00) #18 ; 2 uses
  %i.h = load double, ptr @XYZEpsilon, align 8, !tbaa !19 ; 3 uses
  %i.i = fcmp ogt double %i.g, %i.h
  %i.j = fadd double %i.d, f0xBFC1A7B9611A7B96
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = fdiv <2 x double> %i.l, <double 2.000000e+02, double f0x401F25E353F7CED9> ; 2 uses
  %foldExtExtBinop31 = fsub <2 x double> %i.c, %i.m
  %i.n = extractelement <2 x double> %foldExtExtBinop31, i64 0 ; 2 uses
  %i.o = extractelement <2 x double> %i.m, i64 1
  %.012 = select i1 %i.i, double %i.g, double %i.o
end_hunk_0
