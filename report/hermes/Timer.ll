Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Timer?download=true
inline.NumInlined: 939
inline.NumDeleted: 457
begin_hunk_0_@_ZN4llvh10TimeRecord14getCurrentTimeEb:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0.i1, ptr %i.i, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %_ZL11getMemUsagev.exit2, %_ZL11getMemUsagev.exit
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !68
  %i.j = load i64, ptr %3, align 8, !tbaa !70
  %i.k = sitofp i64 %i.j to double
  %i.l = sitofp i64 %.sroa.0.0.copyload.i to double
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fdiv <2 x double> %i.n, splat (double 1.000000e+09)
  store <2 x double> %i.o, ptr %0, align 8, !tbaa !71
  %i.p = load i64, ptr %4, align 8, !tbaa !70
  %i.q = sitofp i64 %i.p to double
  %i.r = fdiv double %i.q, 1.000000e+09
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.r, ptr %i.s, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare void @_ZN4llvh3sys7Process12GetTimeUsageERNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5Timer10startTimerEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((32, 64), (128, 130)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %2 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %3 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.a, align 1, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22, !noalias !137
  store i64 0, ptr %1, align 8, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !137
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 152), align 8, !tbaa !66, !range !55, !noalias !137, !noundef !56
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4llvh10TimeRecord14getCurrentTimeEb.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN4llvh3sys7Process14GetMallocUsageEv() #22, !noalias !137
  br label %_ZN4llvh10TimeRecord14getCurrentTimeEb.exit

_ZN4llvh10TimeRecord14getCurrentTimeEb.exit:      ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4llvh3sys7Process12GetTimeUsageERNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #22, !noalias !137
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !68, !noalias !137
  %i.f = load i64, ptr %2, align 8, !tbaa !70, !noalias !137
  %i.g = load i64, ptr %3, align 8, !tbaa !70, !noalias !137
  %i.h = sitofp i64 %i.g to double
  %i.i = fdiv double %i.h, 1.000000e+09
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sitofp i64 %i.f to double
  %i.l = sitofp i64 %.sroa.0.0.copyload.i.i to double
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fdiv <2 x double> %i.n, splat (double 1.000000e+09)
  store <2 x double> %i.o, ptr %i.j, align 8, !tbaa !71
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !71
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.0.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5Timer9stopTimerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((128, 129)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %2 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %3 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22, !noalias !140
  store i64 0, ptr %1, align 8, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !140
  call void @_ZN4llvh3sys7Process12GetTimeUsageERNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #22, !noalias !140
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 152), align 8, !tbaa !66, !range !55, !noalias !140, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvh10TimeRecord14getCurrentTimeEb.exit

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @_ZN4llvh3sys7Process14GetMallocUsageEv() #22, !noalias !140
  br label %_ZN4llvh10TimeRecord14getCurrentTimeEb.exit

_ZN4llvh10TimeRecord14getCurrentTimeEb.exit:      ; preds = %bb.a, %bb.b
  %.0.i1.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !68, !noalias !140
  %i.e = load i64, ptr %2, align 8, !tbaa !70, !noalias !140
  %i.f = load i64, ptr %3, align 8, !tbaa !70, !noalias !140
  %i.g = sitofp i64 %i.f to double
  %i.h = fdiv double %i.g, 1.000000e+09
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !72
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = add nsw i64 %i.m, %.0.i1.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = sitofp i64 %i.e to double
  %i.q = sitofp i64 %.sroa.0.0.copyload.i.i to double
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fdiv <2 x double> %i.s, splat (double 1.000000e+09)
  %i.u = load <2 x double>, ptr %0, align 8, !tbaa !71
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = load <2 x double>, ptr %i.o, align 8, !tbaa !71
  %i.x = fsub <2 x double> %i.v, %i.w
  store <2 x double> %i.x, ptr %0, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load double, ptr %i.y, align 8, !tbaa !72
  %i.aa = fsub double %i.k, %i.z
  store double %i.aa, ptr %i.i, align 8, !tbaa !72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ad = sub nsw i64 %i.n, %i.ac
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvh5Timer5clearEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((0, 64), (128, 130)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.a, align 1, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.b, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh10TimeRecord5printERKS0_RNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvh::format_object.28", align 8 ; 7 uses
  %4 = alloca %"class.llvh::format_object.28", align 8 ; 7 uses
  %5 = alloca %"class.llvh::format_object.28", align 8 ; 7 uses
  %6 = alloca %"class.llvh::format_object.28", align 8 ; 7 uses
  %7 = alloca %"class.llvh::format_object", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !73 ; 3 uses
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %_ZL8printValddRN4llvh11raw_ostreamE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp olt double %i.b, f0x3E7AD7F29ABCAF48
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 18
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.33, i64 noundef 18) #22 ; 0 uses
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.h, ptr noundef nonnull align 1 dereferenceable(18) @.str.33, i64 18, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  store ptr %i.o, ptr %i.g, align 8, !tbaa !31
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.r = fmul double %i.q, 1.000000e+02
  %i.s = fdiv double %i.r, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.34, ptr %i.t, align 8, !tbaa !75, !alias.scope !151
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %6, align 8, !tbaa !13, !alias.scope !151
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.s, ptr %i.u, align 8, !tbaa !77, !alias.scope !151
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %i.q, ptr %i.v, align 8, !tbaa !79, !alias.scope !151
  %i.w = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %6) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit

