Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cass?download=true
begin_hunk_0_@pj_cass:bb.a

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL8des_cass, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_cassP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load double, ptr %i.a, align 8, !tbaa !37
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14cass_s_inverse5PJ_XYP8PJconsts, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14cass_s_forward5PJ_LPP8PJconsts, ptr %i.e, align 8, !tbaa !51
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.f, ptr %i.g, align 8, !tbaa !38
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL18pj_cass_destructorP8PJconstsi, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load double, ptr %i.k, align 8, !tbaa !53
  %i.m = tail call noundef ptr @_Z7pj_enfnd(double noundef %i.l) ; 3 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !41
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.q = load double, ptr %i.p, align 8, !tbaa !42 ; 3 uses
  %i.r = tail call double @sin(double noundef %i.q) #8
  %i.s = tail call double @cos(double noundef %i.q) #8
  %i.t = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %i.q, double noundef %i.r, double noundef %i.s, ptr noundef nonnull %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %i.t, ptr %i.u, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.w, ptr noundef nonnull @.str.1)
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.y, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL14cass_e_inverse5PJ_XYP8PJconsts, ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL14cass_e_forward5PJ_LPP8PJconsts, ptr %i.aa, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.b
  %.1 = phi ptr [ %0, %bb.b ], [ %i.i, %bb.d ], [ %i.o, %bb.f ], [ %0, %bb.i ]
  ret ptr %.1
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL14cass_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.b = load double, ptr %i.a, align 8, !tbaa !42
  %i.c = fadd double %1, %i.b                     ; 2 uses
  %i.d = tail call double @sin(double noundef %i.c) #8
  %i.e = tail call double @cos(double noundef %0) #8
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call double @asin(double noundef %i.f) #8
  %i.h = tail call double @tan(double noundef %0) #8
  %i.i = tail call double @cos(double noundef %i.c) #8
  %i.j = tail call double @atan2(double noundef %i.h, double noundef %i.i) #8
  %.fca.0.insert = insertvalue { double, double } poison, double %i.j, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.g, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define internal { double, double } @_ZL14cass_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = tail call double @cos(double noundef %1) #8
  %i.b = tail call double @sin(double noundef %0) #8
  %i.c = fmul double %i.a, %i.b
  %i.d = tail call double @asin(double noundef %i.c) #8
  %i.e = tail call double @tan(double noundef %1) #8
  %i.f = tail call double @cos(double noundef %0) #8
  %i.g = tail call double @atan2(double noundef %i.e, double noundef %i.f) #8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = fsub double %i.g, %i.i
  %.fca.0.insert = insertvalue { double, double } poison, double %i.d, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.j, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL18pj_cass_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.e) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.f = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %.sink.split ]
  ret ptr %.0
}

declare noundef ptr @_Z7pj_enfnd(double noundef) local_unnamed_addr #1

