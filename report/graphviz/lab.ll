Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lab?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
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
  %i.ag = fmul double %.0.i9, 1.192000e-01
  %i.ah = tail call double @llvm.fmuladd.f64(double %.0.i, double 1.930000e-02, double %i.ag)
  %i.ai = tail call double @llvm.fmuladd.f64(double %.0.i11, double 9.505000e-01, double %i.ah)
  %i.aj = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> <double 4.124000e-01, double 2.126000e-01>, <2 x double> %i.af)
  %i.am = insertelement <2 x double> poison, double %.0.i11, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> <double 1.805000e-01, double 7.220000e-02>, <2 x double> %i.al)
  store <2 x double> %i.ao, ptr %0, align 8, !tbaa !19, !alias.scope !31
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ai, ptr %i.ap, align 8, !tbaa !14, !alias.scope !31
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
  %2 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double 1.805000e-01, double 7.220000e-02>, <2 x double> %i.ad) ; 2 uses
  %4 = fmul double %.0.i9.i, 1.192000e-01
  %5 = tail call double @llvm.fmuladd.f64(double %.0.i.i, double 1.930000e-02, double %4)
  %6 = tail call double @llvm.fmuladd.f64(double %.0.i11.i, double 9.505000e-01, double %5)
  %7 = extractelement <2 x double> %3, i64 0
  %i.af = fdiv double %7, f0x4057C3020C49BA5E     ; 3 uses
  %i.ag = load double, ptr @XYZEpsilon, align 8, !tbaa !19 ; 3 uses
  %i.ah = fcmp ogt double %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RGB2XYZ.exit
  %i.ai = tail call double @pow(double noundef %i.af, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit

bb.i:                                             ; preds = %RGB2XYZ.exit
  %i.aj = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.af, double 1.600000e+01)
  %i.al = fdiv double %i.ak, 1.160000e+02
  br label %PivotXYZ.exit

PivotXYZ.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i = phi double [ %i.ai, %bb.h ], [ %i.al, %bb.i ]
  %i.am = extractelement <2 x double> %3, i64 1
  %i.an = fdiv double %i.am, 1.000000e+02         ; 3 uses
  %i.ao = fcmp ogt double %i.an, %i.ag
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %PivotXYZ.exit
  %i.ap = tail call double @pow(double noundef %i.an, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit10

bb.k:                                             ; preds = %PivotXYZ.exit
  %i.aq = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.an, double 1.600000e+01)
  %i.as = fdiv double %i.ar, 1.160000e+02
  br label %PivotXYZ.exit10

PivotXYZ.exit10:                                  ; preds = %bb.j, %bb.k
  %.0.i9 = phi double [ %i.ap, %bb.j ], [ %i.as, %bb.k ] ; 3 uses
  %i.at = fdiv double %6, 1.088830e+02            ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.ag
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %PivotXYZ.exit10
  %i.av = tail call double @pow(double noundef %i.at, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit12

bb.m:                                             ; preds = %PivotXYZ.exit10
  %i.aw = load double, ptr @XYZKappa, align 8, !tbaa !19
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.at, double 1.600000e+01)
  %i.ay = fdiv double %i.ax, 1.160000e+02
  br label %PivotXYZ.exit12