_ZL8printValddRN4llvh11raw_ostreamE.exit:         ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !72 ; 3 uses
  %i.z = fcmp une double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.g, label %_ZL8printValddRN4llvh11raw_ostreamE.exit15

bb.g:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit
  %i.aa = fcmp olt double %i.y, f0x3E7AD7F29ABCAF48
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, 18
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.33, i64 noundef 18) #22 ; 0 uses
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit15

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ae, ptr noundef nonnull align 1 dereferenceable(18) @.str.33, i64 18, i1 false)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !31
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit15

bb.k:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ao = fmul double %i.an, 1.000000e+02
  %i.ap = fdiv double %i.ao, %i.y
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.34, ptr %i.aq, align 8, !tbaa !75, !alias.scope !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %5, align 8, !tbaa !13, !alias.scope !152
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ap, ptr %i.ar, align 8, !tbaa !77, !alias.scope !152
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %i.an, ptr %i.as, align 8, !tbaa !79, !alias.scope !152
  %i.at = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit15

_ZL8printValddRN4llvh11raw_ostreamE.exit15:       ; preds = %bb.k, %bb.j, %bb.i, %_ZL8printValddRN4llvh11raw_ostreamE.exit
  %8 = load <2 x double>, ptr %i.a, align 8, !tbaa !71
  %9 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %8) ; 3 uses
  %i.au = fcmp une double %9, 0.000000e+00
  br i1 %i.au, label %bb.l, label %_ZL8printValddRN4llvh11raw_ostreamE.exit16

bb.l:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit15
  %i.av = fcmp olt double %9, f0x3E7AD7F29ABCAF48
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, 18
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.33, i64 noundef 18) #22 ; 0 uses
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit16

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.az, ptr noundef nonnull align 1 dereferenceable(18) @.str.33, i64 18, i1 false)
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !31
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit16

bb.p:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !72
  %i.bl = fadd double %i.bi, %i.bk                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bm = fmul double %i.bl, 1.000000e+02
  %i.bn = fdiv double %i.bm, %9
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.34, ptr %i.bo, align 8, !tbaa !75, !alias.scope !153
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %4, align 8, !tbaa !13, !alias.scope !153
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.bn, ptr %i.bp, align 8, !tbaa !77, !alias.scope !153
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.bl, ptr %i.bq, align 8, !tbaa !79, !alias.scope !153
  %i.br = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit16

_ZL8printValddRN4llvh11raw_ostreamE.exit16:       ; preds = %bb.p, %bb.o, %bb.n, %_ZL8printValddRN4llvh11raw_ostreamE.exit15
  %i.bs = load double, ptr %1, align 8, !tbaa !80 ; 2 uses
  %i.bt = fcmp olt double %i.bs, f0x3E7AD7F29ABCAF48
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit16
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !31 ; 2 uses
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult i64 %i.ca, 18
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.33, i64 noundef 18) #22 ; 0 uses
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit17

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bx, ptr noundef nonnull align 1 dereferenceable(18) @.str.33, i64 18, i1 false)
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 18
  store ptr %i.ce, ptr %i.bw, align 8, !tbaa !31
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit17

