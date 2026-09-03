Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/types?download=true
inline.NumInlined: 249
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv8KeyPoint7overlapERKS0_S2_:bb.a
  %i.z = extractelement <2 x float> %i.h, i64 1   ; 4 uses
  %i.aa = fcmp olt float %i.y, %i.z
  %.sroa.speculated54 = select i1 %i.aa, float %i.y, float %i.z
  %i.ab = fcmp olt float %i.z, %i.y
  %.sroa.speculated = select i1 %i.ab, float %i.y, float %i.z
  %i.ac = fdiv float %.sroa.speculated54, %.sroa.speculated
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ad = fadd float %i.t, %i.s
  %i.ae = fcmp ogt float %i.ad, %i.r
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = fmul float %i.r, %i.r
  %i.ag = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.f, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fadd <2 x float> %i.h, %i.ak
  %i.am = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fsub <2 x float> %i.al, %i.am
  %i.ao = fdiv <2 x float> %i.an, %i.ai           ; 3 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = tail call noundef float @acosf(float noundef %i.ap) #20 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ao, i64 1
  %i.as = tail call noundef float @acosf(float noundef %i.ar) #20 ; 2 uses
  %i.at = tail call noundef float @sinf(float noundef %i.aq) #20
  %i.au = tail call noundef float @sinf(float noundef %i.as) #20
  %i.av = extractelement <2 x float> %i.h, i64 1  ; 2 uses
  %i.aw = fmul float %i.av, %i.as
  %i.ax = extractelement <2 x float> %i.h, i64 0  ; 2 uses
  %i.ay = fmul float %i.ax, %i.aq
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.au, i64 1
  %i.bb = fmul <2 x float> %i.h, %i.ba
  %i.bc = fmul <2 x float> %i.ao, %i.bb           ; 2 uses
  %i.bd = fadd float %i.ay, %i.aw
  %i.be = extractelement <2 x float> %i.bc, i64 1
  %i.bf = fsub float %i.bd, %i.be
  %i.bg = extractelement <2 x float> %i.bc, i64 0
  %i.bh = fsub float %i.bf, %i.bg                 ; 2 uses
  %i.bi = fadd float %i.av, %i.ax
  %i.bj = fneg float %i.bh
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bi, float f0x40490FDB, float %i.bj)
  %i.bl = fdiv float %i.bh, %i.bk
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.ac, %bb.b ], [ %i.bl, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11RotatedRectC2ERKNS_6Point_IfEES4_S4_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !35 ; 4 uses
  %.val39 = load float, ptr %i.a, align 4, !tbaa !36 ; 2 uses
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !35 ; 4 uses
  %.val41 = load float, ptr %i.b, align 4, !tbaa !36 ; 2 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !35 ; 5 uses
  %.val31 = load float, ptr %i.c, align 4, !tbaa !36
  %i.g = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 0, i32 2>
  %i.h = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.i = fsub <2 x float> %i.g, %i.h              ; 4 uses
  %i.j = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.k = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 1, i32 3>
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %i.m = extractelement <2 x float> %i.d, i64 0
  %i.n = fpext float %i.m to double               ; 2 uses
  %i.o = fpext float %.val39 to double            ; 2 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.p)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.q) ; 2 uses
  %i.r = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 2 uses
  %i.t = insertelement <2 x float> poison, float %.val31, i64 0
  %i.u = insertelement <2 x float> %i.t, float %.val41, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.s, <2 x double> %i.w)
  %i.y = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.x) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0  ; 2 uses
  %i.aa = extractelement <2 x double> %i.y, i64 1 ; 2 uses
  %i.ab = fcmp olt double %i.z, %i.aa
  %i.ac = select i1 %i.ab, double %i.aa, double %i.z ; 2 uses
  %i.ad = fcmp olt double %sqrt.i, %i.ac
  %.sroa.speculated76 = select i1 %i.ad, double %i.ac, double %sqrt.i
  %i.ae = fpext <2 x float> %i.i to <2 x double>  ; 4 uses
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> zeroinitializer)
  %i.ag = fpext <2 x float> %i.l to <2 x double>  ; 4 uses
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.af)
  %i.ai = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  %i.al = fcmp olt double %i.aj, %i.ak
  %.sroa.speculated = select i1 %i.al, double %i.aj, double %i.ak
  %i.am = extractelement <2 x double> %i.ae, i64 0
  %i.an = extractelement <2 x double> %i.ae, i64 1
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double 0.000000e+00)
  %i.ap = extractelement <2 x double> %i.ag, i64 0
  %i.aq = extractelement <2 x double> %i.ag, i64 1
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.ao)
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fmul double %i.as, %.sroa.speculated
  %i.au = fmul double %.sroa.speculated76, f0x3EB2000000000000
  %i.av = fmul double %i.ak, %i.aj
  %i.aw = fmul double %i.au, %i.av
  %i.ax = fcmp ugt double %i.at, %i.aw
  br i1 %i.ax, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv11RotatedRectC2ERKNS_6Point_IfEES4_S4_, ptr noundef nonnull @.str.1, i32 noundef 156) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.ay