PivotXYZ.exit12:                                  ; preds = %bb.l, %bb.m
  %.0.i11 = phi double [ %i.av, %bb.l ], [ %i.ay, %bb.m ]
  %i.az = tail call double @llvm.fmuladd.f64(double %.0.i9, double 1.160000e+02, double -1.600000e+01) ; 2 uses
  %i.ba = fcmp olt double %i.az, 0.000000e+00
  %i.bb = select i1 %i.ba, double 0.000000e+00, double %i.az
  %i.bc = fsub double %.0.i, %.0.i9
  %i.bd = fmul double %i.bc, 5.000000e+02
  %i.be = fsub double %.0.i9, %.0.i11
  %i.bf = fmul double %i.be, 2.000000e+02
  store double %i.bb, ptr %0, align 8, !tbaa !16, !alias.scope !37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bd, ptr %i.bg, align 8, !tbaa !17, !alias.scope !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bf, ptr %i.bh, align 8, !tbaa !18, !alias.scope !37
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
  %i.p = load double, ptr @XYZKappa, align 8, !tbaa !19 ; 2 uses
  %i.q = fmul double %i.h, %i.p
  %i.r = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.s = fcmp ogt double %i.r, %i.q
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = extractelement <2 x double> %i.c, i64 0
  %i.u = tail call double @pow(double noundef %i.t, double noundef 3.000000e+00) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fdiv double %i.r, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.011 = phi double [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  %i.w = tail call double @pow(double noundef %i.n, double noundef 3.000000e+00) #18 ; 2 uses
  %i.x = fcmp ogt double %i.w, %i.h
  %i.y = fadd double %i.n, f0xBFC1A7B9611A7B96
  %i.z = fmul double %.012, f0x4057C3020C49BA5E
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.aa = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.z, i64 1
  %i.ac = fdiv <2 x double> %i.ab, <double f0x401F25E353F7CED9, double 1.000000e+02> ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %.0 = select i1 %i.x, double %i.w, double %i.ad
  %i.ae = insertelement <2 x double> poison, double %.011, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %.0, i64 1
  %i.ag = fmul <2 x double> %i.af, <double 1.000000e+02, double 1.088830e+02>
  %i.ah = fdiv <2 x double> %i.ag, splat (double 1.000000e+02) ; 4 uses
  %2 = extractelement <2 x double> %i.ah, i64 0
  %i.ai = extractelement <2 x double> %i.ac, i64 1
  %i.aj = extractelement <2 x double> %i.ah, i64 1
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ak, <double -1.537200e+00, double 1.875800e+00>
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> <double 3.240600e+00, double f0xBFEF013A92A30553>, <2 x double> %i.al)
  %3 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double -4.986000e-01, double 4.150000e-02>, <2 x double> %i.an) ; 2 uses
  %i.ao = fmul double %2, -2.040000e-01
  %5 = tail call double @llvm.fmuladd.f64(double %i.ai, double 5.570000e-02, double %i.ao)
  %6 = tail call double @llvm.fmuladd.f64(double %i.aj, double 1.057000e+00, double %5) ; 3 uses
  %i.ap = extractelement <2 x double> %4, i64 0   ; 3 uses
  %i.aq = fcmp ogt double %i.ap, 3.130800e-03
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call double @pow(double noundef %i.ap, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !42
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double 1.055000e+00, double -5.500000e-02)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = fmul double %i.ap, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.034.i = phi double [ %i.as, %bb.e ], [ %i.at, %bb.f ]
  %7 = extractelement <2 x double> %4, i64 1      ; 3 uses
  %i.au = fcmp ogt double %7, 3.130800e-03
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = tail call double @pow(double noundef %7, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !42
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double 1.055000e+00, double -5.500000e-02)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = fmul double %7, 1.292000e+01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.033.i = phi double [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  %i.ay = fcmp ogt double %6, 3.130800e-03
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = tail call double @pow(double noundef %6, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !42
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double 1.055000e+00, double -5.500000e-02)
  br label %XYZ2RGB.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = fmul double %6, 1.292000e+01
  br label %XYZ2RGB.exit

XYZ2RGB.exit:                                     ; preds = %bb.k, %bb.l
  %.0.i = phi double [ %i.ba, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bc = insertelement <2 x double> poison, double %.034.i, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %.033.i, i64 1 ; 2 uses
  %i.be = fcmp olt <2 x double> %i.bd, zeroinitializer
  %i.bf = fcmp olt double %.0.i, 0.000000e+00
  %i.bg = select i1 %i.bf, double 0.000000e+00, double %.0.i
  %i.bh = fmul double %i.bg, 2.550000e+02         ; 2 uses
  %i.bi = fcmp ogt double %i.bh, 2.550000e+02
  %i.bj = select i1 %i.bi, double 2.550000e+02, double %i.bh
  %i.bk = select <2 x i1> %i.be, <2 x double> zeroinitializer, <2 x double> %i.bd
  %i.bl = fmul <2 x double> %i.bk, splat (double 2.550000e+02) ; 2 uses
  %i.bm = fcmp ogt <2 x double> %i.bl, splat (double 2.550000e+02)
  %i.bn = select <2 x i1> %i.bm, <2 x double> splat (double 2.550000e+02), <2 x double> %i.bl
  store <2 x double> %i.bn, ptr %0, align 8, !tbaa !19, !alias.scope !43
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bj, ptr %i.bo, align 8, !tbaa !12, !alias.scope !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @XYZ2RGB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rgb_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.xyz_struct) align 8 captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !19
  %i.b = fdiv <2 x double> %i.a, splat (double 1.000000e+02) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !14
  %i.e = fdiv double %i.d, 1.000000e+02           ; 2 uses
  %i.f = extractelement <2 x double> %i.b, i64 1
  %i.g = extractelement <2 x double> %i.b, i64 0
  %i.h = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x double> %i.h, <double -1.537200e+00, double 1.875800e+00>
  %i.j = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> <double 3.240600e+00, double f0xBFEF013A92A30553>, <2 x double> %i.i)
  %2 = insertelement <2 x double> poison, double %i.e, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> <double -4.986000e-01, double 4.150000e-02>, <2 x double> %i.k) ; 2 uses
  %5 = fmul double %i.f, -2.040000e-01
  %6 = tail call double @llvm.fmuladd.f64(double %i.g, double 5.570000e-02, double %5)
  %i.l = tail call double @llvm.fmuladd.f64(double %i.e, double 1.057000e+00, double %6) ; 3 uses
  %7 = extractelement <2 x double> %4, i64 0      ; 3 uses
  %i.m = fcmp ogt double %7, 3.130800e-03
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @pow(double noundef %7, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double 1.055000e+00, double -5.500000e-02)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = fmul double %7, 1.292000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034 = phi double [ %i.o, %bb.b ], [ %i.p, %bb.c ]
  %8 = extractelement <2 x double> %4, i64 1      ; 3 uses
  %i.q = fcmp ogt double %8, 3.130800e-03
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call double @pow(double noundef %8, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double 1.055000e+00, double -5.500000e-02)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = fmul double %8, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033 = phi double [ %i.s, %bb.e ], [ %i.t, %bb.f ]
  %i.u = fcmp ogt double %i.l, 3.130800e-03
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call double @pow(double noundef %i.l, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double 1.055000e+00, double -5.500000e-02)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = fmul double %i.l, 1.292000e+01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi double [ %i.w, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.y = insertelement <2 x double> poison, double %.034, i64 0
  %i.z = insertelement <2 x double> %i.y, double %.033, i64 1 ; 2 uses
  %i.aa = fcmp olt <2 x double> %i.z, zeroinitializer
  %i.ab = fcmp olt double %.0, 0.000000e+00
  %i.ac = select i1 %i.ab, double 0.000000e+00, double %.0
  %i.ad = fmul double %i.ac, 2.550000e+02         ; 2 uses
  %i.ae = fcmp ogt double %i.ad, 2.550000e+02
  %i.af = select i1 %i.ae, double 2.550000e+02, double %i.ad
  %i.ag = select <2 x i1> %i.aa, <2 x double> zeroinitializer, <2 x double> %i.z
  %i.ah = fmul <2 x double> %i.ag, splat (double 2.550000e+02) ; 2 uses
  %i.ai = fcmp ogt <2 x double> %i.ah, splat (double 2.550000e+02)
  %i.aj = select <2 x i1> %i.ai, <2 x double> splat (double 2.550000e+02), <2 x double> %i.ah
  store <2 x double> %i.aj, ptr %0, align 8, !tbaa !19, !alias.scope !46
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.af, ptr %i.ak, align 8, !tbaa !12, !alias.scope !46
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @lab_gamut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !20
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 100) ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %spec.store.select1) ; 3 uses
  %i.d = load i8, ptr @Verbose, align 1, !tbaa !21
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef %spec.select, i32 noundef %spec.store.select1) #19 ; 0 uses
  %.pr = load i8, ptr @Verbose, align 1, !tbaa !21
  %.not39 = icmp eq i8 %.pr, 0
  br i1 %.not39, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.h = load i64, ptr @lab_gamut_data_size, align 8, !tbaa !51
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i64 noundef %i.h) #19 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.j = sext i32 %spec.store.select1 to i64
  %i.k = sext i32 %spec.select to i64
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = mul nsw i64 %i.l, 196608
  %i.n = add nsw i64 %i.m, 196608                 ; 5 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %.thread
  %i.o = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #20
  br label %gv_calloc.exit