declare noundef double @_Z7pj_mlfndddPKd(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14cass_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !43
  %i.e = fadd double %1, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.g = tail call noundef double @_Z11pj_inv_mlfndPKd(double noundef %i.e, ptr noundef %i.f) ; 4 uses
  %i.h = tail call double @tan(double noundef %i.g) #8 ; 2 uses
  %i.i = tail call double @sin(double noundef %i.g) #8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.k = load double, ptr %i.j, align 8, !tbaa !37 ; 2 uses
  %i.l = fneg double %i.i
  %i.m = fsub double 1.000000e+00, %i.k
  %i.n = insertelement <2 x double> poison, double %i.k, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.h, i64 1 ; 2 uses
  %i.p = insertelement <2 x double> %i.o, double %i.l, i64 0
  %i.q = fmul <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = insertelement <2 x double> <double poison, double 3.000000e+00>, double %i.i, i64 0
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.r, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fdiv double 1.000000e+00, %i.t           ; 2 uses
  %3 = tail call double @sqrt(double noundef %i.u) #8 ; 3 uses
  %4 = fmul double %i.m, %i.u
  %i.v = fmul double %3, %4
  %i.w = fdiv double %0, %3                       ; 3 uses
  %i.x = fmul double %i.w, %i.w                   ; 3 uses
  %i.y = extractelement <2 x double> %i.s, i64 1
  %i.z = fmul double %i.y, %i.x                   ; 2 uses
  %i.aa = fneg double %i.z
  %i.ab = fneg double %i.x
  %i.ac = extractelement <2 x double> %i.q, i64 1
  %i.ad = fmul double %i.ac, %i.x
  %5 = tail call double @cos(double noundef %i.g) #8
  %i.ae = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.z, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> <double f0x3FA5555555555555, double f0x3FB1111111111111>, <2 x double> <double 5.000000e-01, double f0xBFD5555555555555>) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ah, double 1.000000e+00)
  %i.aj = insertelement <2 x double> poison, double %i.h, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.w, i64 1
  %i.al = insertelement <2 x double> poison, double %3, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ai, i64 1
  %i.an = fmul <2 x double> %i.ak, %i.am
  %i.ao = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %5, i64 1
  %i.aq = fdiv <2 x double> %i.an, %i.ap          ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fmul double %i.ar, %i.ab
  %i.at = extractelement <2 x double> %i.ag, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.g)
  %i.av = extractelement <2 x double> %i.aq, i64 1
  %i.aw = tail call { double, double } @_Z21pj_generic_inverse_2d5PJ_XYP8PJconsts5PJ_LPd(double %0, double %1, ptr noundef %2, double %i.av, double %i.au, double noundef f0x3D719799812DEA11)
  ret { double, double } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL14cass_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = tail call double @sin(double noundef %1) #8 ; 3 uses
  %i.d = tail call double @cos(double noundef %1) #8 ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %1, double noundef %i.c, double noundef %i.d, ptr noundef %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.h = load double, ptr %i.g, align 8, !tbaa !37 ; 3 uses
  %i.i = fneg double %i.c
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.c, double 1.000000e+00)
  %i.l = fdiv double 1.000000e+00, %i.k           ; 2 uses
  %i.m = tail call double @sqrt(double noundef %i.l) #8 ; 4 uses
  %i.n = tail call double @tan(double noundef %1) #8 ; 3 uses
  %i.o = fmul double %i.n, %i.n                   ; 3 uses
  %i.p = fmul double %0, %i.d                     ; 3 uses
  %i.q = fmul double %i.d, %i.d
  %i.r = fmul double %i.q, %i.h
  %i.s = fsub double 1.000000e+00, %i.h           ; 2 uses
  %i.t = fdiv double %i.r, %i.s                   ; 2 uses
  %i.u = fmul double %i.p, %i.p                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !43
  %i.x = fsub double %i.f, %i.w
  %i.y = fmul double %i.m, %i.n
  %i.z = fmul double %i.u, %i.y
  %i.aa = fsub double 5.000000e+00, %i.o
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.t, double 6.000000e+00, double %i.aa)
  %i.ac = fmul double %i.u, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3FA5555555555555, double 5.000000e-01)
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ad, double %i.x) ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !44, !range !55, !noundef !56
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = fmul double %i.s, %i.l
  %i.aj = fmul double %i.m, %i.ai
  %i.ak = fmul double %i.ae, %i.ae
  %i.al = fmul double %i.ae, %i.ak
  %i.am = fmul double %i.aj, 6.000000e+00
  %i.an = fmul double %i.m, %i.am
  %i.ao = fdiv double %i.al, %i.an
  %i.ap = fsub double %i.ae, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi double [ %i.ap, %bb.b ], [ %i.ae, %bb.a ]
  %i.aq = fmul double %i.p, %i.m
  %i.ar = fneg double %i.o
  %i.as = fmul double %i.u, %i.ar
  %i.at = fsub double 8.000000e+00, %i.o
  %i.au = tail call double @llvm.fmuladd.f64(double %i.t, double 8.000000e+00, double %i.at)
  %i.av = fmul double %i.u, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double f0x3F81111111111111, double f0x3FC5555555555555)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aw, double 1.000000e+00)
  %i.ay = fmul double %i.aq, %i.ax
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ay, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare noundef double @_Z11pj_inv_mlfndPKd(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare { double, double } @_Z21pj_generic_inverse_2d5PJ_XYP8PJconsts5PJ_LPd(double, double, ptr noundef, double, double, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

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
!37 = !{!36, !14, i64 216}
!38 = !{!36, !8, i64 88}
!39 = !{!"p1 double", !8, i64 0}
!40 = !{!"_ZTSN12_GLOBAL__N_19cass_dataE", !39, i64 0, !14, i64 8, !21, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!36, !14, i64 448}
!43 = !{!40, !14, i64 8}
!44 = !{!40, !21, i64 16}
!45 = !{!36, !10, i64 8}
!46 = !{!36, !10, i64 16}
!47 = !{!36, !5, i64 360}
!48 = !{!36, !15, i64 380}
!49 = !{!36, !15, i64 384}
!50 = !{!36, !8, i64 112}
!51 = !{!36, !8, i64 104}
!52 = !{!36, !8, i64 152}
!53 = !{!36, !14, i64 288}
!54 = !{!36, !11, i64 24}
!55 = !{i8 0, i8 2}
!56 = !{}
end_hunk_0