bb.e:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = fadd float %.val39, %.val41
  %foldExtExtBinop = fadd <2 x float> %i.d, %i.e
  %i.bg = insertelement <2 x float> %foldExtExtBinop, float %i.bf, i64 1
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = extractelement <2 x float> %i.l, i64 0
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = extractelement <2 x float> %i.i, i64 0
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp uge float %i.bj, %i.bl
  %i.bn = insertelement <2 x i1> poison, i1 %i.bm, i64 0
  %i.bo = shufflevector <2 x i1> %i.bn, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = select <2 x i1> %i.bo, <2 x float> %i.i, <2 x float> %i.bp ; 2 uses
  %i.br = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = select <2 x i1> %i.bo, <2 x float> %i.l, <2 x float> %i.br ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = extractelement <2 x float> %i.bq, i64 1
  %i.bv = fdiv float %i.bt, %i.bu
  %i.bw = tail call noundef float @atanf(float noundef %i.bv) #20
  %i.bx = fmul float %i.bw, 1.800000e+02
  %i.by = fdiv float %i.bx, f0x40490FDB
  %i.bz = fpext <2 x float> %i.bq to <2 x double> ; 2 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> zeroinitializer)
  %i.cb = fpext <2 x float> %i.bs to <2 x double> ; 2 uses
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cb, <2 x double> %i.ca)
  store <2 x float> %i.bh, ptr %0, align 4
  %i.cd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cc)
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float>
  store <2 x float> %i.cf, ptr %i.be, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.by, ptr %i.cg, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 20
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !39
  %i.g = fpext float %i.f to double
  %i.h = fmul double %i.g, f0x400921FB54442D18
  %i.i = fdiv double %i.h, 1.800000e+02           ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #20
  %i.k = tail call double @sin(double noundef %i.i) #20
  %i.l = load <4 x float>, ptr %0, align 4        ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  %i.p = fmul <2 x float> %i.o, splat (float 5.000000e-01) ; 2 uses
  %i.q = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.r = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.s = fmul <4 x float> %i.q, %i.r              ; 4 uses
  %i.t = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.u = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.v = fmul <4 x float> %i.t, %i.u              ; 2 uses
  %i.w = load <2 x float>, ptr %0, align 4, !tbaa !35
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.y = fsub <4 x float> %i.x, %i.s
  %i.z = fadd <4 x float> %i.x, %i.s
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ab = fsub <4 x float> %i.aa, %i.v
  store <4 x float> %i.ab, ptr %1, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load <2 x float>, ptr %0, align 4, !tbaa !35
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.af = fadd <4 x float> %i.ae, %i.s
  %i.ag = fsub <4 x float> %i.ae, %i.s
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ai = fadd <4 x float> %i.v, %i.ah
  store <4 x float> %i.ai, ptr %i.ac, align 4, !tbaa !35
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %i.al, f0x400921FB54442D18
  %i.an = fdiv double %i.am, 1.800000e+02         ; 2 uses
  %i.ao = tail call double @cos(double noundef %i.an) #20
  %i.ap = fptrunc double %i.ao to float
  %i.aq = fmul float %i.ap, 5.000000e-01          ; 2 uses
  %i.ar = tail call double @sin(double noundef %i.an) #20
  %i.as = fptrunc double %i.ar to float
  %i.at = fmul float %i.as, 5.000000e-01          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40 ; 2 uses
  %i.ax = fmul float %i.aw, %i.at                 ; 4 uses
  %i.ay = load float, ptr %i.au, align 4, !tbaa !41 ; 2 uses
  %i.az = fmul float %i.at, %i.ay                 ; 4 uses
  %i.ba = fmul float %i.aq, %i.aw                 ; 4 uses
  %i.bb = fmul float %i.aq, %i.ay                 ; 4 uses
  %i.bc = load float, ptr %0, align 4, !tbaa !42
  %i.bd = fsub float %i.bc, %i.ax
  %i.be = fsub float %i.bd, %i.bb
  store float %i.be, ptr %1, align 4, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !44
  %i.bh = fadd float %i.ba, %i.bg
  %i.bi = fsub float %i.bh, %i.az
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !36
  %i.bk = load float, ptr %0, align 4, !tbaa !42
  %i.bl = fadd float %i.ax, %i.bk
  %i.bm = fsub float %i.bl, %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !43
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !44
  %i.bp = fsub float %i.bo, %i.ba
  %i.bq = fsub float %i.bp, %i.az
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !36
  %i.bs = load float, ptr %0, align 4, !tbaa !42
  %i.bt = fadd float %i.ax, %i.bs
  %i.bu = fadd float %i.bb, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.bu, ptr %i.bv, align 4, !tbaa !43
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !44
  %i.bx = fsub float %i.bw, %i.ba
  %i.by = fadd float %i.az, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.by, ptr %i.bz, align 4, !tbaa !36
  %i.ca = load float, ptr %0, align 4, !tbaa !42
  %i.cb = fsub float %i.ca, %i.ax
  %i.cc = fadd float %i.bb, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.cc, ptr %i.cd, align 4, !tbaa !43
  %i.ce = load float, ptr %i.bf, align 4, !tbaa !44
  %i.cf = fadd float %i.ba, %i.ce
  %i.cg = fadd float %i.az, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.cg, ptr %i.ch, align 4, !tbaa !36
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv11RotatedRect6pointsERSt6vectorINS_6Point_IfEESaIS3_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 4, %i.g
  tail call void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i)
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 32
  br i1 %.not, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !39
  %i.n = fpext float %i.m to double
  %i.o = fmul double %i.n, f0x400921FB54442D18
  %i.p = fdiv double %i.o, 1.800000e+02           ; 2 uses
  %i.q = tail call double @cos(double noundef %i.p) #20
  %i.r = fptrunc double %i.q to float
  %i.s = fmul float %i.r, 5.000000e-01            ; 2 uses
  %i.t = tail call double @sin(double noundef %i.p) #20
  %i.u = fptrunc double %i.t to float
  %i.v = fmul float %i.u, 5.000000e-01            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !40 ; 2 uses
  %i.z = fmul float %i.y, %i.v                    ; 4 uses
  %i.aa = load float, ptr %i.w, align 4, !tbaa !41 ; 2 uses
  %i.ab = fmul float %i.v, %i.aa                  ; 4 uses
  %i.ac = fmul float %i.s, %i.y                   ; 4 uses
  %i.ad = fmul float %i.s, %i.aa                  ; 4 uses
  %i.ae = load float, ptr %0, align 4, !tbaa !42
  %i.af = fsub float %i.ae, %i.z
  %i.ag = fsub float %i.af, %i.ad
  store float %i.ag, ptr %i.k, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !44
  %i.aj = fadd float %i.ac, %i.ai
  %i.ak = fsub float %i.aj, %i.ab
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store float %i.ak, ptr %i.al, align 4, !tbaa !36
  %i.am = load float, ptr %0, align 4, !tbaa !42
  %i.an = fadd float %i.z, %i.am
  %i.ao = fsub float %i.an, %i.ad
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !43
  %i.aq = load float, ptr %i.ah, align 4, !tbaa !44
  %i.ar = fsub float %i.aq, %i.ac
  %i.as = fsub float %i.ar, %i.ab
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store float %i.as, ptr %i.at, align 4, !tbaa !36
  %i.au = load float, ptr %0, align 4, !tbaa !42
  %i.av = fadd float %i.z, %i.au
  %i.aw = fadd float %i.ad, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store float %i.aw, ptr %i.ax, align 4, !tbaa !43
  %i.ay = load float, ptr %i.ah, align 4, !tbaa !44
  %i.az = fsub float %i.ay, %i.ac
  %i.ba = fadd float %i.ab, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float %i.ba, ptr %i.bb, align 4, !tbaa !36
  %i.bc = load float, ptr %0, align 4, !tbaa !42
  %i.bd = fsub float %i.bc, %i.z
  %i.be = fadd float %i.ad, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store float %i.be, ptr %i.bf, align 4, !tbaa !43
  %i.bg = load float, ptr %i.ah, align 4, !tbaa !44
  %i.bh = fadd float %i.ac, %i.bg
  %i.bi = fadd float %i.ab, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store float %i.bi, ptr %i.bj, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { i64, i64 } @_ZNK2cv11RotatedRect12boundingRectEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.g, i64 1
  %i.m = fptrunc <2 x double> %i.l to <2 x float>
  %i.n = fmul <2 x float> %i.m, splat (float 5.000000e-01) ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fmul float %i.o, %i.i                    ; 2 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul float %i.i, %i.q                    ; 2 uses
  %i.s = load <4 x float>, ptr %0, align 4
  %i.t = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.v = fmul <2 x float> %i.n, %i.u              ; 4 uses
  %i.w = load float, ptr %0, align 4, !tbaa !42   ; 2 uses
  %i.x = fsub float %i.w, %i.r                    ; 2 uses
  %i.y = fadd float %i.p, %i.t                    ; 2 uses
  %i.z = fsub float %i.t, %i.p
  %i.aa = fadd float %i.r, %i.w
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.z, i64 1 ; 2 uses
  %i.ad = insertelement <4 x float> %i.ac, float %i.x, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.y, i64 3
  %i.af = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = fsub <4 x float> %i.ae, %i.af           ; 4 uses
  %i.ah = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = fadd <2 x float> %i.v, %i.ah
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ak = insertelement <2 x float> %i.v, float %i.y, i64 1
  %i.al = insertelement <2 x float> %i.v, float %i.x, i64 0
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ap = fcmp olt <4 x float> %i.ag, %i.ao
  %i.aq = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.as = select <4 x i1> %i.ap, <4 x float> %i.aq, <4 x float> %i.ar ; 3 uses
  %i.at = shufflevector <4 x float> %i.aj, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = fcmp olt <4 x float> %i.at, %i.au
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.aj, <4 x float> %i.as ; 3 uses
  %i.ax = shufflevector <4 x float> %i.an, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.az = fcmp olt <4 x float> %i.ax, %i.ay
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.an, <4 x float> %i.aw ; 2 uses
  %i.bb = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ba)
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>   ; 2 uses
  %i.be = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ba)
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>
  %i.bh = sub <2 x i32> %i.bg, %i.bd
  %i.bi = add <2 x i32> %i.bh, splat (i32 1)
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.bd to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.sroa.5.8.insert.insert = bitcast <2 x i32> %i.bi to i64
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @_ZNK2cv11RotatedRect14boundingRect2fEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.g, i64 1
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01) ; 2 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !35 ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.n, %i.l              ; 2 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.p, %i.q              ; 4 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !35
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = fsub <2 x float> %i.t, %i.o              ; 2 uses
  %i.v = fadd <2 x float> %i.t, %i.o              ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.x = fsub <2 x float> %i.w, %i.r              ; 4 uses
  %i.y = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.z = fsub <2 x float> %i.y, %i.r              ; 4 uses
  %i.aa = fadd <2 x float> %i.r, %i.y             ; 4 uses
  %i.ab = fadd <2 x float> %i.w, %i.r             ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.z, %i.x
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.z, <2 x float> %i.x ; 2 uses
  %i.ae = fcmp olt <2 x float> %i.aa, %i.ad
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.aa, <2 x float> %i.ad ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.ab, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.ab, <2 x float> %i.af ; 4 uses
  %i.ai = fcmp olt <2 x float> %i.x, %i.z
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.z, <2 x float> %i.x ; 2 uses
  %i.ak = fcmp olt <2 x float> %i.aj, %i.aa
  %i.al = select <2 x i1> %i.ak, <2 x float> %i.aa, <2 x float> %i.aj ; 2 uses
  %i.am = fcmp olt <2 x float> %i.al, %i.ab
  %i.an = select <2 x i1> %i.am, <2 x float> %i.ab, <2 x float> %i.al ; 4 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.ah
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.an, <2 x float> %i.ah ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fcmp olt <2 x float> %i.ah, %i.an
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.an, <2 x float> %i.ah
  %i.at = fsub <2 x float> %i.as, %i.ap
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aq, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.au, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atanf(float noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !35
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !35
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %i.e                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  %i.ac = sub i64 %i.e, %i.x
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ah = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 4, !alias.scope !66, !noalias !65
  %wide.load41 = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !66, !noalias !65
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !65, !noalias !66
  store <2 x i64> %wide.load41, ptr %i.ai, align 4, !alias.scope !65, !noalias !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ak = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !66, !noalias !65
  store i64 %i.ak, ptr %.012.i.i.i, align 4, !alias.scope !65, !noalias !66
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !63

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #22
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i.prol, align 4, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  store i32 -1, ptr %i.r, align 4, !tbaa !14
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !69

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 -1, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.y, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i32 -1, ptr %i.ab, align 4, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 -1, ptr %i.af, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -1, ptr %i.aj, align 4, !tbaa !14
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 329406144173384850) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 28
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31.prol, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 20
  store i32 0, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  store i32 -1, ptr %i.au, align 4, !tbaa !14
  %i.av = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !71

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 -1, ptr %i.ba, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 44
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 52
  store i32 -1, ptr %i.be, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bf, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i32 0, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store i32 -1, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bj, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i32 -1, ptr %i.bm, align 4, !tbaa !14
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !78, !alias.scope !79
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 28
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !75

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #22
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [28 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTSN2cv6Point_IfEE", !8, i64 0, !8, i64 4}
!10 = !{!"_ZTSN2cv8KeyPointE", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !5, i64 20, !5, i64 24}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !8, i64 16}
!13 = !{!10, !5, i64 20}
!14 = !{!10, !5, i64 24}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTSN2cv8KeyPointE", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 0}
!20 = !{!"p1 _ZTSN2cv6Point_IfEE", !15, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!5, !5, i64 0}
!26 = !{!"p1 omnipotent char", !15, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !28, i64 8, !4, i64 16}
!30 = !{!29, !26, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !15, i64 0}
!33 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !32, i64 0, !5, i64 8}
!34 = !{!33, !5, i64 8}
!35 = !{!8, !8, i64 0}
!36 = !{!9, !8, i64 4}
!37 = !{!"_ZTSN2cv5Size_IfEE", !8, i64 0, !8, i64 4}
!38 = !{!"_ZTSN2cv11RotatedRectE", !9, i64 0, !37, i64 8, !8, i64 16}
!39 = !{!38, !8, i64 16}
!40 = !{!38, !8, i64 12}
!41 = !{!38, !8, i64 8}
!42 = !{!38, !8, i64 0}
!43 = !{!9, !8, i64 0}
!44 = !{!38, !8, i64 4}
!45 = !{!10, !8, i64 0}
!46 = !{!10, !8, i64 4}
!47 = !{!10, !8, i64 12}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = !{!"p1 int", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!53 = !{!52, !50, i64 8}
!54 = !{!52, !50, i64 0}
!55 = !{!27, !26, i64 0}
!56 = !{!28, !28, i64 0}
!57 = !{!29, !28, i64 8}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!60 = distinct !{!60, !59, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!61 = distinct !{!61, !59, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !24, !67, !68}
!63 = distinct !{!63, !24, !67}
!64 = !{!21, !20, i64 16}
!65 = !{!60}
!66 = !{!61}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !77}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !77}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !24}
!76 = !{!17, !16, i64 16}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35, i64 20, i64 4, !25, i64 24, i64 4, !25}
!79 = !{!74, !73}
end_hunk_0
