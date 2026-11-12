Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmspack?download=true
inline.NumInlined: 94
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 116
begin_hunk_0_@PackXYZFloatFromFloat:bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %..i = select i1 %i.e, i32 8, i32 %i.d
  %i.f = udiv i32 %3, %..i                        ; 2 uses
  %i.g = load float, ptr %1, align 4, !tbaa !29
  %i.h = fmul float %i.g, f0x3FFFFF00
  store float %i.h, ptr %2, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !29
  %i.k = fmul float %i.j, f0x3FFFFF00
  %i.l = zext i32 %i.f to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  store float %i.k, ptr %i.m, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !29
  %i.p = fmul float %i.o, f0x3FFFFF00
  %i.q = shl i32 %i.f, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  store float %i.p, ptr %i.s, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load float, ptr %1, align 4, !tbaa !29
  %i.v = fmul float %i.u, f0x3FFFFF00
  store float %i.v, ptr %2, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !29
  %i.y = fmul float %i.x, f0x3FFFFF00
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29
  %i.ac = fmul float %i.ab, f0x3FFFFF00
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !29
  %i.ae = lshr i32 %i.b, 5
  %i.af = and i32 %i.ae, 28
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ %i.ai, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @PackLabDoubleFromFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 8)) %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %..i = select i1 %i.e, i32 8, i32 %i.d
  %i.f = udiv i32 %3, %..i                        ; 2 uses
  %i.g = load float, ptr %1, align 4, !tbaa !29
  %i.h = fpext float %i.g to double
  %i.i = fmul double %i.h, 1.000000e+02
  store double %i.i, ptr %2, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !29
  %i.n = fpext <2 x float> %i.m to <2 x double>
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double -1.280000e+02)) ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  store double %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = shl i32 %i.f, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %i.t = extractelement <2 x double> %i.o, i64 1
  store double %i.t, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = load float, ptr %1, align 4, !tbaa !29
  %i.w = fpext float %i.v to double
  %i.x = fmul double %i.w, 1.000000e+02
  store double %i.x, ptr %2, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !29
  %i.ab = fpext <2 x float> %i.aa to <2 x double>
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double -1.280000e+02))
  store <2 x double> %i.ac, ptr %i.z, align 8, !tbaa !24
  %i.ad = lshr i32 %i.b, 4
  %i.ae = and i32 %i.ad, 56
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.u, %bb.b ], [ %i.ah, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal nonnull ptr @PackXYZDoubleFromFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 8)) %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %..i = select i1 %i.e, i32 8, i32 %i.d
  %i.f = udiv i32 %3, %..i                        ; 2 uses
  %i.g = load float, ptr %1, align 4, !tbaa !29
  %i.h = fpext float %i.g to double
  %i.i = fmul double %i.h, f0x3FFFFFE000000000
  store double %i.i, ptr %2, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !29
  %i.n = fpext <2 x float> %i.m to <2 x double>
  %i.o = fmul <2 x double> %i.n, splat (double f0x3FFFFFE000000000) ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  store double %i.p, ptr %i.l, align 8, !tbaa !24
  %i.q = shl i32 %i.f, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %i.t = extractelement <2 x double> %i.o, i64 1
  store double %i.t, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.w = fpext <2 x float> %i.v to <2 x double>
  %i.x = fmul <2 x double> %i.w, splat (double f0x3FFFFFE000000000)
  store <2 x double> %i.x, ptr %2, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !29
  %i.aa = fpext float %i.z to double
  %i.ab = fmul double %i.aa, f0x3FFFFFE000000000
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !24
  %i.ad = lshr i32 %i.b, 4
  %i.ae = and i32 %i.ad, 56
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.u, %bb.b ], [ %i.ah, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @PackEncodedBytesLabV2FromFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 1)) %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.cmsCIELab, align 8          ; 5 uses
  %i.a = alloca [3 x i16], align 2                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load float, ptr %1, align 4, !tbaa !29
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, 1.000000e+02
  store double %i.d, ptr %4, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !29
  %i.h = fpext <2 x float> %i.g to <2 x double>
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double -1.280000e+02))
  store <2 x double> %i.i, ptr %i.f, align 8, !tbaa !24
  call void @cmsFloat2LabEncoded(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 2 uses
  %i.l = and i32 %i.k, 4096
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 7                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %..i = select i1 %i.n, i32 8, i32 %i.m
  %i.o = udiv i32 %3, %..i                        ; 2 uses
  %i.p = load i16, ptr %i.a, align 2, !tbaa !31
  %i.q = lshr i16 %i.p, 8
  %i.r = trunc nuw i16 %i.q to i8
  store i8 %i.r, ptr %2, align 1, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %5 = load i16, ptr %i.s, align 2, !tbaa !31
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  %i.t = zext i32 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  store i8 %7, ptr %i.u, align 1, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %8 = load i16, ptr %i.v, align 2, !tbaa !31
  %9 = lshr i16 %8, 8
  %10 = trunc nuw i16 %9 to i8
  %i.w = shl i32 %i.o, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i8 %10, ptr %i.y, align 1, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = load i16, ptr %i.a, align 2, !tbaa !31
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = trunc nuw i16 %i.ab to i8
  store i8 %i.ac, ptr %2, align 1, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %11 = load i16, ptr %i.ad, align 2, !tbaa !31
  %12 = lshr i16 %11, 8
  %13 = trunc nuw i16 %12 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %13, ptr %i.ae, align 1, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %14 = load i16, ptr %i.af, align 2, !tbaa !31
  %15 = lshr i16 %14, 8
  %16 = trunc nuw i16 %15 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %16, ptr %i.ag, align 1, !tbaa !33
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !32
  %i.ai = lshr i32 %i.ah, 7
  %i.aj = and i32 %i.ai, 7
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.z, %bb.b ], [ %i.am, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @PackEncodedWordsLabV2FromFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 2)) %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.cmsCIELab, align 8          ; 5 uses
  %i.a = alloca [3 x i16], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load float, ptr %1, align 4, !tbaa !29
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, 1.000000e+02
  store double %i.d, ptr %4, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !29
  %i.h = fpext <2 x float> %i.g to <2 x double>
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double -1.280000e+02))
  store <2 x double> %i.i, ptr %i.f, align 8, !tbaa !24
  call void @cmsFloat2LabEncodedV2(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 3 uses
  %i.l = and i32 %i.k, 4096
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 7                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %..i = select i1 %i.n, i32 8, i32 %i.m
  %i.o = udiv i32 %3, %..i                        ; 2 uses
  %i.p = load i16, ptr %i.a, align 4, !tbaa !31
  store i16 %i.p, ptr %2, align 2, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !31
  %i.s = zext i32 %i.o to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.s
  store i16 %i.r, ptr %i.t, align 2, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !31
  %i.w = shl i32 %i.o, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x
  store i16 %i.v, ptr %i.y, align 2, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = load <2 x i16>, ptr %i.a, align 4, !tbaa !31
  store <2 x i16> %i.aa, ptr %2, align 2, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !31
  %i.ae = lshr i32 %i.k, 6
  %i.af = and i32 %i.ae, 14
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.z, %bb.b ], [ %i.ai, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal ptr @PackFloatsFromFloat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(ret: address, provenance) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %.fr = freeze i32 %i.b                          ; 9 uses
  %i.c = lshr i32 %.fr, 3                         ; 9 uses
  %i.d = and i32 %i.c, 15                         ; 25 uses
  %i.e = lshr i32 %.fr, 10
  %i.f = and i32 %i.e, 1                          ; 2 uses
  %i.g = lshr i32 %.fr, 7
  %i.h = and i32 %i.g, 7                          ; 3 uses
  %i.i = lshr i32 %.fr, 14                        ; 2 uses
  %i.j = and i32 %i.i, 1
  %i.k = lshr i32 %.fr, 16
  %i.l = and i32 %i.k, 31
  %switch.tableidx = add nsw i32 %i.l, -5         ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 25
  br i1 %i.m, label %switch.lookup, label %IsInkSpace.exit

switch.lookup:                                    ; preds = %bb.a
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PackDoublesFromFloat, i64 %i.n
  %switch.load = load double, ptr %switch.gep, align 8
  br label %IsInkSpace.exit

IsInkSpace.exit:                                  ; preds = %bb.a, %switch.lookup
  %i.o = phi double [ %switch.load, %switch.lookup ], [ 1.000000e+00, %bb.a ] ; 36 uses
  %i.p = and i32 %.fr, 7                          ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %..i = select i1 %i.q, i32 8, i32 %i.p
  %i.r = udiv i32 %3, %..i                        ; 12 uses
  %.not55 = icmp eq i32 %i.f, %i.j
  %spec.select = select i1 %.not55, i32 0, i32 %i.h ; 13 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %IsInkSpace.exit
  %.not57 = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.s = and i32 %.fr, 8192
  %.not58 = icmp eq i32 %i.s, 0                   ; 4 uses
  %i.t = and i32 %.fr, 4096
  %.not59 = icmp eq i32 %i.t, 0
  br i1 %.not59, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext nneg i32 %spec.select to i64
  %wide.trip.count131 = zext nneg i32 %i.d to i64 ; 8 uses
  %invariant.gep151 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u ; 12 uses
  br i1 %.not57, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not58, label %.lr.ph.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %xtraiter213 = and i64 %wide.trip.count131, 1
  %i.v = icmp eq i32 %i.d, 1
  br i1 %i.v, label %.lr.ph.split.us.split.us.split.epil.preheader, label %.lr.ph.split.us.split.us.split.preheader.new

.lr.ph.split.us.split.us.split.preheader.new:     ; preds = %.lr.ph.split.us.split.us.split.preheader
  %unroll_iter217 = and i64 %wide.trip.count131, 14
  br label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %.lr.ph.split.us.split.us
  %xtraiter219 = and i64 %wide.trip.count131, 1
  %i.w = icmp eq i32 %i.d, 1
  br i1 %i.w, label %.lr.ph.split.us.split.us.split.us.epil.preheader, label %.lr.ph.split.us.split.us.split.us.preheader.new

.lr.ph.split.us.split.us.split.us.preheader.new:  ; preds = %.lr.ph.split.us.split.us.split.us.preheader
  %unroll_iter223 = and i64 %wide.trip.count131, 14
  br label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us.split.us, %.lr.ph.split.us.split.us.split.us.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.preheader.new ], [ %indvars.iv.next129.1, %.lr.ph.split.us.split.us.split.us ] ; 4 uses
  %niter224 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.preheader.new ], [ %niter224.next.1, %.lr.ph.split.us.split.us.split.us ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv128
  %i.y = load float, ptr %i.x, align 4, !tbaa !29
  %i.z = fpext float %i.y to double
  %i.aa = fmul double %i.o, %i.z
  %i.ab = fptrunc double %i.aa to float
  %gep152 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep151, i64 %indvars.iv128
  store float %i.ab, ptr %gep152, align 4, !tbaa !29
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next129
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ae = fpext float %i.ad to double
  %i.af = fmul double %i.o, %i.ae                 ; 2 uses
  %i.ag = fptrunc double %i.af to float
  %gep152.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep151, i64 %indvars.iv.next129
  store float %i.ag, ptr %gep152.1, align 4, !tbaa !29
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter224.next.1 = add i64 %niter224, 2         ; 2 uses
  %niter224.ncmp.1 = icmp eq i64 %niter224.next.1, %unroll_iter223
  br i1 %niter224.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !90

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us.split, %.lr.ph.split.us.split.us.split.preheader.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %indvars.iv.next124.1, %.lr.ph.split.us.split.us.split ] ; 4 uses
  %niter218 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %niter218.next.1, %.lr.ph.split.us.split.us.split ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv123
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !29
  %i.aj = fpext float %i.ai to double
  %i.ak = fmul double %i.o, %i.aj
  %i.al = fsub double %i.o, %i.ak
  %i.am = fptrunc double %i.al to float
  %gep150 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep151, i64 %indvars.iv123
  store float %i.am, ptr %gep150, align 4, !tbaa !29
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next124
  %i.ao = load float, ptr %i.an, align 4, !tbaa !29
  %i.ap = fpext float %i.ao to double
  %i.aq = fmul double %i.o, %i.ap
  %i.ar = fsub double %i.o, %i.aq                 ; 2 uses
  %i.as = fptrunc double %i.ar to float
  %gep150.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep151, i64 %indvars.iv.next124
  store float %i.as, ptr %gep150.1, align 4, !tbaa !29
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter218.next.1 = add i64 %niter218, 2         ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %._crit_edge.loopexit167.unr-lcssa, label %.lr.ph.split.us.split.us.split, !llvm.loop !90
end_hunk_0