bb.t:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit16
  %i.cf = load double, ptr %0, align 8, !tbaa !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cg = fmul double %i.cf, 1.000000e+02
  %i.ch = fdiv double %i.cg, %i.bs
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.34, ptr %i.ci, align 8, !tbaa !75, !alias.scope !154
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJddEEE, i64 16), ptr %3, align 8, !tbaa !13, !alias.scope !154
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ch, ptr %i.cj, align 8, !tbaa !77, !alias.scope !154
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.cf, ptr %i.ck, align 8, !tbaa !79, !alias.scope !154
  %i.cl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZL8printValddRN4llvh11raw_ostreamE.exit17

_ZL8printValddRN4llvh11raw_ostreamE.exit17:       ; preds = %bb.r, %bb.s, %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit17
  %i.cu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.9, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.v:                                             ; preds = %_ZL8printValddRN4llvh11raw_ostreamE.exit17
  store i16 8224, ptr %i.cp, align 1
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !31
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.u, %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !67
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.10, ptr %i.db, align 8, !tbaa !75, !alias.scope !155
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJlEEE, i64 16), ptr %7, align 8, !tbaa !13, !alias.scope !155
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !157, !alias.scope !155
  %i.dd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %7) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4llvh11raw_ostreamlsEPKc.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh16NamedRegionTimerC2ENS_9StringRefES1_S1_S1_b(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %6, i1 noundef zeroext %7) unnamed_addr #1 align 2 {
bb.a:
  %8 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %9 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  %10 = alloca %"class.std::chrono::duration", align 8 ; 4 uses
  br i1 %7, label %bb.b, label %_ZN12_GLOBAL__N_112Name2PairMap3getEN4llvh9StringRefES2_S2_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic ptr, ptr @_ZL18NamedGroupedTimers acquire, align 8
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_112Name2PairMapENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL18NamedGroupedTimers, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_112Name2PairMapEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_112Name2PairMapEE4callEPv) #22
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_112Name2PairMapENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_112Name2PairMapENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.b, %bb.c
  %i.b = load atomic ptr, ptr @_ZL18NamedGroupedTimers monotonic, align 8
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !81 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %6, align 8, !tbaa !81
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !68
  %i.c = load atomic ptr, ptr @_ZL9TimerLock acquire, align 8
  %.not.i.i7 = icmp eq ptr %i.c, null
  br i1 %.not.i.i7, label %bb.d, label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_112Name2PairMapENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL9TimerLock, ptr noundef nonnull @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv) #22
  br label %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i: ; preds = %bb.d, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_112Name2PairMapENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.d = load atomic ptr, ptr @_ZL9TimerLock monotonic, align 8 ; 4 uses
  %i.e = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #22
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.f = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(13) %i.d) #22 ; 0 uses
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

bb.f:                                             ; preds = %_ZN4llvh13ManagedStaticINS_3sys10SmartMutexILb1EEENS_14object_creatorIS3_EENS_14object_deleterIS3_EEEdeEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !44
  br label %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i

_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i: ; preds = %bb.f, %bb.e
  %i.j = tail call { ptr, i8 } @_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E11try_emplaceIJEEES1_INS_17StringMapIteratorIS7_EEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.09.0.copyload, i64 %.sroa.2.0.copyload)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.j, 0
  %i.k = load ptr, ptr %.fca.0.extract.i.i, align 8, !tbaa !83 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.n = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #24 ; 2 uses
  tail call void @_ZN4llvh10TimerGroupC2ENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr %.sroa.09.0.copyload, i64 %.sroa.2.0.copyload, ptr %.sroa.012.0.copyload, i64 %.sroa.213.0.copyload)
  store ptr %i.n, ptr %i.l, align 8, !tbaa !160
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvh3sys15SmartScopedLockILb1EEC2ERNS0_10SmartMutexILb1EEE.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = tail call { ptr, i8 } @_ZN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %i.o, ptr %1, i64 %2)
  %.fca.0.extract.i22.i = extractvalue { ptr, i8 } %i.p, 0
  %i.q = load ptr, ptr %.fca.0.extract.i22.i, align 8, !tbaa !83 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %.not23.i = icmp eq ptr %i.t, null
  br i1 %.not23.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !160
  tail call void @_ZN4llvh5Timer4initENS_9StringRefES1_RNS_10TimerGroupE(ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(112) %i.u)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = tail call noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() #22
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(13) %i.d) #22 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !44
  br label %bb.m

