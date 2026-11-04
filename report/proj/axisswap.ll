Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/axisswap?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z8pj_paramP6pj_ctxP8ARG_listPKc
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL22pj_axisswap_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.b, align 4, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !41
  %i.x = load <2 x i32>, ptr %i.c, align 4, !tbaa !40
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = insertelement <2 x double> poison, double %i.g, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.l, i64 1
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x i32>, ptr %i.r, align 4, !tbaa !40
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.q, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.w, i64 1
  %i.ag = fmul <2 x double> %i.af, %i.ad
  store <2 x double> %i.ab, ptr %0, align 8
  store <2 x double> %i.ag, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL22pj_axisswap_reverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %2 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.b, align 4, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.n
  %i.p = load <4 x i32>, ptr %i.c, align 4, !tbaa !40
  %i.q = sitofp <4 x i32> %i.p to <4 x double>    ; 2 uses
  %i.r = load <2 x double>, ptr %0, align 8, !tbaa !41
  %i.s = shufflevector <4 x double> %i.q, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.t = fmul <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  store double %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = extractelement <2 x double> %i.t, i64 1
  store double %i.v, ptr %i.j, align 8, !tbaa !41
  %i.w = load <2 x double>, ptr %i.k, align 8, !tbaa !41
  %i.x = shufflevector <4 x double> %i.q, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.y = fmul <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  store double %i.z, ptr %i.o, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = extractelement <2 x double> %i.y, i64 1
  store double %i.ae, ptr %i.ad, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22pj_axisswap_forward_3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 16           ; 7 uses
  %4 = alloca %union.PJ_COORD, align 8            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !42
  store <2 x double> %i.c, ptr %3, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.e, ptr %i.f, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.b, align 4, !tbaa !40
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = sitofp i32 %i.w to double
  %i.y = fmul double %i.u, %i.x
  %i.z = load <2 x i32>, ptr %i.g, align 4, !tbaa !40
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.p, i64 1
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  store <2 x double> %i.ad, ptr %0, align 8, !tbaa !42
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %.sroa.6.0..sroa_idx12, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22pj_axisswap_reverse_3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %i.c = load double, ptr %1, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul double %i.c, %i.j
  %i.l = load i32, ptr %i.b, align 4, !tbaa !40
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  store double %i.k, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul double %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u
  store double %i.r, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = sitofp i32 %i.x to double
  %i.z = fmul double %i.g, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.z, ptr %i.ad, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL10swap_xy_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !42
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL22pj_axisswap_forward_2d5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = load <2 x i32>, ptr %i.b, align 4, !tbaa !40
  %4 = icmp eq <2 x i32> %3, splat (i32 1)
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x double> poison, double %0, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = select <2 x i1> %4, <2 x double> %6, <2 x double> %8
  %10 = load <2 x i32>, ptr %i.c, align 4, !tbaa !40
  %11 = sitofp <2 x i32> %10 to <2 x double>
  %12 = fmul <2 x double> %9, %11                 ; 2 uses
  %vec2struct.slot.sroa.0.0.vec.extract = extractelement <2 x double> %12, i64 0
  %13 = insertvalue { double, double } poison, double %vec2struct.slot.sroa.0.0.vec.extract, 0
  %vec2struct.slot.sroa.0.8.vec.extract = extractelement <2 x double> %12, i64 1
  %.fca.1.insert = insertvalue { double, double } %13, double %vec2struct.slot.sroa.0.8.vec.extract, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL22pj_axisswap_reverse_2d5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = sitofp i32 %i.d to double
  %i.f = fmul double %0, %i.e
  %i.g = load i32, ptr %i.b, align 4, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h
  store double %i.f, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %i.l = sitofp i32 %i.k to double
  %i.m = fmul double %1, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.p
  store double %i.m, ptr %i.q, align 8, !tbaa !41
  %.sroa.07.0.copyload = load double, ptr %3, align 8, !tbaa !42
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.28.0.copyload = load double, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.07.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.28.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !15, i64 380}
!38 = !{!36, !15, i64 384}
!39 = !{!36, !8, i64 88}
!40 = !{!5, !5, i64 0}
!41 = !{!4, !4, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!36, !10, i64 8}
!44 = !{!36, !10, i64 16}
!45 = !{!36, !5, i64 360}
!46 = distinct !{!46, !52}
!47 = distinct !{null}
!48 = distinct !{!48, !52}
!49 = distinct !{!49, !52}
!50 = !{!36, !11, i64 24}
!51 = !{!36, !9, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!8, !8, i64 0}
!54 = !{!36, !8, i64 136}
!55 = !{!36, !8, i64 120}
!56 = !{!36, !8, i64 104}
!57 = !{i64 0, i64 32, !41}
!58 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!59 = !{!58, !14, i64 16}
!60 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!61 = !{!60, !14, i64 0}
!62 = !{!60, !14, i64 8}
!63 = !{!60, !14, i64 16}
!64 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42}
end_hunk_0
