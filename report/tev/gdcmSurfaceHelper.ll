Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmSurfaceHelper?download=true
inline.NumInlined: 110
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper8RGBToXYZERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !16
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.k = fcmp ogt float %i.f, 4.045000e-02
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.l = fadd nnan float %i.f, 5.500000e-02
  %i.m = fmul nnan float %i.l, f0x3F72A76F
  %i.n = tail call float @powf(float noundef %i.m, float noundef 2.400000e+00) #6
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.o = fmul float %i.f, f0x3D9E8391
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi float [ %i.n, %bb.a ], [ %i.o, %bb.b ]
  %i.p = fcmp ogt float %i.h, 4.045000e-02
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fadd nnan float %i.h, 5.500000e-02
  %i.r = fmul nnan float %i.q, f0x3F72A76F
  %i.s = tail call float @powf(float noundef %i.r, float noundef 2.400000e+00) #6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = fmul float %i.h, f0x3D9E8391
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.0 = phi float [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  %i.u = fcmp ogt float %i.j, 4.045000e-02
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = fadd nnan float %i.j, 5.500000e-02
  %i.w = fmul nnan float %i.v, f0x3F72A76F
  %i.x = tail call float @powf(float noundef %i.w, float noundef 2.400000e+00) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = fmul float %i.j, f0x3D9E8391
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.24.0 = phi float [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  %2 = fmul float %.sroa.0.0, 1.000000e+02        ; 2 uses
  %3 = fmul float %.sroa.13.0, 1.000000e+02       ; 2 uses
  %4 = fmul float %.sroa.24.0, 1.000000e+02       ; 2 uses
  %5 = insertelement <2 x float> poison, float %3, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %6, <float 3.576000e-01, float 7.152000e-01>
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %i.aa = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 4.124000e-01, float 2.126000e-01>, <2 x float> %i.z)
  %8 = insertelement <2 x float> poison, float %4, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float 1.805000e-01, float 7.220000e-02>, <2 x float> %i.ab)
  store <2 x float> %10, ptr %i.c, align 4, !tbaa !16
  %11 = fmul float %3, 1.192000e-01
  %12 = tail call float @llvm.fmuladd.f32(float %2, float 1.930000e-02, float %11)
  %i.ac = tail call float @llvm.fmuladd.f32(float %4, float 9.505000e-01, float %12)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !16
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
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !16
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !16
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
  store float %storemerge, ptr %i.c, align 4, !tbaa !16
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
  store float %storemerge13, ptr %i.t, align 4, !tbaa !16
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
  store float %storemerge14, ptr %i.aj, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper11XYZToCIELabERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !16
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
  %i.i = fmul float %i.h, f0x3C23D70A             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !16
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
  store float %i.z, ptr %i.c, align 4, !tbaa !16
  %i.aa = fsub float %.sroa.0.0, %.sroa.9.0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = fsub float %.sroa.9.0, %.sroa.18.0
  %i.ad = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.ac, i64 1
  %i.af = fmul <2 x float> %i.ae, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.af, ptr %i.ab, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm13SurfaceHelper11CIELabToXYZERKNSt3__16vectorIfNS1_9allocatorIfEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #5 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !16
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = fadd float %i.f, 1.600000e+01
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !16
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
end_hunk_0