_ZN12_GLOBAL__N_112Name2PairMap3getEN4llvh9StringRefES2_S2_S2_.exit: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !162
  br label %_ZN4llvh10TimeRegionC2EPNS_5TimerE.exit

end_hunk_0
begin_hunk_1_@_ZN4llvh14object_deleterIN12_GLOBAL__N_112Name2PairMapEE4callEPv:bb.a
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 8 uses
  %magicptr = ptrtoint ptr %i.i to i64
  switch i64 %magicptr, label %bb.c [
    i64 0, label %bb.f
    i64 -8, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN4llvh10TimerGroup11removeTimerERNS_5TimerE(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !24
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit

_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @free(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #22
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !243

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.y) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Timer.cpp() #17 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 8), align 8, !tbaa !244
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  %i.b = and i16 %i.a, -4096
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 72), align 8, !tbaa !245
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 80), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 88), align 8, !tbaa !17
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 96), align 8, !tbaa !246
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 100), align 4, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 104), align 8, !tbaa !248
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 144), align 8, !tbaa !249
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 152), align 8, !tbaa !66
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 160), align 8, !tbaa !13
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 169), align 1, !tbaa !108
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 168), align 8, !tbaa !250
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN12_GLOBAL__N_110TrackSpaceE, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 176), align 8, !tbaa !13
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_110TrackSpaceE, ptr nonnull align 1 dereferenceable(13) @.str, i64 12) #22
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 40), align 8, !tbaa !81
  store i64 54, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 48), align 8, !tbaa !68
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  %i.d = and i16 %i.c, -97
  %i.e = or disjoint i16 %i.d, 32
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  tail call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_110TrackSpaceE) #22
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZN12_GLOBAL__N_110TrackSpaceE, ptr nonnull @__dso_handle) #22 ; 0 uses
  %i.g = load atomic ptr, ptr @_ZL28LibSupportInfoOutputFilenameB5cxx11 acquire, align 8
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL28LibSupportInfoOutputFilenameB5cxx11, ptr noundef nonnull @_ZN4llvh14object_creatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4callEPv) #22
  br label %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i

_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i: ; preds = %bb.b, %bb.a
  %i.h = load atomic ptr, ptr @_ZL28LibSupportInfoOutputFilenameB5cxx11 monotonic, align 8 ; 2 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 8), align 8, !tbaa !244
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.j = and i16 %i.i, -4096
  store i16 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 72), align 8, !tbaa !245
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 80), align 8, !tbaa !18
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 88), align 8, !tbaa !17
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 96), align 8, !tbaa !246
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 100), align 4, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 104), align 8, !tbaa !248
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 144), align 8, !tbaa !249
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !112
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 168), align 8, !tbaa !89
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 176), align 8, !tbaa !25
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 184), align 8, !tbaa !24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 200), align 8, !tbaa !105
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 160), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEEE, i64 16), ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 208), align 8, !tbaa !13
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr nonnull @.str.3, i64 16) #22
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 56), align 8, !tbaa !81
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 64), align 8, !tbaa !68
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 40), align 8, !tbaa !81
  store i64 42, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 48), align 8, !tbaa !68
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.l = and i16 %i.k, -97
  %i.m = or disjoint i16 %i.l, 32
  store i16 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !112
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !253
  store ptr @.str.40, ptr %0, align 8, !tbaa !24
  store i8 3, ptr %i.o, align 8, !tbaa !254
  %i.q = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #22
  %i.r = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(18) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.q) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %__cxx_global_var_init.2.exit

bb.d:                                             ; preds = %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !112
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 200), align 8, !tbaa !105
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 168), ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22
  br label %__cxx_global_var_init.2.exit