bb.d:                                             ; preds = %.thread
  %mul.ov.i = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.4, i64 noundef range(i64 -844424929738752, 844424930131969) %i.n, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.n, i64 noundef 8) #20 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %gv_calloc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.u = shl nuw nsw i64 %i.n, 3
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.5, i64 noundef %i.u) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.f
  %i.w = phi ptr [ %i.o, %.thread.i ], [ %i.r, %bb.f ] ; 2 uses
  store i32 0, ptr %1, align 4, !tbaa !20
  %i.x = load i64, ptr @lab_gamut_data_size, align 8, !tbaa !51 ; 2 uses
  %.not50 = icmp eq i64 %i.x, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph49

._crit_edge:                                      ; preds = %.loopexit, %gv_calloc.exit
  ret ptr %i.w

.lr.ph49:                                         ; preds = %gv_calloc.exit, %.loopexit
  %.promoted = phi i32 [ %.promoted52, %.loopexit ], [ 0, %gv_calloc.exit ] ; 4 uses
  %.03548 = phi i64 [ %i.bo, %.loopexit ], [ 0, %gv_calloc.exit ] ; 2 uses
  %.03747 = phi ptr [ %.2, %.loopexit ], [ %i.w, %gv_calloc.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr @lab_gamut_data, i64 %.03548 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21    ; 2 uses
  %i.aa = sext i8 %i.z to i32                     ; 2 uses
  %.not40 = icmp sgt i32 %spec.select, %i.aa
  %.not41 = icmp slt i32 %spec.store.select1, %i.aa
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21  ; 2 uses
  %.not4244 = icmp sgt i8 %i.ac, %i.ae
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.af = sext i8 %i.ae to i32                    ; 3 uses
  %i.ag = sext i8 %i.ac to i32                    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %i.ak = insertelement <2 x i8> %i.aj, i8 %i.ai, i64 1
  %i.al = sitofp <2 x i8> %i.ak to <2 x double>   ; 5 uses
  %i.am = add nsw i32 %i.af, 1
  %i.an = sub nsw i32 %i.am, %i.ag
  %i.ao = sub nsw i32 %i.af, %i.ag
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %i.ap = phi i32 [ %i.at, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %.046.prol = phi i32 [ %i.au, %.prol.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.145.prol = phi ptr [ %i.as, %.prol.preheader ], [ %.03747, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store <2 x double> %i.al, ptr %.145.prol, align 8, !tbaa !19
  %i.aq = sitofp i32 %.046.prol to double
  %i.ar = getelementptr inbounds nuw i8, ptr %.145.prol, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.145.prol, i64 24 ; 3 uses
  %i.at = add nsw i32 %i.ap, 1                    ; 3 uses
  %i.au = add nsw i32 %.046.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.unr = phi i32 [ %.promoted, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.046.unr = phi i32 [ %i.ag, %.lr.ph ], [ %i.au, %.prol.preheader ]
  %.145.unr = phi ptr [ %.03747, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %i.av = icmp ult i32 %i.ao, 3
  br i1 %i.av, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.aw = phi i32 [ %i.bm, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %.046 = phi i32 [ %i.bn, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %.145 = phi ptr [ %i.bl, %.lr.ph.new ], [ %.145.unr, %.prol.loopexit ] ; 9 uses
  store <2 x double> %i.al, ptr %.145, align 8, !tbaa !19
  %i.ax = sitofp i32 %.046 to double
  %i.ay = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store double %i.ax, ptr %i.ay, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.145, i64 24
  %i.ba = add nsw i32 %.046, 1
  store <2 x double> %i.al, ptr %i.az, align 8, !tbaa !19
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %.145, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %.145, i64 48
  %i.be = add nsw i32 %.046, 2
  store <2 x double> %i.al, ptr %i.bd, align 8, !tbaa !19
  %i.bf = sitofp i32 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %.145, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %.145, i64 72
  %i.bi = add nsw i32 %.046, 3                    ; 2 uses
  store <2 x double> %i.al, ptr %i.bh, align 8, !tbaa !19
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %.145, i64 88
  store double %i.bj, ptr %i.bk, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %i.bm = add nsw i32 %i.aw, 4                    ; 2 uses
  %i.bn = add nsw i32 %.046, 4
  %exitcond.not.3 = icmp eq i32 %i.bi, %i.af
  br i1 %exitcond.not.3, label %..loopexit_crit_edge, label %.lr.ph.new, !llvm.loop !48

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa60 = phi ptr [ %.lcssa60.unr, %.prol.loopexit ], [ %i.bl, %.lr.ph.new ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bm, %.lr.ph.new ] ; 2 uses
  store i32 %.lcssa, ptr %1, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %..loopexit_crit_edge, %.lr.ph49
  %.promoted52 = phi i32 [ %.promoted, %.lr.ph49 ], [ %.lcssa, %..loopexit_crit_edge ], [ %.promoted, %bb.h ]
  %.2 = phi ptr [ %.03747, %.lr.ph49 ], [ %.lcssa60, %..loopexit_crit_edge ], [ %.03747, %bb.h ]
  %i.bo = add nuw i64 %.03548, 4                  ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.x
  br i1 %i.bp, label %.lr.ph49, label %._crit_edge, !llvm.loop !49
}

; Function Attrs: nofree nounwind
end_hunk_0
