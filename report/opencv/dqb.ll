Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dqb?download=true
inline.NumInlined: 249
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv6dynafumlEfRKNS0_10QuaternionE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN2cv6dynafumlERKNS0_10QuaternionEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::Quaternion") align 4 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.a = load <4 x float>, ptr %1, align 4, !tbaa !10, !noalias !25
  %i.b = insertelement <4 x float> poison, float %2, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer
  %i.d = fmul <4 x float> %i.c, %i.a
  store <4 x float> %i.d, ptr %0, align 4, !tbaa !10, !alias.scope !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafudvERKNS0_10QuaternionEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::Quaternion") align 4 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fdiv float 1.000000e+00, %2
  %i.b = load <4 x float>, ptr %1, align 4, !tbaa !10, !noalias !28
  %i.c = insertelement <4 x float> poison, float %i.a, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = fmul <4 x float> %i.d, %i.b
  store <4 x float> %i.e, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafuplERKNS0_10QuaternionES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::Quaternion") align 4 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load <4 x float>, ptr %1, align 4, !tbaa !10, !noalias !31
  %i.b = load <4 x float>, ptr %2, align 4, !tbaa !10, !noalias !31
  %i.c = fadd <4 x float> %i.a, %i.b
  store <4 x float> %i.c, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZN2cv6dynafupLERNS0_10QuaternionERKS1_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10
  %i.b = load float, ptr %1, align 4, !tbaa !10
  %i.c = fadd float %i.a, %i.b
  store float %i.c, ptr %0, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = fadd float %i.e, %i.g
  store float %i.h, ptr %i.d, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = fadd float %i.j, %i.l
  store float %i.m, ptr %i.i, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fadd float %i.o, %i.q
  store float %i.r, ptr %i.n, align 4, !tbaa !10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(16) ptr @_ZN2cv6dynafudVERNS0_10QuaternionEf(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(16) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = fdiv float 1.000000e+00, %1
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !10
  %i.c = insertelement <4 x float> poison, float %i.a, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer
  %i.e = fmul <4 x float> %i.d, %i.b
  store <4 x float> %i.e, ptr %0, align 4, !tbaa !10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv6dynafu14DualQuaternionC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2cv6dynafu14DualQuaternionC2ERKNS_7Affine3IfEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.cv::dynafu::Quaternion", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN2cv6dynafu10QuaternionC2ERKNS_7Affine3IfEE(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(64) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !10, !noalias !34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !10, !noalias !34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = fneg float %i.g
  %i.j = fneg float %i.c
  %i.k = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.l = load float, ptr %i.h, align 4, !tbaa !10
  %i.m = fneg float %i.l
  %i.n = insertelement <4 x float> %i.k, float %i.m, i64 1
  %i.o = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.q = fmul <4 x float> %i.o, %i.p
  %i.r = insertelement <4 x float> poison, float %i.c, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.j, i64 1
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.k, <4 x float> %i.q)
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.w = insertelement <4 x float> poison, float %i.g, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.i, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.k, <4 x float> %i.v)
  %i.aa = fmul <4 x float> %i.z, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -5.000000e-01>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.ab, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafu14DualQuaternionC2ERNS0_10QuaternionES3_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10
  store float %i.a, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %2, align 4, !tbaa !10
  store float %i.l, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.q, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafu14DualQuaternion9normalizeEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 5 uses
  %i.b = extractelement <4 x float> %i.a, i64 0
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double 0.000000e+00)
  %i.e = extractelement <4 x float> %i.a, i64 1
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.d)
  %i.h = extractelement <4 x float> %i.a, i64 2
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.g)
  %i.k = extractelement <4 x float> %i.a, i64 3
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.j)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.m)
  %i.n = fptrunc double %sqrt.i.i to float
  %i.o = fdiv float 1.000000e+00, %i.n
  %i.p = insertelement <4 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = fmul <4 x float> %i.a, %i.q
  store <4 x float> %i.r, ptr %0, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load <4 x float>, ptr %i.s, align 4, !tbaa !10
  %i.u = fmul <4 x float> %i.q, %i.t
  store <4 x float> %i.u, ptr %i.s, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(32) ptr @_ZN2cv6dynafupLERNS0_14DualQuaternionERKS1_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 32
  %i.d = add nuw i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <4 x float>, ptr %0, align 4, !tbaa !10
  %i.f = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.g = fadd <4 x float> %i.e, %i.f
  store <4 x float> %i.g, ptr %0, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <4 x float>, ptr %i.i, align 4, !tbaa !10
  %i.k = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %i.l = fadd <4 x float> %i.j, %i.k
  store <4 x float> %i.l, ptr %i.i, align 4, !tbaa !10
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.m = load float, ptr %0, align 4, !tbaa !10
  %i.n = load float, ptr %1, align 4, !tbaa !10
  %i.o = fadd float %i.m, %i.n
  store float %i.o, ptr %0, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fadd float %i.q, %i.s
  store float %i.t, ptr %i.p, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = fadd float %i.v, %i.x
  store float %i.y, ptr %i.u, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = fadd float %i.aa, %i.ac
  store float %i.ad, ptr %i.z, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ai = fadd float %i.ag, %i.ah
  store float %i.ai, ptr %i.af, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !10
  %i.an = fadd float %i.ak, %i.am
  store float %i.an, ptr %i.aj, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !10
  %i.as = fadd float %i.ap, %i.ar
  store float %i.as, ptr %i.ao, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = fadd float %i.au, %i.aw
  store float %i.ax, ptr %i.at, align 4, !tbaa !10
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv6dynafumlEfRKNS0_14DualQuaternionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::DualQuaternion") align 4 captures(none) initializes((0, 32)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load <4 x float>, ptr %2, align 4, !tbaa !10, !noalias !43
  %i.c = insertelement <4 x float> poison, float %1, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = fmul <4 x float> %i.d, %i.b
  store <4 x float> %i.e, ptr %0, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <4 x float>, ptr %i.a, align 4, !tbaa !10, !noalias !44
  %i.h = fmul <4 x float> %i.d, %i.g
  store <4 x float> %i.h, ptr %i.f, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK2cv6dynafu14DualQuaternion9getAffineEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Affine3") align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx14.i, i8 0, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  %i.e = fneg float %i.d                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.21.48..sroa.10.0..sroa_idx14.i.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %.sroa.21.48..sroa.10.0..sroa_idx14.i.sroa_idx, align 4
  %i.i = load float, ptr %i.a, align 4, !tbaa !10 ; 5 uses
  %i.j = load float, ptr %1, align 4, !tbaa !10   ; 5 uses
  %i.k = load float, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.l = load float, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.m = load float, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.n = fneg float %i.l
  %i.o = fneg float %i.k
  %i.p = fpext float %i.j to double               ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double 0.000000e+00)
  %i.r = fpext float %i.i to double               ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.q)
  %i.t = fmul float %i.j, %i.m
  %i.u = tail call float @llvm.fmuladd.f32(float %i.e, float %i.i, float %i.t)
  %i.v = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 4 uses
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = extractelement <2 x float> %i.v, i64 1   ; 4 uses
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = fneg float %i.w
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.s)
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ac)
  %i.ad = fptrunc double %sqrt.i.i to float
  %i.ae = fmul float %i.m, %i.aa
  %i.af = fmul float %i.y, %i.m
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.e, float %i.y, float %i.ae)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.e, float %i.w, float %i.af)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.l, float %i.i, float %i.ag)
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.n, float %i.y, float %i.u)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.l, float %i.j, float %i.ah)
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.ai)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.k, float %i.w, float %i.aj)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.o, float %i.i, float %i.ak)
  %i.ao = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.an, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.am, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.al, i64 3
  %i.ar = fmul <4 x float> %i.aq, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %i.as = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fdiv <4 x float> %i.ar, %i.at           ; 5 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = fmul <2 x float> %i.ax, %i.ay           ; 7 uses
  %i.ba = fmul <2 x float> %i.v, %i.ay            ; 5 uses
  %i.bb = extractelement <2 x float> %i.az, i64 0
  %i.bc = fneg float %i.bb
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ba
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.be = fmul float %i.j, %i.av                  ; 2 uses
  %i.bf = fmul <2 x float> %i.ba, %i.ba           ; 2 uses
  %i.bg = fmul float %i.be, %i.bc                 ; 2 uses
  %i.bh = fadd float %i.bd, %i.bg
  %i.bi = fsub float %i.bd, %i.bg
  %i.bj = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bk = fneg <2 x float> %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bm, %i.bk           ; 3 uses
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul <2 x float> %i.az, %i.bo           ; 3 uses
  %foldExtExtBinop13 = fadd <2 x float> %i.bn, %i.bp
  %i.bq = fsub <2 x float> %i.bp, %i.bn           ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bt = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %i.bu = fadd <2 x float> %i.bt, %i.bf
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = insertelement <4 x float> %i.bw, float %i.bh, i64 1
  %i.by = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.bz = fadd <4 x float> %i.by, <float -0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.ca = shufflevector <4 x float> %i.bx, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cb = fmul <4 x float> %i.ca, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cb, ptr %0, align 4
  %i.cc = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.au, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ce = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.cf = fadd <4 x float> %i.cd, %i.ce
  %i.cg = insertelement <4 x float> %i.bw, float %i.bi, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = fmul <4 x float> %i.ch, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ci, ptr %.sroa.6.0..sroa_idx6.i, align 4
  %i.cj = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ck = fadd <2 x float> %i.cj, %i.bf
  %i.cl = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cm = shufflevector <2 x float> %foldExtExtBinop13, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cp = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> <float -2.000000e+00, float 1.000000e+00, float undef, float undef>, <4 x float> <float 1.000000e+00, float 0.000000e+00, float undef, float undef>)
  %i.cr = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cs = fmul <4 x float> %i.cr, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cs, ptr %.sroa.8.0..sroa_idx10.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS0_14DualQuaternionESaIS5_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::dynafu::DualQuaternion") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !57     ; 3 uses
  %i.i = icmp eq i64 %i.f, 4
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %i.j = and i64 %i.f, 4
  %lcmp.mod.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init48 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.epil.init
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.07.epil.init ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4, !tbaa !10, !noalias !58
  %i.o = insertelement <4 x float> poison, float %i.l, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <4 x float> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !10, !noalias !59
  %i.t = fmul <4 x float> %i.p, %i.s
  %i.u = fadd <4 x float> %i.q, %.epil.init
  %i.v = fadd <4 x float> %i.t, %.epil.init48
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.w = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ] ; 5 uses
  %i.x = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.br, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  %i.y = extractelement <4 x float> %i.w, i64 0
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double 0.000000e+00)
  %i.ab = extractelement <4 x float> %i.w, i64 1
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.aa)
  %i.ae = extractelement <4 x float> %i.w, i64 2
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ad)
  %i.ah = extractelement <4 x float> %i.w, i64 3
  %i.ai = fpext float %i.ah to double             ; 2 uses
  %i.aj = tail call noundef double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ag)
  %sqrt.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.aj)
  %i.ak = fptrunc double %sqrt.i.i.i to float
  %i.al = fdiv float 1.000000e+00, %i.ak
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul <4 x float> %i.w, %i.an
  store <4 x float> %i.ao, ptr %0, align 4, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = fmul <4 x float> %i.an, %i.x
  store <4 x float> %i.aq, ptr %i.ap, align 4, !tbaa !10
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.07 = phi i64 [ 0, %.lr.ph.new ], [ %i.bs, %bb.b ] ; 4 uses
  %i.ar = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.bq, %bb.b ]
  %i.as = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.br, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.07 ; 2 uses
  %i.aw = load <4 x float>, ptr %i.av, align 4, !tbaa !10, !noalias !58
  %i.ax = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.az = fmul <4 x float> %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 4, !tbaa !10, !noalias !59
  %i.bc = fmul <4 x float> %i.ay, %i.bb
  %i.bd = fadd <4 x float> %i.az, %i.ar
  %i.be = fadd <4 x float> %i.bc, %i.as
  %i.bf = or disjoint i64 %.07, 1                 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !10
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bj = load <4 x float>, ptr %i.bi, align 4, !tbaa !10, !noalias !58
  %i.bk = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <4 x float> %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = load <4 x float>, ptr %i.bn, align 4, !tbaa !10, !noalias !59
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = fadd <4 x float> %i.bm, %i.bd           ; 3 uses
  %i.br = fadd <4 x float> %i.bp, %i.be           ; 3 uses
  %i.bs = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Affine3") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::dynafu::DualQuaternion", align 16 ; 7 uses
  %4 = alloca %"class.cv::dynafu::DualQuaternion", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !80     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.i = ashr exact i64 %i.f, 1                   ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #17 ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false)
  %i.l = ptrtoint ptr %i.k to i64
  %.pre = load ptr, ptr %2, align 8, !tbaa !81
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !81
  br label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.m = phi ptr [ %.pre37, %.lr.ph.preheader.i.i.i.i.i ], [ %i.b, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %i.n = phi ptr [ %.pre, %.lr.ph.preheader.i.i.i.i.i ], [ %i.c, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.sroa.018.0 = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 7 uses
  %.sink.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.not6.i = icmp eq ptr %i.n, %i.m
  br i1 %.not6.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %.sroa.018.0, %.lr.ph.i ], [ %i.as, %bb.b ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.ar, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @_ZN2cv6dynafu10QuaternionC2ERKNS_7Affine3IfEE(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(64) %.sroa.03.07.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !10, !noalias !83 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 28
  %i.t = load float, ptr %i.s, align 4, !tbaa !10, !noalias !83
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 44
  %i.v = load float, ptr %i.u, align 4, !tbaa !10, !noalias !83 ; 2 uses
  %i.w = fneg float %i.v
  %i.x = fneg float %i.r
  %i.y = load <4 x float>, ptr %3, align 16, !tbaa !10, !alias.scope !82 ; 3 uses
  %i.z = load float, ptr %i.p, align 4, !tbaa !10, !alias.scope !82
  %i.aa = fneg float %i.z
  %i.ab = insertelement <4 x float> poison, float %i.t, i64 0
  %i.ac = insertelement <4 x float> %i.y, float %i.aa, i64 1
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.af = fmul <4 x float> %i.ad, %i.ae
  %i.ag = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %i.x, i64 1
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.y, <4 x float> %i.af)
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.al = insertelement <4 x float> poison, float %i.v, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.w, i64 1
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.y, <4 x float> %i.ak)
  %i.ap = fmul <4 x float> %i.ao, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -5.000000e-01>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.aq, ptr %i.o, align 16, !alias.scope !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0.08.i, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 32
  %.not.i = icmp eq ptr %i.ar, %i.m
  br i1 %.not.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit", label %bb.b, !llvm.loop !64

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit": ; preds = %bb.b, %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EEC2EmRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14, !noalias !84 ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !15, !noalias !84 ; 5 uses
  %.not.i14 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i14, label %.loopexit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit"
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 2                 ; 2 uses
  %i.ba = icmp eq i64 %i.ay, 4
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %i.az, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i15.new
  %.07.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.cc, %bb.c ] ; 4 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph.i15.new ], [ %i.ca, %bb.c ]
  %i.bc = phi <4 x float> [ zeroinitializer, %.lr.ph.i15.new ], [ %i.cb, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.c ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.07.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10, !noalias !84
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %.07.i ; 2 uses
  %i.bg = load <4 x float>, ptr %i.bf, align 4, !tbaa !10, !noalias !85
  %i.bh = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bj = fmul <4 x float> %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bl = load <4 x float>, ptr %i.bk, align 4, !tbaa !10, !noalias !86
  %i.bm = fmul <4 x float> %i.bi, %i.bl
  %i.bn = fadd <4 x float> %i.bb, %i.bj
  %i.bo = fadd <4 x float> %i.bc, %i.bm
  %i.bp = or disjoint i64 %.07.i, 1               ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10, !noalias !84
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %i.bp ; 2 uses
  %i.bt = load <4 x float>, ptr %i.bs, align 4, !tbaa !10, !noalias !85
  %i.bu = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <4 x float> %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 4, !tbaa !10, !noalias !86
  %i.bz = fmul <4 x float> %i.bv, %i.by
  %i.ca = fadd <4 x float> %i.bn, %i.bw           ; 3 uses
  %i.cb = fadd <4 x float> %i.bo, %i.bz           ; 3 uses
  %i.cc = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %i.cd = and i64 %i.ay, 4
  %lcmp.mod.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i15
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.cc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i15 ], [ %i.ca, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init60 = phi <4 x float> [ zeroinitializer, %.lr.ph.i15 ], [ %i.cb, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.07.i.epil.init
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10, !noalias !84
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.018.0, i64 %.07.i.epil.init ; 2 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 4, !tbaa !10, !noalias !85
  %i.ci = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <4 x float> %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 4, !tbaa !10, !noalias !86
  %i.cn = fmul <4 x float> %i.cj, %i.cm
  %i.co = fadd <4 x float> %.epil.init, %i.ck
  %i.cp = fadd <4 x float> %.epil.init60, %i.cn
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit"
  %i.cq = phi <4 x float> [ zeroinitializer, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit" ], [ %i.ca, %.loopexit.loopexit.unr-lcssa ], [ %i.co, %.epil.preheader ] ; 5 uses
  %i.cr = phi <4 x float> [ zeroinitializer, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPN2cv7Affine3IfEESt6vectorIS4_SaIS4_EEEENS1_IPNS2_6dynafu14DualQuaternionES6_ISB_SaISB_EEEEZNSA_3DQBERS6_IfSaIfEERS8_E3$_0ET0_T_SM_SL_T1_.exit" ], [ %i.cb, %.loopexit.loopexit.unr-lcssa ], [ %i.cp, %.epil.preheader ]
  %i.cs = extractelement <4 x float> %i.cq, i64 0
  %i.ct = fpext float %i.cs to double             ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double 0.000000e+00)
  %i.cv = extractelement <4 x float> %i.cq, i64 1
  %i.cw = fpext float %i.cv to double             ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cu)
  %i.cy = extractelement <4 x float> %i.cq, i64 2
  %i.cz = fpext float %i.cy to double             ; 2 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.cx)
  %i.db = extractelement <4 x float> %i.cq, i64 3
  %i.dc = fpext float %i.db to double             ; 2 uses
  %i.dd = tail call noundef double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %i.da)
  %sqrt.i.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.dd)
  %i.de = fptrunc double %sqrt.i.i.i.i to float
  %i.df = fdiv float 1.000000e+00, %i.de
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.di = fmul <4 x float> %i.cq, %i.dh
  store <4 x float> %i.di, ptr %4, align 16, !tbaa !10, !alias.scope !84
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dk = fmul <4 x float> %i.cr, %i.dh
  store <4 x float> %i.dk, ptr %i.dj, align 16, !tbaa !10, !alias.scope !84
  call void @_ZNK2cv6dynafu14DualQuaternion9getAffineEv(ptr dead_on_unwind writable sret(%"class.cv::Affine3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not.i.i.i = icmp eq ptr %.sroa.018.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.dl = ptrtoint ptr %.sroa.018.0 to i64
  %i.dm = sub i64 %.sink.i, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.0, i64 noundef %i.dm) #18
  br label %_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6dynafu14DualQuaternionESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.d
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!13, !12, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!18 = distinct !{!18, !17, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!19 = !{!18}
!20 = distinct !{!20, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!21 = distinct !{!21, !20, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!22 = distinct !{!22, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!23 = distinct !{!23, !22, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!24 = !{!21}
!25 = !{!23, !21}
!26 = distinct !{!26, !"_ZN2cvdvIfLi4EEENS_3VecIT_XT0_EEERKS3_f"}
!27 = distinct !{!27, !26, !"_ZN2cvdvIfLi4EEENS_3VecIT_XT0_EEERKS3_f: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, !"_ZN2cvplIfLi4EEENS_3VecIT_XT0_EEERKS3_S5_"}
!30 = distinct !{!30, !29, !"_ZN2cvplIfLi4EEENS_3VecIT_XT0_EEERKS3_S5_: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, !"_ZNK2cv7Affine3IfE11translationEv"}
!33 = distinct !{!33, !32, !"_ZNK2cv7Affine3IfE11translationEv: argument 0"}
!34 = !{!33}
!35 = distinct !{!35, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!36 = distinct !{!36, !35, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!37 = distinct !{!37, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!38 = distinct !{!38, !37, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!39 = distinct !{!39, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!40 = distinct !{!40, !39, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!41 = distinct !{!41, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!42 = distinct !{!42, !41, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!43 = !{!38, !36}
!44 = !{!42, !40}
!45 = distinct !{!45, !"_ZN2cv6dynafumlEfRKNS0_14DualQuaternionE"}
!46 = distinct !{!46, !45, !"_ZN2cv6dynafumlEfRKNS0_14DualQuaternionE: argument 0"}
!47 = distinct !{!47, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!48 = distinct !{!48, !47, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!49 = distinct !{!49, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!50 = distinct !{!50, !49, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!51 = distinct !{!51, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!52 = distinct !{!52, !51, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!53 = distinct !{!53, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!54 = distinct !{!54, !53, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!55 = !{!"p1 _ZTSN2cv6dynafu14DualQuaternionE", !11, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN2cv6dynafu14DualQuaternionESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!56, !55, i64 0}
!58 = !{!50, !48, !46}
!59 = !{!54, !52, !46}
!60 = distinct !{!60, !"_ZZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EEENK3$_0clERKS6_"}
!61 = distinct !{!61, !60, !"_ZZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EEENK3$_0clERKS6_: argument 0"}
!62 = distinct !{!62, !"_ZNK2cv7Affine3IfE11translationEv"}
!63 = distinct !{!63, !62, !"_ZNK2cv7Affine3IfE11translationEv: argument 0"}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !"_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS0_14DualQuaternionESaIS5_EE"}
!66 = distinct !{!66, !65, !"_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS0_14DualQuaternionESaIS5_EE: argument 0"}
!67 = distinct !{!67, !"_ZN2cv6dynafumlEfRKNS0_14DualQuaternionE"}
!68 = distinct !{!68, !67, !"_ZN2cv6dynafumlEfRKNS0_14DualQuaternionE: argument 0"}
!69 = distinct !{!69, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!70 = distinct !{!70, !69, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!71 = distinct !{!71, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!72 = distinct !{!72, !71, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!73 = distinct !{!73, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE"}
!74 = distinct !{!74, !73, !"_ZN2cv6dynafumlEfRKNS0_10QuaternionE: argument 0"}
!75 = distinct !{!75, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_"}
!76 = distinct !{!76, !75, !"_ZN2cvmlIfLi4EEENS_3VecIT_XT0_EEEfRKS3_: argument 0"}
!77 = !{!"p1 _ZTSN2cv7Affine3IfEE", !11, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!78, !77, i64 8}
!80 = !{!78, !77, i64 0}
!81 = !{!77, !77, i64 0}
!82 = !{!61}
!83 = !{!63, !61}
!84 = !{!66}
!85 = !{!72, !70, !68, !66}
!86 = !{!76, !74, !68, !66}
end_hunk_0
