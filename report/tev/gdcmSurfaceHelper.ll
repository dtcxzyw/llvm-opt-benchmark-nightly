Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmSurfaceHelper?download=true
inline.NumInlined: 110
inline.NumDeleted: 65
begin_hunk_0_@_ZN4gdcm13SurfaceHelper8RGBToXYZERKNSt3__16vectorIfNS1_9allocatorIfEEEE:_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.ab = fmul float %.sroa.24.0, 1.000000e+02    ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, <float 3.576000e-01, float 7.152000e-01>
  %i.af = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> <float 4.124000e-01, float 2.126000e-01>, <2 x float> %i.ae)
  %i.ai = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> <float 1.805000e-01, float 7.220000e-02>, <2 x float> %i.ah)
  store <2 x float> %i.ak, ptr %i.c, align 4, !tbaa !17
  %i.al = fmul float %i.aa, 1.192000e-01
  %i.am = tail call float @llvm.fmuladd.f32(float %i.z, float 1.930000e-02, float %i.al)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ab, float 9.505000e-01, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.an, ptr %i.ao, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper8XYZToRGBERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !17
  %i.k = fmul float %i.f, f0x3C23D70A             ; 3 uses
  %i.l = fmul float %i.h, f0x3C23D70A             ; 3 uses
  %i.m = fmul float %i.j, f0x3C23D70A             ; 3 uses
  %i.n = fmul float %i.l, -1.537200e+00
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float 3.240600e+00, float %i.n)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float -4.986000e-01, float %i.o) ; 3 uses
  %i.q = fmul float %i.l, 1.875800e+00
  %i.r = tail call float @llvm.fmuladd.f32(float %i.k, float -9.689000e-01, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.m, float 4.150000e-02, float %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = fmul float %i.l, -2.040000e-01
  %i.v = tail call float @llvm.fmuladd.f32(float %i.k, float 5.570000e-02, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.m, float 1.057000e+00, float %i.v) ; 3 uses
  %i.x = fcmp ogt float %i.p, 3.130800e-03
  br i1 %i.x, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.y = tail call float @powf(float noundef %i.p, float noundef f0x3ED55555) #6
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 1.055000e+00, float -5.500000e-02)
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.aa = fmul float %i.p, 1.292000e+01
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi float [ %i.aa, %bb.b ], [ %i.z, %bb.a ]
  store float %storemerge, ptr %i.c, align 4, !tbaa !17
  %i.ab = fcmp ogt float %i.s, 3.130800e-03
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call float @powf(float noundef %i.s, float noundef f0x3ED55555) #6
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 1.055000e+00, float -5.500000e-02)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = fmul float %i.s, 1.292000e+01
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge13 = phi float [ %i.ae, %bb.e ], [ %i.ad, %bb.d ]
  store float %storemerge13, ptr %i.t, align 4, !tbaa !17
  %i.af = fcmp ogt float %i.w, 3.130800e-03
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call float @powf(float noundef %i.w, float noundef f0x3ED55555) #6
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 1.055000e+00, float -5.500000e-02)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = fmul float %i.w, 1.292000e+01
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %storemerge14 = phi float [ %i.ai, %bb.h ], [ %i.ah, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %storemerge14, ptr %i.aj, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper11XYZToCIELabERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !17
  %i.i = fmul float %i.h, f0x3C23D70A             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !17
  %i.l = insertelement <2 x float> poison, float %i.f, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fdiv <2 x float> %i.m, <float f0x42BE1810, float 1.088830e+02> ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 3 uses
  %i.p = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.q = fcmp ogt float %i.p, 8.856000e-03
  br i1 %i.q, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.r = tail call float @powf(float noundef %i.p, float noundef f0x3EAAAAAB) #6
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi float [ %i.r, %bb.a ], [ %i.s, %bb.b ]
  %i.t = fcmp ogt float %i.i, 8.856000e-03
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call float @powf(float noundef %i.i, float noundef f0x3EAAAAAB) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = tail call float @llvm.fmuladd.f32(float %i.i, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.9.0 = phi float [ %i.u, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = fcmp ogt float %i.o, 8.856000e-03
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = tail call float @powf(float noundef %i.o, float noundef f0x3EAAAAAB) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = tail call float @llvm.fmuladd.f32(float %i.o, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.18.0 = phi float [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.9.0, float 1.160000e+02, float -1.600000e+01)
  store float %i.z, ptr %i.c, align 4, !tbaa !17
  %i.aa = fsub float %.sroa.0.0, %.sroa.9.0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = fsub float %.sroa.9.0, %.sroa.18.0
  %i.ad = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.ac, i64 1
  %i.af = fmul <2 x float> %i.ae, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.af, ptr %i.ab, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper11CIELabToXYZERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !17
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !17
  %i.g = fadd float %i.f, 1.600000e+01
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !17
  %i.l = fneg float %i.k
  %i.m = fdiv float %i.g, 1.160000e+02            ; 2 uses
  %i.n = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.i, i64 0
  %i.o = insertelement <2 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> <float 2.000000e-03, float 0.000000e+00>, <2 x float> %i.p) ; 4 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.l, float 5.000000e-03, float %i.m) ; 4 uses
  %i.s = fmul <2 x float> %i.q, %i.q
  %i.t = fmul <2 x float> %i.q, %i.s              ; 2 uses
  %i.u = fmul float %i.r, %i.r
  %i.v = fmul float %i.r, %i.u                    ; 2 uses
  %i.w = fcmp ogt <2 x float> %i.t, splat (float 8.856000e-03)
  %i.x = fadd <2 x float> %i.q, splat (float f0xBE0D3DCB)
  %i.y = fdiv <2 x float> %i.x, splat (float 7.787000e+00)
  %i.z = select <2 x i1> %i.w, <2 x float> %i.t, <2 x float> %i.y
  %i.aa = fcmp ogt float %i.v, 8.856000e-03
  %i.ab = fadd float %i.r, f0xBE0D3DCB
  %i.ac = fdiv float %i.ab, 7.787000e+00
  %.sroa.20.0 = select i1 %i.aa, float %i.v, float %i.ac
  %i.ad = fmul <2 x float> %i.z, <float f0x42BE1810, float 1.000000e+02>
  store <2 x float> %i.ad, ptr %i.c, align 4, !tbaa !17
  %i.ae = fmul float %.sroa.20.0, 1.088830e+02
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.ae, ptr %i.af, align 4, !tbaa !17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 float", !9, i64 0}
!11 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !10, i64 0}
!12 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !11, i64 0}
!13 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !10, i64 0, !10, i64 8, !12, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!13, !10, i64 8}
end_hunk_0
