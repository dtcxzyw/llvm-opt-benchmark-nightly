Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmspcs?download=true
inline.NumInlined: 108
inline.NumDeleted: 23
begin_hunk_0
@_cmsEndPointsBySpace.CMYwhite = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.Grayblack = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.GrayWhite = internal global [4 x i16] [i16 -1, i16 0, i16 0, i16 0], align 2
@switch.table._cmsICCcolorSpace = private unnamed_addr constant [30 x i32] [i32 1196573017, i32 1380401696, i32 1196573017, i32 1380401696, i32 1129142560, i32 1129142603, i32 1497588338, i32 1282766368, i32 1482250784, i32 1281450528, i32 1282766411, i32 1213421088, i32 1212961568, i32 1501067552, i32 1296255025, i32 1296255026, i32 1296255027, i32 1296255028, i32 1296255029, i32 1296255030, i32 1296255031, i32 1296255032, i32 1296255033, i32 1296255041, i32 1296255042, i32 1296255043, i32 1296255044, i32 1296255045, i32 1296255046, i32 1281450528], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsXYZ2xyY(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15
  %i.g = fadd double %i.d, %i.f
  %i.h = fdiv double 1.000000e+00, %i.g           ; 2 uses
  %i.i = fmul double %i.a, %i.h
  store double %i.i, ptr %0, align 8, !tbaa !13
  %i.j = fmul double %i.c, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = load double, ptr %i.b, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsxyY2XYZ(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14
  %i.d = fdiv double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fmul double %i.d, %i.f
  store double %i.g, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.f, ptr %i.h, align 8, !tbaa !14
  %i.i = load double, ptr %1, align 8, !tbaa !13
  %i.j = fsub double 1.000000e+00, %i.i
  %i.k = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.l = fsub double %i.j, %i.k
  %i.m = fdiv double %i.l, %i.k
  %i.n = fmul double %i.f, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.o, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsXYZ2Lab(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cmsD50_XYZ() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %i.c = load double, ptr %2, align 8, !tbaa !13
  %i.d = load double, ptr %.0, align 8, !tbaa !13
  %i.e = fdiv double %i.c, %i.d                   ; 3 uses
  %i.f = fcmp ugt double %i.e, f0x3F822354D28F7CD6
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call nnan double @llvm.fmuladd.f64(double %i.e, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call double @pow(double noundef %i.e, double noundef f0x3FD5555555555555) #11
  br label %f.exit

f.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  %i.m = fdiv double %i.j, %i.l                   ; 3 uses
  %i.n = fcmp ugt double %i.m, f0x3F822354D28F7CD6
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %f.exit
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit17

bb.g:                                             ; preds = %f.exit
  %i.p = tail call double @pow(double noundef %i.m, double noundef f0x3FD5555555555555) #11
  br label %f.exit17

f.exit17:                                         ; preds = %bb.f, %bb.g
  %.0.i16 = phi double [ %i.o, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  %i.u = fdiv double %i.r, %i.t                   ; 3 uses
  %i.v = fcmp ugt double %i.u, f0x3F822354D28F7CD6
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %f.exit17
  %i.w = tail call nnan double @llvm.fmuladd.f64(double %i.u, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit19

bb.i:                                             ; preds = %f.exit17
  %i.x = tail call double @pow(double noundef %i.u, double noundef f0x3FD5555555555555) #11
  br label %f.exit19

f.exit19:                                         ; preds = %bb.h, %bb.i
  %.0.i18 = phi double [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  %i.y = tail call double @llvm.fmuladd.f64(double %.0.i16, double 1.160000e+02, double -1.600000e+01)
  store double %i.y, ptr %1, align 8, !tbaa !13
  %i.z = fsub double %.0.i, %.0.i16
  %i.aa = fmul double %i.z, 5.000000e+02
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !14
  %i.ac = fsub double %.0.i16, %.0.i18
  %i.ad = fmul double %i.ac, 2.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !15
  ret void
}

declare ptr @cmsD50_XYZ() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define void @cmsLab2XYZ(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cmsD50_XYZ() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 2 uses
  %i.c = load double, ptr %2, align 8, !tbaa !13
  %i.d = fadd double %i.c, 1.600000e+01
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !15
  %i.i = fdiv double %i.d, 1.160000e+02           ; 2 uses
  %i.j = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.f, i64 0
  %i.k = insertelement <2 x double> poison, double %i.i, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> <double 2.000000e-03, double 0.000000e+00>, <2 x double> %i.l) ; 5 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.h, double -5.000000e-03, double %i.i) ; 5 uses
  %i.o = fcmp ugt <2 x double> %i.m, splat (double f0x3FCA7B9611A7B961)
  %i.p = fadd nnan <2 x double> %i.m, splat (double f0xBFC1A7B9611A7B96)
  %i.q = fmul nnan <2 x double> %i.p, splat (double f0x3FC07004DED20922)
  %i.r = fmul <2 x double> %i.m, %i.m
  %i.s = fmul <2 x double> %i.m, %i.r
  %i.t = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> %i.q
  %i.u = load <2 x double>, ptr %.0, align 8, !tbaa !16
  %i.v = fmul <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %1, align 8, !tbaa !16
  %i.w = fcmp ugt double %i.n, f0x3FCA7B9611A7B961
  %i.x = fadd nnan double %i.n, f0xBFC1A7B9611A7B96
  %i.y = fmul nnan double %i.x, f0x3FC07004DED20922
  %i.z = fmul double %i.n, %i.n
  %i.aa = fmul double %i.n, %i.z
  %.0.i17 = select i1 %i.w, double %i.aa, double %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %.0.i17, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsLabEncoded2FloatV2(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !18
  %i.b = uitofp i16 %i.a to double
  %i.c = fdiv double %i.b, 6.528000e+02
  store double %i.c, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i16>, ptr %i.d, align 2, !tbaa !18
  %i.g = uitofp <2 x i16> %i.f to <2 x double>
  %i.h = fmul nnan <2 x double> %i.g, splat (double 3.906250e-03)
  %i.i = fadd <2 x double> %i.h, splat (double -1.280000e+02)
  store <2 x double> %i.i, ptr %i.e, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsLabEncoded2Float(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = load <2 x i16>, ptr %1, align 2, !tbaa !18
  %3 = uitofp <2 x i16> %2 to <2 x double>
  %4 = fdiv <2 x double> %3, <double 6.553500e+02, double 2.570000e+02>
  %5 = fadd <2 x double> %4, <double -0.000000e+00, double -1.280000e+02>
  store <2 x double> %5, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %6 = load i16, ptr %i.a, align 2, !tbaa !18
  %7 = uitofp i16 %6 to double
  %8 = fdiv double %7, 2.570000e+02
  %9 = fadd double %8, -1.280000e+02
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %9, ptr %10, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsFloat2LabEncodedV2(ptr nofree noundef writeonly captures(none) initializes((0, 6)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !16 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0.000000e+00, double -1.280000e+02>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0.000000e+00, double -1.280000e+02>, <2 x double> %i.a ; 2 uses
  %i.d = fcmp ogt <2 x double> %i.c, <double f0x4059190000000000, double f0x405FFFC000000000>
  %i.e = select <2 x i1> %i.d, <2 x double> <double f0x4059190000000000, double f0x405FFFC000000000>, <2 x double> %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.h = fcmp olt double %i.g, -1.280000e+02
  %spec.store.select.i8 = select i1 %i.h, double -1.280000e+02, double %i.g ; 2 uses
  %i.i = fcmp ogt double %spec.store.select.i8, f0x405FFFC000000000
  %spec.store.select1.i9 = select i1 %i.i, double f0x405FFFC000000000, double %spec.store.select.i8
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = fmul double %i.j, 6.528000e+02
  %i.l = fadd double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp ugt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %L2Fix2.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ult double %i.l, 6.553500e+04
  br i1 %i.n, label %bb.c, label %L2Fix2.exit

bb.c:                                             ; preds = %bb.b
  %i.o = fadd double %i.l, -3.276700e+04
  %i.p = fadd double %i.o, f0x4238000000000000
  %i.q = bitcast double %i.p to i64
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i16
  %i.t = add i16 %i.s, 32767
  br label %L2Fix2.exit

L2Fix2.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.t, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  store i16 %.0.i.i, ptr %0, align 2, !tbaa !18
  %i.u = extractelement <2 x double> %i.e, i64 1
  %i.v = fadd double %i.u, 1.280000e+02
  %i.w = fmul double %i.v, 2.560000e+02
  %i.x = fadd double %i.w, 5.000000e-01           ; 3 uses
  %i.y = fcmp ugt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %ab2Fix2.exit

bb.d:                                             ; preds = %L2Fix2.exit
  %i.z = fcmp ult double %i.x, 6.553500e+04
  br i1 %i.z, label %bb.e, label %ab2Fix2.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = fadd double %i.x, -3.276700e+04
  %i.ab = fadd double %i.aa, f0x4238000000000000
  %i.ac = bitcast double %i.ab to i64
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = trunc i64 %i.ad to i16
  %i.af = add i16 %i.ae, 32767
  br label %ab2Fix2.exit

ab2Fix2.exit:                                     ; preds = %L2Fix2.exit, %bb.d, %bb.e
  %.0.i.i10 = phi i16 [ %i.af, %bb.e ], [ 0, %L2Fix2.exit ], [ -1, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.0.i.i10, ptr %i.ag, align 2, !tbaa !18
  %i.ah = fadd double %spec.store.select1.i9, 1.280000e+02
  %i.ai = fmul double %i.ah, 2.560000e+02
  %i.aj = fadd double %i.ai, 5.000000e-01         ; 3 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %ab2Fix2.exit12

bb.f:                                             ; preds = %ab2Fix2.exit
  %i.al = fcmp ult double %i.aj, 6.553500e+04
  br i1 %i.al, label %bb.g, label %ab2Fix2.exit12

bb.g:                                             ; preds = %bb.f
  %i.am = fadd double %i.aj, -3.276700e+04
  %i.an = fadd double %i.am, f0x4238000000000000
  %i.ao = bitcast double %i.an to i64
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, 32767
  br label %ab2Fix2.exit12

ab2Fix2.exit12:                                   ; preds = %ab2Fix2.exit, %bb.f, %bb.g
  %.0.i.i11 = phi i16 [ %i.ar, %bb.g ], [ 0, %ab2Fix2.exit ], [ -1, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.0.i.i11, ptr %i.as, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsFloat2LabEncoded(ptr nofree noundef writeonly captures(none) initializes((0, 6)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !16 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0.000000e+00, double -1.280000e+02>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0.000000e+00, double -1.280000e+02>, <2 x double> %i.a ; 2 uses
  %i.d = fcmp ogt <2 x double> %i.c, <double 1.000000e+02, double 1.270000e+02>
  %i.e = select <2 x i1> %i.d, <2 x double> <double 1.000000e+02, double 1.270000e+02>, <2 x double> %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.h = fcmp olt double %i.g, -1.280000e+02
  %spec.store.select.i8 = select i1 %i.h, double -1.280000e+02, double %i.g ; 2 uses
  %i.i = fcmp ogt double %spec.store.select.i8, 1.270000e+02
  %spec.store.select1.i9 = select i1 %i.i, double 1.270000e+02, double %spec.store.select.i8
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = fmul double %i.j, 6.553500e+02
  %i.l = fadd double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp ugt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %L2Fix4.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ult double %i.l, 6.553500e+04
  br i1 %i.n, label %bb.c, label %L2Fix4.exit

bb.c:                                             ; preds = %bb.b
  %i.o = fadd double %i.l, -3.276700e+04
  %i.p = fadd double %i.o, f0x4238000000000000
  %i.q = bitcast double %i.p to i64
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i16
  %i.t = add i16 %i.s, 32767
  br label %L2Fix4.exit

L2Fix4.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.t, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  store i16 %.0.i.i, ptr %0, align 2, !tbaa !18
  %i.u = extractelement <2 x double> %i.e, i64 1
  %i.v = fadd double %i.u, 1.280000e+02
  %i.w = fmul double %i.v, 2.570000e+02
  %i.x = fadd double %i.w, 5.000000e-01           ; 3 uses
  %i.y = fcmp ugt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %ab2Fix4.exit

bb.d:                                             ; preds = %L2Fix4.exit
  %i.z = fcmp ult double %i.x, 6.553500e+04
  br i1 %i.z, label %bb.e, label %ab2Fix4.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = fadd double %i.x, -3.276700e+04
  %i.ab = fadd double %i.aa, f0x4238000000000000
  %i.ac = bitcast double %i.ab to i64
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = trunc i64 %i.ad to i16
  %i.af = add i16 %i.ae, 32767
  br label %ab2Fix4.exit

ab2Fix4.exit:                                     ; preds = %L2Fix4.exit, %bb.d, %bb.e
  %.0.i.i10 = phi i16 [ %i.af, %bb.e ], [ 0, %L2Fix4.exit ], [ -1, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.0.i.i10, ptr %i.ag, align 2, !tbaa !18
  %i.ah = fadd double %spec.store.select1.i9, 1.280000e+02
  %i.ai = fmul double %i.ah, 2.570000e+02
  %i.aj = fadd double %i.ai, 5.000000e-01         ; 3 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %ab2Fix4.exit12

bb.f:                                             ; preds = %ab2Fix4.exit
  %i.al = fcmp ult double %i.aj, 6.553500e+04
  br i1 %i.al, label %bb.g, label %ab2Fix4.exit12

bb.g:                                             ; preds = %bb.f
  %i.am = fadd double %i.aj, -3.276700e+04
  %i.an = fadd double %i.am, f0x4238000000000000
  %i.ao = bitcast double %i.an to i64
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, 32767
  br label %ab2Fix4.exit12

ab2Fix4.exit12:                                   ; preds = %ab2Fix4.exit, %bb.f, %bb.g
  %.0.i.i11 = phi i16 [ %i.ar, %bb.g ], [ 0, %ab2Fix4.exit ], [ -1, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.0.i.i11, ptr %i.as, align 2, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @cmsLab2LCh(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13
  store double %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 4 uses
  %i.g = fmul double %i.f, %i.f
  %i.h = fadd double %i.d, %i.g
  %i.i = tail call double @pow(double noundef %i.h, double noundef 5.000000e-01) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.l = fcmp oeq double %i.f, 0.000000e+00
  %i.m = fcmp oeq double %i.k, 0.000000e+00
  %or.cond.i = and i1 %i.l, %i.m
  br i1 %or.cond.i, label %atan2deg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @atan2(double noundef %i.f, double noundef %i.k) #11
  %i.o = fmul double %i.n, f0x404CA5DC1A63C1F8    ; 3 uses
  %i.p = fcmp ogt double %i.o, 3.600000e+02
end_hunk_0