__cxx_global_var_init.2.exit:                     ; preds = %bb.c, %bb.d
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E) #22
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{!1, !96}
!2 = distinct !{!2, !96}
!3 = distinct !{!3, !96}
!4 = distinct !{!4, !96}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !15, i64 0, !15, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!17 = !{!16, !15, i64 8}
!18 = !{!16, !15, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !9, i64 16}
!23 = !{!22, !19, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!22, !21, i64 8}
!26 = !{!"p1 _ZTSN4llvh14raw_fd_ostreamE", !14, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !9, i64 0}
!29 = !{!"_ZTSN4llvh11raw_ostreamE", !19, i64 8, !19, i64 16, !19, i64 24, !28, i64 32}
!30 = !{!29, !19, i64 16}
!31 = !{!29, !19, i64 24}
!32 = !{!"double", !9, i64 0}
!33 = !{!"_ZTSN4llvh10TimeRecordE", !32, i64 0, !32, i64 8, !32, i64 16, !21, i64 24}
!34 = !{!"bool", !9, i64 0}
!35 = !{!"p1 _ZTSN4llvh10TimerGroupE", !14, i64 0}
!36 = !{!"p2 _ZTSN4llvh5TimerE", !15, i64 0}
!37 = !{!"p1 _ZTSN4llvh5TimerE", !14, i64 0}
!38 = !{!"_ZTSN4llvh5TimerE", !33, i64 0, !33, i64 32, !22, i64 64, !22, i64 96, !34, i64 128, !34, i64 129, !35, i64 136, !36, i64 144, !37, i64 152}
!39 = !{!38, !34, i64 129}
!40 = !{!38, !34, i64 128}
!41 = !{!38, !35, i64 136}
!42 = !{!"_ZTSN4llvh3sys9MutexImplE", !14, i64 0}
!43 = !{!"_ZTSN4llvh3sys10SmartMutexILb1EEE", !42, i64 0, !10, i64 8, !34, i64 12}
!44 = !{!43, !10, i64 8}
!45 = !{!"p1 _ZTSN4llvh10TimerGroup11PrintRecordE", !14, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE", !48, i64 0}
!50 = !{!"p2 _ZTSN4llvh10TimerGroupE", !15, i64 0}
!51 = !{!"_ZTSN4llvh10TimerGroupE", !22, i64 0, !22, i64 32, !37, i64 64, !49, i64 72, !50, i64 96, !35, i64 104}
!52 = !{!51, !37, i64 64}
!53 = !{!38, !36, i64 144}
!54 = !{!38, !37, i64 152}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!46, !45, i64 8}
!58 = !{!46, !45, i64 16}
!59 = !{!37, !37, i64 0}
!60 = !{!45, !45, i64 0}
!61 = !{!"_ZTSN4llvh2cl18GenericOptionValueE"}
!62 = !{!"_ZTSN4llvh2cl15OptionValueCopyIbEE", !61, i64 0, !34, i64 8, !34, i64 9}
!63 = !{!"_ZTSN4llvh2cl15OptionValueBaseIbLb0EEE", !62, i64 0}
!64 = !{!"_ZTSN4llvh2cl11OptionValueIbEE", !63, i64 0}
!65 = !{!"_ZTSN4llvh2cl11opt_storageIbLb0ELb0EEE", !34, i64 0, !64, i64 8}
!66 = !{!65, !34, i64 0}
!67 = !{!33, !21, i64 24}
!68 = !{!21, !21, i64 0}
!69 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !21, i64 0}
!70 = !{!69, !21, i64 0}
!71 = !{!32, !32, i64 0}
!72 = !{!33, !32, i64 16}
!73 = !{!33, !32, i64 8}
!74 = !{!"_ZTSN4llvh18format_object_baseE", !19, i64 8}
!75 = !{!74, !19, i64 8}
!76 = !{!"_ZTSSt10_Head_baseILm1EdLb0EE", !32, i64 0}
!77 = !{!76, !32, i64 0}
!78 = !{!"_ZTSSt10_Head_baseILm0EdLb0EE", !32, i64 0}
!79 = !{!78, !32, i64 0}
!80 = !{!33, !32, i64 0}
!81 = !{!19, !19, i64 0}
!82 = !{!"p1 _ZTSN4llvh18StringMapEntryBaseE", !14, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p2 _ZTSN4llvh18StringMapEntryBaseE", !15, i64 0}
!85 = !{!"_ZTSN4llvh13StringMapImplE", !84, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!86 = !{!"_ZTSN4llvh15MallocAllocatorE"}
!87 = !{!"_ZTSN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEEE", !85, i64 0, !86, i64 24}
!88 = !{!"_ZTSSt4pairIPN4llvh10TimerGroupENS0_9StringMapINS0_5TimerENS0_15MallocAllocatorEEEE", !35, i64 0, !87, i64 8}
!89 = !{!20, !19, i64 0}
!90 = !{!35, !35, i64 0}
!91 = !{!51, !50, i64 96}
!92 = !{!51, !35, i64 104}
!93 = !{!85, !10, i64 12}
!94 = !{!85, !84, i64 0}
!95 = !{!85, !10, i64 8}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"_ZTSN4llvh18StringMapEntryBaseE", !21, i64 0}
!98 = !{!97, !21, i64 0}
!99 = !{!46, !45, i64 0}
!100 = !{!"_ZTSN4llvh9StringRefE", !19, i64 0, !21, i64 8}
!101 = !{!100, !19, i64 0}
!102 = !{!100, !21, i64 8}
!103 = !{i64 0, i64 8, !71, i64 8, i64 8, !71, i64 16, i64 8, !71, i64 24, i64 8, !68}
!104 = !{!"_ZTSN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !61, i64 0, !22, i64 8, !34, i64 40}
!105 = !{!104, !34, i64 40}
!106 = !{!85, !10, i64 16}
!107 = !{!85, !10, i64 20}
!108 = !{!62, !34, i64 9}
!109 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!110 = !{!"_ZTSN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !104, i64 0}
!111 = !{!"_ZTSN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEE", !109, i64 0, !110, i64 8}
!112 = !{!111, !109, i64 0}
!113 = !{!"p1 _ZTSN4llvh2cl14OptionCategoryE", !14, i64 0}
!114 = !{!"_ZTSN4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !16, i64 0}
!115 = !{!"_ZTSN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEE", !114, i64 0, !9, i64 32}
!116 = !{!"_ZTSN4llvh2cl6OptionE", !10, i64 8, !10, i64 12, !10, i64 12, !10, i64 12, !10, i64 12, !10, i64 13, !10, i64 16, !10, i64 20, !100, i64 24, !100, i64 40, !100, i64 56, !113, i64 72, !115, i64 80, !34, i64 144}
!117 = distinct !{!117, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!118 = distinct !{!118, !117, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!119 = distinct !{!119, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!120 = distinct !{!120, !119, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!121 = distinct !{!121, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codeNS_3sys2fs9OpenFlagsEEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISG_St14default_deleteISG_EEE4typeEDpOT0_"}
!122 = distinct !{!122, !121, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codeNS_3sys2fs9OpenFlagsEEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISG_St14default_deleteISG_EEE4typeEDpOT0_: argument 0"}
!123 = distinct !{!123, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!124 = distinct !{!124, !123, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!125 = distinct !{null, null}
!126 = !{!118}
!127 = !{!120}
!128 = !{!"p1 _ZTSNSt3_V214error_categoryE", !14, i64 0}
!129 = !{!"_ZTSSt10error_code", !10, i64 0, !128, i64 8}
!130 = !{!129, !10, i64 0}
!131 = !{!129, !128, i64 8}
!132 = !{!122}
!133 = !{!124}
!134 = distinct !{null, null}
!135 = distinct !{!135, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!136 = distinct !{!136, !135, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!139 = distinct !{!139, !138, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!142 = distinct !{!142, !141, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!143 = distinct !{!143, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!144 = distinct !{!144, !143, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!145 = distinct !{!145, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!146 = distinct !{!146, !145, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!147 = distinct !{!147, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!148 = distinct !{!148, !147, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!149 = distinct !{!149, !"_ZN4llvh6formatIJlEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!150 = distinct !{!150, !149, !"_ZN4llvh6formatIJlEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!151 = !{!142}
!152 = !{!144}
!153 = !{!146}
!154 = !{!148}
!155 = !{!150}
!156 = !{!"_ZTSSt10_Head_baseILm0ElLb0EE", !21, i64 0}
!157 = !{!156, !21, i64 0}
!158 = distinct !{!158, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!159 = distinct !{!159, !158, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!160 = !{!88, !35, i64 0}
!161 = !{!"_ZTSN4llvh10TimeRegionE", !37, i64 0}
!162 = !{!161, !37, i64 0}
!163 = !{!159}
!164 = distinct !{!164, !96}
!165 = distinct !{!165, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
end_hunk_1
